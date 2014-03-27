Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpi-00025z-5Y
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:34 +0000
Received: by mail-la0-f41.google.com with SMTP id gl10so3154326lab.28
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:27:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:42 +0400
Message-Id: <1395955604-12826-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 7/9] MIPS: ath79: add tplink-mr3020 board support
To: barebox@lists.infradead.org

This board support code can be used for TP-LINK WR703 too.

TP-LINK WR703 is very similar to TP-LINK MR3020, there are
some non-essential differences:

  * WR703 is smaller and cheaper;
  * WR703 has only one led, but MR3020 has five leds;
  * MR3020 uses mini-USB connector, WR703 uses micro-USB connector.

See https://forum.openwrt.org/viewtopic.php?id=45159 for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                      |  1 +
 arch/mips/boards/tplink-mr3020/Makefile |  1 +
 arch/mips/boards/tplink-mr3020/board.c  | 27 +++++++++++++++++++++++++++
 arch/mips/dts/tplink-mr3020.dts         | 18 ++++++++++++++++++
 arch/mips/mach-ath79/Kconfig            |  8 ++++++++
 5 files changed, 55 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 5ca5fc9..b3bacf3 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
+board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
 
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
diff --git a/arch/mips/boards/tplink-mr3020/Makefile b/arch/mips/boards/tplink-mr3020/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/mips/boards/tplink-mr3020/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/tplink-mr3020/board.c b/arch/mips/boards/tplink-mr3020/board.c
new file mode 100644
index 0000000..318998c
--- /dev/null
+++ b/arch/mips/boards/tplink-mr3020/board.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+	barebox_set_hostname("mr3020");
+
+	return 0;
+}
+postcore_initcall(model_hostname_init);
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
new file mode 100644
index 0000000..b9539c5
--- /dev/null
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -0,0 +1,18 @@
+/dts-v1/;
+
+#include <ar9331.dtsi>
+
+/ {
+	model = "TP-LINK MR3020";
+	compatible = "tplink,mr3020";
+
+	memory {
+		reg = <0x00000000 0x2000000>;
+	};
+
+	soc {
+		serial0: serial@b8020000 {
+			status = "okay";
+		};
+	};
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 5f73e0a..96fffd3 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -4,4 +4,12 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
+choice
+	prompt "Board type"
+
+config BOARD_TPLINK_MR3020
+	bool "TP-LINK MR3020"
+
+endchoice
+
 endif
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
