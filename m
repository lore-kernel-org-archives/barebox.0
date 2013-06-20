Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfVL-0007yt-Lz
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:06:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:06:05 +0200
Message-Id: <1371737165-1313-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] detect command: Add -a option to detect all devices
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/detect.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/commands/detect.c b/commands/detect.c
index 0010a17..fbce4eb 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -28,8 +28,9 @@ static int do_detect(int argc, char *argv[])
 	int opt, i, ret;
 	int option_list = 0;
 	int option_error = 0;
+	int option_all = 0;
 
-	while ((opt = getopt(argc, argv, "el")) > 0) {
+	while ((opt = getopt(argc, argv, "ela")) > 0) {
 		switch (opt) {
 		case 'l':
 			option_list = 1;
@@ -37,6 +38,11 @@ static int do_detect(int argc, char *argv[])
 		case 'e':
 			option_error = 1;
 			break;
+		case 'a':
+			option_all = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
@@ -48,6 +54,15 @@ static int do_detect(int argc, char *argv[])
 		return 0;
 	}
 
+	if (option_all) {
+		for_each_device(dev) {
+			ret = device_detect(dev);
+			if (ret && ret != -ENOSYS && option_error)
+				return ret;
+		}
+		return 0;
+	}
+
 	if (argc == optind)
 		return COMMAND_ERROR_USAGE;
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
