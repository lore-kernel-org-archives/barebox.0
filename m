Delivery-date: Sat, 03 Apr 2021 09:04:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK9-00016H-D7
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK8-0001oj-LI
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cRSP1ysIkx7+ZTuwu2b6cFwPzgY34lXI36fCQJRvC7s=; b=mL5jgoxbvgXJAcOvJ+aSu1E5s
	tIowsxa/F88Iq2xp+a4aYjsE8ArkL0qnMI8C64FtKRBWBHDY7AibjlixO9j49YhmDWFdJKvLFndBS
	VBpX920zCKBrt0TKkvb8XTgv8Pg/JPDt5DJQA1G/IYStyzVlq1FQMJ5ToAih5bO/jG+U4HTI/IxAY
	XneKyBNngqBMInkDIsFT5hNluxEPRqE7iPzfpwpR1PB8fwSjlKNZQQQF3d5W0L07WR1vryx0tfnwZ
	9S3H+hZkDCdednwQU1qBzvKk6UI2M4rL6OghD6wnaNnxAOXj2E9mhf8qaRxC85HXlJZpcR/nA6LaS
	NmC7ng1bg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaJ6-00ENh5-Gp; Sat, 03 Apr 2021 07:02:56 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaIv-00ENfW-0E
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:02:48 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 4F425100006;
 Sat,  3 Apr 2021 07:02:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Apr 2021 09:02:37 +0200
Message-Id: <20210403070237.3642189-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210403070237.3642189-1-ahmad@a3f.at>
References: <20210403070237.3642189-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080245_147843_863E98B3 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 4/4] RISC-V: delete unused mach-virt subdirectory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code within was unused and was kept only to make patching the
machine for DEBUG_LL easier. Now that we have PBL console support, this
is no longer needed, so remove it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/Makefile                          |  1 -
 arch/riscv/mach-virt/Makefile                |  3 ---
 arch/riscv/mach-virt/include/mach/debug_ll.h | 25 --------------------
 3 files changed, 29 deletions(-)
 delete mode 100644 arch/riscv/mach-virt/Makefile
 delete mode 100644 arch/riscv/mach-virt/include/mach/debug_ll.h

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index aba4526bba5a..1a41d15477b5 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -20,7 +20,6 @@ cflags-y += $(riscv-cflags-y)
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
-machine-$(CONFIG_MACH_VIRT)	:= virt
 
 LDFLAGS_barebox += $(riscv-ldflags-y)
 
diff --git a/arch/riscv/mach-virt/Makefile b/arch/riscv/mach-virt/Makefile
deleted file mode 100644
index d9c51e74c379..000000000000
--- a/arch/riscv/mach-virt/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# just to build a built-in.o. Otherwise compilation fails when no o-files is
-# created.
-obj- += dummy.o
diff --git a/arch/riscv/mach-virt/include/mach/debug_ll.h b/arch/riscv/mach-virt/include/mach/debug_ll.h
deleted file mode 100644
index 056b7a330bdd..000000000000
--- a/arch/riscv/mach-virt/include/mach/debug_ll.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-#ifndef __MACH_VIRT_DEBUG_LL__
-#define __MACH_VIRT_DEBUG_LL__
-
-/** @file
- *  This File contains declaration for early output support
- */
-
-#include <linux/kconfig.h>
-
-#define DEBUG_LL_UART_ADDR	0x10000000
-#define DEBUG_LL_UART_SHIFT	0
-#define DEBUG_LL_UART_IOSIZE8
-
-#define DEBUG_LL_UART_CLK       0x00384000
-#define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
-#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
-
-#include <asm/debug_ll_ns16550.h>
-
-#endif /* __MACH_VIRT_DEBUG_LL__ */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

