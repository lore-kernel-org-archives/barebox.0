Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6QKg-0007kP-NT
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:48:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 19:48:21 +0100
Message-Id: <1360954101-13194-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360954101-13194-1-git-send-email-s.hauer@pengutronix.de>
References: <1360954101-13194-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM i.MX28: Add missing return value in non-void function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/soc-imx28.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index a5f3d68..8972a3d 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -45,5 +45,7 @@ static int imx28_init(void)
 	 * of resetting it. Use a software reset only.
 	 */
 	writel(HW_CLKCTRL_WDOG_POR_DISABLE, IMX_CCM_BASE + HW_CLKCTRL_RESET);
+
+	return 0;
 }
 postcore_initcall(imx28_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
