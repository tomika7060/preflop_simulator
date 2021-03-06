


class OpenRangeJudgeData{

  specialJudgeOpenHand(int firstHandNumber,int secondHandNumber,String position,int firstSuitNumber,int secondSuitNumber){
    if (position == 'UTG'){
      if (firstSuitNumber==secondSuitNumber){
        if(firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
          return [1,3,4];
        }else{
          return [0];
        }
      }
      else{
        if(firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
          return [1,3,24];
        }
        else{
          return [0];
        }
      }
    }
    else if(position== 'HJ'){
      if(firstHandNumber==secondHandNumber){
        if(firstHandNumber==4 ){
          return [1,3,91];
        }
        else if(firstHandNumber==3){
          return [1,3,21];
        }
        else{
          return [0];
        }
      }
      else if(firstSuitNumber==secondSuitNumber){
        if (firstHandNumber==9 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==9){
          return [1,3,14];
        }
        else if(firstHandNumber==6 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==6){
          return [1,3,11];
        }
        else{
          return [0];
        }
      }
      else{
        if(firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
          return [1,3,7];
        }
        else if(firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
          return [1,3,90];
        }
        else if(firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12){
          return [1,3,10];
        }
        else{
          return [0];
        }
      }
    }
    else if(position=='CO'){
      if(firstSuitNumber==secondHandNumber){
        if(firstHandNumber==11 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==11){
          return [1,3,91];
        }
        else if(firstHandNumber==10 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==10){
          return [1,3,4];
        }
        else if(firstHandNumber==8 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==8){
          return [1,3,17];
        }
        else{
          return [0];
        }
      }
      else{
        return [0];
      }
    }
    else if(position=='BTN'){
      if(firstSuitNumber==secondSuitNumber){
        if(firstHandNumber==12 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==12){
          return [1,3,96];
        }
        else if(firstHandNumber==10 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==10){
          return [1,3,30];
        }
        else if(firstHandNumber==9 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==9){
          return [1,3,95];
        }
        else if(firstHandNumber==8 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==8){
          return [1,3,94];
        }
        else{
          return [0];
        }
      }
      else if(firstHandNumber==secondHandNumber){
        return [0];
      }
      else {
        if(firstHandNumber==13 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==13){
          return [1,3,4];
        }
        else{
          return [0];
        }
      }
    }
    //SB??????
    else if(position=='SB'){
      //??????????????????
      if(firstHandNumber==secondHandNumber){
        if(firstHandNumber==13){
          return [2,3,78];
        }
        else if(firstHandNumber==12){
          return [2,3,9];
        }
        else if(firstHandNumber==11){
          return [2,3,35];
        }
        else if(firstHandNumber==7){
          return [2,3,89];
        }
        else if(firstHandNumber==4){
          return [2,3,38];
        }
        else if(firstHandNumber==2){
          return [2,3,92];
        }
        else{
          return [0];
        }
      }
      //???????????????
      else if(firstSuitNumber==secondSuitNumber){
        if(firstHandNumber ==1 && secondHandNumber ==6 || firstHandNumber ==6 && secondHandNumber==1){
          return [2,3,6];
        }
        else if(firstHandNumber ==1 && secondHandNumber ==2 || firstHandNumber ==2 && secondHandNumber==1){
          return [2,3,14];
        }
        //??????????????????
        else if(firstHandNumber ==13 && secondHandNumber ==10 || firstHandNumber ==10 && secondHandNumber==13){
          return [2,3,83];
        }
        else if(firstHandNumber ==13  && secondHandNumber == 7|| firstHandNumber == 7&& secondHandNumber==13){
          return [2,3,4];
        }
        else if(firstHandNumber ==13 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==13){
          return [2,3,14];
        }
        else if(firstHandNumber ==13 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==13){
          return [2,3,14];
        }
        else if(firstHandNumber ==13 && secondHandNumber == 4|| firstHandNumber == 4&& secondHandNumber==13){
          return [2,3,8];
        }
        else if(firstHandNumber ==13 && secondHandNumber == 3|| firstHandNumber == 3 && secondHandNumber==13){
          return [2,3,6];
        }
        else if(firstHandNumber ==13 && secondHandNumber == 2|| firstHandNumber == 2&& secondHandNumber==13){
          return [2,3,9];
        }
        //??????????????????
        else if(firstHandNumber ==12 && secondHandNumber == 9|| firstHandNumber == 9 && secondHandNumber==12){
          return [2,3,37];
        }
        else if(firstHandNumber ==12 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==12){
          return [2,3,4];
        }
        else if(firstHandNumber ==12 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==12){
          return [2,3,10];
        }
        else if(firstHandNumber ==12 && secondHandNumber == 4|| firstHandNumber == 4 && secondHandNumber==12){
          return [2,3,8];
        }
        else if(firstHandNumber ==12 && secondHandNumber == 3|| firstHandNumber == 3 && secondHandNumber==12){
          return [2,3,14];
        }
        //??????????????????
        else if(firstHandNumber ==11 && secondHandNumber == 7|| firstHandNumber == 7 && secondHandNumber==11){
          return [2,3,65];
        }
        else if(firstHandNumber ==11 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==11){
          return [2,3,5];
        }
        else if(firstHandNumber ==11 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==11){
          return [2,3,13];
        }
        else if(firstHandNumber ==11 && secondHandNumber == 4|| firstHandNumber == 4 && secondHandNumber==11){
          return [2,3,13];
        }
        else if(firstHandNumber ==11 && secondHandNumber == 3|| firstHandNumber == 3 && secondHandNumber==11){
          return [2,3,5];
        }
        else if(firstHandNumber ==11 && secondHandNumber == 2|| firstHandNumber == 2 && secondHandNumber==11){
          return [2,3,5];
        }
        //??????????????????
        else if(firstHandNumber ==10 && secondHandNumber == 9|| firstHandNumber == 9 && secondHandNumber==10){
          return [2,3,84];
        }
        else if(firstHandNumber ==10 && secondHandNumber == 8|| firstHandNumber == 8 && secondHandNumber==10){
          return [2,3,23];
        }
        else if(firstHandNumber ==10 && secondHandNumber == 7|| firstHandNumber == 7 && secondHandNumber==10){
          return [2,3,22];
        }
        else if(firstHandNumber ==10 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==10){
          return [2,3,32];
        }
        else if(firstHandNumber ==10 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==10){
          return [2,3,14];
        }
        else if(firstHandNumber ==10 && secondHandNumber == 4|| firstHandNumber == 4 && secondHandNumber==10){
          return [2,3,15];
        }
        //???????????????
        else if(firstHandNumber ==9 && secondHandNumber == 8|| firstHandNumber == 8 && secondHandNumber==9){
          return [2,3,83];
        }
        else if(firstHandNumber ==9 && secondHandNumber == 7|| firstHandNumber == 7 && secondHandNumber==9){
          return [2,3,83];
        }
        else if(firstHandNumber ==9 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==9){
          return [2,3,19];
        }
        else if(firstHandNumber ==9 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==9){
          return [2,3,19];
        }
        //???????????????
        else if(firstHandNumber ==8 && secondHandNumber == 7|| firstHandNumber == 7 && secondHandNumber==8){
          return [2,3,28];
        }
        else if(firstHandNumber ==8 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==8){
          return [2,3,36];
        }
        //???????????????
        else if(firstHandNumber ==7 && secondHandNumber == 6|| firstHandNumber == 6 && secondHandNumber==7){
          return [2,3,45];
        }
        else if(firstHandNumber ==7 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==7){
          return [2,3,41];
        }
        else if(firstHandNumber ==7 && secondHandNumber == 4|| firstHandNumber == 4 && secondHandNumber==7){
          return [2,3,15];
        }
        //???????????????
        else if(firstHandNumber ==6 && secondHandNumber == 5|| firstHandNumber == 5 && secondHandNumber==6){
          return [2,3,93];
        }
        else if(firstHandNumber ==6 && secondHandNumber == 4|| firstHandNumber == 4 && secondHandNumber==6){
          return [2,3,15];
        }
        //???????????????
        else if(firstHandNumber ==5 && secondHandNumber == 4|| firstHandNumber == 4 && secondHandNumber==5){
          return [2,3,71];
        }
        //???????????????
        else if(firstHandNumber ==4 && secondHandNumber == 3|| firstHandNumber == 3 && secondHandNumber==4){
          return [2,3,14];
        }
        //???????????????
        else if(firstHandNumber ==3 && secondHandNumber == 2|| firstHandNumber == 2 && secondHandNumber==3){
          return [1,3,11];
        }
        else{
          return [0];
        }
      }
      //?????????????????????
      else{
        //???????????????
        if(firstHandNumber==1 && secondHandNumber==13 || firstHandNumber==13 && secondHandNumber==1){
          return [2,3,64];
        }
        else if(firstHandNumber==1 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==1){
          return [2,3,9];
        }
        else if(firstHandNumber==1 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==1){
          return [2,3,12];
        }
        else if(firstHandNumber==1 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==1){
          return [2,3,68];
        }
        else if(firstHandNumber==1 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==1){
          return [2,3,9];
        }
        else if(firstHandNumber==1 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==1){
          return [2,3,7];
        }
        else if(firstHandNumber==1 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==1){
          return [2,3,15];
        }
        else if(firstHandNumber==1 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==1){
          return [2,3,32];
        }
        else if(firstHandNumber==1 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==1){
          return [2,3,6];
        }
        else if(firstHandNumber==1 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==1){
          return [2,3,11];
        }
        //??????????????????
        else if(firstHandNumber==13 && secondHandNumber==12 || firstHandNumber==12 && secondHandNumber==13){
          return [2,3,75];
        }
        else if(firstHandNumber==13 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==13){
          return [2,3,49];
        }
        else if(firstHandNumber==13 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==13){
          return [2,3,40];
        }
        else if(firstHandNumber==13 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==13){
          return [2,3,89];
        }
        else if(firstHandNumber==13 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==13){
          return [2,3,49];
        }
        else if(firstHandNumber==13 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==13){
          return [2,3,6];
        }
        else if(firstHandNumber==13 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==13){
          return [2,3,54];
        }
        else if(firstHandNumber==13 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==13){
          return [2,3,42];
        }
        else if(firstHandNumber==13 && secondHandNumber==3 || firstHandNumber==3 && secondHandNumber==13){
          return [1,3,9];
        }
        else if(firstHandNumber==13 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==13){
          return [1,3,9];
        }
        //??????????????????
        else if(firstHandNumber==12 && secondHandNumber==11 || firstHandNumber==11 && secondHandNumber==12){
          return [2,3,15];
        }
        else if(firstHandNumber==12 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==12){
          return [2,3,27];
        }
        else if(firstHandNumber==12 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==12){
          return [2,3,44];
        }
        else if(firstHandNumber==12 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==12){
          return [2,3,34];
        }
        else if(firstHandNumber==12 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==12){
          return [2,3,15];
        }
        else if(firstHandNumber==12 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==12){
          return [1,3,7];
        }
        else if(firstHandNumber==12 && secondHandNumber==5|| firstHandNumber==5 && secondHandNumber==12){
          return [1,3,14];
        }
        else if(firstHandNumber==12 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==12){
          return [1,3,5];
        }
        else if(firstHandNumber==12 && secondHandNumber==2 || firstHandNumber==2 && secondHandNumber==12){
          return [1,3,6];
        }
        //??????????????????
        else if(firstHandNumber==11 && secondHandNumber==10 || firstHandNumber==10 && secondHandNumber==11){
          return [2,3,17];
        }
        else if(firstHandNumber==11 && secondHandNumber==9 || firstHandNumber==9 && secondHandNumber==11){
          return [2,3,57];
        }
        else if(firstHandNumber==11 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==11){
          return [2,3,48];
        }
        else if(firstHandNumber==11 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==11){
          return [2,3,15];
        }
        //????????????10
        else if(firstHandNumber==10 && secondHandNumber==8 || firstHandNumber==8 && secondHandNumber==10){
          return [2,3,28];
        }
        //????????????9
        else if(firstHandNumber==9 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==9){
          return [2,3,47];
        }
        //????????????7
        else if(firstHandNumber==7 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==7){
          return [2,3,55];
        }
        //????????????6
        else if(firstHandNumber==6 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==6){
          return [2,3,18];
        }
        else{
          return [0];
        }
      }

    }

  }

