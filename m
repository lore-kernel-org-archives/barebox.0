Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaUFF-00065p-Eu
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 15:26:18 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 74C7DFFC061
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2011 16:26:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Dec 2011 16:21:58 +0100
Message-Id: <1323789718-2459-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] poller_call: move from getc to is_timeout
To: barebox@lists.infradead.org

this will allow to always call poller_call even durring timeout
and still the case in getc

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/clock.c   |    4 ++++
 common/console.c |    2 --
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 79c06c8..6e92348 100644
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
+	if (time_offset_ns > MSECOND)
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
