import 'package:floor/floor.dart';
import 'package:news_app/features/daily_news/data/models/article.dart';

@dao
abstract class ArticleDAO{
  @Insert()
  Future<void> insertArticle(ArticleModel articleModel);

  @delete
  Future<void> deleterticle(ArticleModel articleModel);

  @Query('Select * from article')
  Future<List<ArticleModel>> getArticle();
}