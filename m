Delivery-date: Tue, 27 Apr 2021 22:24:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGQ-0006Wr-OS
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:24:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGP-00066s-HU
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+ft9vNlVGoIZanMw54x7HMTKYLsyQi1K7rgaS3EfsHA=; b=XfXRg58eprF905kyugiO9XiUv
	SfFxTlsRZM+245Z3aMt1AxBk2xh/qCwxsn1hQAtWMm7Z9hluUjuw0jl1/XZGJN6KcOG1ViTBgdRYa
	ksKNN8NCbDhOGYAJtG6jpD0NpX9eVE3tONzVQtMie6XqXFX/yKUIeI5rxKvAxdANJDVymjzN0MsaH
	/lBnDPLfy7Q1LLOdAuRaZJJDxiYxYQZPJFUY+hsBXHfv/MB6Cukyz7ejiS5NXWiIVnDt/mO4dd07e
	W7tKLW7Bs3u37AfKPrLGSFsUbHtQtc6iGC9iWH+qi1v7inXqWHYSCMbHhbLEy3sbyWk2Mwz8PZOkF
	b6v7LExUA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFN-002Bue-WC; Tue, 27 Apr 2021 20:23:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUF0-002Br4-Lm
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=9nYVZ+gWDwQ1Ip3LzirvxlFS/VHtkSYS6/FlhMmAqlo=; b=yVP97xbLbYZFay5wLFXzyppwR1
 eeRIortTDrmUpfqMd0RV+nTtoVHYiJMZ/V5uayFfzUKnTZ+NDZnSnSj3SY+zznaXyzvrepiTbrDtA
 KMkVCnz5baq72wgG9Ge1s775kiBB9wfgaTn8X6TTA6FPgV2HbTfN6HHYRiKK3l+DKCAbrRtm6PNbM
 pc8aUEPcvDSAYsmmg4FUCBq8eXmHTm8PkGj533dnd7Hq9q3e5qQ1MZnybS6K/q4YNUxDr8myp/rxO
 dX3fxOaQuuh4LGq6BVaAYnBcLWZpHJnYjjvymDNBB7hJm0lNSWMWwBDwm2Bc94zAhSkclmJ0iZpOK
 35MYqNaw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEy-00GyJN-2g
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005XY-Pk; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016b-1Z; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:03 +0200
Message-Id: <20210427202309.32077-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132328_140750_525F3994 
X-CRM114-Status: GOOD (  14.56  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/12] RISC-V: erizo: drop mach-erizo directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the recent changes, we can now delete mach-erizo. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs                        |  2 +-
 arch/riscv/Makefile                            | 13 -------------
 .../include/mach => include/asm}/debug_ll.h    | 18 +++++++-----------
 arch/riscv/mach-erizo/Makefile                 |  3 ---
 common/Kconfig                                 |  5 +++++
 5 files changed, 13 insertions(+), 28 deletions(-)
 rename arch/riscv/{mach-erizo/include/mach => include/asm}/debug_ll.h (57%)
 delete mode 100644 arch/riscv/mach-erizo/Makefile

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 093bca33806c..ea5ae0a6e9b5 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -3,7 +3,7 @@ menu "SoC selection"
 config SOC_ERIZO
 	bool "Erizo SoC"
 	depends on ARCH_RV32I
-	select HAS_DEBUG_LL
+	select HAS_ASM_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
 	select RISCV_M_MODE
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 09a94d69b220..0b1278936d91 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -19,8 +19,6 @@ LDFLAGS_pbl += $(riscv-ldflags-y)
 cflags-y += $(riscv-cflags-y)
 LDFLAGS_barebox += -nostdlib
 
-machine-$(CONFIG_SOC_ERIZO)	:= erizo
-
 LDFLAGS_barebox += $(riscv-ldflags-y)
 
 ifndef CONFIG_MODULES
@@ -31,21 +29,10 @@ endif
 
 KBUILD_BINARY := barebox.bin
 
-machdirs := $(patsubst %,arch/riscv/mach-%/,$(machine-y))
-
-KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
-
 archprepare: maketools
 
 PHONY += maketools
 
-ifneq ($(machine-y),)
-MACH  := arch/riscv/mach-$(machine-y)/
-else
-MACH  :=
-endif
-
-common-y += $(MACH)
 common-y += arch/riscv/boards/
 common-y += arch/riscv/cpu/
 common-y += arch/riscv/lib/
diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
similarity index 57%
rename from arch/riscv/mach-erizo/include/mach/debug_ll.h
rename to arch/riscv/include/asm/debug_ll.h
index a20acfcdfb79..755ed09786d5 100644
--- a/arch/riscv/mach-erizo/include/mach/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -1,18 +1,10 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
-#ifndef __MACH_ERIZO_DEBUG_LL__
-#define __MACH_ERIZO_DEBUG_LL__
+#ifndef __ASM_DEBUG_LL__
+#define __ASM_DEBUG_LL__
 
 /** @file
  *  This File contains declaration for early output support
@@ -20,6 +12,8 @@
 
 #include <linux/kconfig.h>
 
+#ifdef CONFIG_DEBUG_ERIZO
+
 #define DEBUG_LL_UART_ADDR	0x90000000
 #define DEBUG_LL_UART_SHIFT	2
 #define DEBUG_LL_UART_IOSIZE32
@@ -30,4 +24,6 @@
 
 #include <asm/debug_ll_ns16550.h>
 
-#endif /* __MACH_ERIZO_DEBUG_LL__ */
+#endif
+
+#endif /* __ASM_DEBUG_LL__ */
diff --git a/arch/riscv/mach-erizo/Makefile b/arch/riscv/mach-erizo/Makefile
deleted file mode 100644
index d9c51e74c379..000000000000
--- a/arch/riscv/mach-erizo/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# just to build a built-in.o. Otherwise compilation fails when no o-files is
-# created.
-obj- += dummy.o
diff --git a/common/Kconfig b/common/Kconfig
index b10fb45b722d..6d7a1c6b0494 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1342,6 +1342,11 @@ config DEBUG_RPI3_MINI_UART
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 3 board mini UART.
+
+config DEBUG_ERIZO
+	bool "Erizo ns16550 port"
+	depends on SOC_ERIZO
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

