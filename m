Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00071f-Bw
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:10:54 +0400
Message-Id: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 01/12] scripts: imx-image: Fix resource leak
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 scripts/imx/imx-image.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 1d935be..f87f4d2 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -528,7 +528,7 @@ static int parse_config(const char *filename)
 	int lineno = 0;
 	char *line = NULL, *tmp;
 	char *argv[MAXARGS];
-	int nargs, i, ret;
+	int nargs, i, ret = 0;
 
 	f = fopen(filename, "r");
 	if (!f) {
@@ -559,7 +559,7 @@ static int parse_config(const char *filename)
 				if (ret) {
 					fprintf(stderr, "error in line %d: %s\n",
 							lineno, strerror(-ret));
-					return ret;
+					goto out_parse;
 				}
 				break;
 			}
@@ -567,11 +567,14 @@ static int parse_config(const char *filename)
 
 		if (ret == -ENOENT) {
 			fprintf(stderr, "no such command: %s\n", argv[0]);
-			return ret;
+			break;
 		}
 	}
 
-	return 0;
+out_parse:
+	fclose(f);
+
+	return ret;
 }
 
 static int xread(int fd, void *buf, int len)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
