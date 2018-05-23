<#include "base.ftl">
<@base >
<div id="app">
    <fieldset>
        <legend>物料</legend>
    </fieldset>
    ​
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">肉包:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">个</span>
                    <input type="number" v-model="calc.rou" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">素包:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">个</span>
                    <input type="number" v-model="calc.su" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">豆浆:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">杯</span>
                    <input type="number" v-model="calc.dou" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">昨日剩下:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.yes" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label"> 减负:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.r1" class="form-control"/>
                </div>
            </div>
        </div>
    </form>
    ​
    <fieldset>
        <legend>销售</legend>
    </fieldset>
    ​
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">现金:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.xian" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">微信:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.wei" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">支付宝:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.zhi" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">剩下:</label>
            <div class="col-sm-3">
                <div class="input-group">
                    <span class="input-group-addon">肉(个)</span>
                    <input type="number" v-model="calc.sheng_rou" class="form-control"/>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="input-group">
                    <span class="input-group-addon">素(个)</span>
                    <input type="number" v-model="calc.sheng_su" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label"> 吃掉:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.chi" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label"> 减负:</label>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">¥</span>
                    <input type="number" v-model="calc.r2" class="form-control"/>
                </div>
            </div>
        </div>
    </form>
    <fieldset>
        <legend>合计</legend>
    </fieldset>
    ​
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">物料:</label>
            <div class="col-sm-6">
                <input type="number" readonly value="{{addValue}}" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">销售:</label>
            <div class="col-sm-6">
                <input type="number" readonly value="{{pay}}" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label id="all" class="col-sm-2 control-label danger">出入:</label>
            <div class="col-sm-6">
                <input id="all_input" readonly type="number" value="{{all}}" class="form-control" />
            </div>
        </div>
    </form>

</div>
<script>
    var d1 = 1.5;
    var d2 = 1;
    var d3 = 2;
    var app = new Vue({
        el: '#app',
        data: {
            message: 'Hello Vue.js!',
            calc: {
                r1: 0,
                r2: 0
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
                return parseInt(this.calc.rou) * d1 + parseInt(this.calc.su) * d2 + parseInt(this.calc.dou) * d3 + parseInt(this.calc.yes) + parseInt(this.calc.r1);
            },
            pay: function () {
                return parseInt(this.calc.xian) + parseInt(this.calc.wei) + parseInt(this.calc.zhi) + parseInt(this.calc.sheng_rou) * d1 + parseInt(this.calc.sheng_su) * d2 + parseInt(this.calc.chi) + parseInt(this.calc.r2);
            },
            all: function () {
                var all = this.addValue - this.pay;
                if (all < 0) {
                    $("#all_input").css("border","1px solid yellow");
                    $("#all").html("多出:");
                } else if (all > 0) {
                    $("#all").html("少卖:");
                    $("#all_input").css("border","1px solid red");
                } else {
                    $("#all").html("正常:");
                    $("#all_input").css("border","1px solid green");
                }
                return all;
            }
        }
    })
</script>
</@base>