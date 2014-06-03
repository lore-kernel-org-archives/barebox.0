Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOR-0004WJ-Cu
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:11 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 5D7F118B425C
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:27 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:57 +0200
Message-Id: <1401827717-6420-11-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 10/30] tegra: add Tegra124 and AS3722 PMIC to lowlevel-dvc
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h | 55 +++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
index 9ae8784..1deae4e 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
@@ -40,6 +40,22 @@ void tegra_dvc_init(void)
 	writel(CRC_RST_DEV_H_DVC, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_H_CLR);
 }
 
+static __always_inline
+void tegra124_dvc_pinmux(void)
+{
+	u32 val;
+
+	/* disable tristate for pin PWR_I2C_SCL_PZ6 */
+	val = readl(TEGRA_APB_MISC_BASE + 0x32b4);
+	val &= ~(1 << 4);
+	writel(val, TEGRA_APB_MISC_BASE + 0x32b4);
+
+	/* disable tristate for pin PWR_I2C_SDA_PZ7 */
+	val = readl(TEGRA_APB_MISC_BASE + 0x32b8);
+	val &= ~(1 << 4);
+	writel(val, TEGRA_APB_MISC_BASE + 0x32b8);
+}
+
 #define TEGRA_I2C_CNFG		0x00
 #define TEGRA_I2C_CMD_ADDR0	0x04
 #define TEGRA_I2C_CMD_DATA1	0x0c
@@ -88,3 +104,42 @@ void tegra30_tps62361b_ramp_vddcore(void)
 	tegra_dvc_write_data(0x4603, TEGRA_I2C_SEND_2_BYTES);
 	tegra_ll_delay_usec(1000);
 }
+
+static __always_inline
+void tegra124_as3722_enable_essential_rails(u32 sd0voltage)
+{
+	/*
+	 * Bring up VDD_CPU via the AS3722 PMIC on the PWR I2C bus.
+	 * First set VDD to 1.0V, then enable the VDD regulator.
+	 */
+	tegra_dvc_write_addr(0x80, 2);
+	tegra_dvc_write_data(sd0voltage | 0x00, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(10 * 1000);
+
+	/*
+	 * Bring up VDD_GPU via the AS3722 PMIC on the PWR I2C bus.
+	 * First set VDD to 1.0V, then enable the VDD regulator.
+	 */
+	tegra_dvc_write_addr(0x80, 2);
+	tegra_dvc_write_data(0x2800 | 0x06, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(10 * 1000);
+
+	/*
+	 * Bring up VPP_FUSE via the AS3722 PMIC on the PWR I2C bus.
+	 * First set VDD to 1.2V, then enable the VDD regulator.
+	 */
+	tegra_dvc_write_addr(0x80, 2);
+	tegra_dvc_write_data(0x1000 | 0x12, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(10 * 1000);
+
+	/*
+	 * Bring up VDD_SDMMC via the AS3722 PMIC on the PWR I2C bus.
+	 * First set it to bypass 3.3V straight thru, then enable the regulator
+	 *
+	 * NOTE: We do this early because doing it later seems to hose the CPU
+	 * power rail/partition startup. Need to debug.
+	 */
+	tegra_dvc_write_addr(0x80, 2);
+	tegra_dvc_write_data(0x3f00 | 0x16, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(10 * 1000);
+}
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
