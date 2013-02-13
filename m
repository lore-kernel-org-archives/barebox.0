Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5ais-0007Bl-8P
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 11:41:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 13 Feb 2013 15:41:40 +0400
Message-Id: <1360755704-24105-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 5/9] ARM: clps711x: Mark private functions that not will be
 used outside as static
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/clock.c   |    8 +++-----
 arch/arm/mach-clps711x/devices.c |    2 +-
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 5cafba9..09cbaf9 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -15,13 +15,11 @@
 
 #include <mach/clps711x.h>
 
-struct clk {
+static struct clk {
 	unsigned long	rate;
-};
-
-static struct clk uart_clk, bus_clk;
+} uart_clk, bus_clk;
 
-uint64_t clocksource_read(void)
+static uint64_t clocksource_read(void)
 {
 	return ~readw(TC2D);
 }
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 08f27d2..de5813a 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -14,7 +14,7 @@
 
 #include <mach/clps711x.h>
 
-inline void _clps711x_setup_memcfg(int bank, u32 addr, u32 val)
+inline static void _clps711x_setup_memcfg(int bank, u32 addr, u32 val)
 {
 	u32 tmp = readl(addr);
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
