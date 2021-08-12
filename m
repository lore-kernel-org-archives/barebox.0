Delivery-date: Thu, 12 Aug 2021 10:38:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE6Eo-0006io-16
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 10:38:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE6Em-0005Ka-2m
	for lore@pengutronix.de; Thu, 12 Aug 2021 10:38:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uk9lMeA93Z3jRtAzbTSryc9PkYS+9tAhuZ2N4n6Yv6s=; b=iHwoVl1HkcDVtK
	UegucRHtTdB2dRdgnpo1tWvFU+S2gJia0Lt2XpA9Fu4Aiw4C3cfF7jp6Ydm0SBfB/seqy1lwvufBc
	4WVfI3uGwGCPCmyyYXpxc/OJ46dFC3CTLCsm1oEegt9zf0fR6ZvszUjM+Yy77IhhkLyK6EUk9lZke
	xFWtb7X8stA+7GMY7sAK53fWDq3cuCUsdb91Z3TZ4EZuiVSHdNiZztc3mvU4BSKKTht0/ADOJTqkd
	oNpu1bSTQCE0j0XCRGqNDIFDD0Yx+C08HHSp6zmj54Trrnse16g7lMZQF7jIgejI9APRrAdoOIc0i
	BjpN/KT6aax6YBmQ1PIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE6D1-009BIB-3E; Thu, 12 Aug 2021 08:37:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE6Ct-009BGI-70
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 08:36:59 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mE6Cr-0005Aj-5P
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 10:36:53 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mE6Cq-0000wY-Sr
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 10:36:52 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 12 Aug 2021 10:36:51 +0200
Message-Id: <20210812083651.3576-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_013655_297311_C514A127 
X-CRM114-Status: GOOD (  20.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: i.MX6: boot: detect USB serial downloader more
 reliable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The problem with the BootROM is that the SRC registers are not set
accordingly in case of a failed primary boot. E.g. if the device is
configured to boot from an eMMC and the eMMC is empty or image is
corrupt, the BootROM goes into 'recovery boot mode' (reference manual
Figure 8-1) and the last possible recovery option is the serial
downloader. In such case the SRC registers still indicate that the
device was booted from an eMMC instead of serial-download.

This commit ports the U-Boot commit [1] with slightly adaptions suggested
by Ahmad to Barebox. Also we need to reorder the imx6_init() else we
reset the otg-controller to early.

[1] https://source.denx.de/u-boot/u-boot/-/commit/e203dcf23e9eabc2e4f3d0b079457cd1516f2081

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/boot.c  | 27 +++++++++++++++++++++++++++
 arch/arm/mach-imx/imx6.c  |  9 +++++++--
 include/soc/fsl/fsl_udc.h | 11 +++++++++++
 3 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 2b66bbf71e..fcb3c10064 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -8,6 +8,7 @@
 #include <magicvar.h>
 
 #include <io.h>
+#include <mach/clock-imx6.h>
 #include <mach/generic.h>
 #include <mach/imx25-regs.h>
 #include <mach/imx27-regs.h>
@@ -23,6 +24,7 @@
 #include <mach/imx8mq.h>
 #include <mach/imx6.h>
 
+#include <soc/fsl/fsl_udc.h>
 
 static void
 imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
@@ -397,6 +399,11 @@ static u32 imx6_get_src_boot_mode(void __iomem *src_base)
 	return readl(src_base + IMX6_SRC_SBMR1);
 }
 
+static inline bool imx6_usboh3_clk_active(void)
+{
+	return (readl(MXC_CCM_CCGR6) & 0x3) == 0x3;
+}
+
 void imx6_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX6_SRC_BASE_ADDR);
@@ -410,6 +417,26 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 
 	bootsrc = imx53_bootsource_internal(bootmode);
 
+	/*
+	 * imx6_bootsource_serial() can't detect cases where the boot ROM
+	 * decided to use the serial downloader as a fall back (primary
+	 * boot source failed).
+	 *
+	 * Infer that the boot ROM used the USB serial downloader by
+	 * checking whether both the UDC and the clock enabling access
+	 * to its MMIO region are currently active...
+	 * This assumes:
+	 * - On fresh boots, PBL doesn't itself start a stopped UDC
+	 * - In barebox proper, boot source is saved before the UDC driver
+	 *   may enable the UDC
+	 */
+
+	if (imx6_usboh3_clk_active() &&
+	    is_chipidea_udc_running(IOMEM(MX6_OTG_BASE_ADDR))) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
 	if (imx6_bootsource_serial(sbmr2) ||
 	    imx6_bootsource_serial_forced(bootsrc)) {
 		*src = BOOTSOURCE_SERIAL;
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 9ccb391384..3ee42fd966 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -43,6 +43,11 @@ static void imx6_init_lowlevel(void)
 	uint32_t periph_sel_2;
 	uint32_t reg;
 
+	/*
+	 * Before reset the controller imx6_boot_save_loc() must be called to
+	 * detect serial-downloader fall back boots. For further information
+	 * check the comment in imx6_get_boot_source().
+	 */
 	if ((readl(MXC_CCM_CCGR6) & 0x3))
 		imx_reset_otg_controller(IOMEM(MX6_OTG_BASE_ADDR));
 
@@ -205,10 +210,10 @@ int imx6_init(void)
 	void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
 	u64 mx6_uid;
 
-	imx6_init_lowlevel();
-
 	imx6_boot_save_loc();
 
+	imx6_init_lowlevel();
+
 	mx6_silicon_revision = imx6_cpu_revision();
 	mx6_uid = imx6_uid();
 
diff --git a/include/soc/fsl/fsl_udc.h b/include/soc/fsl/fsl_udc.h
index b983f714c5..0b409a9f6b 100644
--- a/include/soc/fsl/fsl_udc.h
+++ b/include/soc/fsl/fsl_udc.h
@@ -1,6 +1,9 @@
 #ifndef __FSL_UDC_H
 #define __FSL_UDC_H
 
+#include <linux/types.h>
+#include <io.h>
+
 /* USB DR device mode registers (Little Endian) */
 struct usb_dr_device {
 	/* Capability register */
@@ -380,4 +383,12 @@ int imx_barebox_start_usb(void __iomem *dr, void *dest);
 int imx8mm_barebox_load_usb(void *dest);
 int imx8mm_barebox_start_usb(void *dest);
 
+static inline bool is_chipidea_udc_running(void __iomem *dr)
+{
+	struct usb_dr_device __iomem *dr_regs = dr;
+
+	return (readl(&dr_regs->usbmode) & USB_MODE_CTRL_MODE_DEVICE)
+		&& (readl(&dr_regs->usbcmd) & USB_CMD_RUN_STOP);
+}
+
 #endif /* __FSL_UDC_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

