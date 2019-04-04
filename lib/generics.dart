///generics...
abstract class ourGeneric<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
  T returnData(List<T> keys);
}
