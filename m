Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKq-0001lW-RI
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:51 +0000
Received: by wiclk2 with SMTP id lk2so47136559wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:06 +0200
Message-Id: <1444341979-19157-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 04/17] arm: pxa: Remove pxa_get_nandclk()
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

With a common clock provided for NAND controller, get rid of the
mach/clock.h way of getting the NAND clock.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
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
index 91e03eae4a52..6851911fa7aa 100644
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
