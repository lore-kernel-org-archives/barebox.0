Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006U2-Mo
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:48 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:09:02 +0100
Message-Id: <1419527345-9301-5-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 5/8] ARM: imx233-olinuxino: generate complete bootstream
To: barebox@lists.infradead.org

- Enable multi-image support to generate bootstream, sd-card and 2nd stage
  images.
- Handle pin-mux in lowlevel.c only.
- Use fine-tuned memory setup from u-boot.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  61 --------
 arch/arm/boards/imx233-olinuxino/lowlevel.c        | 170 ++++++++++++++++++++-
 arch/arm/mach-mxs/Kconfig                          |   2 +
 images/Makefile.mxs                                |  10 ++
 4 files changed, 180 insertions(+), 63 deletions(-)

diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index fa95d72..901e713 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -39,60 +39,6 @@ static struct mxs_mci_platform_data mci_pdata = {
 	.f_min = 400000,
 };
 
-static const uint32_t pad_setup[] = {
-	/* debug port */
-	PWM1_DUART_TX | STRENGTH(S4MA),    /* PWM0/DUART_TXD - U_DEBUG PIN 2 */
-	PWM0_DUART_RX | STRENGTH(S4MA),    /* PWM0/DUART_RXD - U_DEBUG PIN 1 */
-
-	/* auart */
-	I2C_SDA_AUART1_RX | STRENGTH(S4MA),
-	I2C_CLK_AUART1_TX | STRENGTH(S4MA),
-
-	/* lcd */
-	LCD_D17 | STRENGTH(S12MA),         /*PIN18/LCD_D17   -   GPIO PIN 3 */
-	LCD_D16 | STRENGTH(S12MA),
-	LCD_D15 | STRENGTH(S12MA),
-	LCD_D14 | STRENGTH(S12MA),
-	LCD_D13 | STRENGTH(S12MA),
-	LCD_D12 | STRENGTH(S12MA),
-	LCD_D11 | STRENGTH(S12MA),
-	LCD_D10 | STRENGTH(S12MA),
-	LCD_D9 | STRENGTH(S12MA),
-	LCD_D8 | STRENGTH(S12MA),
-	LCD_D7 | STRENGTH(S12MA),
-	LCD_D6 | STRENGTH(S12MA),
-	LCD_D5 | STRENGTH(S12MA),
-	LCD_D4 | STRENGTH(S12MA),
-	LCD_D3 | STRENGTH(S12MA),
-	LCD_D2 | STRENGTH(S12MA),            /* PIN3/LCD_D02   - GPIO PIN 31*/
-	LCD_D1 | STRENGTH(S12MA),            /* PIN2/LCD_D01   - GPIO PIN 33*/
-	LCD_D0 | STRENGTH(S12MA),            /* PIN1/LCD_D00   - GPIO PIN 35*/
-	LCD_CS,                              /* PIN26/LCD_CS   - GPIO PIN 20*/
-	LCD_RS,                              /* PIN25/LCD_RS   - GPIO PIN 18*/
-	LCD_WR,                              /* PIN24/LCD_WR   - GPIO PIN 16*/
-	LCD_RESET,                           /* PIN23/LCD_DISP - GPIO PIN 14*/
-	LCD_ENABE | STRENGTH(S12MA),  /* PIN22/LCD_EN/I2C_SCL  - GPIO PIN 12*/
-	LCD_VSYNC | STRENGTH(S12MA), /* PIN21/LCD_HSYNC/I2C_SDA- GPIO PIN 10*/
-	LCD_HSYNC | STRENGTH(S12MA),     /* PIN20/LCD_VSYNC    - GPIO PIN  8*/
-	LCD_DOTCLOCK | STRENGTH(S12MA),  /* PIN19/LCD_DOTCLK   - GPIO PIN  6*/
-
-
-	/* SD card interface */
-	SSP1_DATA0 | PULLUP(1),
-	SSP1_DATA1 | PULLUP(1),
-	SSP1_DATA2 | PULLUP(1),
-	SSP1_DATA3 | PULLUP(1),
-	SSP1_SCK,
-	SSP1_CMD | PULLUP(1),
-	SSP1_DETECT | PULLUP(1),
-
-	/* led */
-	SSP1_DETECT_GPIO | GPIO_OUT | GPIO_VALUE(1),
-
-	/* gpio - USB hub LAN9512-JZX*/
-	GPMI_ALE_GPIO | GPIO_OUT | GPIO_VALUE(1),
-};
-
 static int imx23_olinuxino_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
@@ -103,7 +49,6 @@ mem_initcall(imx23_olinuxino_mem_init);
 
 static void olinuxino_init_usb(void)
 {
-
 	imx23_usb_phy_enable();
 
 	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_USB_BASE, NULL);
