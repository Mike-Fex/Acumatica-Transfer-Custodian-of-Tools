<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="FS304099.aspx.cs" Inherits="Page_FS304099" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="ToolsAndCustodians.ToolsMaint"
        PrimaryView="MasterView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView SkinID="" ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" Height="200px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule11" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector10" DataField="IssueNumber" ></px:PXSelector>
			<px:PXSelector CommitChanges="True" runat="server" ID="CstPXSelector6" DataField="IssueEng" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector14" DataField="ReceiptEng" />
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit4" DataField="IssueDate" ></px:PXDateTimeEdit>
			<px:PXDropDown runat="server" ID="CstPXDropDown9" DataField="Status" ></px:PXDropDown>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule12" StartColumn="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit13" DataField="ReceiptDate" ></px:PXDateTimeEdit></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="DetailsView">
			    <Columns>
				<px:PXGridColumn CommitChanges="True" DataField="AssetID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="AssetDescr" Width="450px" ></px:PXGridColumn>
				<px:PXGridColumn DataField="RefNbr" Width="140" />
				<px:PXGridColumn DataField="Comments" Width="180" /></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>
