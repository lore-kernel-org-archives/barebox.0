Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMn6-0007d5-8V
 for barebox@lists.infradead.org; Thu, 28 Nov 2019 16:37:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 28 Nov 2019 17:37:08 +0100
Message-Id: <20191128163707.6055-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] scripts: imx: report file where error occurred
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Especially when using #include directives in imxcfg files, error
messages can be hard to follow because line numbers differ between
preprocessor and source files. Teach the imx image generation tool about
preprocessing line number / file name directive, so it can give more
useful error messages. Instead of:

  error in line 11: Invalid argument

It now says:

  $barebox/arch/arm/boards/$som/flash-header-$board.imxcfg:5: Invalid argument

No change in compiled barebox binaries.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index b3e8d62ba8b6..b8d939a43177 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -673,13 +673,16 @@ static char *readcmd(struct config_data *data, FILE *f)
 	}
 }
 
-int parse_config(struct config_data *data, const char *filename)
+int parse_config(struct config_data *data, const char *_filename)
 {
 	FILE *f;
 	int lineno = 0;
 	char *line = NULL, *tmp;
 	char *argv[MAXARGS];
 	int nargs, i, ret = 0;
+	char *filename;
+
+	filename = strdup(_filename);
 
 	f = fopen(filename, "r");
 	if (!f) {
@@ -695,8 +698,17 @@ int parse_config(struct config_data *data, const char *filename)
 		lineno++;
 
 		tmp = strchr(line, '#');
-		if (tmp)
-			*tmp = 0;
+		if (tmp) {
+			char *endptr;
+			long linenum = strtol(tmp + 1, &endptr, 10);
+			if (strncmp(endptr, " \"", 2) == 0 && endptr[2]) {
+				free(filename);
+				lineno = linenum - 1;
+				filename = strdup(endptr + 2);
+				filename[strlen(filename) - 1] = '\0';
+			}
+			*tmp = '\0';
+		}
 
 		nargs = parse_line(line, argv);
 		if (!nargs)
@@ -708,8 +720,8 @@ int parse_config(struct config_data *data, const char *filename)
 			if (!strcmp(cmds[i].name, argv[0])) {
 				ret = cmds[i].parse(data, nargs, argv);
 				if (ret) {
-					fprintf(stderr, "error in line %d: %s\n",
-							lineno, strerror(-ret));
+					fprintf(stderr, "%s:%d: %s\n",
+						filename, lineno, strerror(-ret));
 					goto cleanup;
 				}
 				break;
@@ -724,5 +736,6 @@ int parse_config(struct config_data *data, const char *filename)
 
 cleanup:
 	fclose(f);
+	free(filename);
 	return ret;
 }
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
