Delivery-date: Sat, 10 Apr 2021 13:08:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBTG-000151-PA
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 13:08:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBTF-0002ED-Tm
	for lore@pengutronix.de; Sat, 10 Apr 2021 13:08:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z19tVrX/YF1WRFTrdr/iVwe6C1+wZhg3IS/l48S7bJs=; b=njDYHLIDKPyAjMURbWyQS7tOg
	7RBU1XR2neAmZNuU0zej4izSzuOWCSzhg0vlQbSCuHna0Qm6qibsIugVhdi3fWy+i4aACAYIz97Cv
	svSobD2MV/OBZECa3ZeESyP8Dd6S6OARxgs1NEoMz5U37OHXDhyOJLcR6oLFauDjudZCA/jmR48qU
	wEHBMfAMtcp91lLhoPSshTVcra8kEXtW0AsAKywTCjZsQM+YNLzUCbZ29SImqnV6F6bkhss6zleng
	Tcf4UZ/HMoRiGSyoyhbnU+a4JT7VpGCc8KflADvUhe2N6NHxnsa0/wcdwBz2s7MipGZZSRm/Mg1GE
	fmc9YP7WQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBSK-002iJz-Ci; Sat, 10 Apr 2021 11:07:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBRy-002iHG-4Z
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 11:06:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HQmclzwNDByLYiPN1bxpprltQQndFyxK6svDnuaa82Q=; b=0VvqMSWdyLtOmcO50b6G7eNpF4
 1L9XebG5e2S4+OJriiQRdQ2LBPWVSpZNoSbOa3IXkGyiFm03CESqMg8MdY1wYabuVDJ60CuOos1OS
 Ef5fnoZoenrd7uetvq+YmhySd4cl9r8nstuEfSsPDHPAJSYpSODzy75O/jigqQcOqfW68ruCggtny
 aoO/fZVLhw5hDBPLsWLkXnfsdAKRn7RnOtfZTeVOZZiL/RMJBPie35PWyCCWzh1CNDkSbTZF7pM1G
 ZxFj8HQhpK7sDz/gxT++2DOVLvHywFoRghfv7v9PwWObFC+zvfJ+JNpCp9sKCCa6DyLQPBQ0U3J19
 a/IQUy2g==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBRv-0053FF-If
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 11:06:48 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 6FEDF40006;
 Sat, 10 Apr 2021 11:06:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 13:06:38 +0200
Message-Id: <20210410110638.2106658-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410110638.2106658-1-ahmad@a3f.at>
References: <20210410110638.2106658-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_040647_767771_8C8D0C60 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] RISC-V: delete unused mach-virt subdirectory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code within was unused and was kept only to make patching the
machine for DEBUG_LL easier. Now that we have PBL console support, this
is no longer needed, so remove it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - No change
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

