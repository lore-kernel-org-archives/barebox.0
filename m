Delivery-date: Thu, 09 Jan 2025 08:45:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVnEO-00157Z-2W
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 08:45:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVnEO-0003wc-OO
	for lore@pengutronix.de; Thu, 09 Jan 2025 08:45:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T6bgOdRjirtk+v+sTM0c7UvzJybS0Emz4QrC63lnd7Q=; b=1Q77jeHXSfZrpxDTMUmF+1nZi+
	WbKluIsqIQ9Ad/4st17476xAnjNE4KYqZG82ZlM0NL1S6yD7D568GW6W0YQ12OW5qBKuZYe0vIbvA
	DEEXWEN+99ZTCX+h+V3Xv6ZAFr/WKLBk2W07UrzIdDogg1/bXXqiDi5O6dHBE1FGz/TzJbxw8RrFY
	tzD3fmnevupOEhyjL+2XJUdFOgCcpMO0sEa1ozuj9TQqAF/vDyG6Vhk0+eZgzLhugngJZsLE49ra/
	dpmDOdV6QOVekbyvOlxMDewjA8Gx0VBYazr9EU5Q9ECtPH0eA9S7l03y5utqXDAhAmnUpwkLQkkSx
	y5XYy5pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnDw-0000000B5BP-32w8;
	Thu, 09 Jan 2025 07:45:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnDt-0000000B5A3-3HUG
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 07:44:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVnDs-0003mS-Lk; Thu, 09 Jan 2025 08:44:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVnDr-007egs-2K;
	Thu, 09 Jan 2025 08:44:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVnDs-00DbeT-1F;
	Thu, 09 Jan 2025 08:44:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Jan 2025 08:44:55 +0100
Message-Id: <20250109074455.3242990-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_234457_825020_DBD734BE 
X-CRM114-Status: UNSURE (   9.87  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: always compile usbgadget.c when USB_GADGET is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code in common/usbgadget.c provides a C API to the USB gadget layer.
Build it unconditionally once CONFIG_USB_GADGET is enabled to provide
this API in non interactive builds.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig  | 6 ------
 common/Makefile | 2 +-
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4134599520..2d55903c36 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -111,12 +111,6 @@ config UBIFORMAT
 	depends on MTD_UBI
 	default y
 
-config USBGADGET_START
-	bool
-	depends on CMD_USBGADGET || USB_GADGET_AUTOSTART
-	select ENVIRONMENT_VARIABLES
-	default y
-
 config BOOT
 	select GLOB
 	bool
diff --git a/common/Makefile b/common/Makefile
index e66dc04bd8..4a8dc1ff06 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -80,7 +80,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
-obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
+obj-$(CONFIG_USB_GADGET)	+= usbgadget.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
 
-- 
2.39.5



