Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSp1R-0006OM-TK
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 13:04:56 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 78854104EAA2
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 14:11:54 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 29 Oct 2012 14:02:35 +0100
Message-Id: <1351515759-25548-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121029124609.GG28904@game.jcrosoft.org>
References: <20121029124609.GG28904@game.jcrosoft.org>
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

is_timeout call poller_call if the timeout is >= 100us

but on 1-wire bus we need to wait 500us and not more than 930us
for the bus reset. So if the poller_call is caller we can not guarantee it.

So for this introduce is_non_interruptible_timeout than we only wait.

Use it for ndelay too.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/clock.c  |   16 +++++++++++-----
 include/clock.h |    1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 8adbeaf..9c7c1ba 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -135,23 +135,29 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
         return (uint32_t)tmp;
 }
 
-int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns)
 {
-	if (time_offset_ns >= 100 * USECOND)
-		poller_call();
-
 	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
 		return 1;
 	else
 		return 0;
 }
+EXPORT_SYMBOL(is_timeout_non_interruptible);
+
+int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+{
+	if (time_offset_ns >= 100 * USECOND)
+		poller_call();
+
+	return is_timeout_non_interruptible(start_ns, time_offset_ns);
+}
 EXPORT_SYMBOL(is_timeout);
 
 void ndelay(unsigned long nsecs)
 {
 	uint64_t start = get_time_ns();
 
-	while(!is_timeout(start, nsecs));
+	while(!is_timeout_non_interruptible(start, nsecs));
 }
 EXPORT_SYMBOL(ndelay);
 
diff --git a/include/clock.h b/include/clock.h
index c01a8d0..a169790 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -32,6 +32,7 @@ void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint
 uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
 
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
+int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
 
 // void udelay(unsigned long usecs);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
