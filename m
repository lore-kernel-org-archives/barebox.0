Delivery-date: Thu, 11 Dec 2025 21:37:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPc-00AQIX-2W
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPc-0008Bo-1e
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V4VPwvcGNLIkwGS8AF+BxcQKXzFSSWsLFx+/c13QgFo=; b=09y57b8HIQHpPN2uHd+eZE4nr/
	3L7Tll+SUOaVqjVnIKmZlax8haM2yt7jZxzWXhiY85ohfvW8mNXJAL+ipoETlWxEqHhYcmsVoKCIJ
	9jEPvS60hxxFuFGarmWaU7DSWlRCgJ3SZxHmkxQEcDhifcXjxitJv6N3wQPoGZmhMY/K1Z0WGuTBd
	XyXKCVk47lVOY2Kc8yXMHhZTutEi1oi3gorup10KdVNeyKmDEqnj7goAOztvHLGM3H3XuVTX5tybM
	vi2iMJY5SPO4pEBk4B3zVBGAhmc4VqGJrxzJQiZiLM6IheDR2TBCq34Ne5XExePipMQwP9IMb0U8C
	Z9JIV/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPC-0000000HFQB-22yK;
	Thu, 11 Dec 2025 20:36:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPA-0000000HFOJ-1LON
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=V4VPwvcGNLIkwGS8AF+BxcQKXzFSSWsLFx+/c13QgFo=; b=caVwD5aqoGBDLcFA8LYfgyABRs
	KPKgXmH9Lv8ETjZsQnA0K6VGHwBlnjvagiC1KNlYKI6gVEjItDOjr2kUFT9Y+9cbZdaU8MoXQZaRh
	YplcXAi6MYg08h9hgXhPl7tMtKGsr0yF4Pu8GyjbwRW9v54JMGj/d2q3kX2JBqhZqjW5FSXy845i7
	9HarlyZ3elif7nQrtrnOgdgpg8wSdq9AJT2uuof0kp1vLldNNW6r+wKwpZKRXXeihq7vMeXH1WsGu
	jrD/5plkUEAKvijgYa/tFSTrvdSbvjGx/roDOjyaL6eEJ4Wu1aC8CovQYlTMc2RxhYx5cAlq0SZAw
	YkS6Xlaw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXb-0000000FZXS-00D0
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007pv-KG; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWa-1O;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-3mYI;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:04 +0100
Message-ID: <20251211203056.2014710-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_317035_1EEF35A3 
X-CRM114-Status: GOOD (  12.65  )
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
Subject: [PATCH 13/16] efi: guid: move static GUIDs out of drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GUIDs for SNP, STDIO and GOP drivers are compiled statically into
the drivers using them. The same GUIDs will be used for barebox acting
as EFI loader as well, so move them to the common efi/guid.c to allow
reuse.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/efi-snp.c      | 6 ++----
 drivers/serial/efi-stdio.c | 3 +--
 drivers/video/efi_gop.c    | 3 +--
 efi/guid.c                 | 3 +++
 include/efi/guid.h         | 3 +++
 5 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 5dffe3793426..3927ebbb8be9 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -75,8 +75,6 @@ static void efi_snp_eth_rx(struct eth_device *edev)
 	net_receive(edev, priv->rx_buf, bufsize);
 }
 
