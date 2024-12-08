import 'dart:convert';

import 'package:clean_architecture_flutter/barrel_file.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static const geminiModel = 'gemini-1.5-flash';
  static const baseUrl = 'https://restcountries.com/v3.1';

  Future<List<Map<String, dynamic>>> getAllCountries() async {
    try {
      http.Response allCountries = await http.get(Uri.parse('$baseUrl/all'));

      if (allCountries.statusCode == 200) {
        List jsonBody = jsonDecode(allCountries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getAllCountries API FAILED $e');
    }
  }

  Future<Map<String, dynamic>?> getCountryIdentifier(String text) async {
    try {
      final model = GenerativeModel(
        model: geminiModel,
        apiKey: const String.fromEnvironment('API_KEY'),
      );

      final prompt = '''
    GIVEN a text, output if the text is a Country name, capital, currency, language, region, subregion, code (cca2, ccn3, cca3 or cioc country code,etc), demonym, translation AND return the result in JSON


    The text ===> $text
    ''';

      final content = [Content.text(prompt)];
      final response = await model.generateContent(
        content,
        generationConfig: GenerationConfig(
          responseMimeType: 'application/json',
          responseSchema: Schema(SchemaType.object, properties: {
            "name": Schema.boolean(),
            "capital": Schema.boolean(),
            "code": Schema.boolean(),
            "language": Schema.boolean(),
            "currency": Schema.boolean(),
            "region": Schema.boolean(),
            "subregion": Schema.boolean(),
            "demonym": Schema.boolean(),
            "translation": Schema.boolean(),
          }),
        ),
      );

      if (response.text != null) {
        return jsonDecode(response.text!);
      }
      return null;
    } catch (e) {
      throw GeminiException('Gemini getCountryIdentifier API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByName(String name) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/name/$name'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByName API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByCapital(String capital) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/capital/$capital'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByCapital API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByLanguage(String language) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/lang/$language'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByLanguage API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByCode(String code) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/alpha/$code'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByCode API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByCurrency(String currency) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/currency/$currency'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByCurrency API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByRegion(String region) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/region/$region'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByRegion API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryBySubRegion(String subRegion) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/subRegion/$subRegion'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryBySubRegion API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByDemonym(String demonym) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/demonym/$demonym'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByDemonym API FAILED $e');
    }
  }

  Future<List<Map<String, dynamic>>> getCountryByTranslation(String translation) async {
    try {
      http.Response countries = await http.get(Uri.parse('$baseUrl/translation/$translation'));

      if (countries.statusCode == 200) {
        List jsonBody = jsonDecode(countries.body);
        return jsonBody.map((element) => Map<String, dynamic>.from(element)).toList();
      }

      return [];
    } catch (e) {
      throw CountriesException('getCountryByTranslation API FAILED $e');
    }
  }
}
