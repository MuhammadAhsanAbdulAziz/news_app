import 'package:floor/floor.dart';
import 'package:news_app/features/daily_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';
import '../../models/article.dart';
part 'app_database.g.dart';

@Database(version: 1, entities: [ArticleModel])
abstract class AppDatabase extends FloorDatabase{
  ArticleDAO get articleDAO;
}