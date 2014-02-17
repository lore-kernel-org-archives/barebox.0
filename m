Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUmG-0003Mj-WB
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:26:58 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 8E3BC18B4261
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:03 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:35 +0100
Message-Id: <1392668861-10915-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
References: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 2/8] tegra: lowlevel: switch to __always_inline macro
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 472348a..fb06e4f 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -21,6 +21,7 @@
  * be used by both the main CPU complex (ARMv7) and the AVP (ARMv4).
  */
 
+#include <linux/compiler.h>
 #include <sizes.h>
 #include <io.h>
 #include <mach/iomap.h>
@@ -40,7 +41,7 @@
 #define T20_ODMDATA_UARTID_SHIFT	15
 #define T20_ODMDATA_UARTID_MASK		(7 << T20_ODMDATA_UARTID_SHIFT)
 
-static inline __attribute__((always_inline))
+static __always_inline
 u32 tegra_get_odmdata(void)
 {
 	u32 bctsize, bctptr, odmdata;
@@ -63,7 +64,7 @@ enum tegra_chiptype {
 	TEGRA20 = 0,
 };
 
-static inline __attribute__((always_inline))
+static __always_inline
 enum tegra_chiptype tegra_get_chiptype(void)
 {
 	u32 hidrev;
@@ -78,7 +79,7 @@ enum tegra_chiptype tegra_get_chiptype(void)
 	}
 }
 
-static inline __attribute__((always_inline))
+static __always_inline
 int tegra_get_num_cores(void)
 {
 	switch (tegra_get_chiptype()) {
@@ -92,7 +93,7 @@ int tegra_get_num_cores(void)
 }
 
 /* Runtime data */
-static inline __attribute__((always_inline))
+static __always_inline
 int tegra_cpu_is_maincomplex(void)
 {
 	u32 tag0;
@@ -102,7 +103,7 @@ int tegra_cpu_is_maincomplex(void)
 	return (tag0 & 0xff) == 0x55;
 }
 
-static inline __attribute__((always_inline))
+static __always_inline
 uint32_t tegra20_get_ramsize(void)
 {
 	switch ((tegra_get_odmdata() & T20_ODMDATA_RAMSIZE_MASK) >>
@@ -125,7 +126,7 @@ static long uart_id_to_base[] = {
 	TEGRA_UARTE_BASE,
 };
 
-static inline __attribute__((always_inline))
+static __always_inline
 long tegra20_get_debuguart_base(void)
 {
 	u32 odmdata;
@@ -152,7 +153,7 @@ long tegra20_get_debuguart_base(void)
 #define CRC_OSC_CTRL_OSC_FREQ_SHIFT	30
 #define CRC_OSC_CTRL_OSC_FREQ_MASK	(0x3 << CRC_OSC_CTRL_OSC_FREQ_SHIFT)
 
-static inline unsigned __attribute__((always_inline))
+static __always_inline
 int tegra_get_osc_clock(void)
 {
 	u32 osc_ctrl = readl(TEGRA_CLK_RESET_BASE + CRC_OSC_CTRL);
@@ -172,7 +173,7 @@ int tegra_get_osc_clock(void)
 	}
 }
 
-static inline __attribute__((always_inline))
+static __always_inline
 void tegra_cpu_lowlevel_setup(void)
 {
 	uint32_t r;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
