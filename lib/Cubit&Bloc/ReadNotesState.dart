abstract class ReadNotesState{

}
class InitialReadNotesState extends ReadNotesState{

}

class LoadingReadNotesState extends ReadNotesState{

}
class SuccessReadNotesState extends ReadNotesState{
  
}
class FailureReadNotesState extends ReadNotesState{
   String eMessage='';
  FailureReadNotesState({required this.eMessage});
}