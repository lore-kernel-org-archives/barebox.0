Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc88H-0006YA-5b
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 08:32:02 +0000
Received: by lagj9 with SMTP id j9so125799027lag.2
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 01:31:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 Sep 2015 11:31:31 +0300
Message-Id: <1442392292-15898-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
References: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/4] MIPS: ath79: add black-swift board support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Black Swift is a tiny coin-sized embedded computer based on AR9331 SoC.
See http://www.black-swift.com/ for details.

See also Black Swift kickstarter page:
  https://www.kickstarter.com/projects/1133560316/black-swift-tiny-wireless-computer

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/black-swift/Makefile              |  1 +
 arch/mips/boards/black-swift/board.c               | 27 +++++++++++++
 .../black-swift/include/board/board_pbl_start.h    | 46 ++++++++++++++++++++++
 arch/mips/dts/black-swift.dts                      | 36 +++++++++++++++++
 arch/mips/mach-ath79/Kconfig                       |  5 +++
 6 files changed, 116 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 6ef2bf7..75761b5 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -80,6 +80,7 @@ board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
 board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
+board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
 
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
diff --git a/arch/mips/boards/black-swift/Makefile b/arch/mips/boards/black-swift/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/mips/boards/black-swift/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/black-swift/board.c b/arch/mips/boards/black-swift/board.c
new file mode 100644
index 0000000..2e2ed20
--- /dev/null
+++ b/arch/mips/boards/black-swift/board.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+
+static int model_hostname_init(void)
+{
+	barebox_set_hostname("black-swift");
+
+	return 0;
+}
+postcore_initcall(model_hostname_init);
diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
new file mode 100644
index 0000000..176491f
--- /dev/null
+++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2013, 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_barebox_10h
+
+	mips_disable_interrupts
+
+	pbl_ar9331_pll
+	pbl_ar9331_ddr2_config
+
+	/*
+	 * General Purpose I/O Function (GPIO_FUNCTION_1)
+	 *
+	 *  SPI_EN  (18) enables SPI SPA Interface signals
+	 *               in GPIO_2, GPIO_3, GPIO_4 and GPIO_5.
+	 *  RES     (15) reserved. This bit must be written with 1.
+	 *  UART_EN  (2) enables UART I/O on GPIO_9 (SIN) and GPIO_10 (SOUT).
+	 */
+	pbl_reg_writel 0x48002, 0xb8040028
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
new file mode 100644
index 0000000..db13c73
--- /dev/null
+++ b/arch/mips/dts/black-swift.dts
@@ -0,0 +1,36 @@
+/dts-v1/;
+
+#include "ar9331.dtsi"
+
+/ {
+	model = "Black Swift";
+	compatible = "smartlx,black-swift";
+
+	memory {
+		reg = <0x00000000 0x4000000>;
+	};
+};
+
+&serial0 {
+	status = "okay";
+};
+
+&spi {
+	num-chipselects = <1>;
+	status = "okay";
+
+	/* Winbond W25Q128FV SPI flash */
+	spiflash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p80";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+	};
+};
+
+/ {
+	aliases {
+		spiflash = &spiflash;
+	};
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index f730b37..09855e1 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -13,6 +13,11 @@ config BOARD_TPLINK_MR3020
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
+config BOARD_BLACK_SWIFT
+	bool "Black Swift"
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+
 endchoice
 
 endif
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
