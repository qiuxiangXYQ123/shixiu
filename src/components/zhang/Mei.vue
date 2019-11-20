<template>
  <div class="parent">
    <div class="tiao">
      <div class="one">
        <div class="s">
          <span>1</span>
          <img :src="require('../../assets/image/2.png')" alt>
        </div>
        <div class="p">
          <p>呵呵</p>
          <p>排名上升</p>
        </div>
        <span>
          作品
          <span>37</span>
        </span>
      </div>
      <div class="tow">
        <img :src="require('../../assets/img/2 (2).png')" alt>
        <img :src="require('../../assets/img/2 (1).png')" alt>
        <img :src="require('../../assets/img/2 (3).png')" alt>
      </div>
    </div>
    <div class="tiao">
      <div class="one">
        <div class="s">
          <span>2</span>
          <img :src="require('../../assets/image/10.png')" alt>
        </div>
        <div class="p">
          <p>呵呵</p>
          <p>排名上升</p>
        </div>
        <span>
          作品
          <span>37</span>
        </span>
      </div>
      <div class="tow">
        <img :src="require('../../assets/img/1 (1).png')" alt>
        <img :src="require('../../assets/img/1 (3).png')" alt>
        <img :src="require('../../assets/img/1 (10).png')" alt>
      </div>
    </div>
    <div class="tiao">
      <div class="one">
        <div class="s">
          <span>3</span>
          <img :src="require('../../assets/image/2.png')" alt>
        </div>
        <div class="p">
          <p>呵呵</p>
          <p>排名上升</p>
        </div>
        <span>
          作品
          <span>37</span>
        </span>
      </div>
      <div class="tow">
        <img :src="require('../../assets/img/3 (1).png')" alt>
        <img :src="require('../../assets/img/3 (4).png')" alt>
        <img :src="require('../../assets/img/3 (3).png')" alt>
      </div>
    </div>

    <div class="tiao">
      <div class="one">
        <div class="s">
          <span>4</span>
          <img :src="require('../../assets/img/27.png')" alt>
        </div>
        <div class="p">
          <p>呵呵</p>
          <p>排名上升</p>
        </div>
        <span>
          作品
          <span>37</span>
        </span>
      </div>
    </div>
  </div>
</template>


<script>
export default {};
</script>


<style scoped>
p{
  margin:0;
}
.parent {
  padding: 20px;
}
.parent > div {
  margin-bottom: 20px;
}
.one {
  width: 100%;
  box-sizing: border-box;
  position: relative;
  margin-bottom:5px;
}
.one > .s {
  float: left;
  width: 14%;
font-size:0;
}

.one > .p {
  float: left;
  width: 50%;
  margin-left: 0.75rem;
}
.p > p {
  text-align: left;
  font-size:18px;
    color:#333
}
.p>p:nth-child(2){
    font-size:14px;
    color:#999;
}
.one > span {
  float: right;
  color:#999
}
.one > span > span {
  font-size: 20px;
  display: inline-block;
  color:#333;
}
.s > span {
  display: block;
  width: 23px;
  background: rgb(213, 211, 211);
  border-radius: 50%;
  position: absolute;
  top: -5px;
  left: -5px;
  line-height: 23px;
  color: #333;
  text-align: center;
  font-size: 14px; 
}
.tiao:nth-child(1) .s > span {
  background:rgb(247, 243, 5);
}
.tiao:nth-child(2) .s > span {
  background:#e3e0e0;
}
.tiao:nth-child(3) .s > span {
  background:rgb(243, 170, 135)
}
.s > img {
  width: 100%;
  height: 100%;
  border-radius: 50%;
}
.one:after {
  display: block;
  clear: both;
  content: "";
}
.tow {
  width: 84%;
  margin-left: 16%;
}
.tow > img {
  width: 27%;
}
.tow > img:nth-child(2) {
  margin: 0 9%;
}
</style>




