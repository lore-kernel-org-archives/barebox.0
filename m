Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJh-0005W0-5n
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:36:59 +0100
Message-Id: <20210215103704.32537-7-a.fatoum@pengutronix.de>
In-Reply-To: <20210215103704.32537-1-a.fatoum@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/12] poller: command: add new coroutine check
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The poller command can already counts how many pollers can execute
serially in a second. Add a new -c options that additionally
registers a poller that does non-blockingly sleep via poller_yield.

A system with working coroutines and enabled CONFIG_POLLER_YIELD should
show that the poller yielded exactly 4 times during considerably more
poller_call()s. For example:

    barebox@Embest MarS Board i.MX6Dual:/ poller -c
    Poller yield #1
    Poller yield #2
    Poller yield #3
    Poller yield #4
    295066 poller calls in 1s

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/poller.c | 41 +++++++++++++++++++++++++++++++++++------
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 592dc0a11a39..a63af0e792a6 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -187,8 +187,9 @@ void poller_call(void)
 
 #include <command.h>
 #include <getopt.h>
+#include <clock.h>
 
-static void poller_time(void)
+static int poller_time(void)
 {
 	uint64_t start = get_time_ns();
 	int i = 0;
@@ -202,7 +203,7 @@ static void poller_time(void)
 	while (!is_timeout(start, SECOND))
 		i++;
 
-	printf("%d poller calls in 1s\n", i);
+	return i;
 }
 
 static void poller_info(void)
@@ -226,20 +227,48 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered pollers")
 BAREBOX_CMD_HELP_OPT ("-t", "measure how many pollers we run in 1s")
+BAREBOX_CMD_HELP_OPT ("-c", "run coroutine test")
 BAREBOX_CMD_HELP_END
 
+static void poller_coroutine(struct poller_struct *poller)
+{
+	volatile u64 start;
+	volatile int i = 0;
+
+	for (;;) {
+		start = get_time_ns();
+		while (!is_timeout_non_interruptible(start, 225 * MSECOND))
+			__poller_yield(active_poller);
+
+		printf("Poller yield #%d\n", ++i);
+	}
+}
+
 static int do_poller(int argc, char *argv[])
 {
-	int opt;
+	struct poller_struct poller = {};
+	int ret, opt;
 
-	while ((opt = getopt(argc, argv, "it")) > 0) {
+	while ((opt = getopt(argc, argv, "itc")) > 0) {
 		switch (opt) {
 		case 'i':
 			poller_info();
 			return 0;
+		case 'c':
+			if (!IS_ENABLED(CONFIG_POLLER_YIELD)) {
+				printf("CONFIG_POLLER_YIELD support not compiled in\n");
+				return -ENOSYS;
+			}
+
+			poller.func = poller_coroutine;
+			ret = poller_register(&poller, "poller-coroutine-test");
+			if (ret)
+				return ret;
+
+			/* fallthrough */
 		case 't':
-			poller_time();
-			return 0;
+			printf("%d poller calls in 1s\n", poller_time());
+			return poller.func ? poller_unregister(&poller) : 0;
 		}
 	}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
