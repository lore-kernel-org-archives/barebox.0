Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYyPH-00048r-Sr
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 14:28:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 16:22:03 +0200
Message-Id: <1412086926-27167-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
References: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] clock: Add a variable with the first timestamp after
 startup
To: barebox@lists.infradead.org

For measuring the startup time it's useful to save the first
timestamp after the clocksource has been registered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/clock.c  | 8 ++++++++
 include/clock.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/common/clock.c b/common/clock.c
index 9c7c1ba..2dae9ff 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -29,6 +29,12 @@
 static struct clocksource *current_clock;
 static uint64_t time_ns;
 
+/*
+ * The first timestamp when the clocksource is registered.
+ * Useful for measuring the time spent in barebox.
+ */
+uint64_t time_beginning;
+
 /**
  * get_time_ns - get current timestamp in nanoseconds
  */
@@ -180,5 +186,7 @@ EXPORT_SYMBOL(mdelay);
 int init_clock(struct clocksource *cs)
 {
 	current_clock = cs;
+	time_beginning = get_time_ns();
+
 	return 0;
 }
diff --git a/include/clock.h b/include/clock.h
index a169790..691befc 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -43,6 +43,8 @@ void mdelay(unsigned long msecs);
 #define MSECOND ((uint64_t)(1000 * 1000))
 #define USECOND ((uint64_t)(1000))
 
+extern uint64_t time_beginning;
+
 /*
  * Convenience wrapper to implement a typical polling loop with
  * timeout. returns 0 if the condition became true within the
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
