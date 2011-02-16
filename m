Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nW-6R
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:10 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:39 +0100
Message-Id: <1297880025-7184-15-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 14/20] mini2440: Add GPIO settings
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

This is required in order to enable booting from NAND, when there is no
other first level bootlader.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/mini2440.c |  137 +++++++++++++++++++++++++++++++++++
 1 files changed, 137 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 2aeb09e..30dff07 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -35,6 +35,7 @@
 #include <nand.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
+#include <mach/gpio.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 #include <mach/s3c24xx-generic.h>
@@ -82,12 +83,148 @@ static struct device_d dm9000_dev = {
 	.platform_data = &dm9000_data,
 };
 
+static const unsigned pin_usage[] = {
+	/* address bus, used by NOR, SDRAM */
+	GPA1_ADDR16,
+	GPA2_ADDR17,
+	GPA3_ADDR18,
+	GPA4_ADDR19,
+	GPA5_ADDR20,
+	GPA6_ADDR21,
+	GPA7_ADDR22,
+
+	GPA8_ADDR23_GPIO | GPIO_IN,
+	GPA9_ADDR24,	/* BA0 */
+	GPA10_ADDR25,	/* BA1 */
+	GPA11_ADDR26_GPIO | GPIO_IN,	/* not connected */
+
+	/* DM9000 requirements */
+	GPA15_NGCS4,
+	GPF7_EINT7,
+
+	/* de-activate the speaker */
+	GPB0_GPIO | GPIO_OUT | GPIO_VAL(0),
+
+	/* SD socket */
+	GPE5_SDCLK,
+	GPE6_SDCMD,
+	GPE7_SDDAT0,
+	GPE8_SDDAT1,
+	GPE9_SDDAT2,
+	GPE10_SDDAT3,
+	GPG8_GPIO | GPIO_IN,	/* change detection */
+	GPH8_GPIO | GPIO_IN,	/* write protection sense */
+
+	/* NAND requirements */
+	GPA17_CLE,
+	GPA18_ALE,
+	GPA19_NFWE,
+	GPA20_NFRE,
+	GPA21_NRSTOUT,
+	GPA22_NFCE,
+
+	/* Video out */
+	GPC0_LEND,
+	GPC1_VCLK,
+	GPC2_VLINE,
+	GPC3_VFRAME,
+	GPC4_VM,
+	GPC5_LPCOE,
+	GPC6_LPCREV,
+	GPC7_LPCREVB,
+	GPG4_LCD_PWREN,
+
+	GPC8_VD0,
+	GPC9_VD1,
+	GPC10_VD2,
+	GPC11_VD3,
+	GPC12_VD4,
+	GPC13_VD5,
+	GPC14_VD6,
+	GPC15_VD7,
+	GPD0_VD8,
+	GPD1_VD9,
+	GPD2_VD10,
+	GPD3_VD11,
+	GPD4_VD12,
+	GPD5_VD13,
+	GPD6_VD14,
+	GPD7_VD15,
+	GPD8_VD16,
+	GPD9_VD17,
+	GPD10_VD18,
+	GPD11_VD19,
+	GPD12_VD20,
+	GPD13_VD21,
+	GPD14_VD22,
+	GPD15_VD23,
+
+	/* K6 or CON12, pin 6, external pull up  */
+	GPG11_EINT19 | GPIO_IN,
+	/* K5 or CON12, pin 5*/
+	GPG7_EINT15 | GPIO_IN,
+	/* K4 or CON12, pin 4 */
+	GPG6_EINT14 | GPIO_IN,
+	/* K3 or CON12, pin 3 */
+	GPG5_EINT13 | GPIO_IN,
+	/* K2 or CON12, pin 2 */
+	GPG3_EINT11 | GPIO_IN,
+	/* K1 or CON12, pin 1, external pull up */
+	GPG0_EINT8 | GPIO_IN,
+
+	/* LED 1 1=off */
+	GPB5_GPIO | GPIO_OUT | GPIO_VAL(1),
+	/* LED 2 1=off */
+	GPB6_GPIO | GPIO_OUT | GPIO_VAL(1),
+	/* LED 3 1=off */
+	GPB7_GPIO | GPIO_OUT | GPIO_VAL(1),
+	/* LED 4 1=off */
+	GPB8_GPIO | GPIO_OUT | GPIO_VAL(1),
+
+	/* camera interface (ignore it) */
+	GPJ0_GPIO | GPIO_IN,
+	GPJ1_GPIO | GPIO_IN,
+	GPJ2_GPIO | GPIO_IN,
+	GPJ3_GPIO | GPIO_IN,
+	GPJ4_GPIO | GPIO_IN,
+	GPJ5_GPIO | GPIO_IN,
+	GPJ6_GPIO | GPIO_IN,
+	GPJ7_GPIO | GPIO_IN,
+	GPJ8_GPIO | GPIO_IN,
+	GPJ9_GPIO | GPIO_IN,
+	GPJ10_GPIO | GPIO_IN,
+	GPJ11_GPIO | GPIO_IN,
+	GPJ12_GPIO | GPIO_IN,
+
+	/* I2C bus */
+	GPE14_IICSCL,	/* external pull up */
+	GPE15_IICSDA,	/* external pull up */
+
+	GPA12_NGCS1,	/* CON5, pin 7 */
+	GPA13_NGCS2,	/* CON5, pin 8 */
+	GPA14_NGCS3,	/* CON5, pin 9 */
+	GPA16_NGCS5,	/* CON5, pin 10 */
+
+	/* UART2 (spare) */
+	GPH4_TXD1,
+	GPH5_RXD1,
+
+	/* UART3 (spare) */
+	GPH6_TXD2,
+	GPH7_RXD2,
+};
+
 static int mini2440_devices_init(void)
 {
 	uint32_t reg;
+	int i;
 
 	sdram_dev.size = s3c24x0_get_memory_size();
 
+	/* ----------- configure the access to the outer space ---------- */
+	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
+		s3c_gpio_mode(pin_usage[i]);
+
 	reg = readl(BWSCON);
 
 	/* CS#4 to access the network controller */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
