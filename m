Delivery-date: Wed, 03 Jan 2024 19:35:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65C-002Nyj-1F
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL655-0006Ie-MT
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G5l8Kp2wXchI1+ec/AS6380p1DQ2vrhAztV33OdWrN4=; b=E4t5KoDrfMpn60Pgi3CH/vVaLE
	gXKdM/VeNCrHOLhhvpkS1POlAIDUMDN/U/yFiXxfl7X0Ham8KASwqgMpiwJ0U9YFXTu4CBSX/AUEN
	GM7Husz9cfzsMOYk1GMABHcOQfXrQWzOtPhJRwnUXdwXZXXBaY+W+oiBp/DyIMpS37454E1dlEWNB
	coEiZlGXa4Lb5KYjJL6BF2AikvBWo638ULO00fPmhApjGoqyh5BTyCWyVRKgicaBuwX2jswgYKo0F
	cqA2M0Arp+jPhYoLxzgvlx+mcwYt9LefB8m+1YrXtSUNCzOAR4GU1qMkMWJWzmpfs4fvfv5hetk0e
	hIW0DT0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63H-00Bjln-1r;
	Wed, 03 Jan 2024 18:33:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61A-00Bh64-1q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001ca-6b; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Ax0-Mm; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-1E;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:14 +0100
Message-Id: <20240103181312.409668-55-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103104_777951_185C4812 
X-CRM114-Status: GOOD (  10.78  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 054/112] efi: efi-guid: add more GUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These GUIDs will be useful for the incoming EFI loader support, so add
them all at once.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/guid.c    | 35 +++++++++++++++++++++++++++++-
 include/efi.h | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 93 insertions(+), 1 deletion(-)

diff --git a/efi/guid.c b/efi/guid.c
index 8103b3d63114..f6bd4a24e2bf 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -6,6 +6,8 @@
 
 efi_guid_t efi_file_info_id = EFI_FILE_INFO_GUID;
 efi_guid_t efi_simple_file_system_protocol_guid = EFI_SIMPLE_FILE_SYSTEM_GUID;
+efi_guid_t efi_file_system_info_guid = EFI_FILE_SYSTEM_INFO_GUID;
+efi_guid_t efi_system_volume_label_id = EFI_FILE_SYSTEM_VOLUME_LABEL_ID;
 efi_guid_t efi_device_path_protocol_guid = EFI_DEVICE_PATH_PROTOCOL_GUID;
 efi_guid_t efi_loaded_image_protocol_guid = EFI_LOADED_IMAGE_PROTOCOL_GUID;
 efi_guid_t efi_unknown_device_guid = EFI_UNKNOWN_DEVICE_GUID;
@@ -16,6 +18,32 @@ efi_guid_t efi_rng_protocol_guid = EFI_RNG_PROTOCOL_GUID;
 efi_guid_t efi_barebox_vendor_guid = EFI_BAREBOX_VENDOR_GUID;
 efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
 efi_guid_t efi_fdt_guid = EFI_DEVICE_TREE_GUID;
+efi_guid_t efi_loaded_image_device_path_guid =
+		EFI_LOADED_IMAGE_DEVICE_PATH_PROTOCOL_GUID;
+const efi_guid_t efi_device_path_to_text_protocol_guid =
+		EFI_DEVICE_PATH_TO_TEXT_PROTOCOL_GUID;
+const efi_guid_t efi_dt_fixup_protocol_guid = EFI_DT_FIXUP_PROTOCOL_GUID;
+/* GUID of the EFI_DRIVER_BINDING_PROTOCOL */
+const efi_guid_t efi_driver_binding_protocol_guid = EFI_DRIVER_BINDING_PROTOCOL_GUID;
+
+/* event group ExitBootServices() invoked */
+const efi_guid_t efi_guid_event_group_exit_boot_services =
+			EFI_EVENT_GROUP_EXIT_BOOT_SERVICES;
+/* event group SetVirtualAddressMap() invoked */
+const efi_guid_t efi_guid_event_group_virtual_address_change =
+			EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE;
+/* event group memory map changed */
+const efi_guid_t efi_guid_event_group_memory_map_change =
+			EFI_EVENT_GROUP_MEMORY_MAP_CHANGE;
+/* event group boot manager about to boot */
+const efi_guid_t efi_guid_event_group_ready_to_boot = EFI_EVENT_GROUP_READY_TO_BOOT;
+/* event group ResetSystem() invoked (before ExitBootServices) */
+const efi_guid_t efi_guid_event_group_reset_system = EFI_EVENT_GROUP_RESET_SYSTEM;
+/* GUIDs of the Load File and Load File2 protocols */
+const efi_guid_t efi_load_file_protocol_guid = EFI_LOAD_FILE_PROTOCOL_GUID;
+const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
+const efi_guid_t efi_device_path_utilities_protocol_guid =
+	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
@@ -42,14 +70,19 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_PCI_IO_PROTOCOL_GUID, "PCI IO Protocol", "EFI 1.1 PCI IO Protocol");
 	EFI_GUID_STRING(EFI_USB_IO_PROTOCOL_GUID, "USB IO Protocol", "EFI 1.0 USB IO Protocol");
 	EFI_GUID_STRING(EFI_FILE_INFO_GUID, "File Info", "EFI File Info");
