Delivery-date: Fri, 10 Nov 2023 14:03:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAx-005rqL-0J
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:03:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RAw-0006cS-N3
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:03:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RwHQMzJ0RJi+dkvWdWut3YwekDmtWOkBBKXvOjBasUQ=; b=TvAzqvnwukw6Qw1bj0pkVE51x9
	nk7r/q3v1FFYs0zcz9M3v6H4yw0mh80VSe+rWKOKvsRhfHfXlBvtvfRUaMgbT2dn8/kF8x6p4tZil
	DwDyMuOQuV82RTLwxwgLEomtrB9WUWBOKBToe81LFkpAW/ZwZImLvIrjFGUnQHwhgTeUI5WqBNbf2
	Jb9Wphvt3j9sHI4wIJCu2FJ13hMLxuyr9zg0iz5qgOgeYF0khp2kqb215XP3XiqfMPrSjlmor4UO9
	nwesv35ssCPSPNI2S5z4EVI6uskGEBaGKxqLi/Rfy7+R64oIwRs9nHU+dweO2QFELhDnpmh6vCE9C
	Et7xtvkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9z-008nab-36;
	Fri, 10 Nov 2023 13:02:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9y-008na2-0s
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:02:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=RwHQMzJ0RJi+dkvWdWut3YwekDmtWOkBBKXvOjBasUQ=; b=OmUJBEhnit/fMKziw2gnivQ0TT
	+biYQH46smthUO7zoohowvl9HXmiaCreMudpIOPHvNlZeC5dPJZbgVi1LsABLjL+upItK+ReW5u/K
	IxDlowit5VgcOKtapZUNq0eHuZAfsvoD7EYT+icH1GNsf0KuM5DYoydIe2hAWp0lXATiAFNh/tBN0
	6RywjUCxIB9cKa2Mw1mggp1PWRybdLeUOa0ooxypc9m50BA/+UBrqwwahA2Z3dpC8mhPX+HcI9b1N
	hanvly6OiHQfqw1v1AAAVYKP9jitK+PSuwPSkYUlg9dDpA3KSlGcRE7bAYlrdHcoy2IwnUdyKtHI4
	3uf1fVGQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R9u-00FcBO-1L
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9t-0005uI-VA; Fri, 10 Nov 2023 14:02:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9t-0081yw-F1; Fri, 10 Nov 2023 14:02:49 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R9t-009KUx-1K;
	Fri, 10 Nov 2023 14:02:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:02:46 +0100
Message-Id: <20231110130246.2222936-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130250_559752_4FC4E7F5 
X-CRM114-Status: GOOD (  12.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: gadget: i.MX: Move PBL USB gadget driver to arch/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX PBL USB gadget driver is currently selected by architecture
Kconfig options. When USB gadget support is disabled then the build
system doesn't descend into the directory where the driver is, leading
to undefined references. We could change that and descend into the
directory unconditionally, but as the driver doesn't have any
dependencies to the USB gadget framework we can also move the driver
to arch/arm/mach-imx/ to solve this problem.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                                      | 3 +++
 arch/arm/mach-imx/Makefile                                     | 1 +
 .../gadget/udc/fsl_udc_pbl.c => arch/arm/mach-imx/imx-udc.c    | 0
 drivers/usb/gadget/Kconfig                                     | 3 ---
 drivers/usb/gadget/udc/Makefile                                | 1 -
 5 files changed, 4 insertions(+), 4 deletions(-)
 rename drivers/usb/gadget/udc/fsl_udc_pbl.c => arch/arm/mach-imx/imx-udc.c (100%)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6a7d90e2c8..13d914cdb6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -27,6 +27,9 @@ config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 	depends on MTD_WRITE
 	default y
 
+config USB_GADGET_DRIVER_ARC_PBL
+	bool
+
 config RESET_IMX_SRC
 	def_bool y
 	depends on ARCH_IMX6 || ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index f49bbea2b4..9e8cb5eeb7 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_CMD_BOOTROM) += bootrom-cmd.o
 obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
+pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
 obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
 pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
diff --git a/drivers/usb/gadget/udc/fsl_udc_pbl.c b/arch/arm/mach-imx/imx-udc.c
similarity index 100%
rename from drivers/usb/gadget/udc/fsl_udc_pbl.c
rename to arch/arm/mach-imx/imx-udc.c
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index ffaf355936..517255f477 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -5,9 +5,6 @@ menuconfig USB_GADGET
 	select NLS
 	bool "USB gadget support"
 
-config USB_GADGET_DRIVER_ARC_PBL
-	bool
-
 if USB_GADGET
 
 config USB_GADGET_DUALSPEED
diff --git a/drivers/usb/gadget/udc/Makefile b/drivers/usb/gadget/udc/Makefile
index f52660fcf5..6e79e80cfa 100644
--- a/drivers/usb/gadget/udc/Makefile
+++ b/drivers/usb/gadget/udc/Makefile
@@ -3,6 +3,5 @@
 obj-$(CONFIG_USB_GADGET) += core.o
 
 obj-$(CONFIG_USB_GADGET_DRIVER_ARC) += fsl_udc.o
-pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += fsl_udc_pbl.o
 obj-$(CONFIG_USB_GADGET_DRIVER_AT91) += at91_udc.o
 obj-$(CONFIG_USB_GADGET_DRIVER_PXA27X) += pxa27x_udc.o
-- 
2.39.2



