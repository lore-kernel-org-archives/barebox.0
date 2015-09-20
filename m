Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdny6-0006Dx-UC
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:28 +0000
Received: by lbbvu2 with SMTP id vu2so43526554lbb.0
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:05 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-254-180.pppoe.spdop.ru.
 [79.139.254.180])
 by smtp.gmail.com with ESMTPSA id x1sm3091424lbb.32.2015.09.20.16.24.04
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Sep 2015 16:24:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:48 +0300
Message-Id: <1442791433-10892-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 05/10] MIPS: ath79: add black-swift board support
To: barebox@lists.infradead.org

Black Swift is a tiny coin-sized embedded computer based on AR9331 SoC.
See http://www.black-swift.com/ for details.

See also Black Swift kickstarter page:
  https://www.kickstarter.com/projects/1133560316/black-swift-tiny-wireless-computer

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/black-swift/Makefile              |  1 +
 arch/mips/boards/black-swift/board.c               | 27 ++++++++++++++
 .../black-swift/include/board/board_pbl_start.h    | 41 ++++++++++++++++++++++
 arch/mips/dts/black-swift.dts                      | 34 ++++++++++++++++++
 arch/mips/mach-ath79/Kconfig                       |  6 ++++
 6 files changed, 110 insertions(+)

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
index 0000000..f78e0d9
--- /dev/null
+++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
@@ -0,0 +1,41 @@
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
+#include <asm/pbl_nmon.h>
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
+	pbl_ar9331_uart_enable
+	debug_ll_ar9331_init
+	mips_nmon
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
new file mode 100644
index 0000000..270374d
--- /dev/null
+++ b/arch/mips/dts/black-swift.dts
@@ -0,0 +1,34 @@
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
+
+	aliases {
+		spiflash = &spiflash;
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
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index f730b37..9b8e394 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -13,6 +13,12 @@ config BOARD_TPLINK_MR3020
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
+config BOARD_BLACK_SWIFT
+	bool "Black Swift"
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+
 endchoice
 
 endif
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
