Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3dTh-0001HQ-05
 for barebox@lists.infradead.org; Fri, 20 May 2016 06:00:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 May 2016 07:59:42 +0200
Message-Id: <1463723982-20741-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: iim: Remove debug printk
To: Barebox List <barebox@lists.infradead.org>

The dev_info is a debug leftover that was never intended to go upstream.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 2e25f69..c3ba67e 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -271,7 +271,6 @@ static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned offset, unsigned va
 
 	if (IS_ERR(iim->fuse_supply)) {
 		iim->fuse_supply = regulator_get(iim->dev.parent, "vdd-fuse");
-		dev_info(iim->dev.parent, "regul: %p\n", iim->fuse_supply);
 		if (IS_ERR(iim->fuse_supply))
 			return PTR_ERR(iim->fuse_supply);
 	}
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
