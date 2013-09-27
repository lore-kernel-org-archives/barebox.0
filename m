Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSJc-0000sn-Cc
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:18:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 09:17:49 +0200
Message-Id: <1380266272-931-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380266272-931-1-git-send-email-s.hauer@pengutronix.de>
References: <1380266272-931-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: OMAP: Add missing include
To: barebox@lists.infradead.org

Include mach/generic.h where omap_set_bootmmc_devname is declared.
Change the argument of omap_set_bootmmc_devname to const char *
to fix the resulting conflicting prototypes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap_generic.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index e7ca821..f024de6 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -20,10 +20,11 @@
 #include <fs.h>
 #include <malloc.h>
 #include <linux/stat.h>
+#include <mach/generic.h>
 
-static char *omap_bootmmc_dev;
+const static char *omap_bootmmc_dev;
 
-void omap_set_bootmmc_devname(char *devname)
+void omap_set_bootmmc_devname(const char *devname)
 {
 	omap_bootmmc_dev = devname;
 }
@@ -37,7 +38,8 @@ const char *omap_get_bootmmc_devname(void)
 static int omap_env_init(void)
 {
 	struct stat s;
-	char *diskdev, *partname;
+	char *partname;
+	const char *diskdev;
 	int ret;
 
 	if (bootsource_get() != BOOTSOURCE_MMC)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
