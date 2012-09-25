Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGe7M-0007TI-3k
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 23:00:42 +0000
Received: by wgbdt14 with SMTP id dt14so4328278wgb.18
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 16:00:38 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Wed, 26 Sep 2012 00:59:54 +0200
Message-Id: <1348613994-1793-8-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
References: <[RFC][PATCH] archosg9: add support for tablet>
 <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 7/7] Add support for Archos G9 tablet
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 arch/arm/Makefile                         |   1 +
 arch/arm/boards/archosg9/Makefile         |   1 +
 arch/arm/boards/archosg9/board.c          |  58 ++++++++
 arch/arm/boards/archosg9/env/bin/init     |  18 +++
 arch/arm/boards/archosg9/env/config       |   2 +
 arch/arm/boards/archosg9/lowlevel.c       | 126 +++++++++++++++++
 arch/arm/boards/archosg9/mux.c            | 226 ++++++++++++++++++++++++++++++
 arch/arm/configs/archosg9_defconfig       |  70 +++++++++
 arch/arm/configs/archosg9_xload_defconfig |  25 ++++
 arch/arm/mach-omap/Kconfig                |   9 ++
 arch/arm/tools/mach-types                 |   1 +
 11 files changed, 537 insertions(+)
 create mode 100644 arch/arm/boards/archosg9/Makefile
 create mode 100644 arch/arm/boards/archosg9/board.c
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/lowlevel.c
 create mode 100644 arch/arm/boards/archosg9/mux.c
 create mode 100644 arch/arm/configs/archosg9_defconfig
 create mode 100644 arch/arm/configs/archosg9_xload_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8e660be..8598005 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -100,6 +100,7 @@ board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
 board-$(CONFIG_MACH_BEAGLE)			:= beagle
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
 board-$(CONFIG_MACH_PANDA)			:= panda
+board-$(CONFIG_MACH_ARCHOSG9)			:= archosg9
 board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
