Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7eLz-0007mM-Gv
 for barebox@lists.infradead.org; Mon, 08 May 2017 08:49:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 May 2017 10:48:50 +0200
Message-Id: <20170508084850.9215-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clock: initialize dummy clocksource statically
To: Barebox List <barebox@lists.infradead.org>

Assigning the dummy clocksource in a initcall has the problem that
get_time_ns() crashes before that initcall is executed. This happens
when dmesg support is enabled in conjunction with CONFIG_DEBUG_INITCALLS.
In this case the dmesg code wants to have the timestamp of a log
message.
Solve this by setting the current clocksource to the dummy clock
statically and not at runtime. This way we always have a dummy
clock available.

Fixes:
commit 8972eb7ff17ad058a6c6018305bb912138ab0ca2
Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date:   Fri Mar 3 13:34:02 2017 +0100

    clocksource: move dummy clock source to init_clock

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/clock.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 0d581c2c7e..f98176dd52 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -27,7 +27,6 @@
 #include <clock.h>
 #include <poller.h>
 
-static struct clocksource *current_clock;
 static uint64_t time_ns;
 
 /*
@@ -53,11 +52,7 @@ static struct clocksource dummy_cs = {
 	.priority = -1,
 };
 
-static int dummy_csrc_init(void)
-{
-	return init_clock(&dummy_cs);
-}
-pure_initcall(dummy_csrc_init);
+static struct clocksource *current_clock = &dummy_cs;
 
 static int dummy_csrc_warn(void)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
