<%@tag description="Edit Segment Window" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<div id="sidebar-text" class="col s12 hide">

	<div class="virtual-keyboard-settings row infocus">
		<a class="btn col s6 waves-effect waves-light tooltipped vk-upload" 
			data-position="left" data-delay="50" data-tooltip="Add new buttons to the virtual keyboard." 
			onclick="$('#upload-vk-input').click()">
			Load
			<i class="material-icons right">file_upload</i>
		</a>	
		<input id="upload-vk-input" class="upload-virtual-keyboard hide" type="file">
		<a class="btn col s6 tooltipped vk-download" data-position="left" data-delay="50" data-tooltip="Drop virtual keyboard buttons here to delete them. (Only possible if virtual keyboard is unlocked)">
			Save <i class="material-icons right"> file_download </i>
		</a>	
	</div>
	<div class="virtual-keyboard infocus"> </div>
	<div class="virtual-keyboard-tools row infocus">
		<a class="btn col s4 waves-effect waves-light tooltipped vk-add" data-position="left" data-delay="50" data-tooltip="Add new buttons to the virtual keyboard.">
			<i class="material-icons"> add </i>
		</a>	
		<a class="btn col s4 tooltipped vk-delete draggable" data-position="left" data-delay="50" data-tooltip="Drop virtual keyboard buttons here to delete them. (Only possible if virtual keyboard is unlocked)">
			<i class="material-icons"> delete </i>
		</a>	
		<a class="btn col s4 waves-effect waves-light tooltipped hide vk-lock" data-position="left" data-delay="50" data-tooltip="Lock buttons of the virtual keyboard in place.">
			<i class="material-icons"> lock_open </i>
		</a>	
		<a class="btn col s4 waves-effect waves-light tooltipped vk-unlock" data-position="left" data-delay="50" data-tooltip="Unlock buttons of the virtual keyboard in order to move them.">
			<i class="material-icons"> lock </i>
		</a>	
	</div>

	<a class="col s12 waves-effect waves-light btn exportPageXML tooltipped" data-position="left" data-delay="50" data-tooltip="Save the current segmentation as PageXML (Shortcut: CTRL+S)">
		Save Result
		<div class="progress hide">
    		<div class="indeterminate"></div>
		</div>       
		<span class="pageXMLVersion">version</span>
		<i class="material-icons right">file_download</i>
		<div class="dropDownPageXMLCorner"></div>
	</a>

	<div href="#!" class='dropdown-button dropDownPageXML' data-activates='dropdownPageXMLVersion2'></div>
	<ul id='dropdownPageXMLVersion2' class='dropdown-content'>
		<li><a class="pageXMLVersionSelect" data-version="2017-07-15">2017-07-15</a></li>
		<li><a class="pageXMLVersionSelect" data-version="2010-03-19">2010-03-19</a></li>
	</ul>
	<form action="#">
	<div class="col s12 waves-effect waves-light btn tooltipped" onclick="$('#upload-segmentation-input').click()" data-position="left" data-delay="50" data-tooltip="Supports PageXML v2010-03-19 and v2013-07-15">
		Load Result
		<i class="material-icons right">file_upload</i></div>
		<input id="upload-segmentation-input" class="uploadSegmentation hide" type="file">
	</form>
</div>
