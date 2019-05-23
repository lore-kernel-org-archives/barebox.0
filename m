Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToIn-0006tp-6f
 for barebox@lists.infradead.org; Thu, 23 May 2019 14:02:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 May 2019 16:02:33 +0200
Message-Id: <20190523140233.8507-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: mw: Use kstrto*() instead of simple_strtoul()
To: Barebox List <barebox@lists.infradead.org>
Cc: mfe@pengutronix.de

Now that we have the kstrto*() functions we can use them to detect
various errors in passing numbers on the command line. Start with
the 'mw' command and make it more robust against illegal numbers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mw.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/commands/mw.c b/commands/mw.c
index 2912997a31..3ed6c820d0 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -63,23 +63,31 @@ static int do_mem_mw(int argc, char *argv[])
 		u64 val64;
 		switch (mode) {
 		case O_RWSIZE_1:
-			val8 = simple_strtoul(argv[optind], NULL, 0);
+			ret = kstrtou8(argv[optind], 0, &val8);
+			if (ret)
+				goto illegal_number;
 			ret = write(fd, &val8, 1);
 			break;
 		case O_RWSIZE_2:
-			val16 = simple_strtoul(argv[optind], NULL, 0);
+			ret = kstrtou16(argv[optind], 0, &val16);
+			if (ret)
+				goto illegal_number;
 			if (swab)
 				val16 = __swab16(val16);
 			ret = write(fd, &val16, 2);
 			break;
 		case O_RWSIZE_4:
-			val32 = simple_strtoul(argv[optind], NULL, 0);
+			ret = kstrtou32(argv[optind], 0, &val32);
+			if (ret)
+				goto illegal_number;
 			if (swab)
 				val32 = __swab32(val32);
 			ret = write(fd, &val32, 4);
 			break;
 		case O_RWSIZE_8:
-			val64 = simple_strtoull(argv[optind], NULL, 0);
+			ret = kstrtou64(argv[optind], 0, &val64);
+			if (ret)
+				goto illegal_number;
 			if (swab)
 				val64 = __swab64(val64);
 			ret = write(fd, &val64, 8);
@@ -96,6 +104,14 @@ static int do_mem_mw(int argc, char *argv[])
 	close(fd);
 
 	return ret ? 1 : 0;
+
+illegal_number:
+	printf("\"%s\" is not a valid %d bit number\n", argv[optind],
+	       (mode >> O_RWSIZE_SHIFT) * 8);
+
+	close(fd);
+
+	return 1;
 }
 
 BAREBOX_CMD_HELP_START(mw)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
