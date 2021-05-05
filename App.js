import React, {Component} from 'react';
import {StyleSheet, Text, View, NativeModules, Button} from 'react-native';
const {BigIntDemo} = NativeModules;

export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }
  getKey = () => {
    BigIntDemo.getKey();
    this.printKey();
  };

  printKey = () => {
    BigIntDemo.callbackToGetKey((error, privateK) => {
      console.log("react native end >> privatekey =  " + privateK );
    });
  };


  render() {
    return (
      <View style={styles.container}>

      <Button onPress={this.getKey} title="print key" color="green" />

      </View>
    );
  }
}
const styles = StyleSheet.create({
  container: {flex: 1, justifyContent: 'center', alignItems: 'center', backgroundColor: '#d3d3d3',},
});