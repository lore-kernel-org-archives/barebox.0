Delivery-date: Thu, 11 Dec 2025 21:37:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPe-00AQJv-1b
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPd-0008Cz-7j
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dzyEDnPuJIM0gAiwLAjW6R6geg0OrY0O+S1yUGOK9nY=; b=jw6BzeRBrIGThcNjx5n0uTdCiX
	1ldyHfeRQQX9YZQAUEkbM/Qn09ZbocHzx7Icq1BIIP1h2gcWczbboTG4gM+qH6t3SvKWHouxNlW8k
	eN+YM8xbGFPHvmQ+BGdAT4vSzg6d6X2YrL34DNGMGJIfzH6GB8XTGEoOkE2bBVyOK3EMDGla5pC3r
	1qMaDRWtMoiIxBMNUyOk3+Ob8iKx57RYfSu36a114D0SjLb2bMIhobYfPC3opLzvgBR6M13vgde6H
	z9l3x09Q3ajLaSb/yvHsAP73AN7g5gzykmtVlXSzT1kb9VFGsfWyL0WF6Yq03FmWQWsTBsAXstU7t
	xYXogvgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPD-0000000HFRr-1faJ;
	Thu, 11 Dec 2025 20:36:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPB-0000000HFPE-3cSr
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dzyEDnPuJIM0gAiwLAjW6R6geg0OrY0O+S1yUGOK9nY=; b=j5Tl6A2ynjyDb/KOCWnkJBIXaU
	B66Dfx1/g9mp5lgc5I3SJ7WQSGovEepcuHCdbQ8X6NLG4x4q9ni0VQej1+AOlyRG6yB+LR+UgVun4
	p4rPSr6QIyF7udxU0a0F6LLD+F0UB9fzUSV4d/CEgRbaOEuBsNq7RTroCy86tqAWUzBb0mT3iELlS
	yowVi46YrMAEwU4RRNc2g6MUH2b5uygf+kGLBVe7p+iEQe/3+TKJWU73Vd0D3OpRxVRPs/R3LmU85
	BxJ9E7e5ag6nwQ5LKFJQqPw1YWgNTOrlAVlS7edkjLQYGW55Lxojs0SO/w22VddjbQPTdwVenrSYn
	A2EWruZQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXb-0000000FZXT-0Wo1
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007q9-NQ; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWe-1f;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-3a3h;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:03 +0100
Message-ID: <20251211203056.2014710-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_339457_FAC9F4D7 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/16] efi: guid: add some more GUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These GUIDs will be used by the upcoming barebox EFI loader support, so
add them all at once to avoid the churn.

They don't do harm if they are unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/guid.c         | 21 ++++++++++++++++++
 include/efi/guid.h | 54 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 75 insertions(+)

diff --git a/efi/guid.c b/efi/guid.c
index 44f03c8046d9..8d4618df5730 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -13,9 +13,11 @@ efi_guid_t efi_loaded_image_protocol_guid = EFI_LOADED_IMAGE_PROTOCOL_GUID;
 efi_guid_t efi_unknown_device_guid = EFI_UNKNOWN_DEVICE_GUID;
 efi_guid_t efi_null_guid = EFI_NULL_GUID;
 efi_guid_t efi_global_variable_guid = EFI_GLOBAL_VARIABLE_GUID;
+const efi_guid_t efi_guid_image_security_database = EFI_IMAGE_SECURITY_DATABASE_GUID;
 efi_guid_t efi_block_io_protocol_guid = EFI_BLOCK_IO_PROTOCOL_GUID;
 efi_guid_t efi_rng_protocol_guid = EFI_RNG_PROTOCOL_GUID;
 efi_guid_t efi_barebox_vendor_guid = EFI_BAREBOX_VENDOR_GUID;
+efi_guid_t efi_file_store_vars_guid = EFI_FILE_STORE_VARS_GUID;
 efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
 efi_guid_t efi_fdt_guid = EFI_DEVICE_TREE_GUID;
 efi_guid_t efi_loaded_image_device_path_guid =
@@ -32,6 +34,19 @@ const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
 const efi_guid_t efi_device_path_utilities_protocol_guid =
 	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
 const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
+const efi_guid_t efi_smbios_guid = EFI_SMBIOS_TABLE_GUID;
+const efi_guid_t efi_guid_hii_database_protocol = EFI_HII_DATABASE_PROTOCOL_GUID;
+const efi_guid_t efi_guid_hii_string_protocol = EFI_HII_STRING_PROTOCOL_GUID;
+const efi_guid_t efi_guid_hii_config_routing_protocol = EFI_HII_CONFIG_ROUTING_PROTOCOL_GUID;
+const efi_guid_t efi_guid_hii_config_access_protocol = EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID;
+const efi_guid_t efi_guid_unicode_collation_protocol2 = EFI_UNICODE_COLLATION_PROTOCOL2_GUID;
+const efi_guid_t shim_lock_guid = SHIM_LOCK_GUID;
+/* GUID of the runtime properties table */
+const efi_guid_t efi_rt_properties_table_guid = EFI_RT_PROPERTIES_TABLE_GUID;
+const efi_guid_t efi_guid_firmware_management_protocol = EFI_FIRMWARE_MANAGEMENT_PROTOCOL_GUID;
+const efi_guid_t efi_debug_image_info_table_guid = EFI_DEBUG_IMAGE_INFO_TABLE_GUID;
+const efi_guid_t efi_text_input_guid = EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID;
+const efi_guid_t efi_text_output_guid = EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID;
 
 
 /* ---------- Event  GUIDs ---------- */
