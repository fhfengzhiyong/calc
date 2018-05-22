<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/vue/1.0.14/vue.js"></script>
</head>
<body>
<h1>hello </h1>
<div id="app">
    <span>物料</span>
    <div style="border-style: solid;border-color:green">
        <table>
            <tr>
                <td>肉包</td>
                <td><input v-model="calc.rou"/></td>
            </tr>
            <tr>
                <td>素包</td>
                <td><input v-model="calc.su"/></td>
            </tr>
            <tr>
                <td>豆浆</td>
                <td><input v-model="calc.dou"/></td>
            </tr>
            <tr>
                <td>昨日剩下</td>
                <td><input v-model="calc.yes"/></td>
            </tr>
            <tr>
                <td>减负</td>
                <td><input v-model="calc.r1"/></td>
            </tr>
        </table>
    </div>
    <span style="margin-top: 20px;">收入</span>
    <div style="border-style: solid;border-color:crimson">
        <table>
            <tr>
                <td>现金</td>
                <td><input v-model="calc.xian"/></td>
            </tr>
            <tr>
                <td>微信</td>
                <td><input v-model="calc.wei"/></td>
            </tr>
            <tr>
                <td>支付宝</td>
                <td><input v-model="calc.zhi"/></td>
            </tr>
            <tr>
                <td>剩下</td>
                <td><input v-model="calc.sheng"/></td>
            </tr>
            <tr>
                <td>吃掉</td>
                <td><input v-model="calc.chi"/></td>
            </tr>
            <tr>
                <td>减负</td>
                <td><input v-model="calc.r2"/></td>
            </tr>
        </table>
    </div>
    <span style="margin-top: 30px;">合计</span>
    <div style="border-style: solid;border-color: magenta">
        <span>物料   :{{addValue}}</span><br/>
        <span>收入   :{{pay}}</span><br/>
        <span>差     :{{all}}</span>
    </div>

</div>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            message: 'Hello Vue.js!',
            calc: {
                r1:0,
                r2:0
                /*    rou: 0,
                    su: 0,
                    dou: 0,
                    yes: 0,
                    xian: 0,
                    wei: 0,
                    zhi: 0,
                    sheng: 0,
                    chi: 0*/
            }
        },
        computed: {
            // 计算属性的 getter
            addValue: function () {
                // `this` 指向 vm 实例
                return parseInt(this.calc.rou) + parseInt(this.calc.su) + parseInt(this.calc.dou) + parseInt(this.calc.yes) + parseInt(this.calc.r1);
            },
            pay: function () {
                return parseInt(this.calc.xian) + parseInt(this.calc.wei) + parseInt(this.calc.zhi) + parseInt(this.calc.sheng) + parseInt(this.calc.chi) + parseInt(this.calc.r2);
            },
            all: function () {
                return this.addValue - this.pay;
            }
        }
    })
</script>

</body>

</html>