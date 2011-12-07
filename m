Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYPLe-0001Ss-6S
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 21:48:19 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed,  7 Dec 2011 22:47:57 +0100
Message-Id: <1323294479-22117-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V2 1/3] arm/mach-pxa: add MMC clock
To: barebox@lists.infradead.org

Add mmc clock frequency reader. Easy as MMC host controller
is constant, while the clock between host and card is
settable.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/clock.h |    1 +
 arch/arm/mach-pxa/speed-pxa27x.c       |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/arch/arm/mach-pxa/include/mach/clock.h
index 4326fca..ecd2327 100644
--- a/arch/arm/mach-pxa/include/mach/clock.h
+++ b/arch/arm/mach-pxa/include/mach/clock.h
@@ -13,5 +13,6 @@
 
 unsigned long pxa_get_uartclk(void);
 unsigned long pxa_get_lcdclk(void);
+unsigned long pxa_get_mmcclk(void);
 
 #endif	/* !__MACH_CLOCK_H */
diff --git a/arch/arm/mach-pxa/speed-pxa27x.c b/arch/arm/mach-pxa/speed-pxa27x.c
index 0317d53..6360fe8 100644
--- a/arch/arm/mach-pxa/speed-pxa27x.c
+++ b/arch/arm/mach-pxa/speed-pxa27x.c
@@ -42,3 +42,8 @@ unsigned long pxa_get_lcdclk(void)
 {
 	return pxa_get_lcdclk_10khz() * 10000;
 }
+
+unsigned long pxa_get_mmcclk(void)
+{
+	return 19500000;
+}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
