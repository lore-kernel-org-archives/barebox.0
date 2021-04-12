Delivery-date: Mon, 12 Apr 2021 09:19:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqrO-0003ic-Aj
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:19:50 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqrN-0005MQ-Ew
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:19:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2qEdF5TNOELQP1E8b68aUh57B/0y8n+sPIO2qHu09rk=; b=k/8THP1Xat8Y0ZpUIzyWIw+S6
	u3mLfbBlArDrQgKn+Enkq8GSswPWuZYKCa/8CppUS1IMozFovcE9Q1RwazKyEXE4yufv/gx7OhLvY
	7isx8+TzmYe5pua+tBtQYebYhUopAcp3GUxgs/eraFvHnVyWsvTOOqQkPQsO9v33MBegGu3z+RVhk
	hV2pBhStreWDANy4ITi4NG2DUlXuHx+s06/Jfe3vKyrezmiWbf+Itn1UpXMgWRw3l7GKtFhu4PTG0
	3kii1pX8Rbj52Y5UEWeWvBpJe7IdcP8war2sNY+IW4/mraBTcfaW1PsgQV7U2TPyrWKwLURwMf4Xt
	wFT8Pn6pg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqqI-005wVi-Ti; Mon, 12 Apr 2021 07:18:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqou-005vwx-FG
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KoI3qmdCihsIbEP2QAdbAq28AaH6KWac2q7OUtxEEec=; b=oBKQi5Y8f7i9I8rct1j7PFDHHo
 BoMLMpDg0wRRclFQy1+GQPl9Wt7mDtJZjUaYZhZsZp85QdWiehoe9qxtvy3TD1DNdzlhnnfReezAf
 NvxMzlfw7ED7fSo2BGrBZNrkF0Kj/d4Ci9FxcpOgcbfEtAnDf5oQJ1n+vu8c4Ow5VqAgQnB5dSviD
 zcIpJTSCn/hM36TErc+VxrORomwwdLVF18FiEFqpgs56cLbRYeOIb3235iXasGVqcYA5xSGsemRX+
 fyH0KATknqNAuFbORHntfnDumbzglImg/OmSoLYZ3FPOBCRz5aK6CeKBxInCeSMQueCBJp4+5GKqL
 17d19T4Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqor-005vIl-Tv
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HH-Ir; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fY-8V; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:39 +0200
Message-Id: <20210412071651.8769-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001713_982677_8DE92D80 
X-CRM114-Status: GOOD (  14.69  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/17] MIPS: qemu-malta: replace board code with syscon-reboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We got two identical implementations of system controller reset,
one in mach-malta and another in mach-bcm47xx.

For the Malta board, Linux represents this as syscon-reboot nodes,
do likewise. This could probably done for the dlink-dir-320, but
would increase code size. This is not done here, because inability to
test.

Tested on Qemu Malta board.

Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/dts/qemu-malta.dts                 | 13 ++++++++
 arch/mips/mach-malta/Kconfig                 |  1 +
 arch/mips/mach-malta/Makefile                |  1 -
 arch/mips/mach-malta/include/mach/hardware.h |  6 ----
 arch/mips/mach-malta/reset.c                 | 31 --------------------
 5 files changed, 14 insertions(+), 38 deletions(-)
 delete mode 100644 arch/mips/mach-malta/reset.c

diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 32e473cac0d2..926806e587c1 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -46,6 +46,19 @@
 		status = "disabled";
 	};
 
+	fpga_regs: system-controller@1f000000 {
+		compatible = "mti,malta-fpga", "syscon", "simple-mfd";
+		reg = <0x1f000000 0x1000>;
+		native-endian;
+
+		reboot {
+			compatible = "syscon-reboot";
+			regmap = <&fpga_regs>;
+			offset = <0x500>;
+			mask = <0x42>;
+		};
+	};
+
 	uart2: serial@1f000900 {
 		compatible = "ns16550a";
 		reg = <0x1f000900 0x40>;
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 467107514006..7aad8242baf7 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -4,6 +4,7 @@ config BOARD_QEMU_MALTA
 	bool "qemu malta"
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
+	select POWER_RESET_SYSCON
 	select HAS_NMON
 
 endif
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index 0c5a7018d45a..7d56f215b034 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1,2 +1 @@
-obj-y += reset.o
 obj-$(CONFIG_PCI) += pci.o
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index 1176b08b6a9a..c816f412053c 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -11,10 +11,4 @@
 #define MALTA_CBUS_UART	0xbf000900
 #define MALTA_CBUS_UART_SHIFT	3
 
-/*
- * Reset register.
- */
-#define SOFTRES_REG	0xbf000500
-#define GORESET		0x42
-
 #endif  /* __INCLUDE_ARCH_HARDWARE_H__ */
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
deleted file mode 100644
index ad0de2741b05..000000000000
--- a/arch/mips/mach-malta/reset.c
+++ /dev/null
@@ -1,31 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-/**
- * @file
- * @brief Resetting an malta board
- */
-
-#include <common.h>
-#include <io.h>
-#include <init.h>
-#include <restart.h>
-#include <mach/hardware.h>
-
-static void __noreturn malta_restart_soc(struct restart_handler *rst)
-{
-	__raw_writel(GORESET, (char *)SOFTRES_REG);
-
-	hang();
-	/*NOTREACHED*/
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn("soc", malta_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

