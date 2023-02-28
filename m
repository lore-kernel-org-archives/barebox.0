Delivery-date: Tue, 28 Feb 2023 15:32:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11P-004kwf-Uf
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11P-0004g9-LK
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ypG3EffdnPIX7p7SwE0vE0HTDEC9h8B5tmaJCKvsjA=; b=y7pfr71aXhUw4rwXeoEO7svuxO
	lbxQ9rlyHoLea1rG0JkNTulswsgIrWEU+S2EENOrRliY31jCgMwwl4I6GXMPPCd0YhKjlIme8mCqZ
	+uDMUbC9GpRhdV0oib0YESeC1Zanr6IrJ7eNaq4qsWkaP6cPFlb/SAiSNV50HwQ9dYZ4SRCK5i7i5
	b8/G6pfsf/rdH8aAQfzK1GclZ34YJUj2Tajj5q0mU/dHiMPt9VnKAfB+Ppy4aY0EpJKQNooCLUzhK
	wNGvkBzK7qRI7bI+pPfkfsGFJO85bxi6aP6KlqvqcG77j6kjnZHXOjC0IdqfK7HJOJK2Dr7CZLTJ/
	uNkmXh4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10A-00DSkP-5R; Tue, 28 Feb 2023 14:30:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgI-Lk
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000479-L5; Tue, 28 Feb 2023 15:30:34 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zx-000t8p-UF; Tue, 28 Feb 2023 15:30:33 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LWI-Rq; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:23 +0100
Message-Id: <20230228143031.1718565-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063036_740833_75D078B6 
X-CRM114-Status: GOOD (  12.37  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: mxs: remove unused mach/clock.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mach/clock.h doesn't contain anything useful, remove it and
drop its inclusion from files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c     | 1 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   | 1 -
 arch/arm/boards/duckbill/board.c                   | 1 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      | 1 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 1 -
 arch/arm/boards/karo-tx28/tx28-stk5.c              | 1 -
 arch/arm/mach-mxs/clocksource-imx23.c              | 1 -
 arch/arm/mach-mxs/clocksource-imx28.c              | 1 -
 arch/arm/mach-mxs/include/mach/clock.h             | 7 -------
 drivers/mci/mxs.c                                  | 1 -
 drivers/serial/serial_auart.c                      | 2 --
 drivers/serial/stm-serial.c                        | 1 -
 drivers/spi/mxs_spi.c                              | 1 -
 13 files changed, 20 deletions(-)
 delete mode 100644 arch/arm/mach-mxs/include/mach/clock.h

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 82b9415e80..44619d0c24 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -16,7 +16,6 @@
 #include <asm/mmu.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
-#include <mach/clock.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
 #include <mach/usb.h>
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 5a951d1abf..69ac71b0c3 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -19,7 +19,6 @@
 #include <i2c/i2c-gpio.h>
 #include <i2c/at24.h>
 
-#include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux.h>
 #include <mach/mci.h>
diff --git a/arch/arm/boards/duckbill/board.c b/arch/arm/boards/duckbill/board.c
index dd22c81566..56a4cc1853 100644
--- a/arch/arm/boards/duckbill/board.c
+++ b/arch/arm/boards/duckbill/board.c
@@ -11,7 +11,6 @@
 #include <io.h>
 #include <net.h>
 
-#include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-imx28.h>
 #include <mach/iomux.h>
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index b12bb0dd79..b0aa9e1a33 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -12,7 +12,6 @@
 #include <generated/mach-types.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx-regs.h>
-#include <mach/clock.h>
 #include <mach/mci.h>
 #include <usb/fsl_usb2.h>
 #include <mach/usb.h>
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 350576fa52..91151feba1 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -22,7 +22,6 @@
 #include <mach/usb.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
-#include <mach/clock.h>
 #include <mach/mci.h>
 #include <mach/iomux.h>
 
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 56211d7a3a..c5e7b1451c 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -15,7 +15,6 @@
 #include <asm/barebox-arm.h>
 #include <linux/err.h>
 #include <mach/imx-regs.h>
-#include <mach/clock.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
 #include <mach/ocotp.h>
diff --git a/arch/arm/mach-mxs/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
index ba5aad9f30..2973422229 100644
--- a/arch/arm/mach-mxs/clocksource-imx23.c
+++ b/arch/arm/mach-mxs/clocksource-imx23.c
@@ -6,7 +6,6 @@
 #include <clock.h>
 #include <notifier.h>
 #include <mach/imx23-regs.h>
-#include <mach/clock.h>
 #include <io.h>
 
 #define TIMROTCTRL 0x00
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index 65d8155ad2..6280cc64fb 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -6,7 +6,6 @@
 #include <clock.h>
 #include <notifier.h>
 #include <mach/imx28-regs.h>
-#include <mach/clock.h>
 #include <io.h>
 
 #define TIMROTCTRL 0x00
diff --git a/arch/arm/mach-mxs/include/mach/clock.h b/arch/arm/mach-mxs/include/mach/clock.h
deleted file mode 100644
index 2050b95913..0000000000
--- a/arch/arm/mach-mxs/include/mach/clock.h
+++ /dev/null
@@ -1,7 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/* SPDX-FileCopyrightText: 2010 Juergen Beisert, Pengutronix */
-
-#ifndef __MACH_CLOCK_H
-# define __MACH_CLOCK_H
-
-#endif /* __MACH_CLOCK_H */
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 8e0753fe95..6a348e331e 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -28,7 +28,6 @@
 #include <linux/err.h>
 #include <asm/bitops.h>
 #include <mach/mci.h>
-#include <mach/clock.h>
 #include <mach/ssp.h>
 
 #define CLOCKRATE_MIN (1 * 1000 * 1000)
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index a0163bef6f..2ac7349c66 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -36,8 +36,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-#include <mach/clock.h>
-
 #define HW_UARTAPP_CTRL0		(0x00000000)
 
 #define HW_UARTAPP_CTRL2		(0x00000020)
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index bddb422ac5..e7c04654d2 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -20,7 +20,6 @@
 #include <malloc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/clock.h>
 
 #define UARTDBGDR 0x00
 #define UARTDBGFR 0x18
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index c44f551408..c435e4f22b 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -19,7 +19,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <mach/generic.h>
-#include <mach/clock.h>
 #include <mach/ssp.h>
 
 #define	MXS_SPI_MAX_TIMEOUT		(10 * MSECOND)
-- 
2.30.2



