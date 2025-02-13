import 'package:get_it/get_it.dart';
import 'package:spotify/data/models/auth/signin_user_request.dart';
import 'package:spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth.dart';
import 'package:spotify/domain/usecases/auth/signin.dart';
import 'package:spotify/domain/usecases/auth/signup.dart';

import 'data/repository/songs/song_repository_impl.dart';
import 'data/sources/songs/song_firebase_service.dart';
import 'domain/repository/songs/songs.dart';
import 'domain/usecases/auth/signin.dart';
import 'domain/usecases/songs/get_news_songs.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {


  sl.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl()
  );

  sl.registerSingleton<SongFirebaseService>(
      SongFirebaseServiceImpl()
  );


  sl.registerSingleton<AuthRepository>(
      AuthRepositoryImpl()
  );

  sl.registerSingleton<SongsRepository>(
      SongRepositoryImpl()
  );



  sl.registerSingleton<SignupUseCase>(
      SignupUseCase()
  );
  sl.registerSingleton<SigninUseCase>(
      SigninUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
      SigninUseCase()
  );

  sl.registerSingleton<GetNewsSongsUseCase>(
      GetNewsSongsUseCase()
  );

  // sl.registerSingleton<GetPlayListUseCase>(
  //     GetPlayListUseCase()
  // );
  //
  // sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
  //     AddOrRemoveFavoriteSongUseCase()
  // );
  //
  // sl.registerSingleton<IsFavoriteSongUseCase>(
  //     IsFavoriteSongUseCase()
  // );
  //
  // sl.registerSingleton<GetUserUseCase>(
  //     GetUserUseCase()
  // );
  //
  // sl.registerSingleton<GetFavoriteSongsUseCase>(
  //     GetFavoriteSongsUseCase()
  // );

}