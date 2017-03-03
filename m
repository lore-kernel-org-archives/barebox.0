Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjmJt-00074y-VN
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 12:28:27 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id DA8DF5BD2E
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 13:28:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Mar 2017 13:34:02 +0100
Message-Id: <1488544445-20105-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170303123219.GD4120@mail.ovh.net>
 <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] clocksource: move dummy clock source to init_clock
To: barebox@lists.infradead.org

And registered it as soon as possible (at pure initcall).
So we not need to check the cs all the time.
As get_time_ns() is one of the most called function of barebox at runtime.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/clock.c | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 1090b605f..0d581c2c7 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -36,9 +36,32 @@ static uint64_t time_ns;
  */
 uint64_t time_beginning;
 
+static uint64_t dummy_read(void)
+{
+	static uint64_t dummy_counter;
+
+	dummy_counter += CONFIG_CLOCKSOURCE_DUMMY_RATE;
+
+	return dummy_counter;
+}
+
+static struct clocksource dummy_cs = {
+	.shift = 0,
+	.mult = 1,
+	.read = dummy_read,
+	.mask = CLOCKSOURCE_MASK(64),
+	.priority = -1,
+};
+
+static int dummy_csrc_init(void)
+{
+	return init_clock(&dummy_cs);
+}
+pure_initcall(dummy_csrc_init);
+
 static int dummy_csrc_warn(void)
 {
-	if (!current_clock) {
+	if (current_clock == &dummy_cs) {
 		pr_warn("Warning: Using dummy clocksource\n");
 	}
 
@@ -55,14 +78,6 @@ uint64_t get_time_ns(void)
 	uint64_t cycle_now, cycle_delta;
 	uint64_t ns_offset;
 
-	if (!cs) {
-		static uint64_t dummy_counter;
-
-		dummy_counter += CONFIG_CLOCKSOURCE_DUMMY_RATE;
-
-		return dummy_counter;
-	}
-
 	/* read clocksource: */
 	cycle_now = cs->read() & cs->mask;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
