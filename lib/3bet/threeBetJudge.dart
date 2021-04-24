class ThreeBetJudgeData {

  specialJudge3bet(int firstHandNumber, int secondHandNumber, String position,
      String openRaisePosition, int firstSuitNumber, int secondSuitNumber) {
    //あなたがHJ
    if(position=='HJ'&& openRaisePosition=='UTG'){
      //ポケット
      if(firstHandNumber==secondHandNumber){
        if(firstHandNumber==11){
          return [2,3,82];
        }
        else if(firstHandNumber==10){
          return [2,3,7];
        }
        else{
          return [0];
        }
      }
      //スーツの時
      else if(firstSuitNumber==secondSuitNumber){
        if(firstHandNumber==1){
          if(secondHandNumber==12){
            return [2,3,39];
          }
          else if(secondHandNumber==11){
            return [2,3,92];
          }
          else if(secondHandNumber==5){
            return [1,3,89];
          }
          else if(secondHandNumber==2){
            return [1,3,82];
          }
          else{
            return [0];
          }
        }
        else if(secondHandNumber==1){
          if(firstHandNumber==12){
            return [2,3,39];
          }
          else if(firstHandNumber==11){
            return [2,3,92];
          }
          else if(firstHandNumber==5){
            return [1,3,89];
          }
          else if(firstHandNumber==2){
            return [1,3,82];
          }
          else{
            return [0];
          }
        }
        else if(firstHandNumber==7 && secondHandNumber==6 ||firstHandNumber==6 && secondHandNumber==7){
          return [1,3,51];
        }
        else if(firstHandNumber==6 && secondHandNumber==5 ||firstHandNumber==5 && secondHandNumber==6){
          return [2,3,76];
        }
        else if(firstHandNumber==5 && secondHandNumber==4 ||firstHandNumber==4 && secondHandNumber==5){
          return [1,3,28];
        }
        else{
          return [0];
        }
      }
      //オフスーツの時
      else{
        return [0];
      }
    }
    //あなたがCO
    else if(position=='CO'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==12 && secondHandNumber==12){
          return [2,3,97];
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,42];
          }
          else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,83];
          }
          else if (firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
            return [1,3,94];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [2,3,4];
          }
          else if(firstHandNumber==7 && secondHandNumber==6 ||firstHandNumber==6 && secondHandNumber==7){
            return [1,3,40];
          }
          else if(firstHandNumber==6 && secondHandNumber==5 ||firstHandNumber==5 && secondHandNumber==6){
            return [2,3,60];
          }
          else if(firstHandNumber==5 && secondHandNumber==4 ||firstHandNumber==4 && secondHandNumber==5){
            return [1,3,14];
          }
          else {
            return [0];
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,44];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==11){
            return [2,3,46];
          }
          else if(firstHandNumber==8){
            return [2,3,8];
          }
          else{
            return [0];
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,47];
          }
          else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,80];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [2,3,6];
          }
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [1,3,3];
          }
          else if(firstHandNumber==7 && secondHandNumber==6 ||firstHandNumber==6 && secondHandNumber==7){
            return [1,3,66];
          }
          else if(firstHandNumber==6 && secondHandNumber==5 ||firstHandNumber==5 && secondHandNumber==6){
            return [2,3,91];
          }
          else if(firstHandNumber==5 && secondHandNumber==4 ||firstHandNumber==4 && secondHandNumber==5){
            return [1,3,40];
          }
          else{
            return [0];
          }
        }
        //オフスーツ
        else{
          if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,84];
          }
          else{
            return [0];
          }
        }
      }
    }
    //あなたがBTN
    else if(position=='BTN'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==11 && secondHandNumber==11){
          return [2,3,27];
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,42];
          }
          else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,57];
          }
          else if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
            return [2,3,91];
          }
          else if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
            return [1,2,14];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [2,3,96];
          }
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [1,3,5];
          }
          else if(firstHandNumber==7 && secondHandNumber==6 ||firstHandNumber==6 && secondHandNumber==7){
            return [1,3,86];
          }
          else if(firstHandNumber==6 && secondHandNumber==5 ||firstHandNumber==5 && secondHandNumber==6){
            return [2,3,93];
          }
          else if(firstHandNumber==5 && secondHandNumber==4 ||firstHandNumber==4 && secondHandNumber==5){
            return [2,3,67];
          }
          else{
            return [0];
          }
        }
        else{
          if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,34];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='HJ'){
          if(firstHandNumber==11 && secondHandNumber==11){
            return [2,3,82];
          }
          //スーツの時
          else if(firstSuitNumber==secondSuitNumber){
            if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
              return [2,3,62];
            }
            else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
              return [2,3,32];
            }
            else if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
              return [2,3,75];
            }
            else if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
              return [1,3,69];
            }
            else if (firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
              return [1,3,10];
            }
            else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
              return [1,3,5];
            }
            else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
              return [1,3,5];
            }
            else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
              return [1,3,5];
            }
            else if (firstHandNumber==8 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==8){
              return [1,3,7];
            }
            else if(firstHandNumber==7 && secondHandNumber==6 ||firstHandNumber==6 && secondHandNumber==7){
              return [1,3,91];
            }
            else if(firstHandNumber==6 && secondHandNumber==5 ||firstHandNumber==5 && secondHandNumber==6){
              return [2,3,91];
            }
            else if(firstHandNumber==5 && secondHandNumber==4 ||firstHandNumber==4 && secondHandNumber==5){
              return [2,3,82];
            }
            else{
              return [0];
            }
          }
          else{
            if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
              return [2,3,37];
            }
            else if(firstHandNumber==1 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==1){
              return [1,3,14];
            }
            else if(firstHandNumber==13 && secondHandNumber==12 ||firstHandNumber==12 && secondHandNumber==13){
              return [1,3,30];
            }
            else{
              return [0];
            }
          }
      }
      else if(openRaisePosition=='CO'){
          if(firstHandNumber==11 && secondHandNumber==11){
            return [2,3,96];
          }
          else if(firstHandNumber==10 &&secondHandNumber==10){
            return [2,3,36];
          }
          //スーツの時
          else if(firstSuitNumber==secondSuitNumber){
            if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
              return [2,3,91];
            }
            else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
              return [2,3,16];
            }
            else if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
              return [2,3,56];
            }
            else if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
              return [1,3,69];
            }
            else if (firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
              return [1,3,64];
            }
            else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
              return [1,3,47];
            }
            else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
              return [1,3,27];
            }
            else if (firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
              return [2,3,3];
            }
            else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
              return [1,3,7];
            }
            else if (firstHandNumber==9 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==9){
              return [1,3,3];
            }
            else if (firstHandNumber==8 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==8){
              return [1,3,20];
            }
            else if(firstHandNumber==7 && secondHandNumber==6 ||firstHandNumber==6 && secondHandNumber==7){
              return [1,3,96];
            }
            else if (firstHandNumber==7 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==7){
              return [1,3,3];
            }
            else if(firstHandNumber==6 && secondHandNumber==5 ||firstHandNumber==5 && secondHandNumber==6){
              return [2,3,95];
            }
            else if (firstHandNumber==6 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==6){
              return [1,3,7];
            }
            else if(firstHandNumber==5 && secondHandNumber==4 ||firstHandNumber==4 && secondHandNumber==5){
              return [1,3,91];
            }
            else if(firstHandNumber==5 && secondHandNumber==3 ||firstHandNumber==3 && secondHandNumber==5){
              return [1,3,4];
            }
            else{
              return [0];
            }
          }
          else{
            if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
              return [2,3,21];
            }
            else if(firstHandNumber==1 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==1){
              return [1,3,61];
            }
            else if(firstHandNumber==13 && secondHandNumber==12 ||firstHandNumber==12 && secondHandNumber==13){
              return [1,3,81];
            }
            else{
              return [0];
            }
          }
        }
      }

    //あなたがSB
    else if(position=='SB'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==9){
            return [2,3,8];
          }
          else if(firstHandNumber==8){
            return [2,3,33];
          }
          else{
            return [0];
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
            return [1,3,4];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [1,3,95];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [1,3,10];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [1,3,33];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [1,3,91];
          }
          else if (firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==12 && secondHandNumber==11){
            return [1,3,85];
          }
          else if (firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
            return [1,3,3];
          }
        }
        //オフスーツ
        else{
          if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,93];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==9){
            return [2,3,76];
          }
          else if(firstHandNumber==7){
            return [2,3,39];
          }
          else{
            return [0];
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
            return [1,3,35];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [1,3,89];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [1,3,5];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [1,3,35];
          }
          else if (firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
            return [1,3,20];
          }
          else if (firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12){
            return [1,3,35];
          }
          else if (firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
            return [1,3,87];
          }
          else{
            return[0];
          }
        }
        //オフスーツ
        else{
          if(firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [1,3,6];
          }
          else if(firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return [1,3,24];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='CO'){
        if (firstHandNumber==secondHandNumber){
          if (firstHandNumber==6){
            return [2,3,95];
          }
          else if(firstHandNumber==5){
            return [1,3,59];
          }
          else{
            return [0];
          }
        }
        //スーツ
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
            return [1,3,37];
          }
          else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
            return [1,3,12];
          }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
            return [1,3,6];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [1,3,93];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [1,3,9];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [1,3,27];
          }
          else if (firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
            return [2,3,94];
          }
          else if (firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
            return [1,3,6];
          }
          else if (firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11){
            return [1,21];
          }
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [1,3,83];
          }
          else{
            return [0];
          }
        }
        //オフスート
        else{
          if(firstHandNumber==12 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==12){
            return [1,3,7];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='BTN'){
        if(firstHandNumber==secondHandNumber){
          return [0];
        }
        //スート
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
            return [1,3,74];
          }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
            return [1,3,47];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [1,3,30];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [1,3,30];
          }
          else if (firstHandNumber==13 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==13){
            return [1,3,79];
          }
          else if (firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
            return [1,3,61];
          }
          else if (firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11){
            return [1,3,96];
          }
          else{
            return [0];
          }
        }
        //オフスーツ
        else{
          if(firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [1,3,19];
          }
          else if(firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
            return [1,3,68];
          }
          else{
            return [0];
          }
        }
      }
    }
    //あなたがBB
    else if(position=='BB'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==12){
            return [2,3,94];
          }
          else if(firstHandNumber==11){
            return [2,3,44];
          }
          else if(firstHandNumber==10){
            return [2,3,4];
          }
          else{
            return [0];
          }
        }
        //スート
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,91];
          }
          else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,9];
          }
          else if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
            return [2,3,7];
          }
          else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
            return [2,3,4];
          }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
            return [2,3,6];
          }
          else if (firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
            return [2,3,10];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [2,3,8];
          }
          else if(firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return [2,3,24];
          }
          else{
            return [0];
          }
        }
        //オフスーツ
        else{
          if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1){
            return [2,3,13];
          }
          else if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,9];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==10){
            return [2,3,75];
          }
          else{
            return [0];
          }
        }
        //スーツ
        else if (firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
           return [2,3,71];
          }
          else if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
           return [2,3,9];
          }
          else if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
           return [2,3,5];
         }
          else if (firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
           return [2,3,5];
         }
          else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
           return [2,3,13];
         }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
           return [2,3,3];
         }
          else if (firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
           return [2,3,14];
         }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
           return [2,3,8];
         }
          else if (firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return [2,3,78];
          }
          else if (firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
            return [2,3,52];
          }
          else if (firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
            return [2,3,3];
          }
          else{
            return [0];
          }
        }
        //オフスート
        else{
          if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,13];
          }
          else if(firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,6];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='CO'){
        if (firstHandNumber==secondHandNumber){
          if (firstHandNumber==7){
            return [2,3,4];
          }
          else if (firstHandNumber==6){
            return [2,3,13];
          }
          else{
            return [0];
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
            return [2,3,76];
          }
          else if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
            return [2,3,14];
          }
          else if (firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
            return [2,3,30];
          }
          else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
            return [2,3,39];
          }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
            return [2,3,16];
          }
          else if (firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
            return [2,3,34];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [2,3,26];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [2,3,35];
          }
          else if (firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
            return [2,3,80];
          }
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [2,3,9];
          }
          else{
            return [0];
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,34];
          }
          else if(firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,30];
          }
          else if(firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
            return [2,3,4];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='BTN'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==9){
            return [2,3,28];
          }
          else if(firstHandNumber==8){
            return [2,3,81];
          }
          else if(firstHandNumber==7){
            return [2,3,96];
          }
          else if(firstHandNumber==5){
            return [2,3,5];
          }
          else{
            return [0];
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if (firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
            return [2,3,43];
          }
          else if (firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
            return [2,3,47];
          }
          else if (firstHandNumber==1 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==1){
            return [2,3,61];
          }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
            return [2,3,47];
          }
          else if (firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
            return [2,3,78];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [2,3,89];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [2,3,57];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [2,3,45];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [2,3,94];
          }
          else if (firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12){
            return [2,3,24];
          }
          else if (firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
            return [2,3,4];
          }
          else if (firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11){
            return [2,3,10];
          }
          else if (firstHandNumber==11&& secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==11){
            return [2,3,3];
          }
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [2,3,91];
          }
          else if (firstHandNumber==10 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==10){
            return [2,3,11];
          }
          else if (firstHandNumber==9 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==9){
            return [2,3,5];
          }
          else if (firstHandNumber==8 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==8){
            return [2,3,3];
          }
          else{
            return [0];
          }
        }
        //オフスーツ
        else{
          if (firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return [2,3,52];
          }
          else if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,46];
          }
          else if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
            return [2,3,32];
          }
          else if (firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return [2,3,77];
          }
          else if (firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
            return [2,3,19];
          }
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [2,3,6];
          }
          else if (firstHandNumber==8 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==8){
            return [1,3,6];
          }
          else{
            return [0];
          }
        }
      }
      else if(openRaisePosition=='SB'){
        if(firstHandNumber==secondHandNumber){
          if (firstHandNumber==9){
            return [2,3,72];
          }
          else {
            return [0];
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          //エース
          if (firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
            return [2,3,43];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [2,3,14];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [2,3,58];
          }
          //キング
          else if (firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
            return [2,3,79];
          }
          else if (firstHandNumber==13 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==13){
            return [2,3,12];
          }
          else if (firstHandNumber==13 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==13){
            return [2,3,7];
          }
          else if (firstHandNumber==13 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==13){
            return [2,3,15];
          }
          else if (firstHandNumber==13 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==13){
            return [2,3,19];
          }
          else if (firstHandNumber==13 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==13){
            return [2,3,74];
          }
          else if (firstHandNumber==13 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==13){
            return [2,3,70];
          }
          //クイーン
          else if (firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
            return [2,3,89];
          }
          else if (firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12){
            return [2,3,91];
          }
          else if (firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
            return [2,3,46];
          }
          else if (firstHandNumber==12 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==12){
            return [2,3,95];
          }
          else if (firstHandNumber==12 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==12){
            return [2,3,21];
          }
          else if (firstHandNumber==12 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==12){
            return [2,3,9];
          }
          else if (firstHandNumber==12 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==12){
            return [2,3,11];
          }
          else if (firstHandNumber==12 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==12){
            return [2,3,13];
          }
          else if (firstHandNumber==12 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==12){
            return [2,3,14];
          }
          else if (firstHandNumber==12 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==12){
            return [2,3,22];
          }
          //ジャック
          else if (firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
            return [2,3,78];
          }
          else if (firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11){
            return [2,3,72];
          }
          else if (firstHandNumber==11 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==11){
            return [2,3,19];
          }
          else if (firstHandNumber==11 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==11){
            return [2,3,19];
          }
          else if (firstHandNumber==11 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==11){
            return [2,3,12];
          }
          else if (firstHandNumber==11 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==11){
            return [2,3,13];
          }
          else if (firstHandNumber==11 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==11){
            return [2,3,15];
          }
          else if (firstHandNumber==11 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==11){
            return [2,3,10];
          }
          else if (firstHandNumber==11 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==11){
            return [2,3,11];
          }
          //10
          else if (firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return [2,3,15];
          }
          else if (firstHandNumber==10 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==10){
            return [2,3,9];
          }
          else if (firstHandNumber==10 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==10){
            return [2,3,9];
          }
          //9
          else if (firstHandNumber==9 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==9){
            return [2,3,4];
          }
          else if (firstHandNumber==9 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==9){
            return [2,3,6];
          }
          //8
          else if (firstHandNumber==8 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==8){
            return [2,3,6];
          }
          else{
            return [0];
          }
        }
        //オフスーツ
        else{
          //エース
          if (firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
            return [2,3,51];
          }
          else if (firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
            return [2,3,8];
          }
          else if (firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
            return [2,3,12];
          }
          else if (firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
            return [2,3,68];
          }
          else if (firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
            return [2,3,95];
          }
          else if (firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
            return [2,3,84];
          }
          //キング
          else if (firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return [2,3,52];
          }
          else if (firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return [2,3,6];
          }
          else if (firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
            return [2,3,5];
          }
          else if (firstHandNumber==13 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==13){
            return [2,3,23];
          }
          else if (firstHandNumber==13 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==13){
            return [2,3,15];
          }
          else if (firstHandNumber==13 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==13){
            return [2,3,15];
          }
          else if (firstHandNumber==13 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==13){
            return [1,3,21];
          }
          else if (firstHandNumber==13 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==13){
            return [1,3,6];
          }
          else if (firstHandNumber==13 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==13){
            return [1,3,7];
          }
          else if (firstHandNumber==13 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==13){
            return [1,3,10];
          }
          else if (firstHandNumber==13 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==13){
            return [1,3,13];
          }
          //クイーン
          else if (firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12){
            return [2,3,24];
          }
          else if (firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
            return [2,3,19];
          }
          else if (firstHandNumber==12 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==12){
            return [2,3,16];
          }
          //ジャック
          else if (firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11){
            return [2,3,16];
          }
          else if (firstHandNumber==11 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==11){
            return [2,3,19];
          }
          //10
          else if (firstHandNumber==10 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==10){
            return [2,3,7];
          }
          //9
          else if (firstHandNumber==9 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==11){
            return [2,3,8];
          }
    else{
            return [0];
          }
        }
      }
    }
  }

  judge3bet(int firstHandNumber, int secondHandNumber, String position,
      String openRaisePosition, int firstSuitNumber, int secondSuitNumber) {
    //あなたがHJ
    if(position=='HJ'&& openRaisePosition=='UTG'){
      if(firstHandNumber==secondHandNumber){
        if(firstHandNumber==1 || firstHandNumber==13 || firstHandNumber==12){
          return 3;
        }
        else if(firstHandNumber>=9 && firstHandNumber<=11 ){
          return 2;
        }
        else{
          return 1;
        }
      }
      //スーツの時
      else if(firstSuitNumber==secondSuitNumber){
        if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1 ||
           firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1 ||
           firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1 ||
            firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1 ||
            firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
          return 3;
        }
        else{
          return 1;
        }
      }
      //オフスーツの時
      else{
        if (firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1){
          return 3;
        }
        else{
          return 1;
        }
      }
    }
    //あなたがCO
    else if(position=='CO'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber==13){
            return 3;
          }
          else if(firstHandNumber<=11 && firstHandNumber>=8){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==10 ||firstHandNumber==10 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber<=4 && secondHandNumber>=2 || firstHandNumber<=4 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return 3;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if (firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if (firstHandNumber==1 ||firstHandNumber==13 ||firstHandNumber==12){
            return 3;
          }
          else if(firstHandNumber==10 ||firstHandNumber==9){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==10 ||firstHandNumber==10 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber<=5 && secondHandNumber>=2 || firstHandNumber<=5 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return 3;
          }
          else if(firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
    }
    //あなたがBTN
    else if(position=='BTN'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber==13 || firstHandNumber==12){
            return 3;
          }
          else if(firstHandNumber<=10 && firstHandNumber>=7){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber<=5 && secondHandNumber>=2 || firstHandNumber<=5 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
            return 3;
          }
          else if(firstHandNumber==12 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==10 ||firstHandNumber==10 && secondHandNumber==11 ){
            return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber==13 || firstHandNumber==12){
            return 3;
          }
          else if(firstHandNumber<=10 && firstHandNumber>=7){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber<=5 && secondHandNumber>=2 || firstHandNumber<=5 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13 ||
              firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return 3;
          }
          else if(firstHandNumber==12 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==10 ||firstHandNumber==10 && secondHandNumber==11 ){
            return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='CO'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber==13 || firstHandNumber==12){
            return 3;
          }
          else if(firstHandNumber<=9 && firstHandNumber>=7){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber<=5 && secondHandNumber>=2 || firstHandNumber<=5 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13 ||
              firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
            return 3;
          }
          else if(firstHandNumber==12 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==10 ||firstHandNumber==10 && secondHandNumber==11 ){
            return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
    }
    //あなたがSB
    else if(position=='SB'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber<=13 && firstHandNumber>=10){
            return 3;
          }
          else if(firstHandNumber==7){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if( firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=10 || firstHandNumber<=13 && firstHandNumber>=10 && secondHandNumber==1 ||
             firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13 ){
            return 3;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber<=13 && firstHandNumber>=10 || firstHandNumber==8){
            return 3;
          }
          else if(firstHandNumber==6){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if( firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=10 || firstHandNumber<=13 && firstHandNumber>=10 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13 ||
              firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13 ||
              firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
            return 3;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==12 ||firstHandNumber==12 && secondHandNumber==1){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='CO'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber<=13 && firstHandNumber>=7 ){
            return 3;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if( firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=9 || firstHandNumber<=13 && firstHandNumber>=9 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13 ||
              firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13 ||
              firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12 ||
              firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
            return 3;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=11 ||firstHandNumber<=13 && firstHandNumber>=11 && secondHandNumber==1 ||
          firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13
          ){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='BTN'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber<=13 && firstHandNumber>=5){
            return 3;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if( firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=8 || firstHandNumber<=13 && firstHandNumber>=8 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber<=12 && secondHandNumber>=10 || firstHandNumber<=12 && firstHandNumber>=10 && secondHandNumber==13 ||
              firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12 ||
              firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11 ||
              firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==10){
            return 3;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=11 ||firstHandNumber<=13 && firstHandNumber>=11 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13
          ){
            return 3;
          }
          else{
            return 1;
          }
        }
      }
    }
    //あなたがBB
    else if(position=='BB'){
      if(openRaisePosition=='UTG'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber==13 ){
            return 3;
          }
          else if(firstHandNumber<=9 && firstHandNumber>=2){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else if(firstHandNumber==1 && secondHandNumber<=9 && secondHandNumber>=8 || firstHandNumber<=9 && firstHandNumber>=8 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber<=3 && secondHandNumber>=2 || firstHandNumber<=3 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber<=11 && secondHandNumber>=9 || firstHandNumber<=11 && firstHandNumber>=9 && secondHandNumber==13 ||
              firstHandNumber==12 && secondHandNumber<=11 && secondHandNumber>=9 || firstHandNumber<=11 && firstHandNumber>=9 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber<=10 && secondHandNumber>=9 || firstHandNumber<=10 && firstHandNumber>=9 && secondHandNumber==11 ||
              firstHandNumber==10 && secondHandNumber<=9 && secondHandNumber>=8 || firstHandNumber<=9 && firstHandNumber>=8 && secondHandNumber==10 ||
              firstHandNumber==9 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==9 ||
              firstHandNumber==8 && secondHandNumber<=7 && secondHandNumber>=6 || firstHandNumber<=7 && firstHandNumber>=6 && secondHandNumber==8 ||
              firstHandNumber==7 && secondHandNumber<=6 && secondHandNumber>=5 || firstHandNumber<=6 && firstHandNumber>=5 && secondHandNumber==7 ||
              firstHandNumber==6 && secondHandNumber<=5 && secondHandNumber>=4 || firstHandNumber<=5 && firstHandNumber>=4 && secondHandNumber==6 ||
              firstHandNumber==5 && secondHandNumber<=4 && secondHandNumber>=3 || firstHandNumber<=4 && firstHandNumber>=3 && secondHandNumber==5 ){
          return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber<=11 && secondHandNumber>=10 ||firstHandNumber<=11 && firstHandNumber>=10 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13
          ){
            return 2;
          }
          else{
            return 1;
          }
        }
        }
      else if(openRaisePosition=='HJ'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber<=13 && firstHandNumber>=11){
            return 3;
          }
          else if(firstHandNumber<=9 && firstHandNumber>=2){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1 ){
            return 3;
          }
          else if(firstHandNumber==1 && secondHandNumber<=3 && secondHandNumber>=2 || firstHandNumber<=3 && firstHandNumber>=2 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber<=11 && secondHandNumber>=7 || firstHandNumber<=11 && firstHandNumber>=7 && secondHandNumber==13 ||
              firstHandNumber==12 && secondHandNumber<=10 && secondHandNumber>=9 || firstHandNumber<=10 && firstHandNumber>=9 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11 ||
              firstHandNumber==10 && secondHandNumber<=9 && secondHandNumber>=8 || firstHandNumber<=9 && firstHandNumber>=8 && secondHandNumber==10 ||
              firstHandNumber==9 && secondHandNumber<=8 && secondHandNumber>=7 || firstHandNumber<=8 && firstHandNumber>=7 && secondHandNumber==9 ||
              firstHandNumber==8 && secondHandNumber<=7 && secondHandNumber>=6 || firstHandNumber<=7 && firstHandNumber>=6 && secondHandNumber==8 ||
              firstHandNumber==7 && secondHandNumber<=6 && secondHandNumber>=5 || firstHandNumber<=6 && firstHandNumber>=5 && secondHandNumber==7 ||
              firstHandNumber==6 && secondHandNumber<=5 && secondHandNumber>=4 || firstHandNumber<=5 && firstHandNumber>=4 && secondHandNumber==6 ||
              firstHandNumber==5 && secondHandNumber<=4 && secondHandNumber>=3 || firstHandNumber<=4 && firstHandNumber>=3 && secondHandNumber==5 ){
            return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツの時
        else{
          if(firstHandNumber==1 && secondHandNumber==13 ||firstHandNumber==13 && secondHandNumber==1){
            return 3;
          }
          else if(firstHandNumber==1 && secondHandNumber==10 ||firstHandNumber==10 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber==12 ||firstHandNumber==12&& secondHandNumber==13 ||
              firstHandNumber==13 && secondHandNumber==11 ||firstHandNumber==11 && secondHandNumber==13 ||
              firstHandNumber==12 && secondHandNumber==11 ||firstHandNumber==12 && secondHandNumber==11){
            return 2;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='CO'){
        if(firstHandNumber==secondHandNumber) {
            if (firstHandNumber == 1 ||
                firstHandNumber <= 13 && firstHandNumber >= 10) {
              return 3;
            }
            else if (firstHandNumber <= 9 && firstHandNumber >= 8 ||
                firstHandNumber <= 5 && firstHandNumber >= 2) {
              return 2;
            }
            else {
              return 1;
            }
        }
      //スーツの時
      else if(firstSuitNumber==secondSuitNumber) {
            if (firstHandNumber == 1 && secondHandNumber <= 13 &&
                secondHandNumber >= 11 ||
                firstHandNumber <= 13 && firstHandNumber >= 11 &&
                    secondHandNumber == 1 ||
                firstHandNumber == 13 && secondHandNumber == 12 ||
                firstHandNumber == 12 && secondHandNumber == 13 ||
                firstHandNumber == 12 && secondHandNumber == 11 ||
                firstHandNumber == 11 && secondHandNumber == 12) {
              return 3;
            }
            else if (firstHandNumber == 1 && secondHandNumber <= 3 &&
                secondHandNumber >= 2 ||
                firstHandNumber <= 3 && firstHandNumber >= 2 &&
                    secondHandNumber == 1 ||
                firstHandNumber == 13 && secondHandNumber <= 10 &&
                    secondHandNumber >= 6 || firstHandNumber <= 10 &&
                firstHandNumber >= 6 && secondHandNumber == 13 ||
                firstHandNumber == 13 && secondHandNumber == 4 ||
                firstHandNumber == 4 && secondHandNumber == 13 ||
                firstHandNumber == 12 && secondHandNumber <= 10 &&
                    secondHandNumber >= 8 ||
                firstHandNumber <= 10 && firstHandNumber >= 8 &&
                    secondHandNumber == 12 ||
                firstHandNumber == 11 && secondHandNumber <= 9 &&
                    secondHandNumber >= 8 ||
                firstHandNumber <= 9 && firstHandNumber >= 8 &&
                    secondHandNumber == 11 ||
                firstHandNumber == 10 && secondHandNumber <= 8 &&
                    secondHandNumber >= 7 ||
                firstHandNumber <= 8 && firstHandNumber >= 7 &&
                    secondHandNumber == 10 ||
                firstHandNumber == 9 && secondHandNumber <= 8 &&
                    secondHandNumber >= 7 ||
                firstHandNumber <= 8 && firstHandNumber >= 7 &&
                    secondHandNumber == 9 ||
                firstHandNumber == 8 && secondHandNumber <= 7 &&
                    secondHandNumber >= 6 ||
                firstHandNumber <= 7 && firstHandNumber >= 6 &&
                    secondHandNumber == 8 ||
                firstHandNumber == 7 && secondHandNumber <= 6 &&
                    secondHandNumber >= 5 ||
                firstHandNumber <= 6 && firstHandNumber >= 5 &&
                    secondHandNumber == 7 ||
                firstHandNumber == 6 && secondHandNumber <= 5 &&
                    secondHandNumber >= 4 ||
                firstHandNumber <= 5 && firstHandNumber >= 4 &&
                    secondHandNumber == 6 ||
                firstHandNumber == 5 && secondHandNumber <= 4 &&
                    secondHandNumber >= 3 ||
                firstHandNumber <= 4 && firstHandNumber >= 3 &&
                    secondHandNumber == 5 ||
                firstHandNumber == 4 && secondHandNumber == 3 ||
                firstHandNumber == 3 && secondHandNumber == 4) {
              return 2;
            }
            else{
              return 1;
            }
          }
      //オフスーツ
      else{
        if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1){
          return 3;
        }
        else if(firstHandNumber==13 && secondHandNumber<=12 && secondHandNumber>=10 || firstHandNumber<=12 && firstHandNumber>=10 && secondHandNumber==13 ||
                firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12 ||
                firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
          return 2;
        }
        else{
          return 1;
        }
        }
      }
      else if(openRaisePosition=='BTN'){
        //ポケット
        if(firstHandNumber==secondHandNumber) {
          if (firstHandNumber == 1 ||
              firstHandNumber <= 13 && firstHandNumber >= 10 || firstHandNumber==6) {
            return 3;
          }
          else if(firstHandNumber==4 || firstHandNumber==3 || firstHandNumber==2){
            return 2;
          }
          else {
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber) {
         if (firstHandNumber == 1 && secondHandNumber <= 13 &&
            secondHandNumber >= 10 ||
            firstHandNumber <= 13 && firstHandNumber >= 10 &&
                secondHandNumber == 1 ||
            firstHandNumber == 13 && secondHandNumber == 12 ||
            firstHandNumber == 12 && secondHandNumber == 13 ||
            firstHandNumber == 12 && secondHandNumber == 11 ||
            firstHandNumber == 11 && secondHandNumber == 12 ||
            firstHandNumber == 11 && secondHandNumber == 10 ||
            firstHandNumber == 10 && secondHandNumber == 11) {
             return 3;
           }
         else if(firstHandNumber==13 && secondHandNumber<=10 && secondHandNumber>=2 || firstHandNumber<=10 && firstHandNumber>=2 && secondHandNumber==13 ||
                 firstHandNumber==12 && secondHandNumber<=8 && secondHandNumber>=6 || firstHandNumber<=8 && firstHandNumber>=6 && secondHandNumber==12 ||
                 firstHandNumber == 11 && secondHandNumber == 7 || firstHandNumber == 7 && secondHandNumber == 11 ||
                 firstHandNumber == 10 && secondHandNumber == 7 || firstHandNumber == 7 && secondHandNumber == 10 ||
                 firstHandNumber==9 && secondHandNumber<=7 && secondHandNumber>=6 || firstHandNumber<=7 && firstHandNumber>=6 && secondHandNumber==9 ||
                 firstHandNumber == 8 && secondHandNumber == 6 || firstHandNumber == 6 && secondHandNumber == 8 ||
                 firstHandNumber==7 && secondHandNumber<=6 && secondHandNumber>=5 || firstHandNumber<=6 && firstHandNumber>=5 && secondHandNumber==7 ||
                 firstHandNumber==6 && secondHandNumber<=5 && secondHandNumber>=4 || firstHandNumber<=5 && firstHandNumber>=4 && secondHandNumber==6 ||
                 firstHandNumber==5 && secondHandNumber<=4 && secondHandNumber>=3 || firstHandNumber<=4 && firstHandNumber>=3 && secondHandNumber==5 ||
                 firstHandNumber == 4 && secondHandNumber == 3 || firstHandNumber == 4 && secondHandNumber == 3){
           return 2;
         }
         else{
           return 1;
         }
      }
        //オフスート
        else{
          if(firstHandNumber == 1 && secondHandNumber == 13 || firstHandNumber == 13 && secondHandNumber == 1){
            return 3;
          }
          else if(firstHandNumber==1 && secondHandNumber<=9 && secondHandNumber>=8 || firstHandNumber<=9 && firstHandNumber>=8 && secondHandNumber==1 ||
                  firstHandNumber==10 && secondHandNumber<=13 && secondHandNumber>=11 || firstHandNumber<=13 && firstHandNumber>=11 && secondHandNumber==10 ||
                  firstHandNumber == 13 && secondHandNumber == 11 || firstHandNumber == 11 && secondHandNumber == 13){
            return 2;
          }
          else{
            return 1;
          }
        }
      }
      else if(openRaisePosition=='SB'){
        if(firstHandNumber==secondHandNumber){
          if(firstHandNumber==1 || firstHandNumber<=13 && firstHandNumber>=10){
            return 3;
          }
          else if(firstHandNumber<=8 && firstHandNumber>=2){
            return 2;
          }
          else{
            return 1;
          }
        }
        //スーツの時
        else if(firstSuitNumber==secondSuitNumber){
          if(firstHandNumber==1 && secondHandNumber<=13 && secondHandNumber>=11 || firstHandNumber<=13 && firstHandNumber>=11 && secondHandNumber==1 ||
              firstHandNumber==13 && secondHandNumber<=12 && secondHandNumber>=11 || firstHandNumber<=12 && firstHandNumber>=11 && secondHandNumber==13 ||
              firstHandNumber == 13 && secondHandNumber == 9 || firstHandNumber == 9 && secondHandNumber == 13){
            return 3;
          }
          else if(firstHandNumber==1 && secondHandNumber<=9 && secondHandNumber>=4 || firstHandNumber<=9 && firstHandNumber>=4 && secondHandNumber==1 ||
              firstHandNumber == 13 && secondHandNumber == 7 || firstHandNumber == 7 && secondHandNumber == 13 ||
              firstHandNumber==10 && secondHandNumber<=6 && secondHandNumber>=2 || firstHandNumber<=6 && firstHandNumber>=2 && secondHandNumber==10 ||
              firstHandNumber == 9 && secondHandNumber == 8|| firstHandNumber == 8&& secondHandNumber == 9 ||
              firstHandNumber==9 && secondHandNumber<=5 && secondHandNumber>=2 || firstHandNumber<=5 && firstHandNumber>=2 && secondHandNumber==9 ||
              firstHandNumber==8 && secondHandNumber<=7 && secondHandNumber>=2 || firstHandNumber<=7 && firstHandNumber>=2 && secondHandNumber==8 ||
              firstHandNumber==7 && secondHandNumber<=6 && secondHandNumber>=3 || firstHandNumber<=6 && firstHandNumber>=3 && secondHandNumber==7 ||
              firstHandNumber==6 && secondHandNumber<=5 && secondHandNumber>=2 || firstHandNumber<=5 && firstHandNumber>=2 && secondHandNumber==6 ||
              firstHandNumber==5 && secondHandNumber<=4 && secondHandNumber>=2 || firstHandNumber<=4 && firstHandNumber>=2 && secondHandNumber==5 ||
              firstHandNumber==4 && secondHandNumber<=3 && secondHandNumber>=2 || firstHandNumber<=3 && firstHandNumber>=2 && secondHandNumber==4 ||
              firstHandNumber == 3 && secondHandNumber == 2|| firstHandNumber == 2&& secondHandNumber == 3){
            return 2;
          }
          else{
            return 1;
          }
        }
        //オフスーツ
        else{
          if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1 ||
              firstHandNumber==1 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==1){
            return 3;
          }
          else if(firstHandNumber==1 && secondHandNumber<=10 && secondHandNumber>=7 || firstHandNumber<=10 && firstHandNumber>=7 && secondHandNumber==1 ||
              firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==12 && secondHandNumber==11 ||
              firstHandNumber==12 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==12 ||
              firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11 ||
              firstHandNumber==10 && secondHandNumber==9 || firstHandNumber==10 && secondHandNumber==9 ||
              firstHandNumber==10 && secondHandNumber==7 || firstHandNumber==17 && secondHandNumber==10 ||
              firstHandNumber==9 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==9 ||
              firstHandNumber==8 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==8 ||
              firstHandNumber==8 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==8 ||
              firstHandNumber==7 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==7 ||
              firstHandNumber==6 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==6 ||
              firstHandNumber==5 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==5){
            return 2;
          }
          else{
            return 1;
          }
        }
      }
    }
  }
}
