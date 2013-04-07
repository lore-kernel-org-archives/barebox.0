Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq1r-0001IP-PX
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 13:53:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 15:53:04 +0200
Message-Id: <1365342784-25432-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] treewide: Fix typo seperate -> separate
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c | 2 +-
 common/globalvar.c     | 4 ++--
 common/hush.c          | 2 +-
 drivers/mci/imx.c      | 2 +-
 include/globalvar.h    | 4 ++--
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 3c8fe41..8aea4b4 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -155,7 +155,7 @@ static int do_cpuinfo(int argc, char *argv[])
 			implementer, architecture);
 
 	if (cache & (1 << 24)) {
-		/* seperate I/D cache */
+		/* separate I/D cache */
 		printf("I-cache: ");
 		decode_cache(cache & 0xfff);
 		printf("D-cache: ");
diff --git a/common/globalvar.c b/common/globalvar.c
index a8aaa72..abcd881 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -22,7 +22,7 @@ int globalvar_add(const char *name,
  * get a concatenated string of all globalvars beginning with 'match'.
  * This adds whitespaces between the different globalvars
  */
-char *globalvar_get_match(const char *match, const char *seperator)
+char *globalvar_get_match(const char *match, const char *separator)
 {
 	char *val = NULL;
 	struct param_d *param;
@@ -31,7 +31,7 @@ char *globalvar_get_match(const char *match, const char *seperator)
 		if (!strncmp(match, param->name, strlen(match))) {
 			const char *p = dev_get_param(&global_device, param->name);
 			if (val) {
-				char *new = asprintf("%s%s%s", val, seperator, p);
+				char *new = asprintf("%s%s%s", val, separator, p);
 				free(val);
 				val = new;
 			} else {
diff --git a/common/hush.c b/common/hush.c
index b5e111a..a3235ba 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1959,7 +1959,7 @@ BAREBOX_CMD_START(getopt)
 BAREBOX_CMD_END
 #endif
 
-BAREBOX_MAGICVAR(PATH, "colon seperated list of pathes to search for executables");
+BAREBOX_MAGICVAR(PATH, "colon separated list of pathes to search for executables");
 #ifdef CONFIG_HUSH_FANCY_PROMPT
 BAREBOX_MAGICVAR(PS1, "hush prompt");
 #endif
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 3d9bd0d..0e41be9 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -2,7 +2,7 @@
  *  This is a driver for the SDHC controller found in Freescale MX2/MX3
  *  SoCs. It is basically the same hardware as found on MX1 (imxmmc.c).
  *  Unlike the hardware found on MX1, this hardware just works and does
- *  not need all the quirks found in imxmmc.c, hence the seperate driver.
+ *  not need all the quirks found in imxmmc.c, hence the separate driver.
  *
  *  Copyright (C) 2009 Ilya Yanok, <yanok@emcraft.com>
  *  Copyright (C) 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
diff --git a/include/globalvar.h b/include/globalvar.h
index ddf885f..e3098bc 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -8,7 +8,7 @@ int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
-char *globalvar_get_match(const char *match, const char *seperator);
+char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 #else
 static inline int globalvar_add_simple(const char *name)
@@ -24,7 +24,7 @@ static inline int globalvar_add(const char *name,
 	return 0;
 }
 
-static inline char *globalvar_get_match(const char *match, const char *seperator)
+static inline char *globalvar_get_match(const char *match, const char *separator)
 {
 	return NULL;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
