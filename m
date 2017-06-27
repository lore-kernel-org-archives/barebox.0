Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPoI3-0004l4-Pn
 for barebox@lists.infradead.org; Tue, 27 Jun 2017 11:04:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Jun 2017 13:03:55 +0200
Message-Id: <20170627110355.11478-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: omap: Fix error printing
To: Barebox List <barebox@lists.infradead.org>

Presumably the code wanted to print the error with the %d format
specifier. Actually pass the error code by using PTR_ERR() and not
IS_ERR(). While at it use %ld to print a unsigned long variable to
get rid of a compiler warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap_generic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 694c951037..a1c0aeb595 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -141,8 +141,8 @@ static int omap_env_init(void)
 
 	rootpath = cdev_mount_default(cdev, NULL);
 	if (IS_ERR(rootpath)) {
-		pr_err("Failed to load environment: mount %s failed (%d)\n",
-						cdev->name, IS_ERR(rootpath));
+		pr_err("Failed to load environment: mount %s failed (%ld)\n",
+						cdev->name, PTR_ERR(rootpath));
 		goto out;
 	}
 	ret = symlink(rootpath, "/boot");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
