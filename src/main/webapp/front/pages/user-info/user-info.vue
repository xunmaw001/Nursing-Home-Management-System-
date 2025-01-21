<template>
<view class="content">
	<view class="box" :style='{"padding":"0","boxShadow":"0 0 12rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}'>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>护工工号</view>
			<input disabled="true"  style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.hugonggonghao" placeholder="护工工号"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>密码</view>
			<input  type="password" style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.mima" placeholder="密码"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>护工姓名</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.hugongxingming" placeholder="护工姓名"></input>
		</view>
			<view v-if="tableName=='hugong'" :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' class="cu-form-group select">
                                <view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">性别</view>
                                <picker  @change="hugongxingbieChange" :value="hugongxingbieIndex" :range="hugongxingbieOptions">
                                        <view style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 6rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 180rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' class="uni-input picker-select-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
                                </picker>
                        </view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" @tap="hugonghugongzhaopianTap" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>护工照片</view>
			<view style="flex: 1;">
				<image :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"12rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"100%","borderWidth":"0","width":"88rpx","borderStyle":"solid","height":"88rpx"}' v-if="ruleForm.hugongzhaopian" style="margin: 0;" class="avator" :src="baseUrl+ruleForm.hugongzhaopian" mode=""></image>
				<image :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"12rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"100%","borderWidth":"0","width":"88rpx","borderStyle":"solid","height":"88rpx"}' v-else class="avator" style="margin: 0;" src="../../static/center/face.jpeg" mode=""></image>
			</view>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>年龄</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.nianling" placeholder="年龄"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>护工电话</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.hugongdianhua" placeholder="护工电话"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>民族</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.minzu" placeholder="民族"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='hugong'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>学历</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.xueli" placeholder="学历"></input>
		</view>
			<view v-if="tableName=='hugong'" :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' class="cu-form-group select">
                                <view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">婚否</view>
                                <picker  @change="hugonghunfouChange" :value="hugonghunfouIndex" :range="hugonghunfouOptions">
                                        <view style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 6rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 180rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' class="uni-input picker-select-input">{{ruleForm.hunfou?ruleForm.hunfou:"请选择婚否"}}</view>
                                </picker>
                        </view>
			<view v-if="tableName=='hugong'" :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' class="cu-form-group select">
                                <view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">护理级别</view>
                                <picker  @change="hugonghulijibieChange" :value="hugonghulijibieIndex" :range="hugonghulijibieOptions">
                                        <view style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 6rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 180rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' class="uni-input picker-select-input">{{ruleForm.hulijibie?ruleForm.hulijibie:"请选择护理级别"}}</view>
                                </picker>
                        </view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>家属账号</view>
			<input disabled="true"  style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.jiashuzhanghao" placeholder="家属账号"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>密码</view>
			<input  type="password" style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.mima" placeholder="密码"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>家属姓名</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.jiashuxingming" placeholder="家属姓名"></input>
		</view>
			<view v-if="tableName=='jiashu'" :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' class="cu-form-group select">
                                <view :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}' class="title">性别</view>
                                <picker  @change="jiashuxingbieChange" :value="jiashuxingbieIndex" :range="jiashuxingbieOptions">
                                        <view style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 6rpx 0px 4rpx #A86B58","margin":"0","borderColor":"rgba(0,0,0,.6)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","textAlign":"left","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"calc(100% - 180rpx)","fontSize":"28rpx","borderStyle":"solid","height":"60rpx"}' class="uni-input picker-select-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
                                </picker>
                        </view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>家属手机</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.jiashushouji" placeholder="家属手机"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>身份证</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.shenfenzheng" placeholder="身份证"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>家庭住址</view>
			<input   style="padding: 0 30upx" :style='{"padding":"0 20rpx","boxShadow":"0 8rpx 0px 4rpx #A86B58","margin":"20rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(194, 114, 89, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"20rpx 20rpx 0 0","borderWidth":"0","width":"100%","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid","height":"72rpx"}' v-model="ruleForm.jiatingzhuzhi" placeholder="家庭住址"></input>
		</view>
		<view :style='{"padding":"0 12rpx","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0 0 20rpx 0","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='jiashu'" @tap="jiashutouxiangTap" class="cu-form-group">
			<view class="title" :style='{"padding":"0","boxShadow":"0 0 16rpx rgba(0,0,0,0)","margin":"0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(161, 161, 161, 1)","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"180rpx","lineHeight":"88rpx","fontSize":"28rpx","borderStyle":"solid"}'>头像</view>
			<view style="flex: 1;">
				<image :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"12rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"100%","borderWidth":"0","width":"88rpx","borderStyle":"solid","height":"88rpx"}' v-if="ruleForm.touxiang" style="margin: 0;" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
				<image :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"12rpx 0","borderColor":"rgba(0,0,0,0)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"100%","borderWidth":"0","width":"88rpx","borderStyle":"solid","height":"88rpx"}' v-else class="avator" style="margin: 0;" src="../../static/center/face.jpeg" mode=""></image>
			</view>
		</view>
		
		<view class="btn">
			<button @tap="update()" class="cu-btn lg" :style='{"padding":"0 30rpx","boxShadow":"0px 6rpx 12rpx rgba(0, 0, 0, 0.16)","margin":"0","backgroundColor":"rgba(194, 114, 89, 1)","borderColor":"#409EFF","borderRadius":"40rpx","color":"#fff","borderWidth":"0","width":"60%","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}'>保存</button>
			<button @tap="logout()" class="cu-btn lg" :style='{"padding":"0 30rpx","boxShadow":"0px 6rpx 12rpx rgba(0, 0, 0, 0.16)","margin":"20rpx 0","backgroundColor":"rgba(174, 174, 174, 1)","borderColor":"#E6A23C","borderRadius":"40rpx","color":"#fff","borderWidth":"0","width":"60%","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}'>退出登录</button>
		</view>
	</view>
