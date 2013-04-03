Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHYd-0005ds-U1
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 06:52:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 08:52:21 +0200
Message-Id: <1364971945-24352-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364971945-24352-1-git-send-email-s.hauer@pengutronix.de>
References: <1364971945-24352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: i.MX: rename barebox_loc to bootsource
To: barebox@lists.infradead.org

Rename the barebox_loc environment variable to bootsource, since
- barebox_loc is a mixture between abbriviation and fulltext which is not nice
- technically it describes the source the SoC has booted from. This is not
  necessarily barebox but could also be some other first stage loader.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/env/init/bootsource | 2 +-
 arch/arm/mach-imx/boot.c                               | 8 ++++----
 arch/arm/mach-imx/imx51.c                              | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
index fb08469..380e855 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
+++ b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
@@ -3,7 +3,7 @@
 # by default pick kernel from MMC card if booting from
 # it, otherwise default to boot from internal harddisk
 
-if [ $barebox_loc = mmc ]; then
+if [ $bootsource = mmc ]; then
 	global.boot.default=mmc-left
 else
 	global.boot.default=hd-internal
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 95a7673..3d0b09b 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -42,8 +42,8 @@ void imx_set_bootsource(enum imx_bootsource src)
 
 	bootsource = src;
 
-	setenv("barebox_loc", bootsource_str[src]);
-	export("barebox_loc");
+	setenv("bootsource", bootsource_str[src]);
+	export("bootsource");
 }
 
 enum imx_bootsource imx_bootsource(void)
@@ -51,7 +51,7 @@ enum imx_bootsource imx_bootsource(void)
 	return bootsource;
 }
 
-BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
+BAREBOX_MAGICVAR(bootsource, "The source barebox has been booted from");
 
 /* [CTRL][TYPE] */
 static const enum imx_bootsource locations[4][4] = {
@@ -79,7 +79,7 @@ static const enum imx_bootsource locations[4][4] = {
 };
 
 /*
- * Saves the boot source media into the $barebox_loc environment variable
+ * Saves the boot source media into the $bootsource environment variable
  *
  * This information is useful for barebox init scripts as we can then easily
  * use a kernel image stored on the same media that we launch barebox with
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index cffcca3..96ac3b6 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -77,7 +77,7 @@ static int imx51_init(void)
 postcore_initcall(imx51_init);
 
 /*
- * Saves the boot source media into the $barebox_loc environment variable
+ * Saves the boot source media into the $bootsource environment variable
  *
  * This information is useful for barebox init scripts as we can then easily
  * use a kernel image stored on the same media that we launch barebox with
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