@@ -111,12 +56,6 @@ static void olinuxino_init_usb(void)
 
 static int imx23_olinuxino_devices_init(void)
 {
-	int i;
-
-	/* initizalize gpios */
-	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
-		imx_gpio_mode(pad_setup[i]);
-
 	armlinux_set_architecture(MACH_TYPE_IMX233_OLINUXINO);
 
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index d26562c..a5567b7 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -3,9 +3,175 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
+#include <mach/init.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <mach/iomux.h>
 
-void __naked barebox_arm_reset_vector(void)
+ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, NULL);
 }
+
+static const uint32_t pad_setup[] = {
+	/* debug port */
+	PWM1_DUART_TX | STRENGTH(S4MA),    /* PWM0/DUART_TXD - U_DEBUG PIN 2 */
+	PWM0_DUART_RX | STRENGTH(S4MA),    /* PWM0/DUART_RXD - U_DEBUG PIN 1 */
+
+	/* SDRAM */
+	EMI_D0 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D1 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D2 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D3 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D4 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D5 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D6 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D7 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D8 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D9 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D10 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D11 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D12 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D13 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D14 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_D15 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_DQM0 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_DQM1 | VE_2_5V | STRENGTH(S12MA) | PULLUP(1),
+	EMI_DQS0 | VE_2_5V | STRENGTH(S12MA),
+	EMI_DQS1 | VE_2_5V | STRENGTH(S12MA),
+
+	EMI_CLK | VE_2_5V | STRENGTH(S12MA),
+	EMI_CLKN | VE_2_5V | STRENGTH(S12MA),
+	EMI_A0 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A1 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A2 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A3 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A4 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A5 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A6 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A7 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A8 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A9 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A10 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A11 | VE_2_5V | STRENGTH(S12MA),
+	EMI_A12 | VE_2_5V | STRENGTH(S12MA),
+	EMI_BA0 | VE_2_5V | STRENGTH(S12MA),
+	EMI_BA1 | VE_2_5V | STRENGTH(S12MA),
+
+	EMI_CASN | VE_2_5V | STRENGTH(S12MA),
+	EMI_CE0N | VE_2_5V | STRENGTH(S12MA),
+	EMI_CE1N | VE_2_5V | STRENGTH(S12MA),
+	EMI_CKE | VE_2_5V | STRENGTH(S12MA),
+	EMI_RASN | VE_2_5V | STRENGTH(S12MA),
+	EMI_WEN | VE_2_5V | STRENGTH(S12MA),
+
+	/* auart */
+	I2C_SDA_AUART1_RX | STRENGTH(S4MA),
+	I2C_CLK_AUART1_TX | STRENGTH(S4MA),
+
+	/* LCD */
+	LCD_D17 | STRENGTH(S12MA),         /*PIN18/LCD_D17   -   GPIO PIN 3 */
+	LCD_D16 | STRENGTH(S12MA),
+	LCD_D15 | STRENGTH(S12MA),
+	LCD_D14 | STRENGTH(S12MA),
+	LCD_D13 | STRENGTH(S12MA),
+	LCD_D12 | STRENGTH(S12MA),
+	LCD_D11 | STRENGTH(S12MA),
+	LCD_D10 | STRENGTH(S12MA),
+	LCD_D9 | STRENGTH(S12MA),
+	LCD_D8 | STRENGTH(S12MA),
+	LCD_D7 | STRENGTH(S12MA),
+	LCD_D6 | STRENGTH(S12MA),
+	LCD_D5 | STRENGTH(S12MA),
+	LCD_D4 | STRENGTH(S12MA),
+	LCD_D3 | STRENGTH(S12MA),
+	LCD_D2 | STRENGTH(S12MA),            /* PIN3/LCD_D02   - GPIO PIN 31*/
+	LCD_D1 | STRENGTH(S12MA),            /* PIN2/LCD_D01   - GPIO PIN 33*/
+	LCD_D0 | STRENGTH(S12MA),            /* PIN1/LCD_D00   - GPIO PIN 35*/
+	LCD_CS,                              /* PIN26/LCD_CS   - GPIO PIN 20*/
+	LCD_RS,                              /* PIN25/LCD_RS   - GPIO PIN 18*/
+	LCD_WR,                              /* PIN24/LCD_WR   - GPIO PIN 16*/
+	LCD_RESET,                           /* PIN23/LCD_DISP - GPIO PIN 14*/
+	LCD_ENABE | STRENGTH(S12MA),  /* PIN22/LCD_EN/I2C_SCL  - GPIO PIN 12*/
+	LCD_VSYNC | STRENGTH(S12MA), /* PIN21/LCD_HSYNC/I2C_SDA- GPIO PIN 10*/
+	LCD_HSYNC | STRENGTH(S12MA),     /* PIN20/LCD_VSYNC    - GPIO PIN  8*/
+	LCD_DOTCLOCK | STRENGTH(S12MA),  /* PIN19/LCD_DOTCLK   - GPIO PIN  6*/
+
+	/* SD card interface */
+	SSP1_DATA0 | PULLUP(1),
+	SSP1_DATA1 | PULLUP(1),
+	SSP1_DATA2 | PULLUP(1),
+	SSP1_DATA3 | PULLUP(1),
+	SSP1_SCK,
+	SSP1_CMD | PULLUP(1),
+	SSP1_DETECT | PULLUP(1),
+
+	/* LED */
+	SSP1_DETECT_GPIO | GPIO_OUT | GPIO_VALUE(1),
+
+	/* GPIO - USB hub LAN9512-JZX*/
+	GPMI_ALE_GPIO | GPIO_OUT | GPIO_VALUE(1),
+};
+
+
+/* Fine-tune the DRAM configuration. */
+void imx23_olinuxino_adjust_memory_params(uint32_t *dram_vals)
+{
+	/* Enable Auto Precharge. */
+	dram_vals[3] |= 1 << 8;
+	/* Enable Fast Writes. */
+	dram_vals[5] |= 1 << 8;
+	/* tEMRS = 3*tCK */
+	dram_vals[10] &= ~(0x3 << 8);
+	dram_vals[10] |= (0x3 << 8);
+	/* CASLAT = 3*tCK */
+	dram_vals[11] &= ~(0x3 << 0);
+	dram_vals[11] |= (0x3 << 0);
+	/* tCKE = 1*tCK */
+	dram_vals[12] &= ~(0x7 << 0);
+	dram_vals[12] |= (0x1 << 0);
+	/* CASLAT_LIN_GATE = 3*tCK , CASLAT_LIN = 3*tCK, tWTR=2*tCK */
+	dram_vals[13] &= ~((0xf << 16) | (0xf << 24) | (0xf << 0));
+	dram_vals[13] |= (0x6 << 16) | (0x6 << 24) | (0x2 << 0);
+	/* tDAL = 6*tCK */
+	dram_vals[15] &= ~(0xf << 16);
+	dram_vals[15] |= (0x6 << 16);
+	/* tREF = 1040*tCK */
+	dram_vals[26] &= ~0xffff;
+	dram_vals[26] |= 0x0410;
+	/* tRAS_MAX = 9334*tCK */
+	dram_vals[32] &= ~0xffff;
+	dram_vals[32] |= 0x2475;
+}
+
+static noinline void imx23_olinuxino_init(void)
+{
+	int i;
+
+	/* initizalize gpios */
+	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
+		imx_gpio_mode(pad_setup[i]);
+
+	pr_debug("initializing power...\n");
+
+	mx23_power_init();
+
+	pr_debug("initializing SDRAM...\n");
+
+	imx23_olinuxino_adjust_memory_params(mx23_dram_vals);
+	mx23_mem_init();
+
+	pr_debug("DONE\n");
+}
+
+ENTRY_FUNCTION(prep_start_barebox_olinuxino_imx23, r0, r1, r2)
+{
+	void (*back)(unsigned long) = (void *)get_lr();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	imx23_olinuxino_init();
+
+	back(0);
+}
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 6ef055e..4022710 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -45,6 +45,8 @@ config MACH_CHUMBY
 
 config MACH_IMX233_OLINUXINO
 	bool "Olimex.ltd imx223-olinuxino"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the imx233-olinuxino
 
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index 811345c..abff255 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -31,3 +31,13 @@ FILE_barebox-karo-tx28-sd.img = start_barebox_karo_tx28.mxsbs.mxssd
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-sd.img
 FILE_barebox-karo-tx28-2nd.img = start_barebox_karo_tx28.pblx
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-2nd.img
+
+pblx-$(CONFIG_MACH_IMX233_OLINUXINO) += start_barebox_olinuxino_imx23 prep_start_barebox_olinuxino_imx23
+PREP_start_barebox_olinuxino_imx23.pblx.mxsbs = start_barebox_olinuxino_imx23_prep;
+CFG_start_barebox_olinuxino_imx23.mxsbs = $(mxs23cfg)
+FILE_barebox-olinuxino-imx23-bootstream.img = start_barebox_olinuxino_imx23.mxsbs
+image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-bootstream.img
+FILE_barebox-olinuxino-imx23-sd.img = start_barebox_olinuxino_imx23.mxsbs.mxssd
+image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-sd.img
+FILE_barebox-olinuxino-imx23-2nd.img = start_barebox_olinuxino_imx23.pblx
+image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-2nd.img
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
