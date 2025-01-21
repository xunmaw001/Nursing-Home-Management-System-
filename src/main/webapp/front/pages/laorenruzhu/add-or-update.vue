<template>
	<view class="content">
		<form class="app-update-pv">
			 
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">入住编号</view>
				<view :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' class="right-input">
					{{ruleForm.ruzhubianhao}}
				</view>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">房间号</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.fangjianhao" v-model="ruleForm.fangjianhao" placeholder="房间号"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">楼房名称</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.loufangmingcheng" v-model="ruleForm.loufangmingcheng" placeholder="楼房名称"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">床位号</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.chuangweihao" v-model="ruleForm.chuangweihao" placeholder="床位号"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">老人姓名</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.laorenxingming" v-model="ruleForm.laorenxingming" placeholder="老人姓名"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderColor":"#ccc","margin":"0 0 20rpx 0","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group" @tap="laorenzhaopianTap">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">老人照片</view>
				<view class="right-input" style="padding:0">
					<image :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","borderRadius":"100%","borderWidth":"0","width":"88rpx","borderStyle":"solid","height":"88rpx"}' class="avator" v-if="ruleForm.laorenzhaopian" :src="baseUrl+ruleForm.laorenzhaopian" mode="aspectFill"></image>
					<image :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","borderRadius":"100%","borderWidth":"0","width":"88rpx","borderStyle":"solid","height":"88rpx"}' class="avator" v-else src="../../static/gen/upload.png" mode="aspectFill"></image>
				</view>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderColor":"#ccc","margin":"0 0 20rpx 0","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">老人性别</view>
				<picker @change="laorenxingbieChange" :value="laorenxingbieIndex"  :range="laorenxingbieOptions">
					<view :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"8rpx 0","backgroundColor":"rgba(194, 114, 89, 1)","borderColor":"rgba(0,0,0,.6)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","lineHeight":"60rpx","fontSize":"28rpx","borderStyle":"solid"}' class="uni-input">{{ruleForm.laorenxingbie?ruleForm.laorenxingbie:"请选择老人性别"}}</view>
				</picker>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">老人年龄</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.laorennianling" v-model="ruleForm.laorennianling" placeholder="老人年龄"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderColor":"#ccc","margin":"0 0 20rpx 0","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">家属账号</view>
				<picker @change="jiashuzhanghaoChange" :value="jiashuzhanghaoIndex"  :range="jiashuzhanghaoOptions">
					<view :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"8rpx 0","backgroundColor":"rgba(194, 114, 89, 1)","borderColor":"rgba(0,0,0,.6)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","lineHeight":"60rpx","fontSize":"28rpx","borderStyle":"solid"}' class="uni-input">{{jiashuzhanghaoOptions[jiashuzhanghaoIndex]}}</view>
				</picker>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">家属姓名</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.jiashuxingming" v-model="ruleForm.jiashuxingming" placeholder="家属姓名"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">家属手机</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.jiashushouji" v-model="ruleForm.jiashushouji" placeholder="家属手机"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">关系</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.guanxi" v-model="ruleForm.guanxi" placeholder="关系"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">护工工号</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.hugonggonghao" v-model="ruleForm.hugonggonghao" placeholder="护工工号"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">护工姓名</view>
				<input :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' :disabled="ro.hugongxingming" v-model="ruleForm.hugongxingming" placeholder="护工姓名"></input>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderColor":"#ccc","margin":"0 0 20rpx 0","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">入住时间</view>
				<picker mode="date" :value="ruleForm.ruzhushijian" @change="ruzhushijianChange">
					<view :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"8rpx 0","backgroundColor":"rgba(194, 114, 89, 1)","borderColor":"rgba(0,0,0,.6)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","lineHeight":"60rpx","fontSize":"28rpx","borderStyle":"solid"}' class="uni-input">{{ruleForm.ruzhushijian?ruleForm.ruzhushijian:"请选择入住时间"}}</view>
				</picker>
			</view>
			<view :style='{"padding":"0 16rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderColor":"#ccc","margin":"0 0 20rpx 0","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"160rpx","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">退房状态</view>
				<picker @change="tuifangzhuangtaiChange" :value="tuifangzhuangtaiIndex" :disabled="true" :range="tuifangzhuangtaiOptions">
					<view :style='{"padding":"0 30rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"8rpx 0","backgroundColor":"rgba(194, 114, 89, 1)","borderColor":"rgba(0,0,0,.6)","color":"#fff","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 160rpx)","lineHeight":"60rpx","fontSize":"28rpx","borderStyle":"solid"}' class="uni-input">{{ruleForm.tuifangzhuangtai?ruleForm.tuifangzhuangtai:"请选择退房状态"}}</view>
				</picker>
			</view>
			
			<!-- 否 -->
 

			
			
			<view class="btn" >
				<button :style='{"padding":"0","boxShadow":"0px 6rpx 12rpx rgba(0, 0, 0, 0.16)","margin":"0 auto","backgroundColor":"rgba(194, 114, 89, 1)","borderColor":"#409EFF","borderRadius":"40rpx","color":"#fff","borderWidth":"0","width":"60%","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}' @tap="onSubmitTap" class="bg-red">提交</button>
			</view>
		</form>

			
	</view>
