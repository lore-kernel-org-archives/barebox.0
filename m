Delivery-date: Fri, 07 Nov 2025 22:01:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHTaD-00GQ4e-0F
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 22:01:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHTaC-0000YQ-Bk
	for lore@pengutronix.de; Fri, 07 Nov 2025 22:01:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCi1mFXmpbEse+wZUtOk1nPJT1HJ0diMQBNND3d3KLo=; b=A4ij1D3sMqGoLRZYPde2cHJAIr
	pUU76VMvwNgOd9SHG7nl+Ngqx6rSeWjl2pn3JNcYEr8i20LqV/UfZoIW/8us7cHLk9IqVm2EgBou/
	GzuZR0Jbwr/GBoeYe9/PqYsEDGL43ntgfJMtNPisLj09Sr9TwGtL+629z0NiMpBqPyubZ1fGiC6W7
	2Cf7GxbCOY4YvNkhv/pjyaFP2ZthN95i/Mj8JzfV4L6FEGYmcuwhdrdJNJAGlK5G3AZx/Rg7BCA1B
	rdNgiik/nd2D5By3TFZwlyptDpZp+ozhrUDemcFNFyaJHn+JxYs6GRirkP3fJh+YUyY4bBbonzZuc
	4XeyQHiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHTZb-000000013tB-38sB;
	Fri, 07 Nov 2025 21:00:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHTZX-000000013rQ-3rqt
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 21:00:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vHTZU-00009d-VU; Fri, 07 Nov 2025 22:00:37 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  7 Nov 2025 22:00:31 +0100
Message-ID: <20251107210033.2229781-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107210033.2229781-1-a.fatoum@barebox.org>
References: <20251107210033.2229781-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_130039_957353_5A1106FB 
X-CRM114-Status: GOOD (  21.84  )
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
Subject: [PATCH 3/3] video: stm: add explicit support for i.MX6SX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To anticipate a possible upstream change that removes "fsl,imx28-lcdif"
from the compatible list for the i.MX6SX LCDIF node, add an explicit
match for "fsl,imx6sx-lcdif".

While at it, adapt the driver for better compatibility with the SoloX:

  - Enable recovery on underflow, which has been observed under Linux to
    cause pixel shifts
  - Skip the VSYNC loop. The register doesn't exist on the i.MX6SX and
    the loop would just count down 3200 reads of whatever happens
    to be at that MMIO address

These changes have only been compile tested.

Cc: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/stm.c   | 75 ++++++++++++++++++++++++++++++++++---------
 include/mach/mxs/fb.h |  5 +++
 2 files changed, 65 insertions(+), 15 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index da006b7c240f..49f7c356f274 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -45,6 +45,7 @@
 # define CTRL_RUN (1 << 0)
 
 #define HW_LCDIF_CTRL1 0x10
+#define CTRL1_RECOVER_ON_UNDERFLOW	(1 << 24)
 # define CTRL1_FIFO_CLEAR (1 << 21)
 # define SET_BYTE_PACKAGING(x) (((x) & 0xf) << 16)
 # define GET_BYTE_PACKAGING(x) (((x) >> 16) & 0xf)
@@ -215,23 +216,57 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 	writel(reg, fbi->base + HW_LCDIF_VDCTRL4);
 
 	/*
-	 * Give the attached LC display or monitor a chance to sync into
-	 * our signals.
-	 * Wait for at least 2 VSYNCs = four VSYNC edges
+	 * Enable recovery on underflow.
+	 *
+	 * There is some sort of corner case behavior of the controller,
+	 * which could rarely be triggered at least on i.MX6SX connected
+	 * to 800x480 DPI panel and i.MX8MM connected to DPI->DSI->LVDS
+	 * bridged 1920x1080 panel (and likely on other setups too), where
+	 * the image on the panel shifts to the right and wraps around.
+	 * This happens either when the controller is enabled on boot or
+	 * even later during run time. The condition does not correct
+	 * itself automatically, i.e. the display image remains shifted.
+	 *
+	 * It seems this problem is known and is due to sporadic underflows
+	 * of the LCDIF FIFO. While the LCDIF IP does have underflow/overflow
+	 * IRQs, neither of the IRQs trigger and neither IRQ status bit is
+	 * asserted when this condition occurs.
+	 *
+	 * All known revisions of the LCDIF IP have CTRL1 RECOVER_ON_UNDERFLOW
+	 * bit, which is described in the reference manual since i.MX23 as
+	 * "
+	 *   Set this bit to enable the LCDIF block to recover in the next
+	 *   field/frame if there was an underflow in the current field/frame.
+	 * "
+	 * Enable this bit to mitigate the sporadic underflows.
 	 */
