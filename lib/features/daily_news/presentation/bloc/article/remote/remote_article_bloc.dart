import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent,RemoteArticleState>{

  final GetArticleUseCase _getArticleUseCase;

  RemoteArticleBloc(this._getArticleUseCase) : super(const RemoteArticleLoading()){
    on <GetArticles> (onGetArticles);
  }

  void onGetArticles(GetArticles event,Emitter<RemoteArticleState> emitter) async{
    final dataState = await _getArticleUseCase.call();

    if(dataState is DataSuccess && dataState.data!.isNotEmpty){
      emitter(
        RemoteArticleDone(dataState.data!)
      );
    }
    if(dataState is DataFailure){
      emitter(
        RemoteArticleError(dataState.error!)
      );
    }
  }

}