  judgeOpenHand(int firstHandNumber,int secondHandNumber,String position,int firstSuitNumber,int secondSuitNumber){

    if (position == 'UTG'){
      //??????????????????
      if(firstHandNumber==secondHandNumber){
        //?????????????????????
        if(firstHandNumber >= 5 || firstHandNumber==1){
          return 3;
        }
        else{
          return 1;
        }
      }
      //???????????????
      else if(firstSuitNumber == secondSuitNumber){
        //????????????????????????
        if (firstHandNumber==1 || secondHandNumber ==1 ){
          return 3;
        }
        //????????????10~13
        else if(10<=firstHandNumber && firstHandNumber<=13){
          if(secondHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????10~13
        else if (10<=secondHandNumber && secondHandNumber<=13){
          if(firstHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        else{
          return 1;
        }
      }
      //????????????????????????
      else{
        //1???????????????
        if(firstHandNumber==1){
          if(secondHandNumber>=10){
            return 3;
          }
          else{
            return 1;
          }
        }
        //?????????????????????
        else if(secondHandNumber==1){
          if(firstHandNumber>=10){
            return 3;
          }
          else{
            return 1;
          }
        }
        //1?????????K,Q
        else if(firstHandNumber==12 || firstHandNumber==13){
          if(secondHandNumber>=11){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????K,Q
        else if(secondHandNumber==12 || secondHandNumber==13){
          if(firstHandNumber>=11){
            return 3;
          }
          else{
            return 1;
          }
        }
        else{
          return 1;
        }
      }
    }


    else if(position == 'HJ'){
      //??????????????????
      if(firstHandNumber==secondHandNumber){
        //?????????????????????
        if(firstHandNumber >= 5 || firstHandNumber==1){
          return 3;
        }
        else{
          return 1;
        }
      }
      //???????????????
      else if(firstSuitNumber == secondSuitNumber){
        //????????????????????????
        if (firstHandNumber==1 || secondHandNumber ==1 ){
          return 3;
        }
        //????????????10~13
        else if(10<=firstHandNumber && firstHandNumber<=13){
          if(secondHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????10~13
        else if (10<=secondHandNumber && secondHandNumber<=13){
          if(firstHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        else{
          return 1;
        }
      }
      //????????????????????????
      else{
        //1??????????????????,K
        if(firstHandNumber==1 || firstHandNumber==13){
          if(secondHandNumber>=10){
            return 3;
          }
          else{
            return 1;
          }
        }
        //?????????????????????
        else if(secondHandNumber==1 || secondHandNumber==13 ){
          if(firstHandNumber>=10){
            return 3;
          }
          else{
            return 1;
          }
        }
        //1?????????K
        else if(firstHandNumber==12 ){
          if(secondHandNumber>=11){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????K,Q
        else if(secondHandNumber==12 ){
          if(firstHandNumber>=11){
            return 3;
          }
          else{
            return 1;
          }
        }
        else{
          return 1;
        }
      }
    }


    else if(position == 'CO'){
      if(firstHandNumber==secondHandNumber){
        return 3;
      }
      //???????????????
      else if(firstSuitNumber == secondSuitNumber){
        //????????????????????????
        if (firstHandNumber==1 || secondHandNumber ==1 ){
          return 3;
        }
        //????????????13
        else if(firstHandNumber==13){
          if(secondHandNumber>=6){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????13
        else if (secondHandNumber==13){
          if(firstHandNumber>=6){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????10~12
        else if(10<=firstHandNumber && firstHandNumber<=12){
          if(secondHandNumber>=8){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????10~12
        else if (10<=secondHandNumber && secondHandNumber<=12){
          if(firstHandNumber>=8){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????9
        else if(firstHandNumber==9){
          if(secondHandNumber>=7){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????9
        else if (secondHandNumber==9){
          if(firstHandNumber>=7){
            return 3;
          }
          else{
            return 1;
          }
        }
        //1????????????,2????????????or1??????????????????????????????
        else if(firstHandNumber==8 && secondHandNumber==7 || firstHandNumber==7 && secondHandNumber==8){
          return 3;
        }
        //1?????????7,2?????????6or1?????????6???????????????7
        else if(firstHandNumber==7 && secondHandNumber==6 || firstHandNumber==6 && secondHandNumber==7){
          return 3;
        }
        //1?????????6,2?????????5or1?????????5???????????????6
        else if(firstHandNumber==6 && secondHandNumber==5 || firstHandNumber==5 && secondHandNumber==6){
          return 3;
        }
        //1?????????5,2?????????4or1?????????4???????????????5
        else if(firstHandNumber==5 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==5){
          return 3;
        }
        else{
          return 1;
        }
      }
      //????????????????????????
      else{
        //1???????????????
        if(firstHandNumber==1){
          if(secondHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        //?????????????????????
        else if(secondHandNumber==1){
          if(firstHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        //1?????????K,Q,j
        else if(firstHandNumber==13 || firstHandNumber==12 || firstHandNumber==11){
          if(secondHandNumber>=10){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????K,Q,j
        else if(secondHandNumber==13 || secondHandNumber==12 || secondHandNumber==11){
          if(firstHandNumber>=10){
            return 3;
          }
          else{
            return 1;
          }
        }
        else{
          return 1;
        }
      }
    }


    else if(position == 'BTN'){
      if(firstHandNumber==secondHandNumber){
        return 3;
      }
      //???????????????
      else if(firstSuitNumber == secondSuitNumber){
        //?????????????????????,K
        if (firstHandNumber==1 || firstHandNumber==13 ){
          return 3;
        }
        //????????????12
        else if(firstHandNumber==12){
          if(secondHandNumber>=5){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????12
        else if (secondHandNumber==12){
          if(firstHandNumber>=5){
            return 3;
          }
          else{
            return 1;
          }
        }
        //1?????????11,10
        else if (firstHandNumber==11 || firstHandNumber==10){
          if(secondHandNumber>=7){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????11,10
        else if (secondHandNumber==11 || secondHandNumber==10){
          if(firstHandNumber>=7){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????9
        else if(firstHandNumber==9){
          if(secondHandNumber>=6){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????9
        else if (secondHandNumber==9){
          if(firstHandNumber>=6){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????8
        else if(firstHandNumber==8){
          if(secondHandNumber>=5){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????8
        else if (secondHandNumber==8){
          if(firstHandNumber>=6){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????7
        else if(firstHandNumber==7){
          if(secondHandNumber>=5){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????7
        else if (secondHandNumber==7){
          if(firstHandNumber>=5){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????6
        else if(firstHandNumber==6){
          if(secondHandNumber>=4){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????6
        else if (secondHandNumber==6){
          if(firstHandNumber>=4){
            return 3;
          }
          else{
            return 1;
          }
        }
        //1?????????5,2?????????4or1?????????4???????????????5
        else if(firstHandNumber==5 && secondHandNumber==4 || firstHandNumber==4 && secondHandNumber==5){
          return 3;
        }
        else{
          return 1;
        }
      }
      //????????????????????????
      else{
        //1??????????????????,K
        if(firstHandNumber==1 ){
          if(secondHandNumber>=4){
            return 3;
          }
          else{
            return 1;
          }
        }
        //?????????????????????
        else if(secondHandNumber==1 ){
          if(firstHandNumber>=4){
            return 3;
          }
          else{
            return 1;
          }
        }
        //????????????11~13
        else if(11<=firstHandNumber && firstHandNumber<=13){
          if(secondHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        //2?????????11~13
        else if (11<=secondHandNumber && secondHandNumber<=13){
          if(firstHandNumber>=9){
            return 3;
          }
          else{
            return 1;
          }
        }
        else{
          return 1;
        }
      }
    }


    else if(position == 'SB'){
      //??????????????????
      if(firstHandNumber==secondHandNumber){
        //A,T,9,8,6,5,3,
        if(firstHandNumber ==1 || firstHandNumber==10 || firstHandNumber==9 || firstHandNumber ==8
            || firstHandNumber==5 || firstHandNumber==3){
          return 3;
        }
        else{
          return 1;
        }
      }
      //???????????????
      else if(firstSuitNumber == secondSuitNumber){
        // 1?????????1
        if (firstHandNumber==1 ){
          if(secondHandNumber>= 7 && secondHandNumber<=13){
            return 3;
          }
          else if(secondHandNumber>=3 && secondHandNumber<=5){
            return 3;
          }
        }
        //???????????????
        else if(secondHandNumber==1){
          if(firstHandNumber>= 7 && firstHandNumber<=13){
            return 3;
          }
          else if(firstHandNumber>=3 && firstHandNumber<=5){
            return 3;
          }
        }
        //??????????????????
        else if(firstHandNumber==13){
          if(secondHandNumber>=11 && secondHandNumber<=12 ||secondHandNumber>=8 && secondHandNumber<=9){
            return 3;
          }
        }
        //??????????????????
        else if(secondHandNumber==13){
          if(firstHandNumber>=11 && firstHandNumber<=12 ||firstHandNumber>=8 && firstHandNumber<=9){
            return 3;
          }
        }
        //??????????????????
        else if(firstHandNumber==12){
          if(secondHandNumber>=10 && secondHandNumber<=11 || secondHandNumber>=7 && secondHandNumber<=8 || secondHandNumber==2){
            return 3;
          }
        }
        //??????????????????
        else if(secondHandNumber==12){
          if(firstHandNumber>=10 && firstHandNumber<=11 || firstHandNumber>=7 && firstHandNumber<=8 ||firstHandNumber==2){
            return 3;
          }
        }
        //????????????11
        else if(firstHandNumber==11){
          if(secondHandNumber>=9 && secondHandNumber<=10){
            return 3;
          }
          else if(secondHandNumber==8){
            return 2;
          }
        }
        //2?????????11
        else if(secondHandNumber==11){
          if(firstHandNumber>=9 && firstHandNumber<=10){
            return 3;
          }
          else if(firstHandNumber==8){
            return 2;
          }
        }
        //??????8???????????????5
        else if(firstHandNumber==8 && secondHandNumber ==5 || firstHandNumber ==8 && secondHandNumber ==5){
          return 2;
        }
        //???????????????????????????
        else if(firstHandNumber==5 && secondHandNumber ==4 || firstHandNumber ==4 && secondHandNumber ==5){
          return 3;
        }
        //??????6???????????????3
        else if(firstHandNumber==6 && secondHandNumber ==3 || firstHandNumber ==3 && secondHandNumber ==6){
          return 2;
        }
        else{
          return 1;
        }
      }
      //????????????????????????
      else{
        //1???????????????
        if(firstHandNumber==1) {
          //2?????????????????????
          if (secondHandNumber == 12 || secondHandNumber == 7) {
            return 3;
          }
        }
        //?????????????????????
        else if(secondHandNumber==1){
          if(firstHandNumber==12 || firstHandNumber==7){
            return 3;
          }
        }
        //?????????3???????????????6
        else if(firstHandNumber==13 && secondHandNumber ==6 ||firstHandNumber==6 && secondHandNumber==13){
          return 2;
        }
        //??????????????????????????????
        else if(firstHandNumber==10 && secondHandNumber ==9 ||firstHandNumber==9 && secondHandNumber==10){
          return 3;
        }
        //???????????????????????????7
        else if(firstHandNumber==10 && secondHandNumber ==7 ||firstHandNumber==7 && secondHandNumber==10){
          return 2;
        }
        //??????9???????????????8
        else if(firstHandNumber==9 && secondHandNumber ==8 ||firstHandNumber==8 && secondHandNumber==9){
          return 3;
        }
        //??????8???????????????7
        else if(firstHandNumber==8 && secondHandNumber ==7 ||firstHandNumber==7 && secondHandNumber==8){
          return 3;
        }
        else{
          return 1;
        }
      }
    }
  }

}