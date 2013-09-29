Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN6x-0001zS-H1
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:01 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 8ABAF26C2003
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:06 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:30 +0200
Message-Id: <1380484776-32266-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/8] tegra: try harder inlining early startup functions
To: barebox@lists.infradead.org

It seems GCC 4.8 tries to be clever by not inlining some of those
functions. This causes havok, as it's absolutely required to inline
the early startup function, otherwise we may end up calling ARMv7 code
on the ARMv4 AVP.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 071416f..2d3f312 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -40,7 +40,8 @@
 #define T20_ODMDATA_UARTID_SHIFT	15
 #define T20_ODMDATA_UARTID_MASK		(7 << T20_ODMDATA_UARTID_SHIFT)
 
-static inline u32 tegra_get_odmdata(void)
+static inline __attribute__((always_inline))
+u32 tegra_get_odmdata(void)
 {
 	u32 bctsize, bctptr, odmdata;
 
@@ -62,7 +63,8 @@ enum tegra_chiptype {
 	TEGRA20 = 0,
 };
 
-static inline enum tegra_chiptype tegra_get_chiptype(void)
+static inline __attribute__((always_inline))
+enum tegra_chiptype tegra_get_chiptype(void)
 {
 	u32 hidrev;
 
@@ -76,7 +78,8 @@ static inline enum tegra_chiptype tegra_get_chiptype(void)
 	}
 }
 
-static inline int tegra_get_num_cores(void)
+static inline __attribute__((always_inline))
+int tegra_get_num_cores(void)
 {
 	switch (tegra_get_chiptype()) {
 	case TEGRA20:
@@ -89,7 +92,8 @@ static inline int tegra_get_num_cores(void)
 }
 
 /* Runtime data */
-static inline int tegra_cpu_is_maincomplex(void)
+static inline __attribute__((always_inline))
+int tegra_cpu_is_maincomplex(void)
 {
 	u32 tag0;
 
@@ -98,7 +102,8 @@ static inline int tegra_cpu_is_maincomplex(void)
 	return (tag0 & 0xff) == 0x55;
 }
 
-static inline uint32_t tegra20_get_ramsize(void)
+static inline __attribute__((always_inline))
+uint32_t tegra20_get_ramsize(void)
 {
 	switch ((tegra_get_odmdata() & T20_ODMDATA_RAMSIZE_MASK) >>
 		T20_ODMDATA_RAMSIZE_SHIFT) {
@@ -120,7 +125,8 @@ static long uart_id_to_base[] = {
 	TEGRA_UARTE_BASE,
 };
 
-static inline long tegra20_get_debuguart_base(void)
+static inline __attribute__((always_inline))
+long tegra20_get_debuguart_base(void)
 {
 	u32 odmdata;
 	int id;
@@ -146,7 +152,8 @@ static inline long tegra20_get_debuguart_base(void)
 #define CRC_OSC_CTRL_OSC_FREQ_SHIFT	30
 #define CRC_OSC_CTRL_OSC_FREQ_MASK	(0x3 << CRC_OSC_CTRL_OSC_FREQ_SHIFT)
 
-static inline unsigned int tegra_get_osc_clock(void)
+static inline unsigned __attribute__((always_inline))
+int tegra_get_osc_clock(void)
 {
 	u32 osc_ctrl = readl(TEGRA_CLK_RESET_BASE + CRC_OSC_CTRL);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
