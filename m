Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f173.google.com ([209.85.160.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USXD2-0003ht-FL
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 18:35:57 +0000
Received: by mail-gh0-f173.google.com with SMTP id g16so212795ghb.32
 for <barebox@lists.infradead.org>; Wed, 17 Apr 2013 11:35:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 17 Apr 2013 15:35:43 -0300
Message-Id: <1366223743-29178-1-git-send-email-festevam@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mx6-sabrelite: Setup CCM_CCOSR register
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

Setup CCM_CCOSR register to provide a CKO1 clock frequency of 16.5 MHz.

CKO1 drives sgtl5000 codec clock on mx6qsabrelite and doing this setup in the 
bootloader will allow us to remove a lot of code in arch/arm/mach-imx/mach-imx6q.c 
from the mainline kernel.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 .../boards/freescale-mx6-sabrelite/flash_header.c  |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c b/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
index 61d482b..49326e0 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
@@ -152,6 +152,17 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
 	DCD(MX6_IOMUXC_BASE_ADDR + 0x018, 0x007f007f),
 	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
+
+	/*
+	 * Setup CCM_CCOSR register as follows:
+	 *
+	 * cko1_en  = 1	   --> CKO1 enabled
+	 * cko1_div = 111  --> divide by 8
+	 * cko1_sel = 1011 --> ahb_clk_root
+	 *
+	 * This sets CKO1 at ahb_clk_root/8 = 132/8 = 16.5 MHz
+	 */
+	DCD(MX6_CCM_BASE_ADDR + 0x060, 0x000000fb),
 };
 
 #define APP_DEST	CONFIG_TEXT_BASE
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
