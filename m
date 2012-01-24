Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyF-00045x-KZ
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:07 +0100
Message-Id: <1327402267-22385-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
References: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: mx3/mx35_3ds: add (optinal) support for flexcan0
To: barebox@lists.infradead.org

The i.MX35 processor consists of numerous subsystems, there are
several possibilities to route the internal signals to external BGA
pins and most pins can select several functions. The layout of the
MX35 3 Stack development kit requires the that the RX and TX signals
of the first CAN controller use the I2C2_DAT and I2C2_CLK pin. (The
pins are named after their primary functions.)

On the 3 Stack board these pin can be used for the first USB Host
controller (USBH2), too. This means activating the first CAN, the USB
Host controller needs to be disabled. Several steps are needed:

1) Disable the driver for the USB Controller, just to be sure.

2) Change the pin mux setup, so that the CAN signals are routed CPU
   internally to the pin.

3) Activate the driver for the CAN Controller.

4) Control muxer U85 on the base board, so that the CAN signals reach
   the CAN transceiver.

5) Turn on the CAN transceiver (U77).

---

The signal routing of the first CAN controller (CAN1 according to the
datasheet) consists of two signals: "CAN TX" and "CAN RX".

 +-----------------------------------------+
 | i.MX35                                  |
 |                                         |
 | I2C2_CLK/CAN_TX1/USBH2_PWR/GPIO2_26  L3 |----<CAN_TX1>--------.
 |                                         |                     |
 |  I2C2_DAT/CAN_RX1/USBH2_OC/GPIO2_27  M1 |----<CAN_RX1>----.   |
 |                                         |                 |   |
 |                                         |                 |   |
 +-----------------------------------------+                 |   |
                                     |                       |   |
                                     | <I2C>                 |   |
                                     |                       |   |
                           +-------------------+             |   |
                           | MC9S08DZ60        |             |   |
                           |                   |             |   |
                           |                   |             |   |
                           | PTD0/PID0/TPM2CH0 |             |   |
                           |                   |             |   |
                           |        31         |             |   |
                           +-------------------+             |   |
                                     |                       |   |
                                     | <CAN_PWDN>            |   |
                                     |                       |   |
                                     |                       |   |
                                     | <J28>           <K24> |   | <K23>
                                     |                       |   |
    ^^^^ CPU Board ^^^^              V                       V   V

    VVVV Base Board VVVV             ^                       ^   ^
                                     |                       |   |
                                     | <J28>           <K24> |   | <K23>
                                     |                       |   |
  .----------------------------------+                       |   |
  |                                  |                       |   |
  |                                  | <CAN_PWDN>            |   |
  |                                  |                       |   |
  |                          +-------------+                 |   |
  |                          |PI3USB10 U85 |                 |   |
  |                          |             |                 |   |
  |     ... --<USBH2_PWR>----| 10          |                 |   |
  |                          |             |                 |   |
  |     ... ---<USBH2_OC>----| 9         4 |----<CAN_RX1>----'   |
  |                          |   Muxer     |                     |
  |   .--------<CAN_RX_1>----| 11        3 |----<CAN_TX1>--------'
  |   |                      |             |
  |   |   .----<CAN_TX_1>----| 12          |
  |   |   |                  +-------------+
  |   |   |
  |   |   |
  |   |   |                  +-------------+
  |   |   |                  |TLE6250  U77 |
  |   |   |                  |             |
  |   |   '------------------| 1         7 |----<CANH>---- ...
  |   |                      |   CAN       |
  |   '----------------------| 4         6 |----<CANL>---- ...
  |                          | Transceiver |
  '--------------------------| 8           |
                             |             |
                             +-------------+

The "can tx" signal takes the following route:

CPU Board:  i.MX35 pin L3 - CAN_TX1 - K23
Base Board: K23 - CAN_TX1 - Muxer - CAN_TX_1 - Transceiver

The "can rx" travels accordingly:

CPU Board:  i.MX35 pin M1 - CAN_RX1 - K24
Base Board: K24 - CAN_RX1 - Muxer - CAN_RX_1 - Transceiver

The muxer and the CAN transceiver are enabled by the low active signal
CAN_PWDN, which is in default configuration pulled up by a
resistor. The signal is generated on the CPU Board by a companion chip
MC9S08DZ60 which itself is connected to the CPU via I2C. The routing
of CAN_PWDN follows:

CPU Board:  MC9S08DZ60 Pin 31 - CAN_PWDN - J28
Base Board: J28 - Muxer
            J28 - Transceiver

In order to activate the CAN_PWDN signal the CPU has to modify a
register in the MC9S08DZ60 chip, but the Linux kernel is lacking
support for this chip. However the bootloader "barebox" which is used,
already has a driver.

Pin 31 of the MC9S08DZ60 is controlled via the 2nd bit (bit mask 0x2)
of the GPIO_2 reg.

---

This patch adds Kconfig option to choose between USB and CAN at
compile time. When activating CAN the CAN_PWDN is driven low by pin 31
of MC9S08DZ60, so that the muxer routes the CAN signals to the CAN
transceiver. The CAN transceiver itself is activated by the CAN_PWDN
signal, too.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |    7 +++++++
 arch/arm/mach-imx/Kconfig                       |    4 ++++
 2 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index fe17899..5b7f76a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -383,11 +383,18 @@ static int f3s_pmic_init_v2(struct mc13892 *mc13892)
 	return err;
 }
 
+#ifdef CONFIG_MACH_FREESCALE_MX35_3STACK_CAN
+#define MX35PDK_GPIO2_CAN_VAL	(0x0)
+#else
+#define MX35PDK_GPIO2_CAN_VAL	(0x2)
+#endif
+
 static int f3s_pmic_init_all(struct mc9sdz60 *mc9sdz60)
 {
 	int err = 0;
 
 	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_1, 0x04, 0x04);
+	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_2, 0x02, MX35PDK_GPIO2_CAN_VAL);
 
 	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_1, 0x80, 0x00);
 	mdelay(200);
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a4b603b..59f8def 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -462,6 +462,10 @@ config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
 	bool "128 MB (mDDR)"
 endchoice
 endif
+if MACH_FREESCALE_MX35_3STACK
+config MACH_FREESCALE_MX35_3STACK_CAN
+	bool "activate CAN instead of USB"
+endif
 endmenu
 
 menu "i.MX specific settings        "
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
