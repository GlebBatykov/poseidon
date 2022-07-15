part of poseidon;

abstract class PoseidonRoute<T> {
  FutureOr<MaterialPageRoute<T>> route(BuildContext context);
}
