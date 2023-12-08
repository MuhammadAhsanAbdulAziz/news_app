import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/data/models/article.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository{
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() {
    throw UnimplementedError();
  }

}