Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqiAf-0000hP-PO
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 11:41:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Dec 2013 12:41:17 +0100
Message-Id: <1386762077-23205-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1386762077-23205-1-git-send-email-s.hauer@pengutronix.de>
References: <1386762077-23205-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] miitool: Add option to scan mii buses
To: barebox@lists.infradead.org

With the -s option all mii buses can be scanned for devices so
that they are available without doing network operations. Also,
now *all* phy devices on a mii bus can be examined, not only
the one attached to an ethernet device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/miitool.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 3a9ac45..a00514d 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -37,6 +37,7 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 #include <linux/mii.h>
+#include <linux/phy.h>
 
 static u16 mdio_read(int fd, int offset)
 {
@@ -218,13 +219,17 @@ static int do_miitool(int argc, char *argv[])
 	int argc_min;
 	int fd;
 	int verbose;
+	int scan = 0;
 
 	verbose = 0;
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	while ((opt = getopt(argc, argv, "vs")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
 			break;
+		case 's':
+			scan = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -232,8 +237,11 @@ static int do_miitool(int argc, char *argv[])
 
 	argc_min = optind + 1;
 
+	if (scan)
+		mdiobus_detect_all();
+
 	if (argc < argc_min)
-		return COMMAND_ERROR_USAGE;
+		return scan ? 0 : COMMAND_ERROR_USAGE;
 
 	filename = argv[optind];
 
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
