Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsGAl-0006zq-Tu
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 17:39:56 +0000
Received: by mail-ea0-f173.google.com with SMTP id g15so560545eak.4
 for <barebox@lists.infradead.org>; Thu, 27 Jun 2013 10:39:33 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 27 Jun 2013 19:39:20 +0200
Message-Id: <1372354760-31955-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] clocksource: fix Marvell timer read-back value
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Clocksource read callback expects incrementing timer values, while
internal timer on Marvell SoCs counts backwards. Fix value returned
by Marvell MVEBU and Orion clocksource drivers.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/clocksource/mvebu.c |    2 +-
 drivers/clocksource/orion.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 1a9d573..6e5ceba 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -42,7 +42,7 @@ static __iomem void *timer_base;
 
 uint64_t mvebu_clocksource_read(void)
 {
-	return __raw_readl(timer_base + TIMER0_VAL_OFF);
+	return 0 - __raw_readl(timer_base + TIMER0_VAL_OFF);
 }
 
 static struct clocksource cs = {
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index d27477a..6902c72 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -34,7 +34,7 @@ static __iomem void *timer_base;
 
 static uint64_t orion_clocksource_read(void)
 {
-	return __raw_readl(timer_base + TIMER0_VAL);
+	return 0 - __raw_readl(timer_base + TIMER0_VAL);
 }
 
 static struct clocksource clksrc = {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
