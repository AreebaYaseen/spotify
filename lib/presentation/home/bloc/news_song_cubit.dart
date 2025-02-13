import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify/domain/usecases/songs/get_news_songs.dart';
import 'package:spotify/presentation/home/bloc/news_song_state.dart';
import '../../../service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {

  NewsSongsCubit() : super(NewsSongsLoading());

  Future < void > getNewsSongs() async {
    var returnedSongs = await sl < GetNewsSongsUseCase > ().call();
    returnedSongs.fold(
            (l) {
          emit(NewsSongsLoadFailure());
        },
            (data) {
          emit(
              NewsSongsLoaded(songs: data),
          );
        }
    );
  }


}