+	EFI_GUID_STRING(EFI_FILE_SYSTEM_INFO_GUID, "Filesystem Info", "EFI FileSystem Info");
+	EFI_GUID_STRING(EFI_FILE_SYSTEM_VOLUME_LABEL_ID, "Filesystem Volume Label ID", "EFI FileSystem Volume Label ID");
 	EFI_GUID_STRING(EFI_SIMPLE_FILE_SYSTEM_GUID, "Filesystem", "EFI 1.0 Simple FileSystem");
 	EFI_GUID_STRING(EFI_DEVICE_TREE_GUID, "Device Tree", "EFI Device Tree GUID");
 	EFI_GUID_STRING(EFI_DEVICE_PATH_PROTOCOL_GUID, "Device Path Protocol", "EFI 1.0 Device Path protocol");
+	EFI_GUID_STRING(EFI_DEVICE_PATH_TO_TEXT_PROTOCOL_GUID, "Device Path To Text Protocol", "EFI Device Path To Text Protocol");
+	EFI_GUID_STRING(EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID, "Device Path Utilities Protocol", "EFI Device Path Utilities Protocol");
 	EFI_GUID_STRING(EFI_SIMPLE_NETWORK_PROTOCOL_GUID, "Simple Network Protocol", "EFI 1.0 Simple Network Protocol");
 	EFI_GUID_STRING(EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID, "Filesystem Protocol", "EFI 1.0 Simple FileSystem Protocol");
 	EFI_GUID_STRING(EFI_UNKNOWN_DEVICE_GUID, "Efi Unknown Device", "Efi Unknown Device GUID");
 	EFI_GUID_STRING(EFI_BLOCK_IO_PROTOCOL_GUID, "BlockIo Protocol", "EFI 1.0 Block IO protocol");
-
+	EFI_GUID_STRING(EFI_RNG_PROTOCOL_GUID, "RNG Protocol", "EFI RNG protocol");
+	EFI_GUID_STRING(EFI_LOADED_IMAGE_DEVICE_PATH_PROTOCOL_GUID, "Loaded Image Device Path Protocol", "EFI LoadedImageDevicePath Protocol");
 	EFI_GUID_STRING(EFI_FIRMWARE_VOLUME2_PROTOCOL_GUID, "FirmwareVolume2Protocol", "Efi FirmwareVolume2Protocol");
 	EFI_GUID_STRING(EFI_FIRMWARE_VOLUME_BLOCK_PROTOCOL_GUID, "FirmwareVolumeBlock Protocol", "Firmware Volume Block protocol");
 	EFI_GUID_STRING(EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID, "PciRootBridgeIo Protocol", "EFI 1.1 Pci Root Bridge IO Protocol");