-	edges = 4;
+	reg = readl(fbi->base + HW_LCDIF_CTRL1);
+	reg |= CTRL1_RECOVER_ON_UNDERFLOW;
+	writel(reg, fbi->base + HW_LCDIF_CTRL1);
 
-	while (edges != 0) {
-		loop = 800;
-		last_reg = readl(fbi->base + devdata->debug0) & DEBUG_VSYNC;
-		do {
-			reg = readl(fbi->base + devdata->debug0) & DEBUG_VSYNC;
-			if (reg != last_reg)
-				break;
-			last_reg = reg;
-			loop--;
-		} while (loop != 0);
-		edges--;
+	if (devdata->debug0) {
+		/*
+		 * Give the attached LC display or monitor a chance to sync into
+		 * our signals.
+		 * Wait for at least 2 VSYNCs = four VSYNC edges
+		 *
+		 * TODO: i.MX6SX doesn't have debug0. The Linux driver seems to
+		 * do without this at all..
+		 */
+		edges = 4;
+
+		while (edges != 0) {
+			loop = 800;
+			last_reg = readl(fbi->base + devdata->debug0) & DEBUG_VSYNC;
+			do {
+				reg = readl(fbi->base + devdata->debug0) & DEBUG_VSYNC;
+				if (reg != last_reg)
+					break;
+				last_reg = reg;
+				loop--;
+			} while (loop != 0);
+			edges--;
+		}
 	}
 
 	/* stop FIFO reset */
@@ -585,6 +620,13 @@ const struct mxsfb_devdata mxsfb_devdata[] = {
 		.hs_wdth_mask	= 0x3fff,
 		.hs_wdth_shift	= 18,
 	},
+	[MXSFB_V6] = {
+		.transfer_count	= LCDC_V4_TRANSFER_COUNT,
+		.cur_buf	= LCDC_V4_CUR_BUF,
+		.next_buf	= LCDC_V4_NEXT_BUF,
+		.hs_wdth_mask	= 0x3fff,
+		.hs_wdth_shift	= 18,
+	},
 };
 EXPORT_SYMBOL(mxsfb_devdata);
 
@@ -595,6 +637,9 @@ static __maybe_unused struct of_device_id stmfb_compatible[] = {
 	}, {
 		.compatible = "fsl,imx28-lcdif",
 		.data = &mxsfb_devdata[MXSFB_V4],
+	}, {
+		.compatible = "fsl,imx6sx-lcdif",
+		.data = &mxsfb_devdata[MXSFB_V6],
 	}, {
 		/* sentinel */
 	}
diff --git a/include/mach/mxs/fb.h b/include/mach/mxs/fb.h
index da2ed2f2ebee..b365816bf159 100644
--- a/include/mach/mxs/fb.h
+++ b/include/mach/mxs/fb.h
@@ -21,6 +21,11 @@
 enum mxsfb_devtype {
 	MXSFB_V3,
 	MXSFB_V4,
+	/*
+	 * Starting at i.MX6 the hardware version register is gone, use the
+	 * i.MX family number as the version.
+	 */
+	MXSFB_V6,
 };
 
 struct mxsfb_devdata {
-- 
2.47.3



