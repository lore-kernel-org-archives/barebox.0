Delivery-date: Mon, 15 Dec 2025 09:31:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3zD-00Bg52-0K
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:31:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3zC-0000bd-HB
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:31:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mc7lp6Aoz5AI0T0w4laoRsJEmsR6PqMLZbImZZd5w6Y=; b=LkQeWU9pq3YH2rmUkQti/TI6P7
	W760DJnY6rNhre7ZRsvYeh+/rT6TJFxkkYUmv/QDh2J0aQrp+b3yiHd6iJAHki6LFsslVFHn+QOCt
	BbNB5SY+DvjZqSJfrt/ESxH6m4/cx/QDKho1yk4xXUOUu9b9uTBUP1oxJbJkq7bS2z1NV8IaLdec2
	QcXjvZalW22EoCnIo9v4EG/hPNS7HfP7Us07e8eAb+EB47iO4UYiu3/O+AStbJcdSBKBDdZEyEHhV
	rcmnxZ9Vob9rQCXNY/ma3F2FRceZcpVxbr91qwl9HP/hfsJ7QNJNA2aK8QghmODXU3oZdsCm2yhHi
	bpgvwDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3ya-00000003GxN-0iQQ;
	Mon, 15 Dec 2025 08:30:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3yL-00000003GwO-3Kwi
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3yJ-0000WG-NP; Mon, 15 Dec 2025 09:30:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3yJ-005kVU-1i;
	Mon, 15 Dec 2025 09:30:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3yJ-000000092VB-1pev;
	Mon, 15 Dec 2025 09:30:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:30:22 +0100
Message-ID: <20251215083022.2153932-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-13-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-13-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_003027_835014_13930484 
X-CRM114-Status: UNSURE (   9.74  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! efi: guid: add some more GUIDs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi: guid: add SMBIOS3 GUID as well

The EFI loader will install a table with a SMBIOS3 table, so let's
squeeze its GUID in for preparation.

Having all GUIDs added in a single commit gives some more flexibility
with ordering the protocols and tables for which support is going to be
added.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/guid.c         | 1 +
 include/efi/guid.h | 8 ++++++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/efi/guid.c b/efi/guid.c
index cbea412c1c42..8853829d216b 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -35,6 +35,7 @@ const efi_guid_t efi_device_path_utilities_protocol_guid =
 	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
 const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
 const efi_guid_t efi_smbios_guid = EFI_SMBIOS_TABLE_GUID;
+const efi_guid_t efi_smbios3_guid = EFI_SMBIOS3_TABLE_GUID;
 const efi_guid_t efi_guid_hii_database_protocol = EFI_HII_DATABASE_PROTOCOL_GUID;
 const efi_guid_t efi_guid_hii_string_protocol = EFI_HII_STRING_PROTOCOL_GUID;
 const efi_guid_t efi_guid_hii_config_routing_protocol = EFI_HII_CONFIG_ROUTING_PROTOCOL_GUID;
diff --git a/include/efi/guid.h b/include/efi/guid.h
index eafd80b25ccd..202300c74aaa 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -41,6 +41,7 @@ extern const efi_guid_t efi_load_file2_protocol_guid;
 extern const efi_guid_t efi_device_path_utilities_protocol_guid;
 extern const efi_guid_t efi_linux_initrd_media_guid;
 extern const efi_guid_t efi_smbios_guid;
+extern const efi_guid_t efi_smbios3_guid;
 extern const efi_guid_t efi_gop_guid;
 extern const efi_guid_t efi_snp_guid;
 extern const efi_guid_t efi_text_input_ex_guid;
@@ -71,8 +72,11 @@ extern const efi_guid_t efi_debug_image_info_table_guid;
 #define EFI_ACPI_20_TABLE_GUID    \
     EFI_GUID(  0x8868e871, 0xe4f1, 0x11d3, 0xbc, 0x22, 0x0, 0x80, 0xc7, 0x3c, 0x88, 0x81 )
 
-#define EFI_SMBIOS_TABLE_GUID    \
-    EFI_GUID(  0xeb9d2d31, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+#define EFI_SMBIOS_TABLE_GUID \
+    EFI_GUID(0xeb9d2d31, 0x2d88, 0x11d3, 0x9a, 0x16, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define EFI_SMBIOS3_TABLE_GUID \
+    EFI_GUID(0xf2fd1544, 0x9794, 0x4a2c, 0x99, 0x2e, 0xe5, 0xbb, 0xcf, 0x20, 0xe3, 0x94 )
 
 #define EFI_SAL_SYSTEM_TABLE_GUID    \
     EFI_GUID(  0xeb9d2d32, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
-- 
2.47.3



