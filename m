Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBgW-0004vu-LA
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:31:01 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 13 Dec 2012 17:30:39 +0100
Message-Id: <1355416249-22364-5-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
References: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 04/14] ARM omap4: Add missing double include protection
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

missing in omap4-clock.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap4-clock.h |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index e5302d6..469c716 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -1,4 +1,7 @@
-  /* PRCM */
+#ifndef __MACH_OMAP4_CLOCK_H
+#define __MACH_OMAP4_CLOCK_H
+
+/* PRCM */
 #define CM_SYS_CLKSEL				0x4a306110
 
 #define CM_SYS_CLKSEL_19M2		0x4
@@ -337,3 +340,4 @@ void omap4_enable_gpio_clocks(void);
 void omap4_enable_all_clocks(void);
 void omap4_do_scale_tps62361(u32 reg, u32 volt_mv);
 
+#endif /* __MACH_OMAP4_CLOCK_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
