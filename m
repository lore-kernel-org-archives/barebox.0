Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4u-0002Ms-Q3
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:32 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id A1BE5E74251
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:25 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:07 +0100
Message-Id: <20191107211119.68064-7-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 06/18] ARM: zynq: zedboard: provide DTB
To: barebox@lists.infradead.org

Provide the DTB to allow devices to be probed from there,
instead of board code.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 8 +++++++-
 arch/arm/dts/Makefile                     | 1 +
 arch/arm/dts/zynq-zed.dts                 | 7 +++++++
 3 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/zynq-zed.dts

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index cf3c4ebd0c7e..ae279e4e64af 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -27,8 +27,13 @@
 #define PLL_DDR_LOCK	(1 << 1)
 #define PLL_IO_LOCK	(1 << 2)
 
+extern char __dtb_zynq_zed_start[];
+
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
+
+	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
+
 	/* open sesame */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
 
@@ -257,5 +262,6 @@ void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 	writel(0x0000767B, ZYNQ_SLCR_LOCK);
 
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0, SZ_512M, NULL);
+
+	barebox_arm_entry(0, SZ_512M, fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 294a0bfa5525..c097c10186a4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -143,5 +143,6 @@ lwl-dtb-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.
 lwl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 lwl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
+lwl-dtb-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/zynq-zed.dts b/arch/arm/dts/zynq-zed.dts
new file mode 100644
index 000000000000..52d68332499a
--- /dev/null
+++ b/arch/arm/dts/zynq-zed.dts
@@ -0,0 +1,7 @@
+#include <arm/zynq-zed.dts>
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+	};
+};
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
