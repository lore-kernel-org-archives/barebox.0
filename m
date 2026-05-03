Delivery-date: Sun, 03 May 2026 10:24:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJS8H-000Tmy-1N
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:24:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJS8G-0002Nk-4S
	for lore@pengutronix.de; Sun, 03 May 2026 10:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zA3AbUot2jEZdKPkmgH2U1Rwcfjs3YpfRPXglpseaU8=; b=QeO48SnrTE7vua59yMd7luxJuB
	YUuboqGo6KrIp6XExTryDlJeDGAJ8p1u54FjXWIxV4sfPmLj9bZ6fHA9uhYs0sxUrU6pxzbAmrlRh
	LDWL0bskomI+3CbzhOyQsrKIrmo1M1e2z9chcf//eS3L3xqvtqRyUDBA2cnFRco41kMe2YWee752v
	54FTfcEsCcw7D7+sFgiXhCdKc/vN9T26+EYL48OyohAN8+YjjjmskRreXMqlGmun4poaZDc/mq/la
	+4T6ymTheg1+zPbl4aFvmtel4/4eV0Lgleopgt9jfyqm0oQbK68iGgJ5GeTlLhLJyfWvzDqCqP1Tf
	UeEh5H4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJS7Z-0000000AcfR-3XNM;
	Sun, 03 May 2026 08:24:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJS7W-0000000AceK-3YkS
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:24:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJS7V-0002F5-8o; Sun, 03 May 2026 10:24:09 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:24:05 +0200
Message-ID: <20260503082408.2757822-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_012410_887930_0C1AFB01 
X-CRM114-Status: GOOD (  10.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] efi: loader: gop: install device path to make GOP discoverable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI GOP protocol handle was missing a device path, which meant
barebox running as EFI payload couldn't discover it during handle
enumeration. Use efi_install_multiple_protocol_interfaces() to install
both the device path and GOP protocol together.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/gop.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/efi/loader/protocols/gop.c b/efi/loader/protocols/gop.c
index 5bceb3f68f0f..9ada8a2da290 100644
--- a/efi/loader/protocols/gop.c
+++ b/efi/loader/protocols/gop.c
@@ -11,6 +11,7 @@
 #include <efi/guid.h>
 #include <efi/loader.h>
 #include <efi/error.h>
+#include <efi/loader/devicepath.h>
 #include <efi/loader/object.h>
 #include <efi/loader/trace.h>
 #include <efi/protocol/gop.h>
@@ -481,6 +482,8 @@ static char *fbdev = "/dev/fb0";
 static efi_status_t efi_gop_register(void *data)
 {
 	struct efi_gop_obj *gopobj;
+	struct efi_device_path *dp;
+	efi_handle_t handle;
 	u32 col, row;
 	efi_status_t ret;
 	struct fb_info *fbi;
@@ -513,14 +516,20 @@ static efi_status_t efi_gop_register(void *data)
 		return EFI_OUT_OF_RESOURCES;
 	}
 
-	/* Hook up to the device list */
+	dp = efi_dp_from_cdev(&fbi->cdev, true);
+	if (!dp)
+		return EFI_OUT_OF_RESOURCES;
+
 	efi_add_handle(&gopobj->header);
 
-	/* Fill in object data */
-	ret = efi_add_protocol(&gopobj->header, &efi_gop_guid,
-			       &gopobj->ops);
+	handle = &gopobj->header;
+
+	ret = efi_install_multiple_protocol_interfaces(&handle,
+			&efi_device_path_protocol_guid, dp,
+			&efi_gop_guid, &gopobj->ops,
+			NULL);
 	if (ret != EFI_SUCCESS) {
-		pr_err("Failure adding GOP protocol\n");
+		pr_err("Failure installing GOP protocol\n");
 		return ret;
 	}
 	gopobj->ops.query_mode = gop_query_mode;
-- 
2.47.3