@@ -48,6 +63,12 @@ const efi_guid_t efi_guid_event_group_memory_map_change =
 const efi_guid_t efi_guid_event_group_ready_to_boot = EFI_EVENT_GROUP_READY_TO_BOOT;
 /* event group ResetSystem() invoked (before ExitBootServices) */
 const efi_guid_t efi_guid_event_group_reset_system = EFI_EVENT_GROUP_RESET_SYSTEM;
+/* event group before ExitBootServices() invoked */
+const efi_guid_t efi_guid_event_group_before_exit_boot_services =
+			EFI_EVENT_GROUP_BEFORE_EXIT_BOOT_SERVICES;
+/* event group return to efibootmgr */
+const efi_guid_t efi_guid_event_group_return_to_efibootmgr =
+			EFI_EVENT_GROUP_RETURN_TO_EFIBOOTMGR;
 
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
diff --git a/include/efi/guid.h b/include/efi/guid.h
index a2bf8638c2e2..44fbe9f428ae 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -25,9 +25,11 @@ extern efi_guid_t efi_loaded_image_protocol_guid;
 extern efi_guid_t efi_unknown_device_guid;
 extern efi_guid_t efi_null_guid;
 extern efi_guid_t efi_global_variable_guid;
+extern const efi_guid_t efi_guid_image_security_database;
 extern efi_guid_t efi_block_io_protocol_guid;
 extern efi_guid_t efi_rng_protocol_guid;
 extern efi_guid_t efi_barebox_vendor_guid;
+extern efi_guid_t efi_file_store_vars_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
 extern efi_guid_t efi_fdt_guid;
 extern efi_guid_t efi_loaded_image_device_path_guid;
@@ -38,6 +40,18 @@ extern const efi_guid_t efi_load_file_protocol_guid;
 extern const efi_guid_t efi_load_file2_protocol_guid;
 extern const efi_guid_t efi_device_path_utilities_protocol_guid;
 extern const efi_guid_t efi_linux_initrd_media_guid;
+extern const efi_guid_t efi_smbios_guid;
+extern const efi_guid_t efi_text_input_guid;
+extern const efi_guid_t efi_text_output_guid;
+extern const efi_guid_t efi_guid_unicode_collation_protocol2;
+extern const efi_guid_t efi_guid_hii_config_routing_protocol;
+extern const efi_guid_t efi_guid_hii_config_access_protocol;
+extern const efi_guid_t efi_guid_hii_database_protocol;
+extern const efi_guid_t efi_guid_hii_string_protocol;
+extern const efi_guid_t shim_lock_guid;
+extern const efi_guid_t efi_rt_properties_table_guid;
+extern const efi_guid_t efi_guid_firmware_management_protocol;
+extern const efi_guid_t efi_debug_image_info_table_guid;
 
 /*
  *  EFI Configuration Table and GUID definitions
@@ -69,9 +83,15 @@ extern const efi_guid_t efi_linux_initrd_media_guid;
 #define EFI_GLOBAL_VARIABLE_GUID \
     EFI_GUID(  0x8be4df61, 0x93ca, 0x11d2, 0xaa, 0x0d, 0x00, 0xe0, 0x98, 0x03, 0x2b, 0x8c )
 
+#define EFI_IMAGE_SECURITY_DATABASE_GUID \
+    EFI_GUID(  0xd719b2cb, 0x3d3a, 0x4596, 0xa3, 0xbc, 0xda, 0xd0, 0x0e, 0x67, 0x65, 0x6f )
+
 #define EFI_UV_SYSTEM_TABLE_GUID \
     EFI_GUID(  0x3b13a7d4, 0x633e, 0x11dd, 0x93, 0xec, 0xda, 0x25, 0x56, 0xd8, 0x95, 0x93 )
 
+#define EFI_RT_PROPERTIES_TABLE_GUID \
+    EFI_GUID(  0xeb66918a, 0x7eef, 0x402a, 0x84, 0x2e, 0x93, 0x1d, 0x21, 0xc3, 0x8a, 0xe9 )
+
 #define EFI_LINUX_EFI_CRASH_GUID \
     EFI_GUID(  0xcfc8fc79, 0xbe2e, 0x4ddc, 0x97, 0xf0, 0x9f, 0x98, 0xbf, 0xe2, 0x98, 0xa0 )
 
@@ -248,6 +268,9 @@ extern const efi_guid_t efi_linux_initrd_media_guid;
 #define EFI_BAREBOX_VENDOR_GUID \
     EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
 
+#define EFI_FILE_STORE_VARS_GUID \
+    EFI_GUID(0xb2ac5fc9, 0x92b7, 0x4acd, 0xae, 0xac, 0x11, 0xe8, 0x18, 0xc3, 0x13, 0x0c)
+
 /* for systemd */
 #define EFI_SYSTEMD_VENDOR_GUID \
     EFI_GUID(0x4a67b082, 0x0a4c, 0x41cf, 0xb6, 0xc7, 0x44, 0x0b, 0x29, 0xbb, 0x8c, 0x4f)
