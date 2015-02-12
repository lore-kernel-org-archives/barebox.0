Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003ls-87
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:26 +0100
Message-Id: <1423731274-9860-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/17] cmdlinepart: make argument types safer
To: Barebox List <barebox@lists.infradead.org>

The return size should be loff_t to support partitions bigger
than 4G. Also use const for the devname and endp.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c  | 4 ++--
 include/cmdlinepart.h | 6 +++---
 lib/cmdlinepart.c     | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index c95433f..17ca136 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -41,7 +41,7 @@
 static int do_addpart(int argc, char *argv[])
 {
 	char *devname;
-	char *endp;
+	const char *endp;
 	loff_t offset = 0;
 	loff_t devsize;
 	struct stat s;
@@ -70,7 +70,7 @@ static int do_addpart(int argc, char *argv[])
 	endp = argv[optind + 1];
 
 	while (1) {
-		size_t size = 0;
+		loff_t size = 0;
 
 		if (cmdlinepart_do_parse_one(devname, endp, &endp, &offset,
 					devsize, &size, flags))
diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
index 5ffa3c4..3f8e136 100644
--- a/include/cmdlinepart.h
+++ b/include/cmdlinepart.h
@@ -3,9 +3,9 @@
 
 #define CMDLINEPART_ADD_DEVNAME (1 << 0)
 
-int cmdlinepart_do_parse_one(char *devname, const char *partstr,
-				 char **endp, loff_t *offset,
-				 loff_t devsize, size_t *retsize,
+int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
+				 const char **endp, loff_t *offset,
+				 loff_t devsize, loff_t *retsize,
 				 unsigned int partition_flags);
 
 #endif /* __CMD_LINE_PART_H */
diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index 4781d82..9351587 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -24,9 +24,9 @@
 
 #define SIZE_REMAINING ((loff_t)-1)
 
-int cmdlinepart_do_parse_one(char *devname, const char *partstr,
-				 char **endp, loff_t *offset,
-				 loff_t devsize, size_t *retsize,
+int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
+				 const char **endp, loff_t *offset,
+				 loff_t devsize, loff_t *retsize,
 				 unsigned int partition_flags)
 {
 	loff_t size;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
