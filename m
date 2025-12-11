Delivery-date: Thu, 11 Dec 2025 21:37:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPe-00AQJT-08
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPc-0008Cq-OF
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NC5h8FYn305Ea55lnBfKdwTQMCGfSk8+x3Hod8W6iR4=; b=B321UbawPPkOHTOxTEI8I7n0KY
	UbpraE93i689+KZLb785zfs5zhbouwjzC49agxB7uy/Jg1wv3iZ8i9d/iAzwSj6CSAu+q40QetpaS
	QXCrtmZ6hDG0g50+bQMLOLK1N72l7V3XsodVcCnd4U6fNabpuNiaF4OXSUc+ZlXRPPFdQbQGJwSWG
	vS0hfkI9LJBV/q7stu24nuK5YS/hAq+t/P7nyCDXMbpaOx1AC8wg8nOHSUMQY2b9UoFYmjHzqLJzB
	+YzWX6a7LdXMzqtu/D4ZarN+MoPRwuJj1A4TMofKvLXVzuscCL0MwpDVDtkjO/Gmogjvv4fFZBOoJ
	oZbnrUEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPC-0000000HFQs-3Pyr;
	Thu, 11 Dec 2025 20:36:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPA-0000000HFOI-1OaS
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NC5h8FYn305Ea55lnBfKdwTQMCGfSk8+x3Hod8W6iR4=; b=ohvcSR4iJvlXPSFSNQ/lYiNWt4
	MNYDMbykDQt2cJNbCvzpAK8OVMVI/vX34gx9fJigU2gexNQPYhXga4odkue7G3cIvHUASUeBUb0nM
	hAKPWI0qCiWuVIG0udBu9vGABlihuNU87cQ+bShQoZgXa+sgDuDmiwGSpHlAbsiw4myEn9/x4urSs
	K7Xj6e9gweiRT8S0dyoXGrziyvPqH+uW350TA2/p23MDVVkowsbKGAr3dI4qywR50orSHAniHUmPt
	8kiera3TMf20EM9M1AuoVHju13wJkDU8SQADjkq7ZS+xH7LVcGnwVwavTd17RDq2jKPgH9Oeb7gVL
	0p76LCwQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXb-0000000FZXU-0hn2
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007qL-Q7; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWi-1x;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-3NTc;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:02 +0100
Message-ID: <20251211203056.2014710-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_318114_EE4B9E49 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 11/16] efi: guid: don't interleave protocol and event GUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before adding even more GUIDs, let's tidy the existing ones up by
not mixing GUIDs for protocols and events.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/guid.c         | 17 +++++++++-----
 include/efi/guid.h | 55 +++++++++++++++++++++++-----------------------
 2 files changed, 39 insertions(+), 33 deletions(-)

diff --git a/efi/guid.c b/efi/guid.c
index 6b8e50741ec1..44f03c8046d9 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <efi/guid.h>
 
+/* ---------- Protocol GUIDs ---------- */
 efi_guid_t efi_file_info_id = EFI_FILE_INFO_GUID;
 efi_guid_t efi_simple_file_system_protocol_guid = EFI_SIMPLE_FILE_SYSTEM_GUID;
 efi_guid_t efi_file_system_info_guid = EFI_FILE_SYSTEM_INFO_GUID;
@@ -25,6 +26,15 @@ const efi_guid_t efi_dt_fixup_protocol_guid = EFI_DT_FIXUP_PROTOCOL_GUID;
 /* GUID of the EFI_DRIVER_BINDING_PROTOCOL */
 const efi_guid_t efi_driver_binding_protocol_guid = EFI_DRIVER_BINDING_PROTOCOL_GUID;
 
+/* GUIDs of the Load File and Load File2 protocols */
+const efi_guid_t efi_load_file_protocol_guid = EFI_LOAD_FILE_PROTOCOL_GUID;
+const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
+const efi_guid_t efi_device_path_utilities_protocol_guid =
+	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
+const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
+
+
+/* ---------- Event  GUIDs ---------- */
 /* event group ExitBootServices() invoked */
 const efi_guid_t efi_guid_event_group_exit_boot_services =
 			EFI_EVENT_GROUP_EXIT_BOOT_SERVICES;
@@ -38,12 +48,7 @@ const efi_guid_t efi_guid_event_group_memory_map_change =
 const efi_guid_t efi_guid_event_group_ready_to_boot = EFI_EVENT_GROUP_READY_TO_BOOT;
 /* event group ResetSystem() invoked (before ExitBootServices) */
 const efi_guid_t efi_guid_event_group_reset_system = EFI_EVENT_GROUP_RESET_SYSTEM;
-/* GUIDs of the Load File and Load File2 protocols */
-const efi_guid_t efi_load_file_protocol_guid = EFI_LOAD_FILE_PROTOCOL_GUID;
-const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
-const efi_guid_t efi_device_path_utilities_protocol_guid =
-	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
-const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
+
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
diff --git a/include/efi/guid.h b/include/efi/guid.h
index a5b26d420f05..a2bf8638c2e2 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -14,6 +14,8 @@ efi_guidcmp (efi_guid_t left, efi_guid_t right)
 	return memcmp(&left, &right, sizeof (efi_guid_t));
 }
 