diff --git a/include/efi.h b/include/efi.h
index 8635ab58f981..ec4c2a522df4 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -306,6 +306,27 @@ struct efi_runtime_services {
 
 extern struct efi_runtime_services *RT;
 
+/* EFI event group GUID definitions */
+#define EFI_EVENT_GROUP_EXIT_BOOT_SERVICES \
+	EFI_GUID(0x27abf055, 0xb1b8, 0x4c26, 0x80, 0x48, \
+		 0x74, 0x8f, 0x37, 0xba, 0xa2, 0xdf)
+
+#define EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE \
+	EFI_GUID(0x13fa7698, 0xc831, 0x49c7, 0x87, 0xea, \
+		 0x8f, 0x43, 0xfc, 0xc2, 0x51, 0x96)
+
+#define EFI_EVENT_GROUP_MEMORY_MAP_CHANGE \
+	EFI_GUID(0x78bee926, 0x692f, 0x48fd, 0x9e, 0xdb, \
+		 0x01, 0x42, 0x2e, 0xf0, 0xd7, 0xab)
+
+#define EFI_EVENT_GROUP_READY_TO_BOOT \
+	EFI_GUID(0x7ce88fb3, 0x4bd7, 0x4679, 0x87, 0xa8, \
+		 0xa8, 0xd8, 0xde, 0xe5, 0x0d, 0x2b)
+
+#define EFI_EVENT_GROUP_RESET_SYSTEM \
+	EFI_GUID(0x62da6a56, 0x13fb, 0x485a, 0xa8, 0xda, \
+		 0xa3, 0xdd, 0x79, 0x12, 0xcb, 0x6b)
+
 /*
  *  EFI Configuration Table and GUID definitions
  */
@@ -345,6 +366,9 @@ extern struct efi_runtime_services *RT;
 #define EFI_LOADED_IMAGE_PROTOCOL_GUID \
     EFI_GUID(  0x5b1b31a1, 0x9562, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
 
+#define EFI_LOADED_IMAGE_DEVICE_PATH_PROTOCOL_GUID \
+    EFI_GUID(0xbc62157e, 0x3e33, 0x4fec, 0x99, 0x20, 0x2d, 0x3b, 0x36, 0xd7, 0x50, 0xdf)
+
 #define EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID \
     EFI_GUID(  0x9042a9de, 0x23dc, 0x4a38, 0x96, 0xfb, 0x7a, 0xde, 0xd0, 0x80, 0x51, 0x6a )
 
@@ -363,12 +387,24 @@ extern struct efi_runtime_services *RT;
 #define EFI_SIMPLE_FILE_SYSTEM_GUID \
     EFI_GUID(  0x964e5b22, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
 
+#define EFI_FILE_SYSTEM_INFO_GUID \
+    EFI_GUID(0x09576e93, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_FILE_SYSTEM_VOLUME_LABEL_ID \
+    EFI_GUID(0xdb47d7d3, 0xfe81, 0x11d3, 0x9a, 0x35, 0x00, 0x90, 0x27, 0x3f, 0xC1, 0x4d)
+
 #define EFI_DEVICE_TREE_GUID \
     EFI_GUID(  0xb1b621d5, 0xf19c, 0x41a5, 0x83, 0x0b, 0xd9, 0x15, 0x2c, 0x69, 0xaa, 0xe0 )
 
 #define EFI_DEVICE_PATH_PROTOCOL_GUID \
     EFI_GUID(  0x9576e91, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
 
+#define EFI_DEVICE_PATH_TO_TEXT_PROTOCOL_GUID \
+    EFI_GUID( 0x8b843e20, 0x8132, 0x4852, 0x90, 0xcc, 0x55, 0x1a, 0x4e, 0x4a, 0x7f, 0x1c)
+
+#define EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID \
+    EFI_GUID(0x0379be4e, 0xd706, 0x437d, 0xb0, 0x37, 0xed, 0xb8, 0x2f, 0xb7, 0x72, 0xa4)
+
 #define EFI_SIMPLE_NETWORK_PROTOCOL_GUID \
     EFI_GUID( 0xA19832B9, 0xAC25, 0x11D3, 0x9A, 0x2D, 0x00, 0x90, 0x27, 0x3F, 0xC1, 0x4D )
 
@@ -415,6 +451,9 @@ extern struct efi_runtime_services *RT;
 #define EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID \
     EFI_GUID(0x387477c1, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
 
+#define EFI_CONSOLE_CONTROL_GUID \
+    EFI_GUID(0xf42f7782, 0x12e, 0x4c12, 0x99, 0x56, 0x49, 0xf9, 0x43, 0x4, 0xf7, 0x21)
+
 #define EFI_DISK_IO_PROTOCOL_GUID \
     EFI_GUID(0xce345171, 0xba0b, 0x11d2, 0x8e, 0x4f, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
 
@@ -506,8 +545,16 @@ extern struct efi_runtime_services *RT;
 #define EFI_TCG2_PROTOCOL_GUID \
     EFI_GUID(0x607f766c, 0x7455, 0x42be, 0x93, 0x0b, 0xe4, 0xd7, 0x6d, 0xb2, 0x72, 0x0f)
 
+#define EFI_DT_FIXUP_PROTOCOL_GUID \
+    EFI_GUID(0xe617d64c, 0xfe08, 0x46da, 0xf4, 0xdc, 0xbb, 0xd5, 0x87, 0x0c, 0x73, 0x00)
+
+#define EFI_DRIVER_BINDING_PROTOCOL_GUID \
+    EFI_GUID(0x18a031ab, 0xb443, 0x4d1a, 0xa5, 0xc0, 0x0c, 0x09, 0x26, 0x1e, 0x9f, 0x71)
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
+extern efi_guid_t efi_file_system_info_guid;
+extern efi_guid_t efi_system_volume_label_id;
 extern efi_guid_t efi_device_path_protocol_guid;
 extern efi_guid_t efi_loaded_image_protocol_guid;
 extern efi_guid_t efi_unknown_device_guid;
@@ -518,6 +565,18 @@ extern efi_guid_t efi_rng_protocol_guid;
 extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
 extern efi_guid_t efi_fdt_guid;
+extern efi_guid_t efi_loaded_image_device_path_guid;
+extern const efi_guid_t efi_device_path_to_text_protocol_guid;
+extern const efi_guid_t efi_dt_fixup_protocol_guid;
+extern const efi_guid_t efi_driver_binding_protocol_guid;
+extern const efi_guid_t efi_guid_event_group_exit_boot_services;
+extern const efi_guid_t efi_guid_event_group_virtual_address_change;
+extern const efi_guid_t efi_guid_event_group_memory_map_change;
+extern const efi_guid_t efi_guid_event_group_ready_to_boot;
+extern const efi_guid_t efi_guid_event_group_reset_system;
+extern const efi_guid_t efi_load_file_protocol_guid;
+extern const efi_guid_t efi_load_file2_protocol_guid;
+extern const efi_guid_t efi_device_path_utilities_protocol_guid;
 
 struct efi_config_table {
 	efi_guid_t guid;
-- 
2.39.2



