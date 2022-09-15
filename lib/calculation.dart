class Calculation {
  String _firstOperand = '';
  String _secondOperand = '';
  String? operator;

  String get firstOperand => _firstOperand;

  set firstOperand(String value) {
    _firstOperand = value;
  }

  String get secondOperand => _secondOperand;

  set secondOperand(String value) {
    _secondOperand = value;
  }

  void operatorFun() {
    num _fOperand = num.parse(
        _firstOperand.substring(0, _firstOperand.length - 1));
        num _sOperand = num.parse(secondOperand);
    switch (operator) {
      case '÷':
        {
           _firstOperand = _firstOperand + _secondOperand;
          secondOperand = (_fOperand / _sOperand).toString();
        }
        break;
      case '+':
        {
          firstOperand = _firstOperand + _secondOperand;
          secondOperand = '${_fOperand + _sOperand}';
        }
        break;
      case '-':
      {
        _firstOperand = _firstOperand + _secondOperand;
        _secondOperand  = '${_fOperand - _sOperand}';

      }
      break;

    case 'x':
    {
      _firstOperand = _firstOperand + _secondOperand;
      _secondOperand = '${_fOperand * _sOperand}';
    }
    break;
    default:
    {
    _secondOperand = 'Invalid';
    }
    }
  }
}
