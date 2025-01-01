import 'package:flutter_bloc/flutter_bloc.dart';

class FormEvent {}

class FormSubmitEvent extends FormEvent {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String country;
  final String state;
  final String city;

  FormSubmitEvent({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.country,
    required this.state,
    required this.city,
  });
}

class FormBlocState {
  final bool isValid;
  final bool isSubmitting;

  FormBlocState({this.isValid = false, this.isSubmitting = false});

  FormBlocState copyWith({bool? isValid, bool? isSubmitting}) {
    return FormBlocState(
      isValid: isValid ?? this.isValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }
}

class FormBloc extends Bloc<FormEvent, FormBlocState> {
  FormBloc() : super(FormBlocState()) {
    // Register the event handler for FormSubmitEvent
    on<FormSubmitEvent>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      // Simulate a delay for submission
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(isSubmitting: false, isValid: true));
    });
  }
}
