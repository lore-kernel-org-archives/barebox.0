Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005j-Or
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:28 +0100
Message-Id: <20181214141730.26181-22-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 21/23] ARM: omap: AM3517: Change default clock rate for AM3517
To: Barebox List <barebox@lists.infradead.org>
Cc: Heinrich Toews <heinrich.toews@wago.com>

From: Heinrich Toews <heinrich.toews@wago.com>

This is an adoption of U-Boot commit:

| commit c8e5ba8034ad2a961782a092498f6ea71237c63f
| Author: Schuyler Patton <spatton@ti.com>
| Date:   Wed Feb 1 07:31:44 2012 +0000
|
|    AM3517: Changed default clock rate for AM3517
|
|    Changed #define MPU_M_13_ES2 from 0x1F4 to 0x258, this allows
|    the AM3517 to boot up at 600MHz instead of 500 MHz
|
|    Signed-off-by: Schuyler Patton <spatton@ti.com>
|    CC: Tom Rini <tom.rini@gmail.com>
|    CC: Simon Schwarz <simonschwarzcor@gmail.com>
|    CC: Stefano Babic <sbabic@denx.de>

Signed-off-by: Heinrich Toews <heinrich.toews@wago.com>
---
 arch/arm/mach-omap/omap3_clock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 0159574f30..03b866c28e 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -290,7 +290,7 @@ static struct dpll_param mpu_dpll_param_34x_es1[] = {
 
 static struct dpll_param mpu_dpll_param_34x_es2[] = {
 	{.m = 0x0FA, .n = 0x05, .fsel = 0x07, .m2 = 0x01, }, /* 12   MHz */
-	{.m = 0x1F4, .n = 0x0C, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
+	{.m = 0x258, .n = 0x0C, .fsel = 0x03, .m2 = 0x01, }, /* 13   MHz */
 	{.m = 0x271, .n = 0x17, .fsel = 0x03, .m2 = 0x01, }, /* 19.2 MHz */
 	{.m = 0x0FA, .n = 0x0C, .fsel = 0x07, .m2 = 0x01, }, /* 26   MHz */
 	{.m = 0x271, .n = 0x2F, .fsel = 0x03, .m2 = 0x01, }, /* 38.4 MHz */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
