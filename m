Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgD9s-00087z-SJ
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 11:28:57 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  5 Dec 2012 12:28:45 +0100
Message-Id: <1354706925-13432-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] mxs: get_fecclk is hclk, not a constant
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de, Wolfram Sang <w.sang@pengutronix.de>

The rate is not constant as the comment said, but is hclk. The result
was that MII clock was often calculated wrong.

Reported-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/speed-imx28.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-mxs/speed-imx28.c b/arch/arm/mach-mxs/speed-imx28.c
index df55f64..2cab42d 100644
--- a/arch/arm/mach-mxs/speed-imx28.c
+++ b/arch/arm/mach-mxs/speed-imx28.c
@@ -121,8 +121,7 @@ unsigned imx_get_xtalclk(void)
 
 unsigned imx_get_fecclk(void)
 {
-	/* this PLL always runs at 50 MHz */
-	return 50000000;
+	return imx_get_hclk();
 }
 
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
