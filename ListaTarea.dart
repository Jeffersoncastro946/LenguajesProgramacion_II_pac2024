/*Lista de Tareas
Crear una clase Tarea que represente una tarea 
con un título, una descripción y un estado
(completa o incompleta). Luego, crea una lista de tareas (List<Tarea>) y funciones en la 
clase para agregar, eliminar y marcar tareas como completadas*/
void main() {
  final ListaTarea lsTarea = ListaTarea();

  //AGRGANDO TAREAS A LA LISTA
  Tarea tareaA = Tarea("lavar", "trastes sucios deben lavarse");
  Tarea tareaB = Tarea("lavar", "ropa sucios deben lavarse");
  Tarea tareaC = Tarea("lavar", "juguetes sucios deben lavarse");
  Tarea tareaD = Tarea("lavar", "zapatos sucios deben lavarse");
  lsTarea.agregarLista(tareaA);
  lsTarea.agregarLista(tareaB);
  lsTarea.agregarLista(tareaC);
  lsTarea.agregarLista(tareaD);

  //MOSTRANDO TAREAS

  lsTarea.mostrarTarea();

  //completando la primera tarea
  lsTarea.marcarCpltada(0);
  lsTarea.mostrarTarea();

  //borrando la primera tarea

  lsTarea.borrarTarea(0);
  lsTarea.mostrarTarea();
}

class Tarea {
  late String? titulo;
  late String descripcion;
  late bool estado;

  //para crear la tarea
  Tarea(this.titulo, this.descripcion, {this.estado = false});

  //para completar tarea
  set complete(bool valor) => estado = valor;
}

class ListaTarea {
  //se crea la clase de lista tarea que tendra un arreglo para almacenar varias tareas
  late List<Tarea> listaTarea = [];

  //agregar
  void agregarLista(Tarea tarea) {
    listaTarea.add(tarea);
  }

  //mostrar tarea
  void mostrarTarea() {
    listaTarea.forEach((tarea) {
      print(
          "la tarea con titulo ${tarea.titulo} y descripcion ${tarea.descripcion} esta finalizada ${tarea.estado}");
      print(" ");
    });
  }

  void borrarTarea(int i) {
    if (i >= 0 && i < listaTarea.length) {
      listaTarea.removeAt(i);
    } else {
      print("Error Posicion invalida");
    }
  }

  void marcarCpltada(int i) {
    if (i >= 0 && i < listaTarea.length) {
      listaTarea[i].complete = true;
    } else {
      print("Error Posicion invalida");
    }
  }
}
