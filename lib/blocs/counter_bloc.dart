import 'package:bloc/bloc.dart';

enum CounterEvent {increment , decrement}

class CounterBloc extends Bloc<CounterEvent, int> {

  @override
  int get initialState =>  0;// TODO: implement initialState;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* 
  {
    
    switch(event){
      case CounterEvent.increment:
        yield state + 100;
        break;
      case CounterEvent.decrement:
        yield state - 100;
        break;
    }

  }
}