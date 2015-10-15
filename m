Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zmdl0-0003Se-3i
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 08:19:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Oct 2015 10:18:54 +0200
Message-Id: <1444897136-25028-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] scripts/kwbimage: Move configfile opening to the function
 that reads it
To: Barebox List <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

The configfile is read in image_create_config_parse(), so move opening
the file to there aswell and pass the configfile as filename instead of
FILE *.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/kwbimage.c | 34 ++++++++++++++++++----------------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 5b8e738..16be2dd 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1098,12 +1098,20 @@ static int image_create_config_parse_oneline(char *line,
  * elements 'image_cfg', and return the number of configuration
  * elements in 'cfgn'.
  */
-static int image_create_config_parse(FILE *fcfg,
+static int image_create_config_parse(const char *input,
 				     struct image_cfg_element *image_cfg,
 				     int *cfgn)
 {
 	int ret;
 	int cfgi = 0;
+	FILE *fcfg;
+
+	fcfg = fopen(input, "r");
+	if (!fcfg) {
+		fprintf(stderr, "Could not open input file %s\n",
+			input);
+		return -1;
+	}
 
 	/* Parse the configuration file */
 	while (!feof(fcfg)) {
@@ -1128,18 +1136,22 @@ static int image_create_config_parse(FILE *fcfg,
 		ret = image_create_config_parse_oneline(line,
 							&image_cfg[cfgi]);
 		if (ret)
-			return ret;
+			goto out;
 
 		cfgi++;
 
 		if (cfgi >= IMAGE_CFG_ELEMENT_MAX) {
 			fprintf(stderr, "Too many configuration elements in .cfg file\n");
-			return -1;
+			ret = -1;
+			goto out;
 		}
 	}
 
+	ret = 0;
 	*cfgn = cfgi;
-	return 0;
+out:
+	fclose(fcfg);
+	return ret;
 }
 
 static int image_override_payload(struct image_cfg_element *image_cfg,
@@ -1316,34 +1328,24 @@ static int image_create(const char *input, const char *output,
 			int verbose)
 {
 	struct image_cfg_element *image_cfg;
-	FILE *fcfg, *outputimg;
+	FILE *outputimg;
 	void *image = NULL;
 	int version;
 	size_t imagesz;
 	int cfgn;
 	int ret;
 
-	fcfg = fopen(input, "r");
-	if (!fcfg) {
-		fprintf(stderr, "Could not open input file %s\n",
-			input);
-		return -1;
-	}
-
 	image_cfg = malloc(IMAGE_CFG_ELEMENT_MAX *
 			   sizeof(struct image_cfg_element));
 	if (!image_cfg) {
 		fprintf(stderr, "Cannot allocate memory\n");
-		fclose(fcfg);
 		return -1;
 	}
 
 	memset(image_cfg, 0,
 	       IMAGE_CFG_ELEMENT_MAX * sizeof(struct image_cfg_element));
-	rewind(fcfg);
 
-	ret = image_create_config_parse(fcfg, image_cfg, &cfgn);
-	fclose(fcfg);
+	ret = image_create_config_parse(input, image_cfg, &cfgn);
 	if (ret) {
 		free(image_cfg);
 		return -1;
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
