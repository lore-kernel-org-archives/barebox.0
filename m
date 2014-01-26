Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7TGG-0004IL-Oj
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 17:12:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1W7TFu-0000eQ-Ta
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 18:12:22 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1W7TFu-0005Z0-Sa
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 18:12:22 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Sun, 26 Jan 2014 18:12:21 +0100
Message-Id: <1390756341-21349-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2] scripts: kwbimage: fix imagebuild on 32bit host system
To: barebox@lists.infradead.org

We have to use strtoul to run the tool working on 32bit systems.
Otherwise it will generate signed numbers for strings representing
values with the 32nd bit set.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 scripts/kwbimage.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 82cf21c..cd87456 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1024,20 +1024,20 @@ static int image_create_config_parse_oneline(char *line,
 	} else if (!strcmp(keyword, "DESTADDR")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_DEST_ADDR;
-		el->dstaddr = strtol(value, NULL, 16);
+		el->dstaddr = strtoul(value, NULL, 16);
 	} else if (!strcmp(keyword, "EXECADDR")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_EXEC_ADDR;
-		el->execaddr = strtol(value, NULL, 16);
+		el->execaddr = strtoul(value, NULL, 16);
 	} else if (!strcmp(keyword, "NAND_BLKSZ")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_NAND_BLKSZ;
-		el->nandblksz = strtol(value, NULL, 16);
+		el->nandblksz = strtoul(value, NULL, 16);
 	} else if (!strcmp(keyword, "NAND_BADBLK_LOCATION")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_NAND_BADBLK_LOCATION;
 		el->nandbadblklocation =
-			strtol(value, NULL, 16);
+			strtoul(value, NULL, 16);
 	} else if (!strcmp(keyword, "NAND_ECCMODE")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_NAND_ECC_MODE;
@@ -1050,7 +1050,7 @@ static int image_create_config_parse_oneline(char *line,
 	} else if (!strcmp(keyword, "NAND_PAGESZ")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_NAND_PAGESZ;
-		el->nandpagesz = strtol(value, NULL, 16);
+		el->nandpagesz = strtoul(value, NULL, 16);
 	} else if (!strcmp(keyword, "BINARY")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		int argi = 0;
@@ -1061,7 +1061,7 @@ static int image_create_config_parse_oneline(char *line,
 			value = strtok_r(NULL, " ", &saveptr);
 			if (!value)
 				break;
-			el->binary.args[argi] = strtol(value, NULL, 16);
+			el->binary.args[argi] = strtoul(value, NULL, 16);
 			argi++;
 			if (argi >= BINARY_MAX_ARGS) {
 				fprintf(stderr,
@@ -1080,8 +1080,8 @@ static int image_create_config_parse_oneline(char *line,
 		}
 
 		el->type = IMAGE_CFG_DATA;
-		el->regdata.raddr = strtol(value1, NULL, 16);
-		el->regdata.rdata = strtol(value2, NULL, 16);
+		el->regdata.raddr = strtoul(value1, NULL, 16);
+		el->regdata.rdata = strtoul(value2, NULL, 16);
 	} else if (!strcmp(keyword, "PAYLOAD")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_PAYLOAD;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
