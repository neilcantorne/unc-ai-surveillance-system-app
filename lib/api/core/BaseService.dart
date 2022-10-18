

import 'dart:developer';

abstract class BaseService<T, K> extends Service{
  Future<T> findAll();

  Future<T> findById(K id);

  Future<void> updateById(K id, T data);

  Future<T> deleteById(K id);

  Future<T> save(T data);
}