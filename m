Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cFLzd-0001AE-LT
 for barebox@lists.infradead.org; Fri, 09 Dec 2016 14:17:48 +0000
Received: by mail-wm0-x242.google.com with SMTP id g23so4308552wme.1
 for <barebox@lists.infradead.org>; Fri, 09 Dec 2016 06:17:25 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri,  9 Dec 2016 15:17:14 +0100
Message-Id: <1481293035-28916-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 1/2] arm: am33xx: add reset duration control register address
 definition
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

PRM_RSTTIME register provides settings for global and power domain
reset durations.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/mach-omap/include/mach/am33xx-silicon.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index e17e609..10595d5 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -71,6 +71,7 @@
 
 #define AM33XX_PRM_RSTCTRL		(AM33XX_PRM_BASE + 0x0f00)
 #define AM33XX_PRM_RSTCTRL_RESET	0x1
+#define AM33XX_PRM_RSTTIME		(AM33XX_PRM_BASE + 0x0f04)
 #define AM33XX_PRM_RSTST		(AM33XX_PRM_BASE + 0x0f08)
 
 /* CTRL */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
