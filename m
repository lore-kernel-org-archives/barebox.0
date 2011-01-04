Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa7zM-0006Ld-KP
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 14:35:53 +0000
Message-ID: <4D23303B.5040206@free-electrons.com>
Date: Tue, 04 Jan 2011 15:35:39 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] ARM STM/i.MX: Add possibility to select the data mode
	for stm video driver ( DCn signal is high )
To: barebox <barebox@lists.infradead.org>

At reset command mode of STM video controller is in command mode (DCn
signal is Low). This commit allow to use the data mode (DCn signal is
High). See explanations about bit 16 in HW_LCDIF_CTRL B in datasheet.

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 arch/arm/mach-stm/include/mach/fb.h |    1 +
 drivers/video/stm.c                 |    4 ++++
 2 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-stm/include/mach/fb.h b/arch/arm/mach-stm/include/mach/fb.h
index da71f10..f899433 100644
--- a/arch/arm/mach-stm/include/mach/fb.h
+++ b/arch/arm/mach-stm/include/mach/fb.h
@@ -37,6 +37,7 @@ struct imx_fb_videomode {
 
 	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
 	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
+	unsigned data_mode;
 	u32 bits_per_pixel;
 };
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 5035cd0..3dc2abe 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -399,6 +399,10 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 			fb_info->bits_per_pixel);
 		return -EINVAL;
 	}
+
+	if (pdata->data_mode)
+		reg |= CTRL_DATA_SELECT;
+
 	writel(reg, fbi->base + HW_LCDIF_CTRL);
 	pr_debug("Setting up CTRL to %08X\n", reg);
 
-- 
1.7.0.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
