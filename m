Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PN4Yc-0000q9-4V
	for barebox@lists.infradead.org; Mon, 29 Nov 2010 14:18:20 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 29 Nov 2010 15:14:04 +0100
Message-Id: <1291040044-16143-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1290801386-2932-1-git-send-email-plagnioj@jcrosoft.com>
References: <1290801386-2932-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] clocksource: switch mask to CLOCKSOURCE_MASK
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam926x_time.c |    2 +-
 arch/arm/mach-ep93xx/clocksource.c    |    2 +-
 arch/arm/mach-imx/clocksource.c       |    2 +-
 arch/arm/mach-netx/clocksource.c      |    2 +-
 arch/arm/mach-nomadik/timer.c         |    2 +-
 arch/arm/mach-omap/s32k_clksource.c   |    2 +-
 arch/arm/mach-s3c24xx/generic.c       |    2 +-
 arch/arm/mach-stm/clocksource-imx23.c |    2 +-
 arch/blackfin/lib/clock.c             |    2 +-
 arch/ppc/lib/time.c                   |    2 +-
 arch/sandbox/board/clock.c            |    2 +-
 arch/x86/mach-i386/pit_timer.c        |    2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index c1b42f9..7a1d6dd 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -46,7 +46,7 @@ uint64_t at91sam9_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= at91sam9_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
 };
 
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index a1e315d..b500948 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -41,7 +41,7 @@ static uint64_t ep93xx_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= ep93xx_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
 };
 
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 5b1bad5..5397da0 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -47,7 +47,7 @@ static uint64_t imx_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= imx_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
 };
 
diff --git a/arch/arm/mach-netx/clocksource.c b/arch/arm/mach-netx/clocksource.c
index 818709d..853eab7 100644
--- a/arch/arm/mach-netx/clocksource.c
+++ b/arch/arm/mach-netx/clocksource.c
@@ -34,7 +34,7 @@ uint64_t netx_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= netx_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
 };
 
diff --git a/arch/arm/mach-nomadik/timer.c b/arch/arm/mach-nomadik/timer.c
index 12e56f0..7de1f39 100644
--- a/arch/arm/mach-nomadik/timer.c
+++ b/arch/arm/mach-nomadik/timer.c
@@ -35,7 +35,7 @@ static uint64_t nmdk_read_timer(void)
 static struct clocksource nmdk_clksrc = {
 	.read	= nmdk_read_timer,
 	.shift	= 20,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 };
 
 static void nmdk_timer_reset(void)
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 353670c..094b76d 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -56,7 +56,7 @@ static uint64_t s32k_clocksource_read(void)
 /* A bit obvious isn't it? */
 static struct clocksource s32k_cs = {
 	.read = s32k_clocksource_read,
-	.mask = 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift = 10,
 };
 
diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-s3c24xx/generic.c
index 46b5c50..c04e0b6 100644
--- a/arch/arm/mach-s3c24xx/generic.c
+++ b/arch/arm/mach-s3c24xx/generic.c
@@ -196,7 +196,7 @@ static uint64_t s3c24xx_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= s3c24xx_clocksource_read,
-	.mask	= 0x0000ffff,
+	.mask	= CLOCKSOURCE_MASK(16),
 	.shift	= 10,
 };
 
diff --git a/arch/arm/mach-stm/clocksource-imx23.c b/arch/arm/mach-stm/clocksource-imx23.c
index 7c0268c..f7c94c1 100644
--- a/arch/arm/mach-stm/clocksource-imx23.c
+++ b/arch/arm/mach-stm/clocksource-imx23.c
@@ -48,7 +48,7 @@ static uint64_t imx23_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= imx23_clocksource_read,
-	.mask	= 0x0000ffff,
+	.mask	= CLOCKSOURCE_MASK(16),
 	.shift	= 10,
 };
 
diff --git a/arch/blackfin/lib/clock.c b/arch/blackfin/lib/clock.c
index dc2ab5f..7a5673f 100644
--- a/arch/blackfin/lib/clock.c
+++ b/arch/blackfin/lib/clock.c
@@ -55,7 +55,7 @@ static uint64_t blackfin_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= blackfin_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
 };
 
diff --git a/arch/ppc/lib/time.c b/arch/ppc/lib/time.c
index ee6cbdf..04c71df 100644
--- a/arch/ppc/lib/time.c
+++ b/arch/ppc/lib/time.c
@@ -56,7 +56,7 @@ uint64_t ppc_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= ppc_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 15,
 };
 
diff --git a/arch/sandbox/board/clock.c b/arch/sandbox/board/clock.c
index b150864..3afbc8d 100644
--- a/arch/sandbox/board/clock.c
+++ b/arch/sandbox/board/clock.c
@@ -32,7 +32,7 @@ static uint64_t linux_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= linux_clocksource_read,
-	.mask	= 0xffffffff,
+	.mask	= CLOCKSOURCE_MASK(32),
 	.shift	= 10,
 };
 
diff --git a/arch/x86/mach-i386/pit_timer.c b/arch/x86/mach-i386/pit_timer.c
index b9f805e..ec97cee 100644
--- a/arch/x86/mach-i386/pit_timer.c
+++ b/arch/x86/mach-i386/pit_timer.c
@@ -56,7 +56,7 @@ static uint64_t pit_clocksource_read(void)
 
 static struct clocksource cs = {
 	.read	= pit_clocksource_read,
-	.mask	= 0x0000ffff,
+	.mask	= CLOCKSOURCE_MASK(16),
 	.shift	= 10,
 };
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
