Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.76.mail-out.ovh.net ([87.98.164.52] helo=76.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM52M-0006XU-4V
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 20:36:54 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:56:26 +0100
Message-Id: <1290801386-2932-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] clocksource: import CLOCKSOURCE_MASK from the kernel
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/clock.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/include/clock.h b/include/clock.h
index 278f6e8..b9acdb9 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -3,6 +3,8 @@
 #ifndef CLOCK_H
 #define CLOCK_H
 
+#define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
+
 struct clocksource {
 	uint32_t	shift;
 	uint32_t	mult;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
