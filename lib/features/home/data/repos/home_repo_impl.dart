import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:Programming&Sorting=newest&Filtering=free-ebooks',
      );
      List<BookModel> books = [];
      books =
          (data['items'] as List)
              .map<BookModel>((item) => BookModel.fromJson(item))
              .toList();
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
   try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:Programming&Filtering=free-ebooks',
      );
      List<BookModel> books = [];
      books =
          (data['items'] as List)
              .map<BookModel>((item) => BookModel.fromJson(item))
              .toList();
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
