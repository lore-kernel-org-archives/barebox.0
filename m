Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YYut1-0001Bg-BC
 for barebox@lists.infradead.org; Fri, 20 Mar 2015 11:14:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2015 12:14:22 +0100
Message-Id: <1426850062-31908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: ocotp: remove useless code
To: Barebox List <barebox@lists.infradead.org>

cdev->name is initialized to a static string, so no need
to check if it's non NULL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ocotp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index b58aafa..c99a003 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -426,8 +426,6 @@ static int imx_ocotp_probe(struct device_d *dev)
 	cdev->priv	= priv;
 	cdev->size	= 192;
 	cdev->name	= "imx-ocotp";
-	if (cdev->name == NULL)
-		return -ENOMEM;
 
 	ret = devfs_create(cdev);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
