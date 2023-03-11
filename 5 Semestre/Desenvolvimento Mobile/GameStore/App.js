//biblioteca para melhorar a sensibilidade do touch
import 'react-native-gesture-handler';
import React from 'react';
//biblioteca de navegação entre as telas
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import TelaPrincipal from './src/components/TelaPrincipal/telaprincipal';
import Login from './src/components/Login/login';
 
const Stack = createStackNavigator(); // Cria uma pilha de telas

class App extends React.Component {
  render() {
    return (
      <NavigationContainer> // Container principal para a navegação
        <Stack.Navigator> // Define as telas da pilha
          <Stack.Screen
            name="VikingsGamestore" // Nome da tela principal
            component={TelaPrincipal} // Componente a ser renderizado
          />
          <Stack.Screen
            name="Login" // Nome da tela de login
            component={Login} // Componente a ser renderizado
          />
        </Stack.Navigator>
      </NavigationContainer>
    );
  }
}
 
export default App; // Exporta o componente App
