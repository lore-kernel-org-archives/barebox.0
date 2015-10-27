Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeD-0000E3-Cx
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:30:02 +0100
Message-Id: <1445934602-25903-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
References: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] memtest: Make cached/uncached test configurable
To: Barebox List <barebox@lists.infradead.org>

Add options to explicitly test cached/uncached tests. Without these
options still both cached and uncached is tested if remapping is
supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memtest.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 7853cc5..42bc0b2 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -88,10 +88,11 @@ static int do_memtest(int argc, char *argv[])
 	uint32_t i, max_i = 1;
 	struct list_head memtest_used_regions;
 	int (*memtest)(struct list_head *, int, unsigned);
+	int cached = 0, uncached = 0;
 
 	memtest = do_memtest_biggest;
 
-	while ((opt = getopt(argc, argv, "i:bt")) > 0) {
+	while ((opt = getopt(argc, argv, "i:btcu")) > 0) {
 		switch (opt) {
 		case 'i':
 			max_i = simple_strtoul(optarg, NULL, 0);
@@ -102,11 +103,22 @@ static int do_memtest(int argc, char *argv[])
 		case 't':
 			memtest = do_memtest_thorough;
 			break;
+		case 'c':
+			cached = 1;
+			break;
+		case 'u':
+			uncached = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
+	if (!arch_can_remap() && (cached || uncached)) {
+		printf("Cannot map cached or uncached\n");
+		return -EINVAL;
+	}
+
 	if (optind > argc)
 		return COMMAND_ERROR_USAGE;
 
@@ -120,21 +132,23 @@ static int do_memtest(int argc, char *argv[])
 		if (max_i)
 			printf("Start iteration %u of %u.\n", i, max_i);
 
-		if (arch_can_remap()) {
-			/* First do a memtest with caching enabled. */
+		if (cached) {
 			printf("Do memtest with caching enabled.\n");
 			ret = memtest(&memtest_used_regions,
 					bus_only, MAP_CACHED);
 			if (ret < 0)
 				goto out;
+		}
 
-			/* Second do a memtest with caching disabled. */
+		if (uncached) {
 			printf("Do memtest with caching disabled.\n");
 			ret = memtest(&memtest_used_regions,
 					bus_only, MAP_UNCACHED);
 			if (ret < 0)
 				goto out;
-		} else {
+		}
+
+		if (!cached && !uncached) {
 			ret = memtest(&memtest_used_regions,
 					bus_only, MAP_DEFAULT);
 			if (ret < 0)
@@ -166,6 +180,8 @@ BAREBOX_CMD_HELP_START(memtest)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-i ITERATIONS", "perform number of iterations (default 1, 0 is endless)")
 BAREBOX_CMD_HELP_OPT("-b", "perform only a test on bus lines")
+BAREBOX_CMD_HELP_OPT("-c", "cached. Test using cached memory")
+BAREBOX_CMD_HELP_OPT("-u", "uncached. Test using uncached memory")
 BAREBOX_CMD_HELP_OPT("-t", "thorough. test all free areas. If unset, only test biggest free area")
 BAREBOX_CMD_HELP_END
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
