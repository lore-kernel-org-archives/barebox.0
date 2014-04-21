Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcKdh-0001VW-Sh
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 20:16:31 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id 5D67718B4259
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 22:15:36 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 22:15:24 +0200
Message-Id: <1398111326-21783-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
References: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/5] imx-image: don't leak file handle
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/imx/imx-image.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 1d935be7561d..f4890c44d7fa 100644
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
+					goto cleanup;
 				}
 				break;
 			}
@@ -567,11 +567,13 @@ static int parse_config(const char *filename)
 
 		if (ret == -ENOENT) {
 			fprintf(stderr, "no such command: %s\n", argv[0]);
-			return ret;
+			goto cleanup;
 		}
 	}
 
-	return 0;
+cleanup:
+	fclose(f);
+	return ret;
 }
 
 static int xread(int fd, void *buf, int len)
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