</template>

<script>
	import wPicker from "@/components/w-picker/w-picker.vue";

	export default {
		data() {
			return {
				cross:'',
				ruleForm: {
				ruzhubianhao: this.getUUID(),
				fangjianhao: '',
				loufangmingcheng: '',
				chuangweihao: '',
				laorenxingming: '',
				laorenzhaopian: '',
				laorenxingbie: '',
				laorennianling: '',
				jiashuzhanghao: '',
				jiashuxingming: '',
				jiashushouji: '',
				guanxi: '',
				hugonggonghao: '',
				hugongxingming: '',
				ruzhushijian: '',
			        tuifangzhuangtai: '未退房',
				},
				laorenxingbieOptions: [],
				laorenxingbieIndex: 0,
				jiashuzhanghaoOptions: [],
				jiashuzhanghaoIndex: 0,
				tuifangzhuangtaiOptions: [],
				tuifangzhuangtaiIndex: 0,
				// 登陆用户信息
				user: {},
                                ro:{
                                   ruzhubianhao : false,
                                   fangjianhao : false,
                                   loufangmingcheng : false,
                                   chuangweihao : false,
                                   laorenxingming : false,
                                   laorenzhaopian : false,
                                   laorenxingbie : false,
                                   laorennianling : false,
                                   jiashuzhanghao : false,
                                   jiashuxingming : false,
                                   jiashushouji : false,
                                   guanxi : false,
                                   hugonggonghao : false,
                                   hugongxingming : false,
                                   ruzhushijian : false,
                                   tuifangzhuangtai : false,
                                },
			}
		},
		components: {
			wPicker
		},
		computed: {
			baseUrl() {
				return this.$base.url;
			},



		},
		async onLoad(options) {
    		        this.ruleForm.ruzhushijian = this.$utils.getCurDate();
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			
			// ss读取
			this.ruleForm.hugonggonghao = this.user.hugonggonghao
			this.ro.hugonggonghao = true;
			this.ruleForm.hugongxingming = this.user.hugongxingming
			this.ro.hugongxingming = true;

            this.ro.tuifangzhuangtai = true;

			// 自定义下拉框值
			this.laorenxingbieOptions = "男,女".split(',')
			// 下2
			res = await this.$api.option(`jiashu`,`jiashuzhanghao`,{});
			this.jiashuzhanghaoOptions = res.data;
			// 自定义下拉框值
			this.tuifangzhuangtaiOptions = "已退房,未退房".split(',')

			// 如果有登陆，获取登陆后保存的userid
			this.ruleForm.userid = uni.getStorageSync("userid")
			if (options.refid) {
				// 如果上一级页面传递了refid，获取改refid数据信息
				this.ruleForm.refid = options.refid;
				this.ruleForm.nickname = uni.getStorageSync("nickname");
			}
			// 如果是更新操作
			if (options.id) {
				this.ruleForm.id = options.id;
				// 获取信息
				res = await this.$api.info(`laorenruzhu`, this.ruleForm.id);
				this.ruleForm = res.data;
			}
			// 跨表
			this.cross = options.cross;
			if(options.cross){
				var obj = uni.getStorageSync('crossObj');
				for (var o in obj){
					if(o=='ruzhubianhao'){
					this.ruleForm.ruzhubianhao = obj[o];
					this.ro.ruzhubianhao = true;
					continue;
					}
					if(o=='fangjianhao'){
					this.ruleForm.fangjianhao = obj[o];
					this.ro.fangjianhao = true;
					continue;
					}
					if(o=='loufangmingcheng'){
					this.ruleForm.loufangmingcheng = obj[o];
					this.ro.loufangmingcheng = true;
					continue;
					}
					if(o=='chuangweihao'){
					this.ruleForm.chuangweihao = obj[o];
					this.ro.chuangweihao = true;
					continue;
					}
					if(o=='laorenxingming'){
					this.ruleForm.laorenxingming = obj[o];
					this.ro.laorenxingming = true;
					continue;
					}
					if(o=='laorenzhaopian'){
					this.ruleForm.laorenzhaopian = obj[o];
					this.ro.laorenzhaopian = true;
					continue;
					}
					if(o=='laorenxingbie'){
					this.ruleForm.laorenxingbie = obj[o];
					this.ro.laorenxingbie = true;
					continue;
					}
					if(o=='laorennianling'){
					this.ruleForm.laorennianling = obj[o];
					this.ro.laorennianling = true;
					continue;
					}
					if(o=='jiashuzhanghao'){
					this.ruleForm.jiashuzhanghao = obj[o];
					this.ro.jiashuzhanghao = true;
					continue;
					}
					if(o=='jiashuxingming'){
					this.ruleForm.jiashuxingming = obj[o];
					this.ro.jiashuxingming = true;
					continue;
					}
					if(o=='jiashushouji'){
					this.ruleForm.jiashushouji = obj[o];
					this.ro.jiashushouji = true;
					continue;
					}
					if(o=='guanxi'){
					this.ruleForm.guanxi = obj[o];
					this.ro.guanxi = true;
					continue;
					}
					if(o=='hugonggonghao'){
					this.ruleForm.hugonggonghao = obj[o];
					this.ro.hugonggonghao = true;
					continue;
					}
					if(o=='hugongxingming'){
					this.ruleForm.hugongxingming = obj[o];
					this.ro.hugongxingming = true;
					continue;
					}
					if(o=='ruzhushijian'){
					this.ruleForm.ruzhushijian = obj[o];
					this.ro.ruzhushijian = true;
					continue;
					}
					if(o=='tuifangzhuangtai'){
					this.ruleForm.tuifangzhuangtai = obj[o];
					this.ro.tuifangzhuangtai = true;
					continue;
					}
				}
			}
			this.styleChange()
		},
		methods: {
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.app-update-pv .cu-form-group .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.addUpdateForm.input.content.backgroundColor
					// })
				})
			},
			// 下二随
			async jiashuzhanghaoChange (e) {
				this.jiashuzhanghaoIndex = e.target.value
				this.ruleForm.jiashuzhanghao = this.jiashuzhanghaoOptions[this.jiashuzhanghaoIndex]
				let res = await this.$api.follow(`jiashu`, `jiashuzhanghao`,{
					columnValue: this.ruleForm.jiashuzhanghao
				});
				if(res.data.jiashuxingming){
					this.ruleForm.jiashuxingming = res.data.jiashuxingming
				}
				if(res.data.jiashushouji){
					this.ruleForm.jiashushouji = res.data.jiashushouji
				}
			},

			// 多级联动参数

			ruzhushijianChange(e) {
				this.ruleForm.ruzhushijian = e.target.value;
				this.$forceUpdate();
			},


			// 下拉变化
			laorenxingbieChange(e) {
				this.laorenxingbieIndex = e.target.value
				this.ruleForm.laorenxingbie = this.laorenxingbieOptions[this.laorenxingbieIndex]
			},
			// 下拉变化
			tuifangzhuangtaiChange(e) {
				this.tuifangzhuangtaiIndex = e.target.value
				this.ruleForm.tuifangzhuangtai = this.tuifangzhuangtaiOptions[this.tuifangzhuangtaiIndex]
			},

			laorenzhaopianTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.laorenzhaopian = 'upload/' + res.file;
					_this.$forceUpdate();
					_this.$nextTick(()=>{
						_this.styleChange()
					})
				});
			},

			getUUID () {
				return new Date().getTime();
			},
			async onSubmitTap() {

































//跨表计算判断
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(this.cross){
					var statusColumnName = uni.getStorageSync('statusColumnName');
					var statusColumnValue = uni.getStorageSync('statusColumnValue');
					if(statusColumnName!='') {
						var obj = uni.getStorageSync('crossObj');
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}

							}
							var table = uni.getStorageSync('crossTable');
							await this.$api.update(`${table}`, obj);
						} else {
						       crossuserid=Number(uni.getStorageSync('userid'));
						       crossrefid=obj['id'];
						       crossoptnum=uni.getStorageSync('statusColumnName');
						       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					this.ruleForm.crossuserid=crossuserid;
					this.ruleForm.crossrefid=crossrefid;
					let params = {
						page: 1,
						limit:10,
						crossuserid:crossuserid,
						crossrefid:crossrefid,
					}
					let res = await this.$api.list(`laorenruzhu`, params);
					if (res.data.total >= crossoptnum) {
						this.$utils.msg(uni.getStorageSync('tips'));
						return false;
					} else {
                //跨表计算
						if(this.ruleForm.id){
							await this.$api.update(`laorenruzhu`, this.ruleForm);
						}else{
							await this.$api.add(`laorenruzhu`, this.ruleForm);
						}
						this.$utils.msgBack('提交成功');
					}
				} else {
                //跨表计算
					if(this.ruleForm.id){
						await this.$api.update(`laorenruzhu`, this.ruleForm);
					}else{
						await this.$api.add(`laorenruzhu`, this.ruleForm);
					}
					this.$utils.msgBack('提交成功');
				}
			},
			optionsChange(e) {
				this.index = e.target.value
			},
			bindDateChange(e) {
				this.date = e.target.value
			},
			getDate(type) {
				const date = new Date();
				let year = date.getFullYear();
				let month = date.getMonth() + 1;
				let day = date.getDate();
				if (type === 'start') {
					year = year - 60;
				} else if (type === 'end') {
					year = year + 2;
				}
				month = month > 9 ? month : '0' + month;;
				day = day > 9 ? day : '0' + day;
				return `${year}-${month}-${day}`;
			},
			toggleTab(str) {
				this.$refs[str].show();
			}
		}
	}
