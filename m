Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zmdkv-0003QC-ER
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 08:19:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Oct 2015 10:18:55 +0200
Message-Id: <1444897136-25028-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
References: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] scripts/kwbimage: Make BINARY files relative to config
 file
To: Barebox List <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

The BINARY files given in the config files are expected to be relative
to the place kwbimage is called from. This is bad since it breaks where
kwbimage is called from the build directory and not the source
directory.
It makes more sense to make the paths in the config files relative
to the config files which works with out of tree builds and is also
more what a user normally expects.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/globalscale-mirabox/kwbimage.cfg     |  2 +-
 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg         |  2 +-
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg    |  2 +-
 arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg |  2 +-
 scripts/kwbimage.c                                   | 17 +++++++++++++----
 5 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/globalscale-mirabox/kwbimage.cfg b/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
index 16fb77c..3e20502 100644
--- a/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
+++ b/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
@@ -2,4 +2,4 @@ VERSION 1
 BOOT_FROM nand
 NAND_BLKSZ 00020000
 NAND_BADBLK_LOCATION 01
-BINARY arch/arm/boards/globalscale-mirabox/binary.0 0000005b 00000068
+BINARY binary.0 0000005b 00000068
diff --git a/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg b/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
index 713efb0..15b7fdd 100644
--- a/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
+++ b/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
@@ -2,4 +2,4 @@ VERSION 1
 BOOT_FROM nand
 NAND_BLKSZ 00020000
 NAND_BADBLK_LOCATION 00
-BINARY arch/arm/boards/lenovo-ix4-300d/binary.0 0000005b 00000068
+BINARY binary.0 0000005b 00000068
diff --git a/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg b/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
index 3f66aa0..05d398c 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
+++ b/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
@@ -1,3 +1,3 @@
 VERSION 1
 BOOT_FROM spi
-BINARY arch/arm/boards/marvell-armada-xp-gp/binary.0 0000005b 00000068
+BINARY binary.0 0000005b 00000068
diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
index 1d05715..05d398c 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
+++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
@@ -1,3 +1,3 @@
 VERSION 1
 BOOT_FROM spi
-BINARY arch/arm/boards/plathome-openblocks-ax3/binary.0 0000005b 00000068
+BINARY binary.0 0000005b 00000068
diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 16be2dd..448ac2a 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -51,6 +51,7 @@
 #include <unistd.h>
 #include <stdlib.h>
 #include <string.h>
+#include <libgen.h>
 
 #define ALIGN_SUP(x, a) (((x) + (a - 1)) & ~(a - 1))
 
@@ -187,7 +188,7 @@ struct image_cfg_element {
 		unsigned int version;
 		unsigned int bootfrom;
 		struct {
-			const char *file;
+			char *file;
 			unsigned int args[BINARY_MAX_ARGS];
 			unsigned int nargs;
 		} binary;
@@ -1003,7 +1004,8 @@ static void *image_create_v1(struct image_cfg_element *image_cfg,
 }
 
 static int image_create_config_parse_oneline(char *line,
-					     struct image_cfg_element *el)
+					     struct image_cfg_element *el,
+					     char *configpath)
 {
 	char *keyword, *saveptr;
 
@@ -1056,7 +1058,10 @@ static int image_create_config_parse_oneline(char *line,
 		int argi = 0;
 
 		el->type = IMAGE_CFG_BINARY;
-		el->binary.file = strdup(value);
+		if (*value == '/')
+			el->binary.file = strdup(value);
+		else
+			asprintf(&el->binary.file, "%s/%s", configpath, value);
 		while (1) {
 			value = strtok_r(NULL, " ", &saveptr);
 			if (!value)
@@ -1105,11 +1110,13 @@ static int image_create_config_parse(const char *input,
 	int ret;
 	int cfgi = 0;
 	FILE *fcfg;
+	char *configpath = dirname(strdup(input));
 
 	fcfg = fopen(input, "r");
 	if (!fcfg) {
 		fprintf(stderr, "Could not open input file %s\n",
 			input);
+		free(configpath);
 		return -1;
 	}
 
@@ -1134,7 +1141,8 @@ static int image_create_config_parse(const char *input,
 
 		/* Parse the current line */
 		ret = image_create_config_parse_oneline(line,
-							&image_cfg[cfgi]);
+							&image_cfg[cfgi],
+							configpath);
 		if (ret)
 			goto out;
 
@@ -1151,6 +1159,7 @@ static int image_create_config_parse(const char *input,
 	*cfgn = cfgi;
 out:
 	fclose(fcfg);
+	free(configpath);
 	return ret;
 }
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
