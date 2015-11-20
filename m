Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22d.google.com ([2a00:1450:400c:c09::22d])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzVtQ-0007pv-7W
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 20:33:20 +0000
Received: by wmww144 with SMTP id w144so31707062wmw.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:22 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:59 +0100
Message-Id: <1448048172-10080-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 06/19] arm: pxa: Remove pxa_get_nandclk()
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

With a common clock provided for NAND controller, get rid of the
mach/clock.h way of getting the NAND clock.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/clock.h | 1 -
 arch/arm/mach-pxa/speed-pxa3xx.c       | 8 --------
 2 files changed, 9 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/arch/arm/mach-pxa/include/mach/clock.h
index 40f6223cd982..f86152f7af50 100644
--- a/arch/arm/mach-pxa/include/mach/clock.h
+++ b/arch/arm/mach-pxa/include/mach/clock.h
@@ -14,7 +14,6 @@
 unsigned long pxa_get_uartclk(void);
 unsigned long pxa_get_mmcclk(void);
 unsigned long pxa_get_lcdclk(void);
-unsigned long pxa_get_nandclk(void);
 unsigned long pxa_get_pwmclk(void);
 
 #endif	/* !__MACH_CLOCK_H */
diff --git a/arch/arm/mach-pxa/speed-pxa3xx.c b/arch/arm/mach-pxa/speed-pxa3xx.c
index 102951736dc0..b24b7a8fc380 100644
--- a/arch/arm/mach-pxa/speed-pxa3xx.c
+++ b/arch/arm/mach-pxa/speed-pxa3xx.c
@@ -27,14 +27,6 @@ unsigned long pxa_get_pwmclk(void)
 	return BASE_CLK;
 }
 
-unsigned long pxa_get_nandclk(void)
-{
-	if (cpu_is_pxa320())
-		return 104000000;
-	else
-		return 156000000;
-}
-
 static int pxa3xx_clock_init(void)
 {
 	unsigned long nand_rate = (cpu_is_pxa320()) ? 104000000 : 156000000;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
