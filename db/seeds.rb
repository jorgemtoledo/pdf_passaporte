# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guide.create!(
  {
    company: 'LIFECOR - Fone: 3201-3035', 
    address: 'RUA HELIO YOSHIAKI IKEZIRI, 34 - ED EVIDENCE - S 901',
    patient: 'ANDRE LUIZ DOS SANTOS',
    doctor: 'EXAMES',
    date: '07/01/2019',
    hour: '10:00',
    specialty: 'Teste',
    exam: ' -TESTE ERGOMETRICO',
    document: 'RG',
    passport: 'PASSAPORTE SAÚDE',
    value: '45,00',
    registration: '6441'
  })