@@ -275,6 +298,30 @@ extern const efi_guid_t efi_linux_initrd_media_guid;
 #define EFI_RNG_ALGORITHM_RAW \
     EFI_GUID(0xe43176d7, 0xb6e8, 0x4827, 0xb7, 0x84, 0x7f, 0xfd, 0xc4, 0xb6, 0x85, 0x61)
 
+#define EFI_HII_STRING_PROTOCOL_GUID \
+    EFI_GUID(0x0fd96974, 0x23aa, 0x4cdc, 0xb9, 0xcb, 0x98, 0xd1, 0x77, 0x50, 0x32, 0x2a)
+
+#define EFI_HII_DATABASE_PROTOCOL_GUID \
+    EFI_GUID(0xef9fc172, 0xa1b2, 0x4693, 0xb3, 0x27, 0x6d, 0x32, 0xfc, 0x41, 0x60, 0x42)
+
+#define EFI_HII_CONFIG_ROUTING_PROTOCOL_GUID \
+    EFI_GUID(0x587e72d7, 0xcc50, 0x4f79, 0x82, 0x09, 0xca, 0x29, 0x1f, 0xc1, 0xa1, 0x0f)
+
+#define EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID \
+    EFI_GUID(0x330d4706, 0xf2a0, 0x4e4f, 0xa3, 0x69, 0xb6, 0x6f, 0xa8, 0xd5, 0x43, 0x85)
+
+#define EFI_UNICODE_COLLATION_PROTOCOL2_GUID \
+    EFI_GUID(0xa4c751fc, 0x23ae, 0x4c3e, 0x92, 0xe9, 0x49, 0x64, 0xcf, 0x63, 0xf3, 0x49)
+
+/* GUID used by Shim to store the MOK database */
+#define SHIM_LOCK_GUID \
+    EFI_GUID(0x605dab50, 0xe046, 0x4300, 0xab, 0xb6, 0x3d, 0xd8, 0x10, 0xdd, 0x8b, 0x23)
+
+#define EFI_FIRMWARE_MANAGEMENT_PROTOCOL_GUID \
+    EFI_GUID(0x86c77a67, 0x0b97, 0x4633, 0xa1, 0x87, 0x49, 0x10, 0x4d, 0x06, 0x85, 0xc7)
+
+#define EFI_DEBUG_IMAGE_INFO_TABLE_GUID \
+   EFI_GUID(0x49152e77, 0x1ada, 0x4764, 0xb7, 0xa2, 0x7a, 0xfe, 0xfe, 0xd9, 0x5e, 0x8b)
 
 /* ---------- Event  GUIDs ---------- */
 extern const efi_guid_t efi_guid_event_group_exit_boot_services;
@@ -282,12 +329,17 @@ extern const efi_guid_t efi_guid_event_group_virtual_address_change;
 extern const efi_guid_t efi_guid_event_group_memory_map_change;
 extern const efi_guid_t efi_guid_event_group_ready_to_boot;
 extern const efi_guid_t efi_guid_event_group_reset_system;
+extern const efi_guid_t efi_guid_event_group_before_exit_boot_services;
+extern const efi_guid_t efi_guid_event_group_return_to_efibootmgr;
 
 
 /* EFI event group GUID definitions */
 #define EFI_EVENT_GROUP_EXIT_BOOT_SERVICES \
     EFI_GUID(0x27abf055, 0xb1b8, 0x4c26, 0x80, 0x48, 0x74, 0x8f, 0x37, 0xba, 0xa2, 0xdf)
 
+#define EFI_EVENT_GROUP_BEFORE_EXIT_BOOT_SERVICES \
+    EFI_GUID(0x8be0e274, 0x3970, 0x4b44, 0x80, 0xc5, 0x1a, 0xb9, 0x50, 0x2f, 0x3b, 0xfc)
+
 #define EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE \
     EFI_GUID(0x13fa7698, 0xc831, 0x49c7, 0x87, 0xea, 0x8f, 0x43, 0xfc, 0xc2, 0x51, 0x96)
 
@@ -300,5 +352,7 @@ extern const efi_guid_t efi_guid_event_group_reset_system;
 #define EFI_EVENT_GROUP_RESET_SYSTEM \
     EFI_GUID(0x62da6a56, 0x13fb, 0x485a, 0xa8, 0xda, 0xa3, 0xdd, 0x79, 0x12, 0xcb, 0x6b)
 
+#define EFI_EVENT_GROUP_RETURN_TO_EFIBOOTMGR \
+    EFI_GUID(0xb4a40fe6, 0x9149, 0x4f29, 0x94, 0x47, 0x49, 0x38, 0x7a, 0x7f, 0xab, 0x87)
 
 #endif
-- 
2.47.3



