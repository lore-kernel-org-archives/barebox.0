Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSCdt-00042v-Kp
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 20:06:02 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6F7AFDC13F4
 for <barebox@lists.infradead.org>; Sat, 27 Oct 2012 22:12:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 27 Oct 2012 22:03:41 +0200
Message-Id: <1351368225-19521-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121027195938.GB28904@game.jcrosoft.org>
References: <20121027195938.GB28904@game.jcrosoft.org>
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
Subject: [PATCH 1/5] clock: introduce non interruptible timeout
To: barebox@lists.infradead.org

is_non_timeout call poller_call if the timeout is >= 100us

but on 1-wire bus we need to wait 500us and not more than 930us
for the bus reset. So if the poller_call is caller we can not guarantee it.

So for this introduce is_non_interruptible_timeout than we only wait.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/clock.c  |   14 ++++++++++----
 include/clock.h |    1 +
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 8adbeaf..a358b78 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -135,16 +135,22 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
         return (uint32_t)tmp;
 }
 
-int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+int is_non_interruptible_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
-	if (time_offset_ns >= 100 * USECOND)
-		poller_call();
-
 	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
 		return 1;
 	else
 		return 0;
 }
+EXPORT_SYMBOL(is_non_interruptable_timeout);
+
+int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+{
+	if (time_offset_ns >= 100 * USECOND)
+		poller_call();
+
+	return is_non_interruptible_timeout(start_ns, time_offset_ns);
+}
 EXPORT_SYMBOL(is_timeout);
 
 void ndelay(unsigned long nsecs)
diff --git a/include/clock.h b/include/clock.h
index c01a8d0..5fd9134 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -32,6 +32,7 @@ void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint
 uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
 
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
+int is_non_interruptible_timeout(uint64_t start_ns, uint64_t time_offset_ns);
 
 // void udelay(unsigned long usecs);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
