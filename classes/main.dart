import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';
import 'pessoa.dart';

void main() {
  var conta = Conta(
    cliente: Cliente(
      id: '123',
      cpf: "12345678978",
      nome: 'Jose',
      sobrenome: 'Carlos',
    ),
    cartao: Cartao(
      limite: 5000,
      numero: '12345678',
      mes: 06,
      ano: 25,
      codigo: 456,
    ),
    faturas: [
      Fatura(
        compras: [
          Compra(
            valor: 12.5,
            descricao: 'Uber',
            data: '02/06/2022',
          ),
          Compra(
            valor: 100.0,
            descricao: 'mercado',
            data: '14/06',
          ),
        ],
        mes: 06,
        ano: 2022,
      ),
    ],
  );
}
