Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhwaQ-0006R6-IB
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 05:07:00 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C592FDC3353
 for <barebox@lists.infradead.org>; Tue,  3 Jan 2012 06:07:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Jan 2012 06:00:47 +0100
Message-Id: <1325566850-24432-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] poller_call: move from getc to is_timeout
To: barebox@lists.infradead.org

this will allow to always call poller_call even durring timeout
and still the case in getc

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/clock.c   |    4 ++++
 common/console.c |    2 --
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 79c06c8..f322db8 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -27,6 +27,7 @@
 #include <common.h>
 #include <asm-generic/div64.h>
 #include <clock.h>
+#include <poller.h>
 
 static struct clocksource *current_clock;
 static uint64_t time_ns;
@@ -139,6 +140,9 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
 
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
+	if (time_offset_ns >= 100 * USECOND)
+		poller_call();
+
 	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
 		return 1;
 	else
diff --git a/common/console.c b/common/console.c
index cab8689..88c4010 100644
--- a/common/console.c
+++ b/common/console.c
@@ -225,8 +225,6 @@ int getc(void)
 	 */
 	start = get_time_ns();
 	while (1) {
-		poller_call();
-
 		if (tstc_raw()) {
 			kfifo_putc(console_input_buffer, getc_raw());
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