</script>

<style lang="scss" scoped>
	.container {
		padding: 20upx;
	}
	
	.content:after {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		content: '';
		background-image: url(http://codegen.caihongy.cn/20220224/f748e1b4bc3b46b993abb112e112a70e.png);
		background-attachment: fixed;
		background-size: cover;
		background-position: center;
	}

	textarea {
		border: 1upx solid #EEEEEE;
		border-radius: 20upx;
		padding: 20upx;
	}

	.title {
		width: 180upx;
	}

	.avator {
		width: 150upx;
		height: 60upx;
	}

	.right-input {
		flex: 1;
		text-align: left;
		padding: 0 24upx;
	}
	
	.cu-form-group.active {
		justify-content: space-between;
	}
	
	.btn {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  flex-wrap: wrap;
	  padding: 20upx 0;
	}
	
	.cu-form-group {
		padding: 0 24upx;
		background-color: transparent;
		min-height: inherit;
	}
	
	.cu-form-group+.cu-form-group {
		border: 0;
	}
	
	.cu-form-group uni-input {
		padding: 0 30upx;
	}
	
	.uni-input {
		padding: 0 30upx;
	}
	
	.cu-form-group uni-textarea {
		padding: 30upx;
		margin: 0;
	}
	
	.cu-form-group uni-picker::after {
		line-height: 60rpx;
	}
	
	.select .uni-input {
		line-height: 60rpx;
	}
	
	.input .right-input {
		line-height: 60rpx;
	}
</style>
