Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OvmOH-0007MF-LC
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 07:26:50 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 15 Sep 2010 09:26:35 +0200
Message-Id: <1284535596-26814-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
References: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/3] clock: add poller call to is_timeout()
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/clock.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 15df0ab..ec63526 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -27,6 +27,7 @@
 #include <common.h>
 #include <asm-generic/div64.h>
 #include <clock.h>
+#include <poller.h>
 
 static struct clocksource *current_clock;
 static uint64_t time_ns;
@@ -84,6 +85,8 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
 
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
+	poller_call();
+
 	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
 		return 1;
 	else
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
