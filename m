Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYyP3-000455-3s
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 14:27:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 16:22:04 +0200
Message-Id: <1412086926-27167-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] clock: make get_time_ns() safe to be called without
 clocksource
To: barebox@lists.infradead.org

make it possible to call get_time_ns() before the clocksource
has been registered. Just return 0 in this case which is still
better than crashing the system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/clock.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/clock.c b/common/clock.c
index 2dae9ff..76ce881 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -44,6 +44,9 @@ uint64_t get_time_ns(void)
         uint64_t cycle_now, cycle_delta;
         uint64_t ns_offset;
 
+	if (!cs)
+		return 0;
+
         /* read clocksource: */
 	cycle_now = cs->read() & cs->mask;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
