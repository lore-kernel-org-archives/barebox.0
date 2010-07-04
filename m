Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVHvg-0007MF-Lw
	for barebox@lists.infradead.org; Sun, 04 Jul 2010 05:39:50 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun,  4 Jul 2010 08:39:32 +0300
Message-Id: <738392b926a79541ab1ca4f1b547b59feabbdbc2.1278221880.git.baruch@tkos.co.il>
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
Subject: [PATCH] nand_imx: fix "used uninitialized" warning on mx25
To: barebox@lists.infradead.org

drivers/nand/nand_imx.c: In function 'imx_nand_load_image':
drivers/nand/nand_imx.c:1074: warning: 'host' is used uninitialized in this function

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/nand/nand_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index 74cdf10..5454e32 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -1065,7 +1065,7 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 	else
 		host.pagesize_2k = 0;
 #endif
-#ifdef CONFIG_ARCH_IMX35
+#if defined(CONFIG_ARCH_IMX35) || defined(CONFIG_ARCH_IMX25)
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
 		host.pagesize_2k = 1;
 	else
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
