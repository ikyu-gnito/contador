mixin ValidationMixin {
  String? isNotEmpyt(String? value, [String? massage]) {
    if (value!.isEmpty) return massage ?? "Campo inválido";
  }

  String? hasOnzeCaracteres(String? value, [String? massage]) {
  if (value!.length < 11) return massage ?? "Tem menos de 11 caracteres";
  }

  String? combine(List<String? Function()> validators)
  {
    for (final func in validators)
    {
      final validation = func();
      if(validation != null)
      {
        return validation;
      }
    }
  }

}