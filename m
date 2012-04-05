Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFidc-0008Cd-Fa
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:05:53 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu,  5 Apr 2012 11:05:40 +0200
Message-Id: <1333616741-14273-3-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
References: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] arm: mxs: tx28: get MAC from OCOTP
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c |   23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index b36d822..04fdbc3 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -21,11 +21,13 @@
 #include <fec.h>
 #include <sizes.h>
 #include <io.h>
+#include <net.h>
 #include <asm/sections.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
+#include <mach/ocotp.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_MODE_4BIT,
@@ -345,6 +347,22 @@ static int register_persistent_environment(void)
 					DEVFS_PARTITION_FIXED, "env0");
 }
 
+void tx28_get_ethaddr(void)
+{
+	u32 buf[2];	/* to make use of cpu_to_be32 */
+	u32 ethaddr[2];
+	int ret;
+
+	ret = mxs_ocotp_read(buf, 8, 0);
+	if (ret != 8)
+		return;
+
+	ethaddr[0] = cpu_to_be32(buf[0]);
+	ethaddr[1] = cpu_to_be32(buf[1]);
+
+	eth_register_ethaddr(0, (char *)ethaddr);
+}
+
 void base_board_init(void)
 {
 	int i, ret;
@@ -369,6 +387,11 @@ void base_board_init(void)
 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
 			   IORESOURCE_MEM, &tx28_fb_pdata);
 
+	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0,
+			   IORESOURCE_MEM, NULL);
+
+	tx28_get_ethaddr();
+
 	imx_enable_enetclk();
 	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
 			   IORESOURCE_MEM, &fec_info);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
