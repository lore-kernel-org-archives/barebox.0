Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR9fx-0005BX-4u
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 21:39:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Nov 2011 22:39:10 +0100
Message-Id: <1321565950-772-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX53: silence compiler warning in nand.c
To: barebox@lists.infradead.org

nand.c issues a warning when imx_nand_set_layout is
empty. We don't need this function on i.MX53, so
silence the warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/nand.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index fcbb85e..27b72a0 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -95,7 +95,7 @@ void imx_nand_set_layout(int writesize, int datawidth)
 	FMCR = fmcr;
 }
 
-#elif defined CONFIG_ARCH_IMX51
+#elif defined CONFIG_ARCH_IMX51 || defined CONFIG_ARCH_IMX53
 
 void imx_nand_set_layout(int writesize, int datawidth)
 {
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
