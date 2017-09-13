Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds6iH-0007Yp-OJ
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 12:24:22 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 13 Sep 2017 14:23:30 +0200
Message-Id: <20170913122332.17585-4-ejo@pengutronix.de>
In-Reply-To: <20170913122332.17585-1-ejo@pengutronix.de>
References: <20170913122332.17585-1-ejo@pengutronix.de>
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
Subject: [PATCH 3/5] commands: nv: assure error code will be returned when an
 error occurred
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Due to iteration over possibly multiple variables, the return value of
an individual call to nvvar_remove() / nvvar_add() gets lost.

This will result in do_nv() returning success (0) if any variable
processing failed as long as processing of the last variable succeeded.

Processing will not be aborted on individual errors, such as the 'cp'
handles it for invalid files.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index b141198a93..d391f9e6b4 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -28,7 +28,7 @@ static int do_nv(int argc, char *argv[])
 {
 	int opt;
 	int do_remove = 0, do_save = 0;
-	int ret, i;
+	int failed = 0, i;
 	char *value;
 
 	while ((opt = getopt(argc, argv, "rs")) > 0) {
@@ -57,19 +57,29 @@ static int do_nv(int argc, char *argv[])
 	argv += optind;
 
 	for (i = 0; i < argc; i++) {
+		int ret;
 		value = strchr(argv[0], '=');
 		if (value) {
 			*value = 0;
 			value++;
 		}
 
-		if (do_remove)
+		if (do_remove) {
 			ret = nvvar_remove(argv[i]);
-		else
+			if (ret) {
+				printf("Failed removing %s: %s\n", argv[i], strerror(-ret));
+				failed = 1;
+			}
+		} else {
 			ret = nvvar_add(argv[i], value);
+			if (ret) {
+				printf("Failed adding %s: %s\n", argv[i], strerror(-ret));
+				failed = 1;
+			}
+		}
 	}
 
-	return ret;
+	return failed;
 }
 
 BAREBOX_CMD_HELP_START(nv)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
