Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRks-0000Mp-Fx
 for barebox@lists.infradead.org; Sat, 09 Nov 2019 14:30:25 +0000
Received: from astat.fritz.box (a89-183-91-60.net-htp.de [89.183.91.60])
 by lynxeye.de (Postfix) with ESMTPA id 5C3C7E7426B
 for <barebox@lists.infradead.org>; Sat,  9 Nov 2019 15:28:44 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  9 Nov 2019 15:28:33 +0100
Message-Id: <20191109142837.82409-14-dev@lynxeye.de>
In-Reply-To: <20191109142837.82409-1-dev@lynxeye.de>
References: <20191109142837.82409-1-dev@lynxeye.de>
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
Subject: [PATCH v2 14/18] ARM: zynq: switch to DT based probing
To: barebox@lists.infradead.org

All the currently supported devices can now be probed
from the DT. Remove platform devices and switch to DT.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/board.c    | 24 -----------------------
 arch/arm/mach-zynq/Kconfig                |  3 +++
 arch/arm/mach-zynq/Makefile               |  2 +-
 arch/arm/mach-zynq/devices.c              | 13 ------------
 arch/arm/mach-zynq/include/mach/devices.h | 20 -------------------
 arch/arm/mach-zynq/zynq.c                 |  4 ----
 6 files changed, 4 insertions(+), 62 deletions(-)
 delete mode 100644 arch/arm/mach-zynq/devices.c
 delete mode 100644 arch/arm/mach-zynq/include/mach/devices.h

diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
index 722bda302e1f..f53dde47c204 100644
--- a/arch/arm/boards/avnet-zedboard/board.c
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -17,38 +17,14 @@
 #include <environment.h>
 #include <generated/mach-types.h>
 #include <init.h>
-#include <mach/devices.h>
 #include <mach/zynq7000-regs.h>
 #include <linux/sizes.h>
 
-static int zedboard_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0, SZ_512M);
-
-	return 0;
-}
-mem_initcall(zedboard_mem_init);
-
-static struct macb_platform_data macb_pdata = {
-	.phy_interface = PHY_INTERFACE_MODE_RGMII,
-	.phy_addr = 0x0,
-};
-
-static int zedboard_device_init(void)
-{
-	zynq_add_eth0(&macb_pdata);
-
-	return 0;
-}
-device_initcall(zedboard_device_init);
 
 static int zedboard_console_init(void)
 {
-	barebox_set_model("Avnet ZedBoard");
 	barebox_set_hostname("zedboard");
 
-	zynq_add_uart1();
-
 	return 0;
 }
 console_initcall(zedboard_console_init);
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index d35bd41232a1..944f325bcc08 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -16,8 +16,11 @@ config ARCH_ZYNQ7000
 	select CPU_V7
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 	select ARM_SMP_TWD
 	select HAS_MACB
+	select OFTREE
+	select OFDEVICE
 
 endchoice
 
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index b401c77983d3..3252247d176d 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1 +1 @@
-obj-y += zynq.o devices.o
+obj-y += zynq.o
diff --git a/arch/arm/mach-zynq/devices.c b/arch/arm/mach-zynq/devices.c
deleted file mode 100644
index 55e9433c517d..000000000000
--- a/arch/arm/mach-zynq/devices.c
+++ /dev/null
@@ -1,13 +0,0 @@
-#include <common.h>
-#include <driver.h>
-#include <mach/devices.h>
-
-struct device_d *zynq_add_uart(resource_size_t base, int id)
-{
-	return add_generic_device("cadence-uart", id, NULL, base, 0x1000, IORESOURCE_MEM, NULL);
-}
-
-struct device_d *zynq_add_eth(resource_size_t base, int id, struct macb_platform_data *pdata)
-{
-	return add_generic_device("macb", id, NULL, base, 0x1000, IORESOURCE_MEM, pdata);
-}
diff --git a/arch/arm/mach-zynq/include/mach/devices.h b/arch/arm/mach-zynq/include/mach/devices.h
deleted file mode 100644
index c9670b02f30c..000000000000
--- a/arch/arm/mach-zynq/include/mach/devices.h
+++ /dev/null
@@ -1,20 +0,0 @@
-#include <mach/zynq7000-regs.h>
-#include <platform_data/macb.h>
-
-struct device_d *zynq_add_uart(resource_size_t base, int id);
-struct device_d *zynq_add_eth(resource_size_t base, int id, struct macb_platform_data *pdata);
-
-static inline struct device_d *zynq_add_uart0(void)
-{
-	return zynq_add_uart((resource_size_t)ZYNQ_UART0_BASE_ADDR, 0);
-}
-
-static inline struct device_d *zynq_add_uart1(void)
-{
-	return zynq_add_uart((resource_size_t)ZYNQ_UART1_BASE_ADDR, 1);
-}
-
-static inline struct device_d *zynq_add_eth0(struct macb_platform_data *pdata)
-{
-	return zynq_add_eth((resource_size_t)ZYNQ_GEM0_BASE_ADDR, 0, pdata);
-}
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index ec22b16c91cd..ad06c624d90b 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -48,10 +48,6 @@ static int zynq_init(void)
 	writel(val, 0xf8f00000);
 	dmb();
 
-	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE + 0x100,
-			   0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("smp_twd", 0, NULL, CORTEXA9_SCU_TIMER_BASE_ADDR,
-				0x4000, IORESOURCE_MEM, NULL);
 	restart_handler_register_fn(zynq_restart_soc);
 
 	return 0;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
