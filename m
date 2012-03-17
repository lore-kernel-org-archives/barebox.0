Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8mo5-00069u-FO
 for barebox@lists.infradead.org; Sat, 17 Mar 2012 06:08:02 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 17 Mar 2012 10:11:41 +0400
Message-Id: <1331964701-24910-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] i.MX51: Remove GPIO2.6 setup from lowlevel_init
To: barebox@lists.infradead.org

Remove GPIO2.6 setup from lowlevel_init. It can be defined in board
initialization code if it necessary.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx51.c |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 2431e61..f7f2345 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -270,14 +270,4 @@ void imx51_init_lowlevel(void)
 	while (readl(ccm + MX5_CCM_CDHIPR));
 
 	writel(0x0, ccm + MX5_CCM_CCDR);
-
-	writel(0x1, 0x73fa8074);
-
-	r = readl(0x73f88000);
-	r |= 0x40;
-	writel(r, 0x73f88000);
-
-	r = readl(0x73f88004);
-	r |= 0x40;
-	writel(r, 0x73f88004);
 }
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
