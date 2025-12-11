Delivery-date: Thu, 11 Dec 2025 21:37:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPc-00AQIW-2L
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPc-0008Bq-1k
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N0SCDHSbMG1c3kbnwbusrctexBSc12Z23ccYQWZf/iM=; b=Smw3sDUOd4klJz/C10PNtjiGmJ
	vH6AGeM+GNi2f2/50aNOob7BmQmGyemHhzkmV3z3U6aM5NsEZTNofmB7rsh/8Dpy1AK5vLXUrbzR9
	WJKlcwHQ7n3NrL+zVQ2HVgWihF5zIXdqy7UkVNVk1/f6i4ndtwq2W9jed5o4w947KK/lXVV7rPt2H
	PJ6+Kx2MqAYVs2Ar5eP6QBxBWjgytl+TCgiKAHPOztcJ+758KI32CKhHrGXzZ3HZFSM0IKDkkaTbx
	ooALVnRJ50HYHUCWgctwR1u6BpUUA6c6yvgVc7kRlIfN1ODRzWOPxYmmBJpU9wuioSmAED77iiw/A
	2QKl3G1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPA-0000000HFOR-1g2Q;
	Thu, 11 Dec 2025 20:36:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnP9-0000000HFO3-03AH
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=N0SCDHSbMG1c3kbnwbusrctexBSc12Z23ccYQWZf/iM=; b=EaqKs5ei8KrgFiJ5tKjAU42GLC
	i3S2ercyQORnCx+XovLXT5iOzMUYqeTTsgIi3iVwJ6O5/fet1OS+wwIWsKGs7DcZlp8ZNoBRMNV6R
	glAlvUVemYQwkspigok626p4vuYjlInhE6hIDciLAxpDpnZricJKROyHXPfwXGPYYNCDqWTI4Vbsy
	tb8wYy1gQry71Q/kTW4WyG3+/uET31RBJtU9BbNCnTBxdVrBav3wgGY3hwJvnChmxNMVZXPhteN1U
	qdD9jEsUvcGLgAo2K+jV8963s+8gMCPucBnoztcBBnE7aLpFq5jBnNmiHxg0tMpr8OeHPHkyeC1YB
	QbmOWbAQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXa-0000000FZXQ-429f
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007pj-EI; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWT-0o;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJS-00000008e20-00O4;
	Thu, 11 Dec 2025 21:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:06 +0100
Message-ID: <20251211203056.2014710-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_191687_55C401FE 
X-CRM114-Status: GOOD (  11.19  )
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
Subject: [PATCH 15/16] efi: payload: initrd: move into common efi code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This code will be equally useful for barebox running as EFI loader, so
move it to a common location and touch it up to be reusable.

While at it, drop unneeded headers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Makefile                           |  1 +
 efi/{payload/efi-initrd.c => initrd.c} | 20 +++++++++++++-------
 efi/payload/Makefile                   |  1 -
 3 files changed, 14 insertions(+), 8 deletions(-)
 rename efi/{payload/efi-initrd.c => initrd.c} (87%)

diff --git a/efi/Makefile b/efi/Makefile
index 6693564f7071..4c35917475c0 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_EFI_PAYLOAD)	+= payload/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
 obj-y				+= errno.o handle.o efivar.o efivar-filename.o
+obj-y				+= initrd.o
diff --git a/efi/payload/efi-initrd.c b/efi/initrd.c
similarity index 87%
rename from efi/payload/efi-initrd.c
rename to efi/initrd.c
index 708418da62b7..7fd8e021f353 100644
--- a/efi/payload/efi-initrd.c
+++ b/efi/initrd.c
@@ -5,15 +5,14 @@
  * Copyright (c) 2025 Anis Chali <chalianis1@gmail.com>
  * Copyright (C) 2025 Ahmad Fatoum <a.fatoum@pengutronix.de>
  */
-#include <common.h>
-#include <driver.h>
 #include <init.h>
 #include <linux/hw_random.h>
 #include <efi/devicepath.h>
+#include <efi/mode.h>
+#include <efi/services.h>
 #include <efi/protocol/file.h>
-#include <efi/protocol/initrd.h>
+#include <efi/initrd.h>
 #include <efi/guid.h>
-#include <efi/payload.h>
 #include <efi/error.h>
 
 static efi_status_t EFIAPI efi_initrd_load_file2(
@@ -73,6 +72,7 @@ static efi_status_t EFIAPI efi_initrd_load_file2(
 
 int efi_initrd_register(void *initrd_base, size_t initrd_sz)
 {
+	struct efi_boot_services *bs;
 	efi_status_t efiret;
 	int ret;
 
@@ -80,7 +80,11 @@ int efi_initrd_register(void *initrd_base, size_t initrd_sz)
 	initrd.start = initrd_base;
 	initrd.size = initrd_sz;
 
-	efiret = BS->install_multiple_protocol_interfaces(
+	bs = efi_get_boot_services();
+	if (!bs)
+		return -EOPNOTSUPP;
+
+	efiret = bs->install_multiple_protocol_interfaces(
 		&initrd.lf2_handle, &efi_load_file2_protocol_guid, &initrd.base,
 		&efi_device_path_protocol_guid, &initrd_dev_path, NULL);
 	if (EFI_ERROR(efiret)) {
@@ -95,10 +99,12 @@ int efi_initrd_register(void *initrd_base, size_t initrd_sz)
 
 void efi_initrd_unregister(void)
 {
-	if (!initrd.base.load_file)
+	struct efi_boot_services *bs = efi_get_boot_services();
+
+	if (!bs || !initrd.base.load_file)
 		return;
 
-	BS->uninstall_multiple_protocol_interfaces(
+	bs->uninstall_multiple_protocol_interfaces(
 		initrd.lf2_handle, &efi_device_path_protocol_guid, &initrd_dev_path,
 		&efi_load_file2_protocol_guid, &initrd.base, NULL);
 
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index 34efe6105d22..6306540ab595 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -4,7 +4,6 @@ obj-y += init.o
 obj-y += image.o
 obj-$(CONFIG_EFI_HANDOVER_PROTOCOL) += handover.o
 obj-y += bootm.o
-obj-y += efi-initrd.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
 obj-$(CONFIG_CMD_IOMEM) += iomem.o
-- 
2.47.3