</view>
</template>

<script>
	export default {
		data() {
			return {
				ruleForm: {
				},
				tableName:"",
				hugongxingbieOptions: [],
				hugongxingbieIndex: 0,
				hugonghunfouOptions: [],
				hugonghunfouIndex: 0,
				hugonghulijibieOptions: [],
				hugonghulijibieIndex: 0,
				jiashuxingbieOptions: [],
				jiashuxingbieIndex: 0,
			}
		},
		computed: {
			baseUrl() {
				return this.$base.url;
			}
		},
		async onLoad() {
			let table = uni.getStorageSync("nowTable");
			let res = await this.$api.session(table);
			this.ruleForm = res.data;
			this.tableName = table;
			// 自定义下拉框值
			if(this.tableName=='hugong'){
				this.hugongxingbieOptions = "男,女".split(',');
				this.hugongxingbieOptions.forEach((item, index) => {
					if(item==this.ruleForm.xingbie) {
						this.hugongxingbieIndex = index;
					}
				});
			}
			// 自定义下拉框值
			if(this.tableName=='hugong'){
				this.hugonghunfouOptions = "未婚,已婚".split(',');
				this.hugonghunfouOptions.forEach((item, index) => {
					if(item==this.ruleForm.hunfou) {
						this.hugonghunfouIndex = index;
					}
				});
			}
			// 自定义下拉框值
			if(this.tableName=='hugong'){
				this.hugonghulijibieOptions = "特级护理,一级护理,二级护理,三级护理".split(',');
				this.hugonghulijibieOptions.forEach((item, index) => {
					if(item==this.ruleForm.hulijibie) {
						this.hugonghulijibieIndex = index;
					}
				});
			}
			// 自定义下拉框值
			if(this.tableName=='jiashu'){
				this.jiashuxingbieOptions = "男,女".split(',');
				this.jiashuxingbieOptions.forEach((item, index) => {
					if(item==this.ruleForm.xingbie) {
						this.jiashuxingbieIndex = index;
					}
				});
			}
			this.styleChange()
		},
		methods: {
                        // 下拉变化
                        hugongxingbieChange(e) {
                                this.hugongxingbieIndex = e.target.value
                                this.ruleForm.xingbie = this.hugongxingbieOptions[this.hugongxingbieIndex]
                        },
                        // 下拉变化
                        hugonghunfouChange(e) {
                                this.hugonghunfouIndex = e.target.value
                                this.ruleForm.hunfou = this.hugonghunfouOptions[this.hugonghunfouIndex]
                        },
                        // 下拉变化
                        hugonghulijibieChange(e) {
                                this.hugonghulijibieIndex = e.target.value
                                this.ruleForm.hulijibie = this.hugonghulijibieOptions[this.hugonghulijibieIndex]
                        },
                        // 下拉变化
                        jiashuxingbieChange(e) {
                                this.jiashuxingbieIndex = e.target.value
                                this.ruleForm.xingbie = this.jiashuxingbieOptions[this.jiashuxingbieIndex]
                        },
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.cu-form-group .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.userInfoForm.list.input.backgroundColor
					// })
				})
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			logout() {
				uni.setStorageSync('token', '');
				this.$utils.jump('../login/login');
			},
			// 注册
			async update() {
				if((!this.ruleForm.hugonggonghao) && `hugong` == this.tableName){
					this.$utils.msg(`护工工号不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `hugong` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
				if((!this.ruleForm.hugongxingming) && `hugong` == this.tableName){
					this.$utils.msg(`护工姓名不能为空`);
					return
				}
				if(`hugong` == this.tableName && this.ruleForm.nianling&&(!this.$validate.isIntNumer(this.ruleForm.nianling))){
					this.$utils.msg(`年龄应输入整数`);
					return
				}
				if(`hugong` == this.tableName && this.ruleForm.hugongdianhua&&(!this.$validate.isMobile(this.ruleForm.hugongdianhua))){
					this.$utils.msg(`护工电话应输入手机格式`);
					return
				}
				if((!this.ruleForm.hulijibie) && `hugong` == this.tableName){
					this.$utils.msg(`护理级别不能为空`);
					return
				}
				if((!this.ruleForm.jiashuzhanghao) && `jiashu` == this.tableName){
					this.$utils.msg(`家属账号不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `jiashu` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
				if(`jiashu` == this.tableName && this.ruleForm.jiashushouji&&(!this.$validate.isMobile(this.ruleForm.jiashushouji))){
					this.$utils.msg(`家属手机应输入手机格式`);
					return
				}
				if(`jiashu` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
					this.$utils.msg(`身份证应输入身份证格式`);
					return
				}
				let table = uni.getStorageSync("nowTable");
				await this.$api.update(table, this.ruleForm);
				this.$utils.msgBack('修改成功');;
			}

			,hugonghugongzhaopianTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.hugongzhaopian = 'upload/' + res.file;
					_this.$forceUpdate();
				});
			}
			,jiashutouxiangTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.touxiang = 'upload/' + res.file;
					_this.$forceUpdate();
				});
			}
		}
	}
</script>

<style lang="scss" scoped>
	page {
		background-color: #fff;
	}
	
	.content:after {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		content: '';
				background-image: url(http://codegen.caihongy.cn/20220224/741bf483f74d49de8d9462cfb79b68dd.png);
				background-attachment: fixed;
		background-size: cover;
		background-position: center;
	}

	.avator {
		width: 110upx;
		height: 110upx;
		border-radius: 50%;
		margin-left: 30upx;
	}
	
	.cu-form-group.active {
		justify-content: space-between;
	}

	.cu-btn {
		width: 100%;
	}
	.cu-form-group .title {
		height: auto;
	}

	.right-input {
		flex: 1;
		text-align: left;
		line-height: 60rpx;
	}
	.btn {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  flex-wrap: wrap;
	}
	.box {
	  width: auto;
	  padding: 0 10upx;
	  box-sizing: border-box;
	  margin-bottom: 20upx;
	}

.picker-select-input {
	line-height: 60rpx;
}
</style>
