Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f52.google.com ([209.85.220.52])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ttvpv-00009T-TZ
 for barebox@lists.infradead.org; Sat, 12 Jan 2013 07:49:05 +0000
Received: by mail-pa0-f52.google.com with SMTP id fb1so1416671pad.39
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2013 23:49:00 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sat, 12 Jan 2013 18:45:08 +1100
Message-Id: <1357976708-9010-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: mtest: add iteration count parameter for mtest
 command
To: barebox@lists.infradead.org

The number of test iterations can be specified so that the test
does not continue forever without manual intervention.

This enables better use of mtest via scripts.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 commands/memtest.c |   30 +++++++++++++++++++-----------
 1 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index 651a195..f3fe5e5 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -34,7 +34,7 @@
  * sub-tests.
  */
 #ifdef CONFIG_CMD_MTEST_ALTERNATIVE
-static int mem_test(ulong _start, ulong _end, ulong pattern_unused)
+static int mem_test(ulong _start, ulong _end, ulong pattern_unused, ulong iter_count)
 {
 	vu_long *start = (vu_long *)_start;
 	vu_long *end   = (vu_long *)_end;
@@ -68,13 +68,17 @@ static int mem_test(ulong _start, ulong _end, ulong pattern_unused)
 	};
 
 	/* XXX: enforce alignment of start and end? */
-	for (;;) {
+	while (!iter_count || (iterations <= iter_count)) {
 		if (ctrlc()) {
 			putchar ('\n');
 			return 1;
 		}
 
-		printf("Iteration: %6d\r", iterations);
+		printf("Iteration: %6d", iterations);
+		if (iter_count)
+			printf(" of %6lu", iter_count);
+		printf("\r");
+
 		iterations++;
 
 		/*
@@ -262,9 +266,10 @@ static int mem_test(ulong _start, ulong _end, ulong pattern_unused)
 		}
 	}
 
+	return 0;
 }
 #else
-static int mem_test(ulong _start, ulong _end, ulong pattern)
+static int mem_test(ulong _start, ulong _end, ulong pattern, ulong iter_count)
 {
 	vu_long	*addr;
 	vu_long *start = (vu_long *)_start;
@@ -273,9 +278,10 @@ static int mem_test(ulong _start, ulong _end, ulong pattern)
 	ulong	readback;
 	ulong	incr;
 	int rcode;
+	int iterations = 1;
 
 	incr = 1;
-	for (;;) {
+	while (!iter_count || (iterations <= iter_count)) {
 		if (ctrlc()) {
 			putchar('\n');
 			return 1;
@@ -317,6 +323,8 @@ static int mem_test(ulong _start, ulong _end, ulong pattern)
 			pattern = ~pattern;
 		}
 		incr = -incr;
+
+		++iterations;
 	}
 	return rcode;
 }
@@ -324,7 +332,7 @@ static int mem_test(ulong _start, ulong _end, ulong pattern)
 
 static int do_mem_mtest(int argc, char *argv[])
 {
-	ulong start, end, pattern = 0;
+	ulong start, end, pattern = 0, iterations = 0;
 
 	if (argc < 3)
 		return COMMAND_ERROR_USAGE;
@@ -335,16 +343,16 @@ static int do_mem_mtest(int argc, char *argv[])
 	if (argc > 3)
 		pattern = simple_strtoul(argv[3], NULL, 0);
 
+	if (argc > 4)
+		iterations = simple_strtoul(argv[4], NULL, 0);
+
 	printf ("Testing 0x%08x ... 0x%08x:\n", (uint)start, (uint)end);
 	
-	return mem_test(start, end, pattern);
+	return mem_test(start, end, pattern, iterations);
 }
 
 static const __maybe_unused char cmd_mtest_help[] =
-"Usage: <start> <end> "
-#ifdef CONFIG_CMD_MTEST_ALTERNATIVE
-"[pattern]"
-#endif
+"Usage: <start> <end> [pattern] [iterations]"
 "\nsimple RAM read/write test\n";
 
 BAREBOX_CMD_START(mtest)
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