+
+/* ---------- Protocol GUIDs ---------- */
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_file_system_info_guid;
@@ -32,38 +34,11 @@ extern efi_guid_t efi_loaded_image_device_path_guid;
 extern const efi_guid_t efi_device_path_to_text_protocol_guid;
 extern const efi_guid_t efi_dt_fixup_protocol_guid;
 extern const efi_guid_t efi_driver_binding_protocol_guid;
-extern const efi_guid_t efi_guid_event_group_exit_boot_services;
-extern const efi_guid_t efi_guid_event_group_virtual_address_change;
-extern const efi_guid_t efi_guid_event_group_memory_map_change;
-extern const efi_guid_t efi_guid_event_group_ready_to_boot;
-extern const efi_guid_t efi_guid_event_group_reset_system;
 extern const efi_guid_t efi_load_file_protocol_guid;
 extern const efi_guid_t efi_load_file2_protocol_guid;
 extern const efi_guid_t efi_device_path_utilities_protocol_guid;
 extern const efi_guid_t efi_linux_initrd_media_guid;
 
-
-/* EFI event group GUID definitions */
-#define EFI_EVENT_GROUP_EXIT_BOOT_SERVICES \
-	EFI_GUID(0x27abf055, 0xb1b8, 0x4c26, 0x80, 0x48, \
-		 0x74, 0x8f, 0x37, 0xba, 0xa2, 0xdf)
-
-#define EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE \
-	EFI_GUID(0x13fa7698, 0xc831, 0x49c7, 0x87, 0xea, \
-		 0x8f, 0x43, 0xfc, 0xc2, 0x51, 0x96)
-
-#define EFI_EVENT_GROUP_MEMORY_MAP_CHANGE \
-	EFI_GUID(0x78bee926, 0x692f, 0x48fd, 0x9e, 0xdb, \
-		 0x01, 0x42, 0x2e, 0xf0, 0xd7, 0xab)
-
-#define EFI_EVENT_GROUP_READY_TO_BOOT \
-	EFI_GUID(0x7ce88fb3, 0x4bd7, 0x4679, 0x87, 0xa8, \
-		 0xa8, 0xd8, 0xde, 0xe5, 0x0d, 0x2b)
-
-#define EFI_EVENT_GROUP_RESET_SYSTEM \
-	EFI_GUID(0x62da6a56, 0x13fb, 0x485a, 0xa8, 0xda, \
-		 0xa3, 0xdd, 0x79, 0x12, 0xcb, 0x6b)
-
 /*
  *  EFI Configuration Table and GUID definitions
  */
@@ -300,4 +275,30 @@ extern const efi_guid_t efi_linux_initrd_media_guid;
 #define EFI_RNG_ALGORITHM_RAW \
     EFI_GUID(0xe43176d7, 0xb6e8, 0x4827, 0xb7, 0x84, 0x7f, 0xfd, 0xc4, 0xb6, 0x85, 0x61)
 
+
+/* ---------- Event  GUIDs ---------- */
+extern const efi_guid_t efi_guid_event_group_exit_boot_services;
+extern const efi_guid_t efi_guid_event_group_virtual_address_change;
+extern const efi_guid_t efi_guid_event_group_memory_map_change;
+extern const efi_guid_t efi_guid_event_group_ready_to_boot;
+extern const efi_guid_t efi_guid_event_group_reset_system;
+
+
+/* EFI event group GUID definitions */
+#define EFI_EVENT_GROUP_EXIT_BOOT_SERVICES \
+    EFI_GUID(0x27abf055, 0xb1b8, 0x4c26, 0x80, 0x48, 0x74, 0x8f, 0x37, 0xba, 0xa2, 0xdf)
+
+#define EFI_EVENT_GROUP_VIRTUAL_ADDRESS_CHANGE \
+    EFI_GUID(0x13fa7698, 0xc831, 0x49c7, 0x87, 0xea, 0x8f, 0x43, 0xfc, 0xc2, 0x51, 0x96)
+
+#define EFI_EVENT_GROUP_MEMORY_MAP_CHANGE \
+    EFI_GUID(0x78bee926, 0x692f, 0x48fd, 0x9e, 0xdb, 0x01, 0x42, 0x2e, 0xf0, 0xd7, 0xab)
+
+#define EFI_EVENT_GROUP_READY_TO_BOOT \
+    EFI_GUID(0x7ce88fb3, 0x4bd7, 0x4679, 0x87, 0xa8, 0xa8, 0xd8, 0xde, 0xe5, 0x0d, 0x2b)
+
+#define EFI_EVENT_GROUP_RESET_SYSTEM \
+    EFI_GUID(0x62da6a56, 0x13fb, 0x485a, 0xa8, 0xda, 0xa3, 0xdd, 0x79, 0x12, 0xcb, 0x6b)
+
+
 #endif
-- 
2.47.3