new file mode 100644
index 0000000..c55e26e
--- /dev/null
+++ b/arch/arm/boards/archosg9/Makefile
@@ -0,0 +1 @@
+obj-y += board.o lowlevel.o mux.o
diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
new file mode 100644
index 0000000..5ddb953
--- /dev/null
+++ b/arch/arm/boards/archosg9/board.c
@@ -0,0 +1,58 @@
+#include <common.h>
+#include <init.h>
+#include <ns16550.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <mach/silicon.h>
+#include <sizes.h>
+#include <i2c/i2c.h>
+#include <gpio.h>
+#ifdef CONFIG_USB_BOOT
+#include <mach/omap4_rom_usb.h>
+#endif
+
+#ifdef CONFIG_DRIVER_SERIAL_NS16550
+static struct NS16550_plat serial_plat = {
+	.clock = 48000000, /* 48MHz (APLL96/2) */
+	.shift = 2,
+};
+#endif
+static int archosg9_console_init(void){
+#ifdef CONFIG_USB_BOOT
+    usb_open();
+    usb_puts("USB communications initialized\n");
+# ifdef CONFIG_DRIVER_SERIAL_USB
+    add_generic_device("serial_usb", DEVICE_ID_DYNAMIC, NULL, 0, 0, 0, NULL);
+# endif
+#endif
+#if defined (CONFIG_DRIVER_SERIAL_NS16550) && ( !defined (CONFIG_OMAP_BUILD_IFT) || !defined (CONFIG_DRIVER_SERIAL_USB) )
+    gpio_direction_output( 41, 0); // gps_disable
+    gpio_direction_output( 34, 1); // 1v8_pwron
+    add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP44XX_UART1_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
+#endif
+    return 0;
+}
+console_initcall(archosg9_console_init);
+
+static int archosg9_mem_init(void){
+	arm_add_mem_device("ram0", 0x80000000, SZ_1G);
+	return 0;
+}
+mem_initcall(archosg9_mem_init);
+
+static struct i2c_board_info i2c_devices[] = {
+	{ I2C_BOARD_INFO("twl6030", 0x48), },
+};
+
+static int archosg9_devices_init(void){
+    i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+    add_generic_device("i2c-omap"  , DEVICE_ID_DYNAMIC, NULL, OMAP44XX_I2C1_BASE, 0x100, IORESOURCE_MEM, NULL);
+    add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP44XX_MMC1_BASE, SZ_4K, IORESOURCE_MEM, NULL);
+ /* add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP44XX_MMC2_BASE, SZ_4K, IORESOURCE_MEM, NULL); */
+
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_OMAP4_ARCHOSG9);
+
+	return 0;
+}
+device_initcall(archosg9_devices_init);
diff --git a/arch/arm/boards/archosg9/env/bin/init b/arch/arm/boards/archosg9/env/bin/init
new file mode 100644
index 0000000..4c0f244
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/bin/init
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+if [ -n $autoboot_timeout ]; then
+	echo
+	echo -n "Hit any key to stop autoboot: "
+	timeout -a $autoboot_timeout
+	if [ $? != 0 ]; then
+		exit
+	fi
+fi
+mkdir /usb
+mount -t usbbootfs usbboot /usb
+bootm /usb/boot/zImage
diff --git a/arch/arm/boards/archosg9/env/config b/arch/arm/boards/archosg9/env/config
new file mode 100644
index 0000000..9e8c1db
--- /dev/null
+++ b/arch/arm/boards/archosg9/env/config
@@ -0,0 +1,2 @@
+autoboot_timeout=3
+bootargs="earlyprintk=serial console=ttyO1,57600n8"
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
new file mode 100644
index 0000000..312edd5
--- /dev/null
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -0,0 +1,126 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+#include <io.h>
+#include <mach/omap4-mux.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-clock.h>
+#include <mach/syslib.h>
+#include <asm/barebox-arm.h>
+
+#define TPS62361_VSEL0_GPIO    7
+
+void set_muxconf_regs(void);
+
+static const struct ddr_regs ddr_regs_400_mhz_2cs = {
+    .tim1        = 0x10EB0662,
+    .tim2        = 0x20370DD2,
+    .tim3        = 0x00B1C33F,
+    .phy_ctrl_1  = 0x849FF408,
+    .ref_ctrl    = 0x00000618,
+    .config_init = 0x80000EB9,
+    .config_final= 0x80001AB9,
+    .zq_config   = 0xD00B3215,
+    .mr1         = 0x83,
+    .mr2         = 0x4
+};
+
+static void noinline archosg9_init_lowlevel(void)
+{
+    struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
+    struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU600;
+    struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
+    struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
+    struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
+    struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
+
+    writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
+
+    /* Configure all DPLL's at 100% OPP */
+    omap4_configure_mpu_dpll(&mpu);
+    omap4_configure_iva_dpll(&iva);
+    omap4_configure_per_dpll(&per);
+    omap4_configure_abe_dpll(&abe);
+    omap4_configure_usb_dpll(&usb);
+
+    /* Enable all clocks */
+    omap4_enable_all_clocks();
+
+    set_muxconf_regs();
+
+    omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
+
+    /* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
+    omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+}
+
+void board_init_lowlevel(void)
+{
+    u32 r;
+
+    r = 0x4030D000;
+        __asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+    archosg9_init_lowlevel();
+}
+
+
+/*
+    / * Memory test * /
+    / *memtest((void*)0x82000000, 8*1024*1024);* /
+    / * Full memory test * /
+    / *memtest((void*)0x80000000, 1024*1024*1024);* /
+static unsigned prbs(unsigned state){
+    const unsigned POL = (1<<(32-1)) | (1<<(31-1)) | (1<<(20-1)) | (1<<(19-1)) | (1<<(13-1)) | (1<<(1-1));
+    unsigned i;
+    for(i=0; i<32; i++){
+        if(state&1) state = (state >> 1) ^ POL;
+        else        state =  state >> 1;
+    }
+    return state;
+}
+static void memtest(void *x, unsigned count) {
+    unsigned *w = x;
+    unsigned n, m;
+    unsigned chk;
+    count /= 8;
+
+#define PRINT early_printf
+// #define PRINT usb_puts
+    PRINT("memtest write\n");
+    for(chk=0xa5a5a5a5, n=0, m=count; n<count; n++, m++) {
+        chk = prbs(chk);
+        w[n] =  chk;
+        w[m] = ~chk;
+    }
+    PRINT("memtest read\n");
+    for(n=0, m=count; n<count; n++, m++) {
+        if(w[n] != ~w[m]){
+            PRINT("ERROR [%08X]%08X != [%08X]%08X\n", (unsigned) (w+n), w[n], (unsigned) (w+m), ~w[m]);
+            return;
+        }
+    }
+    PRINT("memtest read2\n");
+    for(chk=0xa5a5a5a5, n=0, m=count; n<count; n++, m++) {
+        chk = prbs(chk);
+        if(w[n] != chk || w[m] != ~chk){
+            PRINT("ERROR [%08X]%08X != [%08X]%08X != %08X\n", (unsigned) (w+n), w[n], (unsigned) (w+m), ~w[m], chk);
+            return;
+        }
+    }
+    PRINT("OK!\n");
+}
+*/
diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
new file mode 100644
index 0000000..fb66f97
--- /dev/null
+++ b/arch/arm/boards/archosg9/mux.c
@@ -0,0 +1,226 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/omap4-silicon.h>
+#include <mach/omap4-mux.h>
+
+static const struct pad_conf_entry core_padconf_array[] = {
+    { GPMC_AD0            ,                              IEN|PTU|M1 }, /* sdmmc2_dat0         */ /* internal FLASH */
+    { GPMC_AD1            ,                              IEN|PTU|M1 }, /* sdmmc2_dat1         */ /* internal FLASH */
+    { GPMC_AD2            ,                              IEN|PTU|M1 }, /* sdmmc2_dat2         */ /* internal FLASH */
+    { GPMC_AD3            ,                              IEN|PTU|M1 }, /* sdmmc2_dat3         */ /* internal FLASH */
+    { GPMC_AD4            ,                              IEN|PTU|M1 }, /* sdmmc2_dat4         */ /* internal FLASH */
+    { GPMC_AD5            ,                              IEN|PTU|M1 }, /* sdmmc2_dat5         */ /* internal FLASH */
+    { GPMC_AD6            ,                              IEN|PTU|M1 }, /* sdmmc2_dat6         */ /* internal FLASH */
+    { GPMC_AD7            ,                              IEN|PTU|M1 }, /* sdmmc2_dat7         */ /* internal FLASH */
+    { GPMC_AD8            ,                              IEN|PTD|M3 }, /* gpio_32             */
+    { GPMC_AD9            ,                              IEN|PTU|M0 }, /* gpmc_ad9            */
+    { GPMC_AD10           ,                              IEN|PTU|M3 }, /* gpio_34             */ /* 1v8_pwron */
+    { GPMC_AD11           ,                              IEN|PTU|M3 }, /* gpio_35             */ /* vcc_pwron */
+    { GPMC_AD12           ,                              IEN    |M3 }, /* gpio_36             */ /* 5v_pwron */
+    { GPMC_AD13           ,                              IEN    |M3 }, /* gpio_37             */ /* hdmi_pwr */
+    { GPMC_AD14           ,                              IEN    |M3 }, /* gpio_38             */ /* lcd_pwon */
+    { GPMC_AD15           ,                              IEN    |M3 }, /* gpio_39             */ /* lvds_en */
+    { GPMC_A16            ,                              IEN    |M3 }, /* gpio_40             */ /* 3g_enable */
+    { GPMC_A17            ,                              IEN    |M3 }, /* gpio_41             */ /* gps_enable */
+    { GPMC_A18            ,                              IEN    |M3 }, /* gpio_42             */ /* ehci_enable */
+    { GPMC_A19            ,                              IEN    |M3 }, /* gpio_43             */ /* volume up */
+    { GPMC_A20            ,                              IEN    |M3 }, /* gpio_44             */ /* volume down */
+    { GPMC_A21            ,                              IEN|PTU|M3 }, /* gpio_45             */ /* accel_int1 */
+    { GPMC_A22            ,                              IEN|PTD|M1 }, /* kpd_col6            */
+    { GPMC_A23            ,                              IEN|PTD|M1 }, /* kpd_col7            */
+    { GPMC_A24            ,                              IEN    |M3 }, /* gpio_48             */ /* vbus_detect */
+    { GPMC_A25            ,                              IEN|PTU|M3 }, /* gpio_49             */ /* id */
+    { GPMC_NCS0           ,                              IEN|PTU|M0 }, /* gpmc_ncs0           */
+    { GPMC_NCS1           ,                              IEN    |M3 }, /* gpio_51             */ /* compass_data_ready */
+    { GPMC_NCS2           ,                              IEN|PTU|M7 }, /* safe_mode           */
+    { GPMC_NCS3           ,                              IEN    |M3 }, /* gpio_53             */ /* lcd_rst */
+    { GPMC_NWP            ,                              IEN|PTD|M0 }, /* gpmc_nwp            */
+    { GPMC_CLK            ,                              IEN|PTD|M0 }, /* gpmc_clk            */
+    { GPMC_NADV_ALE       ,                              IEN|PTD|M0 }, /* gpmc_nadv_ale       */
+    { GPMC_NOE            ,                              IEN|PTU|M1 }, /* sdmmc2_clk          */ /* internal FLASH */
+    { GPMC_NWE            ,                              IEN|PTU|M1 }, /* sdmmc2_cmd          */ /* internal FLASH */
+    { GPMC_NBE0_CLE       ,                              IEN|PTD|M0 }, /* gpmc_nbe0_cle       */
+    { GPMC_NBE1           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { GPMC_WAIT0          ,                              IEN|PTU|M0 }, /* gpmc_wait0          */
+    { GPMC_WAIT1          ,                              IEN    |M3 }, /* gpio_62             */ /* camera_reset */
+    { GPMC_WAIT2          ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { GPMC_NCS4           ,                                      M3 }, /* gpio_101            */ /* lcd_stdby */
+    { GPMC_NCS5           ,                              IEN    |M3 }, /* gpio_102            */ /* wifi_irq */
+    { GPMC_NCS6           ,                                      M3 }, /* gpio_103            */ /* wifi_power */
+    { GPMC_NCS7           ,                              IEN    |M3 }, /* gpio_104            */ /* bt_power */
+    { GPIO63              ,                              IEN|PTD|M3 }, /* gpio_63             */ /* hdmi_hpd ?? */
+    { GPIO64              ,                              IEN    |M0 }, /*                     */
+    { GPIO65              ,                              IEN    |M0 }, /*                     */
+    { GPIO66              ,                              IEN    |M0 }, /*                     */
+    { CSI21_DX0           ,                              IEN    |M0 }, /* csi21_dx0           */
+    { CSI21_DY0           ,                              IEN    |M0 }, /* csi21_dy0           */
+    { CSI21_DX1           ,                              IEN    |M0 }, /* csi21_dx1           */
+    { CSI21_DY1           ,                              IEN    |M0 }, /* csi21_dy1           */
+    { CSI21_DX2           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI21_DY2           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI21_DX3           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI21_DY3           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI21_DX4           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI21_DY4           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI22_DX0           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI22_DY0           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI22_DX1           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI22_DY1           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CAM_SHUTTER         ,                                  PTD|M0 }, /* cam_shutter         */
+    { CAM_STROBE          ,                                  PTD|M0 }, /* cam_strobe          */
+    { CAM_GLOBALRESET     ,                                  PTD|M3 }, /* gpio_83             */
+    { USBB1_ULPITLL_CLK   ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_clk   */
+    { USBB1_ULPITLL_STP   ,                                      M4 }, /* usbb1_ulpiphy_stp   */
+    { USBB1_ULPITLL_DIR   ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dir   */
+    { USBB1_ULPITLL_NXT   ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_nxt   */
+    { USBB1_ULPITLL_DAT0  , WAKEUP_EN                   |IEN|PTD|M4 }, /* usbb1_ulpiphy_dat0  */
+    { USBB1_ULPITLL_DAT1  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat1  */
+    { USBB1_ULPITLL_DAT2  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat2  */
+    { USBB1_ULPITLL_DAT3  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat3  */
+    { USBB1_ULPITLL_DAT4  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat4  */
+    { USBB1_ULPITLL_DAT5  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat5  */
+    { USBB1_ULPITLL_DAT6  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat6  */
+    { USBB1_ULPITLL_DAT7  ,                              IEN|PTD|M4 }, /* usbb1_ulpiphy_dat7  */
+    { USBB1_HSIC_DATA     ,                                      M0 }, /* usbb1_hsic_data     */
+    { USBB1_HSIC_STROBE   ,                                      M0 }, /* usbb1_hsic_strobe   */
+    { USBC1_ICUSB_DP      ,                                      M0 }, /* usbc1_icusb_dp      */
+    { USBC1_ICUSB_DM      ,                                      M0 }, /* usbc1_icusb_dm      */
+    { SDMMC1_CLK          ,                                  PTU|M0 }, /* sdmmc1_clk          */ /* SD card */
+    { SDMMC1_CMD          ,                              IEN|PTU|M0 }, /* sdmmc1_cmd          */ /* SD card */
+    { SDMMC1_DAT0         ,                              IEN|PTU|M0 }, /* sdmmc1_dat0         */ /* SD card */
+    { SDMMC1_DAT1         ,                              IEN|PTU|M0 }, /* sdmmc1_dat1         */ /* SD card */
+    { SDMMC1_DAT2         ,                              IEN|PTU|M0 }, /* sdmmc1_dat2         */ /* SD card */
+    { SDMMC1_DAT3         ,                              IEN|PTU|M0 }, /* sdmmc1_dat3         */ /* SD card */
+    { SDMMC1_DAT4         ,                              IEN|PTU|M0 }, /* sdmmc1_dat4         */ /* SD card */
+    { SDMMC1_DAT5         ,                              IEN|PTU|M0 }, /* sdmmc1_dat5         */ /* SD card */
+    { SDMMC1_DAT6         ,                              IEN|PTU|M0 }, /* sdmmc1_dat6         */ /* SD card */
+    { SDMMC1_DAT7         ,                              IEN|PTU|M0 }, /* sdmmc1_dat7         */ /* SD card */
+    { ABE_MCBSP2_CLKX     ,                                      M3 }, /* gpio_110            */ /* tsp_pwr_gpio */
+    { ABE_MCBSP2_DR       ,                              IEN    |M3 }, /* gpio_111            */ /* vbus_musb_pwron */
+    { ABE_MCBSP2_DX       , WAKEUP_EN                   |IEN|PTU|M3 }, /* gpio_112            */ /* tsp_irq_gpio */
+    { ABE_MCBSP2_FSX      ,                              IEN|PTU|M3 }, /* gpio_113            */ /* vbus_flag */
+    { ABE_MCBSP1_CLKX     ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { ABE_MCBSP1_DR       ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { ABE_MCBSP1_DX       ,                                      M0 }, /* abe_mcbsp1_dx       */
+    { ABE_MCBSP1_FSX      ,                              IEN    |M0 }, /* abe_mcbsp1_fsx      */
+    { ABE_PDM_UL_DATA     ,                              IEN    |M0 }, /* abe_pdm_ul_data     */
+    { ABE_PDM_DL_DATA     ,                                      M0 }, /* abe_pdm_dl_data     */
+    { ABE_PDM_FRAME       ,                              IEN    |M0 }, /* abe_pdm_frame       */
+    { ABE_PDM_LB_CLK      ,                              IEN    |M0 }, /* abe_pdm_lb_clk      */
+    { ABE_CLKS            ,                              IEN    |M0 }, /* abe_clks            */
+    { ABE_DMIC_CLK1       ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { ABE_DMIC_DIN1       ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { ABE_DMIC_DIN2       ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { ABE_DMIC_DIN3       ,                              IEN|PTD|M7 }, /* safe_mode           */ /* bkl_en on gpio_122 ?? */
+    { UART2_CTS           , WAKEUP_EN|OFF_PU|OFF_IN             |M0 }, /* uart2_cts           */
+    { UART2_RTS           ,           OFF_PU|OFF_IN             |M7 }, /* safe_mode           */
+    { UART2_RX            ,                              IEN|PTU|M0 }, /* uart2_rx            */
+    { UART2_TX            ,                                      M0 }, /* uart2_tx            */
+    { HDQ_SIO             ,                                      M3 }, /* gpio_127            */ /* audio_power_on */
+    { I2C1_SCL            ,                              IEN    |M0 }, /* i2c1_scl            */
+    { I2C1_SDA            ,                              IEN    |M0 }, /* i2c1_sda            */
+    { I2C2_SCL            ,                              IEN    |M0 }, /* i2c2_scl            */
+    { I2C2_SDA            ,                              IEN    |M0 }, /* i2c2_sda            */
+    { I2C3_SCL            ,                              IEN    |M0 }, /* i2c3_scl            */
+    { I2C3_SDA            ,                              IEN    |M0 }, /* i2c3_sda            */
+    { I2C4_SCL            ,                              IEN    |M0 }, /* i2c4_scl            */
+    { I2C4_SDA            ,                              IEN    |M0 }, /* i2c4_sda            */
+    { MCSPI1_CLK          ,                              IEN    |M0 }, /* mcspi1_clk          */
+    { MCSPI1_SOMI         ,                              IEN    |M0 }, /* mcspi1_somi         */
+    { MCSPI1_SIMO         ,                              IEN    |M0 }, /* mcspi1_simo         */
+    { MCSPI1_CS0          ,                              IEN|PTD|M0 }, /* mcspi1_cs0          */
+    { MCSPI1_CS1          , WAKEUP_EN                   |IEN    |M1 }, /* uart1_rx            */
+    { MCSPI1_CS2          ,                                      M3 }, /* gpio_139            */
+    { MCSPI1_CS3          ,                              IEN|PTU|M7 }, /* safe_mode           */
+    { UART3_CTS_RCTX      ,                                      M1 }, /* uart1_tx            */
+    { UART3_RTS_SD        ,                                      M0 }, /* uart3_rts_sd        */
+    { UART3_RX_IRRX       ,                              IEN|PTU|M7 }, /* safe_mode           */
+    { UART3_TX_IRTX       ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { SDMMC5_CLK          ,                                  PTU|M0 }, /* sdmmc5_clk          */
+    { SDMMC5_CMD          ,                              IEN|PTU|M0 }, /* sdmmc5_cmd          */
+    { SDMMC5_DAT0         ,                              IEN|PTU|M0 }, /* sdmmc5_dat0         */
+    { SDMMC5_DAT1         ,                              IEN|PTU|M0 }, /* sdmmc5_dat1         */
+    { SDMMC5_DAT2         ,                              IEN|PTU|M0 }, /* sdmmc5_dat2         */
+    { SDMMC5_DAT3         ,                              IEN|PTU|M0 }, /* sdmmc5_dat3         */
+    { MCSPI4_CLK          ,                              IEN|PTU|M1 }, /* sdmmc4_clk          */
+    { MCSPI4_SIMO         ,                              IEN|PTU|M1 }, /* sdmmc4_cmd          */
+    { MCSPI4_SOMI         ,                              IEN|PTU|M1 }, /* sdmmc4_dat0         */
+    { MCSPI4_CS0          ,                              IEN|PTU|M1 }, /* sdmmc4_dat3         */
+    { UART4_RX            ,                              IEN|PTU|M1 }, /* sdmmc4_dat2         */
+    { UART4_TX            ,                              IEN|PTU|M1 }, /* sdmmc4_dat1         */
+    { USBB2_ULPITLL_CLK   ,                                      M3 }, /* gpio_157            */
+    { USBB2_ULPITLL_STP   ,                                      M5 }, /* dispc2_data23       */
+    { USBB2_ULPITLL_DIR   ,                                      M5 }, /* dispc2_data22       */
+    { USBB2_ULPITLL_NXT   ,                                      M5 }, /* dispc2_data21       */
+    { USBB2_ULPITLL_DAT0  ,                                      M5 }, /* dispc2_data20       */
+    { USBB2_ULPITLL_DAT1  ,                                      M5 }, /* dispc2_data19       */
+    { USBB2_ULPITLL_DAT2  ,                                      M5 }, /* dispc2_data18       */
+    { USBB2_ULPITLL_DAT3  ,                                      M5 }, /* dispc2_data15       */
+    { USBB2_ULPITLL_DAT4  ,                                      M5 }, /* dispc2_data14       */
+    { USBB2_ULPITLL_DAT5  ,                                      M5 }, /* dispc2_data13       */
+    { USBB2_ULPITLL_DAT6  ,                                      M5 }, /* dispc2_data12       */
+    { USBB2_ULPITLL_DAT7  ,                                      M5 }, /* dispc2_data11       */
+    { USBB2_HSIC_DATA     ,                                      M3 }, /* gpio_169            */
+    { USBB2_HSIC_STROBE   ,                                      M3 }, /* gpio_170            */
+    { KPD_COL3            ,                              IEN|PTD|M1 }, /* kpd_col0            */
+    { KPD_COL4            ,                              IEN|PTD|M1 }, /* kpd_col1            */
+    { KPD_COL5            ,                              IEN|PTD|M1 }, /* kpd_col2            */
+    { KPD_COL0            ,                              IEN|PTU|M3 }, /* gpio_174            */ /* accel_int2 */
+    { KPD_COL1            ,                              IEN|PTD|M3 }, /* gpio_0              */ /* tsp_shtdwn_gpio */
+    { KPD_COL2            ,                              IEN|PTD|M3 }, /* gpio_1              */
+    { KPD_ROW3            ,                              IEN|PTD|M1 }, /* kpd_row0            */
+    { KPD_ROW4            ,                              IEN|PTD|M1 }, /* kpd_row1            */
+    { KPD_ROW5            ,                              IEN|PTD|M1 }, /* kpd_row2            */
+    { KPD_ROW0            ,                              IEN|PTD|M1 }, /* kpd_row3            */
+    { KPD_ROW1            ,                              IEN|PTD|M1 }, /* kpd_row4            */
+    { KPD_ROW2            ,                              IEN|PTD|M1 }, /* kpd_row5            */
+    { USBA0_OTG_CE        ,                                  PTU|M0 }, /* usba0_otg_ce        */
+    { USBA0_OTG_DP        ,                                      M0 }, /* usba0_otg_dp        */
+    { USBA0_OTG_DM        ,                                      M0 }, /* usba0_otg_dm        */
+    { FREF_CLK1_OUT       ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { FREF_CLK2_OUT       ,                                      M0 }, /* fref_clk2_out       */
+    { SYS_NIRQ1           , WAKEUP_EN                   |IEN|PTU|M0 }, /* sys_nirq1           */
+    { SYS_NIRQ2           ,                              IEN|PTU|M0 }, /* sys_nirq2           */ /* audio_irq */
+    { SYS_BOOT0           ,                              IEN|PTD|M0 }, /* sys_boot0           */
+    { SYS_BOOT1           ,                              IEN|PTD|M0 }, /* sys_boot1           */
+    { SYS_BOOT2           ,                              IEN|PTD|M0 }, /* sys_boot2           */
+    { SYS_BOOT3           ,                              IEN|PTD|M0 }, /* sys_boot3           */
+    { SYS_BOOT4           ,                              IEN|PTD|M0 }, /* sys_boot4           */
+    { SYS_BOOT5           ,                              IEN|PTD|M0 }, /* sys_boot5           */
+    { DPM_EMU0            ,                              IEN|PTU|M0 }, /* dpm_emu0            */
+    { DPM_EMU1            ,                              IEN    |M3 }, /* gpio_12             */ /* lcd_avdd_en */
+    { DPM_EMU2            ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { DPM_EMU3            ,                                      M5 }, /* dispc2_data10       */
+    { DPM_EMU4            ,                                      M5 }, /* dispc2_data9        */
+    { DPM_EMU5            ,                                      M5 }, /* dispc2_data16       */
+    { DPM_EMU6            ,                                      M5 }, /* dispc2_data17       */
+    { DPM_EMU7            ,                                      M5 }, /* dispc2_hsync        */
+    { DPM_EMU8            ,                                      M5 }, /* dispc2_pclk         */
+    { DPM_EMU9            ,                                      M5 }, /* dispc2_vsync        */
+    { DPM_EMU10           ,                                      M5 }, /* dispc2_de           */
+    { DPM_EMU11           ,                                      M5 }, /* dispc2_data8        */
+    { DPM_EMU12           ,                                      M5 }, /* dispc2_data7        */
+    { DPM_EMU13           ,                                      M5 }, /* dispc2_data6        */
+    { DPM_EMU14           ,                                      M5 }, /* dispc2_data5        */
+    { DPM_EMU15           ,                                      M5 }, /* dispc2_data4        */
+    { DPM_EMU16           ,                                      M5 }, /* dispc2_data3        */
+    { DPM_EMU17           ,                                      M5 }, /* dispc2_data2        */
+    { DPM_EMU18           ,                                      M5 }, /* dispc2_data1        */
+    { DPM_EMU19           ,                                      M5 }, /* dispc2_data0        */
+    { CSI22_DX2           ,                              IEN|PTD|M7 }, /* safe_mode           */
+    { CSI22_DY2           ,                              IEN|PTD|M7 }, /* safe_mode           */
+};
+
+static const struct pad_conf_entry wkup_padconf_array[] = {
+    { SR_SCL               , IEN        }, /* sr_scl              */
+    { SR_SDA               , IEN        }, /* sr_sda              */
+    { FREF_CLK0_OUT        ,         M0 }, /* fref_clk0_out       */
+    { FREF_CLK3_REQ        ,         M3 }, /* gpio_wk30           */
+    { FREF_CLK4_REQ        , IEN|PTU|M3 }, /* gpio_wk7            */ /* tps62361_vsel0 */
+};
+
+void set_muxconf_regs(void){
+    omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array, ARRAY_SIZE(core_padconf_array));
+    omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array, ARRAY_SIZE(wkup_padconf_array));
+}
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
new file mode 100644
index 0000000..fa9015e
--- /dev/null
+++ b/arch/arm/configs/archosg9_defconfig
@@ -0,0 +1,70 @@
+CONFIG_MACH_ARCHOSG9=y
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP4=y
+CONFIG_AEABI=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=n
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=n
+CONFIG_USB_BOOT=y
+CONFIG_SHARE_USB_HANDLE=y
+CONFIG_TEXT_BASE=0x8f000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv defaultenv-2 arch/arm/boards/archosg9/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_BOOTM_AIMAGE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
+CONFIG_DRIVER_SERIAL_USB=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_BAUDRATE=57600
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_OMAP=y
+CONFIG_I2C_TWLCORE=y
+CONFIG_I2C_TWL6030=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_USBBOOT=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
new file mode 100644
index 0000000..6186011
--- /dev/null
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -0,0 +1,25 @@
+CONFIG_MACH_ARCHOSG9=y
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP4=y
+# CONFIG_OMAP_GPMC is not set
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
+CONFIG_AEABI=y
+CONFIG_USB_BOOT=y
+CONFIG_SHARE_USB_HANDLE=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_TEXT_BASE=0x40300000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x8f000000
+CONFIG_MALLOC_BASE=0x84000000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_CONSOLE_FULL is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_USB=y
+# CONFIG_SPI is not set
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_USBBOOT=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 8e0a0b3..464c8a4 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -125,6 +125,7 @@ config BOARDINFO
 	default "Phytec phyCORE pcm049" if MACH_PCM049
 	default "Phytec phyCARD-A-L1" if MACH_PCAAL1
 	default "Phytec phyCARD-A-XL2" if MACH_PCAAXL2
+	default "Archos G9" if MACH_ARCHOSG9
 
 choice
 	prompt "Select OMAP board"
@@ -160,6 +161,14 @@ config MACH_PANDA
 	help
 	  Say Y here if you are using OMAP4 Panda board
 
+config MACH_ARCHOSG9
+	bool "Archos G9 tablets"
+	select HAVE_NOSHELL
+	select MACH_HAS_LOWLEVEL_INIT
+	depends on ARCH_OMAP4
+	help
+	  Say Y here if you are using OMAP4-based Archos G9 tablet
+
 config MACH_PCM049
 	bool "Phytec phyCORE pcm049"
 	select HAVE_NOSHELL
diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index 325513f..a21da3b 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -4148,3 +4148,4 @@ msm8625_evt		MACH_MSM8625_EVT	MSM8625_EVT		4193
 mx53_sellwood		MACH_MX53_SELLWOOD	MX53_SELLWOOD		4194
 somiq_am35		MACH_SOMIQ_AM35		SOMIQ_AM35		4195
 somiq_am37		MACH_SOMIQ_AM37		SOMIQ_AM37		4196
+omap4_archosg9		MACH_OMAP4_ARCHOSG9	OMAP4_ARCHOSG9		5032
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
