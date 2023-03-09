Delivery-date: Thu, 09 Mar 2023 11:43:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDkJ-00EiLF-Kk
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:43:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDkI-0000cm-Ro
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:43:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H0lxk3AM4Z2HSoWMIo+QUbBC8Utda1sFsfPl9VSVqe4=; b=nDkeJ21vfg2QerWiM/ASRLPXwT
	ZxhbksCMp5/QrS2Ee2N2SxA421WwWPya9aPXtJ3MeGyGJLPuH5X09uxUnNKR2Tdkbry/+oPANvmqx
	HShqoJdrCzyrHtXYssOEf+gWTHwmA5zyPXzWG44TzcfGWdiLVCo52OLv1BZaLu2RIQ7EE3AjQoa2S
	rLjs+H6RP4iK0fcb65/uLR4+plrrYL3JKAjahGDbggMgFqC6GUgiwZWRaInSMcLulMiqzofFsroFj
	W46rm0bQUnMh0NXvdtfy2w57LRmsQwxWRvITCe/edq38QKw7sTLGfgezlvVrxymCIEliZpKMErzey
	mi5aUW9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDit-0099AX-0n; Thu, 09 Mar 2023 10:42:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhU-00989R-S2
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 10:40:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhR-0007YT-Vw
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-16-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024044_976902_892FAAD1 
X-CRM114-Status: GOOD (  12.55  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/21] ARM: i.MX: bbu: rename IMX_INTERNAL_FLAG_ERASE to
 IMX_BBU_FLAG_ERASE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Rename the flag to align it with the existing flags. Also move it to the
common i.MX bbu header to avoid possible overrides.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 8 +++-----
 include/mach/imx/bbu.h               | 2 ++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index a86bd75253..8eca0783eb 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -21,8 +21,6 @@
 #include <mach/imx/generic.h>
 #include <libfile.h>
 
-#define IMX_INTERNAL_FLAG_ERASE		BIT(30)
-
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
 	int (*write_device)(struct imx_internal_bbu_handler *,
@@ -35,7 +33,7 @@ struct imx_internal_bbu_handler {
 static bool
 imx_bbu_erase_required(struct imx_internal_bbu_handler *imx_handler)
 {
-	return imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE;
+	return imx_handler->handler.flags & IMX_BBU_FLAG_ERASE;
 }
 
 static int imx_bbu_protect(int fd, struct imx_internal_bbu_handler *imx_handler,
@@ -484,7 +482,7 @@ imx_bbu_internal_spi_i2c_register_handler(const char *name,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags |
-				     IMX_INTERNAL_FLAG_ERASE);
+				     IMX_BBU_FLAG_ERASE);
 	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
 
 	return __register_handler(imx_handler);
@@ -646,7 +644,7 @@ int imx_bbu_external_nor_register_handler(const char *name,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags |
-				     IMX_INTERNAL_FLAG_ERASE);
+				     IMX_BBU_FLAG_ERASE);
 
 	imx_handler->expected_type = filetype_unknown;
 
diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index c9b239c698..34133b587c 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -26,6 +26,8 @@ struct imx_dcd_v2_entry;
  */
 #define IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER	(1 << 17)
 
+#define IMX_BBU_FLAG_ERASE			BIT(30)
+
 /*
  * The upper 16 bit of the flags passes to the below functions are reserved
  * for i.MX specific flags

-- 
2.30.2



