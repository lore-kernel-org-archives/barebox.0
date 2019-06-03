Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsHS-0004ya-UY
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:06:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hXsHR-0007Ca-Fb
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:06:01 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hXsHR-0004Vm-2p
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:06:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jun 2019 21:05:57 +0200
Message-Id: <20190603190559.16715-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190603190559.16715-1-a.fatoum@pengutronix.de>
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/7] ARM: stm32mp: stm32mp157c-dk2: configure debug_ll UART
To: barebox@lists.infradead.org

This configures UART4 for use as the debug_ll UART,
whenever CONFIG_DEBUG_LL is defined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
index b8e5959bef83..7f66cbfa1224 100644
--- a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
+++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
@@ -5,6 +5,24 @@
 #include <mach/stm32.h>
 #include <debug_ll.h>
 
+#define RCC_MP_APB1ENSETR (STM32_RCC_BASE + 0x0A00)
+#define RCC_MP_AHB4ENSETR (STM32_RCC_BASE + 0x0A28)
+#define GPIOG_BASE 0x50008000
+
+static inline void setup_uart(void)
+{
+	/* UART4 clock enable */
+	setbits_le32(RCC_MP_APB1ENSETR, BIT(16));
+
+	/* GPIOG clock enable */
+	writel(BIT(6), RCC_MP_AHB4ENSETR);
+	/* GPIO configuration for EVAL board => UART4 TX = G11 */
+	writel(0xffbfffff, GPIOG_BASE + 0x00);
+	writel(0x00006000, GPIOG_BASE + 0x24);
+
+	putc_ll('>');
+}
+
 extern char __dtb_stm32mp157c_dk2_start[];
 
 ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
@@ -13,6 +31,9 @@ ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	fdt = __dtb_stm32mp157c_dk2_start + get_runtime_offset();
 
 	barebox_arm_entry(STM32_DDR_BASE, SZ_512M, fdt);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
