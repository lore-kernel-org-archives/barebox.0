Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lt-89
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:27 +0100
Message-Id: <1423731274-9860-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/17] cmdlinepart: add function to parse a cmdline partition
 string
To: Barebox List <barebox@lists.infradead.org>

This adds a function to parse a full cmdline partition string. The
addpart command is switched to use this function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c  | 25 +------------------------
 include/cmdlinepart.h |  3 +++
 lib/cmdlinepart.c     | 28 ++++++++++++++++++++++++++++
 3 files changed, 32 insertions(+), 24 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 17ca136..64ccaf0 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -41,8 +41,6 @@
 static int do_addpart(int argc, char *argv[])
 {
 	char *devname;
-	const char *endp;
-	loff_t offset = 0;
 	loff_t devsize;
 	struct stat s;
 	int opt;
@@ -67,28 +65,7 @@ static int do_addpart(int argc, char *argv[])
 
 	devname = basename(argv[optind]);
 
-	endp = argv[optind + 1];
-
-	while (1) {
-		loff_t size = 0;
-
-		if (cmdlinepart_do_parse_one(devname, endp, &endp, &offset,
-					devsize, &size, flags))
-			return 1;
-
-		offset += size;
-
-		if (!*endp)
-			break;
-
-		if (*endp != ',') {
-			printf("parse error\n");
-			return 1;
-		}
-		endp++;
-	}
-
-	return 0;
+	return cmdlinepart_do_parse(devname, argv[optind + 1], devsize, flags);
 }
 
 BAREBOX_CMD_HELP_START(addpart)
diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
index 3f8e136..bf8cdfa 100644
--- a/include/cmdlinepart.h
+++ b/include/cmdlinepart.h
@@ -8,4 +8,7 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 				 loff_t devsize, loff_t *retsize,
 				 unsigned int partition_flags);
 
+int cmdlinepart_do_parse(const char *devname, const char *parts, loff_t devsize,
+		unsigned partition_flags);
+
 #endif /* __CMD_LINE_PART_H */
diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index 9351587..df6f17a 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -93,3 +93,31 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 
 	return ret;
 }
+
+int cmdlinepart_do_parse(const char *devname, const char *parts, loff_t devsize,
+		unsigned partition_flags)
+{
+	loff_t offset = 0;
+	int ret;
+
+	while (1) {
+		loff_t size = 0;
+
+		ret = cmdlinepart_do_parse_one(devname, parts, &parts, &offset,
+				devsize, &size, partition_flags);
+		if (ret)
+			return ret;
+
+		offset += size;
+		if (!*parts)
+			break;
+
+		if (*parts != ',') {
+			printf("parse error\n");
+			return -EINVAL;
+		}
+		parts++;
+	}
+
+	return 0;
+}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