-static efi_guid_t snp_guid = EFI_SIMPLE_NETWORK_PROTOCOL_GUID;
-
 static int efi_snp_open_exclusive(struct efi_device *efidev)
 {
 	void *interface;
@@ -86,7 +84,7 @@ static int efi_snp_open_exclusive(struct efi_device *efidev)
 	 * Try to re-open SNP exlusively to close any active MNP protocol instance
 	 * that may compete for packet polling
 	 */
-	efiret = BS->open_protocol(efidev->handle, &snp_guid,
+	efiret = BS->open_protocol(efidev->handle, &efi_snp_guid,
 			&interface, efi_parent_image, NULL, EFI_OPEN_PROTOCOL_EXCLUSIVE);
 	if (EFI_ERROR(efiret)) {
 		dev_err(&efidev->dev, "failed to open exclusively: %s\n", efi_strerror(efiret));
@@ -98,7 +96,7 @@ static int efi_snp_open_exclusive(struct efi_device *efidev)
 
 static void efi_snp_close_exclusive(struct efi_device *efidev)
 {
-	BS->close_protocol(efidev->handle, &snp_guid, efi_parent_image, NULL);
+	BS->close_protocol(efidev->handle, &efi_snp_guid, efi_parent_image, NULL);
 }
 
 static int efi_snp_eth_open(struct eth_device *edev)
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 3390600be389..cbeda6f3bb8b 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -423,7 +423,6 @@ static void efi_set_mode(struct efi_console_priv *priv)
 
 static int efi_console_probe(struct device *dev)
 {
-	efi_guid_t inex_guid = EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID;
 	struct efi_simple_text_input_ex_protocol *inex;
 	struct console_device *cdev;
 	struct efi_console_priv *priv;
@@ -440,7 +439,7 @@ static int efi_console_probe(struct device *dev)
 		return -ENOMEM;
 
 	efiret = BS->open_protocol(efi_sys_table->con_in_handle,
-			     &inex_guid,
+			     &efi_text_input_ex_guid,
 			     (void **)&inex,
 			     efi_parent_image,
 			     0,
diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index 00ebd2fcbd55..aff1e45b28a2 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -163,10 +163,9 @@ static int efi_gop_probe(struct efi_device *efidev)
 	struct efi_gop_priv *priv;
 	int ret = 0;
 	efi_status_t efiret;
-	efi_guid_t got_guid = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;
 	void *protocol;
 
-	efiret = BS->handle_protocol(efidev->handle, &got_guid, &protocol);
+	efiret = BS->handle_protocol(efidev->handle, &efi_gop_guid, &protocol);
 	if (EFI_ERROR(efiret))
 		return  -efi_errno(efiret);
 
diff --git a/efi/guid.c b/efi/guid.c
index 8d4618df5730..8b29ba52fbe6 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -45,6 +45,9 @@ const efi_guid_t shim_lock_guid = SHIM_LOCK_GUID;
 const efi_guid_t efi_rt_properties_table_guid = EFI_RT_PROPERTIES_TABLE_GUID;
 const efi_guid_t efi_guid_firmware_management_protocol = EFI_FIRMWARE_MANAGEMENT_PROTOCOL_GUID;
 const efi_guid_t efi_debug_image_info_table_guid = EFI_DEBUG_IMAGE_INFO_TABLE_GUID;
+const efi_guid_t efi_gop_guid = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;
+const efi_guid_t efi_snp_guid = EFI_SIMPLE_NETWORK_PROTOCOL_GUID;
+const efi_guid_t efi_text_input_ex_guid = EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID;
 const efi_guid_t efi_text_input_guid = EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID;
 const efi_guid_t efi_text_output_guid = EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID;
 
diff --git a/include/efi/guid.h b/include/efi/guid.h
index 44fbe9f428ae..c36faaf72350 100644
--- a/include/efi/guid.h
+++ b/include/efi/guid.h
@@ -41,6 +41,9 @@ extern const efi_guid_t efi_load_file2_protocol_guid;
 extern const efi_guid_t efi_device_path_utilities_protocol_guid;
 extern const efi_guid_t efi_linux_initrd_media_guid;
 extern const efi_guid_t efi_smbios_guid;
+extern const efi_guid_t efi_gop_guid;
+extern const efi_guid_t efi_snp_guid;
+extern const efi_guid_t efi_text_input_ex_guid;
 extern const efi_guid_t efi_text_input_guid;
 extern const efi_guid_t efi_text_output_guid;
 extern const efi_guid_t efi_guid_unicode_collation_protocol2;
-- 
2.47.3



