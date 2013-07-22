Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1GlA-0003gu-1i
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 14:06:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 16:06:16 +0200
Message-Id: <1374501981-27403-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
References: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] scripts: imx-image: allow semicolon as command delimiter
To: barebox@lists.infradead.org

When we want to pass the imxcfg files through cpp we also want to
allow defines which define multiple commands. For this to work we
have to use an additional command delimiter as we can't pass '\n'
though cpp. Use ';' for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 2f52015..09fdc5f 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -492,12 +492,40 @@ struct command cmds[] = {
 	},
 };
 
+static char *readcmd(FILE *f)
+{
+	static char *buf;
+	char *str;
+	ssize_t ret;
+
+	if (!buf) {
+		buf = malloc(4096);
+		if (!buf)
+			return NULL;
+	}
+
+	str = buf;
+	*str = 0;
+
+	while (1) {
+		ret = fread(str, 1, 1, f);
+		if (!ret)
+			return strlen(buf) ? buf : NULL;
+
+		if (*str == '\n' || *str == ';') {
+			*str = 0;
+			return buf;
+		}
+
+		str++;
+	}
+}
+
 static int parse_config(const char *filename)
 {
 	FILE *f;
 	int lineno = 0;
 	char *line = NULL, *tmp;
-	size_t len;
 	char *argv[MAXARGS];
 	int nargs, i, ret;
 
@@ -507,15 +535,16 @@ static int parse_config(const char *filename)
 		exit(1);
 	}
 
-	while ((getline(&line, &len, f)) > 0) {
+	while (1) {
+		line = readcmd(f);
+		if (!line)
+			break;
+
 		lineno++;
 
 		tmp = strchr(line, '#');
 		if (tmp)
 			*tmp = 0;
-		tmp = strrchr(line, '\n');
-		if (tmp)
-			*tmp = 0;
 
 		nargs = parse_line(line, argv);
 		if (!nargs)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
