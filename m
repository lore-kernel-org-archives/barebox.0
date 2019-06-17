Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000SB-MH
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j6-7t
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GO-HK
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:47 +0200
Message-Id: <20190617150751.3421-9-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 08/12] ARM: stm32mp157c-dk2: add board-specific sysconf
 fixups
To: barebox@lists.infradead.org

This imports the syscfg configuration done in the vendor U-Boot's
board_init into barebox. Only part missing is the CONFIG_DM_REGULATOR
protected clause that adjusts SYSCFG_IOCTRLSETR for operation above
~50MHz. These adjustments are only undertaken if VDD < 2.7V as they're
unsafe otherwise. As the barebox port doesn't yet support querying the
regulator, skip these adjustments for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/board.c | 94 +++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index cbfe21db6a8c..5572231d525c 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -4,6 +4,55 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <mach/stm32.h>
+#include <mfd/syscon.h>
+
+#define SYSCFG_BOOTR		0x00
+#define SYSCFG_PMCSETR		0x04
+#define SYSCFG_IOCTRLSETR	0x18
+#define SYSCFG_ICNR		0x1C
+#define SYSCFG_CMPCR		0x20
+#define SYSCFG_CMPENSETR	0x24
+#define SYSCFG_PMCCLRR		0x44
+
+#define SYSCFG_BOOTR_BOOT_MASK		GENMASK(2, 0)
+#define SYSCFG_BOOTR_BOOTPD_SHIFT	4
+
+#define SYSCFG_IOCTRLSETR_HSLVEN_TRACE		BIT(0)
+#define SYSCFG_IOCTRLSETR_HSLVEN_QUADSPI	BIT(1)
+#define SYSCFG_IOCTRLSETR_HSLVEN_ETH		BIT(2)
+#define SYSCFG_IOCTRLSETR_HSLVEN_SDMMC		BIT(3)
+#define SYSCFG_IOCTRLSETR_HSLVEN_SPI		BIT(4)
+
+#define SYSCFG_CMPCR_SW_CTRL		BIT(1)
+#define SYSCFG_CMPCR_READY		BIT(8)
+
+#define SYSCFG_CMPENSETR_MPU_EN		BIT(0)
+
+#define SYSCFG_PMCSETR_ETH_CLK_SEL	BIT(16)
+#define SYSCFG_PMCSETR_ETH_REF_CLK_SEL	BIT(17)
+
+#define SYSCFG_PMCSETR_ETH_SELMII	BIT(20)
+
+#define SYSCFG_PMCSETR_ETH_SEL_MASK	GENMASK(23, 16)
+#define SYSCFG_PMCSETR_ETH_SEL_GMII_MII	(0 << 21)
+#define SYSCFG_PMCSETR_ETH_SEL_RGMII	(1 << 21)
+#define SYSCFG_PMCSETR_ETH_SEL_RMII	(4 << 21)
+
+#define pr_debug_syscfg(syscfg, reg) do {			\
+	int ret;						\
+	u32 val;						\
+								\
+	if (MSG_DEBUG > LOGLEVEL)				\
+		break;						\
+								\
+	ret = regmap_read(syscfg, reg, &val);			\
+								\
+	if (ret == 0)						\
+		pr_debug(#reg "= 0x%08x\n", val);		\
+	else							\
+		pr_debug(#reg "= ERROR (%d)\n", ret);		\
+} while (0)
+
 
 static int dk2_postcore_init(void)
 {
@@ -15,3 +64,48 @@ static int dk2_postcore_init(void)
 	return 0;
 }
 mem_initcall(dk2_postcore_init);
+
+static int dk2_sysconf_init(void)
+{
+	struct regmap *syscfg;
+	u32 reg;
+
+	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
+		return 0;
+
+	// TODO this function should be skipped if TF-A is used as first stage.
+	// Any way to determine this at runtime?
+
+	syscfg = syscon_regmap_lookup_by_compatible("st,stm32mp157-syscfg");
+
+	/* interconnect update : select master using the port 1 */
+	/* LTDC = AXI_M9 */
+	/* GPU  = AXI_M8 */
+	/* for now information is hardcoded */
+	regmap_write(syscfg, SYSCFG_ICNR, BIT(9));
+	pr_debug_syscfg(syscfg, SYSCFG_ICNR);
+
+	/* disable Pull-Down for boot pin connected to VDD */
+	regmap_read(syscfg, SYSCFG_BOOTR, &reg);
+	reg &= ~(SYSCFG_BOOTR_BOOT_MASK << SYSCFG_BOOTR_BOOTPD_SHIFT);
+	reg |= (reg & SYSCFG_BOOTR_BOOT_MASK) << SYSCFG_BOOTR_BOOTPD_SHIFT;
+	regmap_write(syscfg, SYSCFG_BOOTR, reg);
+	pr_debug_syscfg(syscfg, SYSCFG_BOOTR);
+
+	// TODO: Port High Speed Low Voltage Pad mode Enable from U-Boot
+
+	/* activate automatic I/O compensation
+	 * warning: need to ensure CSI enabled and ready in clock driver
+	 */
+	regmap_write(syscfg, SYSCFG_CMPENSETR, SYSCFG_CMPENSETR_MPU_EN);
+
+	do {
+		regmap_read(syscfg, SYSCFG_CMPCR, &reg);
+	} while (!(reg & SYSCFG_CMPCR_READY));
+
+	regmap_update_bits(syscfg, SYSCFG_CMPCR, SYSCFG_CMPCR_SW_CTRL, 0);
+	pr_debug_syscfg(syscfg, SYSCFG_CMPCR);
+
+	return 0;
+}
+coredevice_initcall(dk2_sysconf_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
