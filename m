Delivery-date: Mon, 31 May 2021 09:04:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbyc-0002oF-C0
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:04:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbyb-0001hZ-DD
	for lore@pengutronix.de; Mon, 31 May 2021 09:04:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mteU58V47RJPXP2CU1x8gDP3urAuBRrLDGQbbTBMVU=; b=jN45c/Xzq7bI7g
	a14+VTj4j9m517VIkAfFplNoyED9E+pw77u+nY1qQUmheGK7h7Z4ZybL5TM+PXXmwxDm1KhHlLQm8
	ooIrfFP19FdGv34wlCdPBLD8/rrEHPQwPU0+TYEpoB9oCGHdzNcsUqeOZ+xjtZ/DYE3zLwcxHVJIf
	yhBfEQ5L97PfJE+yFANuIjP6cnMnii2AmLkZSL92PB9RUa2P+B1TaskpefcV2l6+3hXMk8zMGCUD6
	FsVofCpN3TtgoXxTe7CmTBNTn/PXKBS4SSBWvJTOK+RlZGq1/PFwECNfKCAwJiNajAHji+pI/I4pO
	lxwaZLRdx68AIjO3CbXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbxU-00B3c2-U5; Mon, 31 May 2021 07:03:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbxQ-00B3aQ-AD
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:03:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbxP-0001Us-2a; Mon, 31 May 2021 09:03:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbxO-0005Wz-Nf; Mon, 31 May 2021 09:03:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 May 2021 09:03:25 +0200
Message-Id: <20210531070325.19627-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531070325.19627-1-a.fatoum@pengutronix.de>
References: <20210531070325.19627-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_000328_403979_3C2F2303 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] RISC-V: erizo: make it easier to reuse ns16550 debug_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming StarFive support also uses ns16550 compatibles as UART IP.
Make reuse easier by making the two most likely parameters to change
SoC-specific (base address and baud clock frequency) and move the rest
behind the new CONFIG_DEBUG_LL_NS16550.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/riscv/include/asm/debug_ll.h | 7 +++++--
 common/Kconfig                    | 6 ++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index 6904460af98f..13609d25c559 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -12,13 +12,16 @@
 
 #include <linux/kconfig.h>
 
-#ifdef CONFIG_DEBUG_ERIZO
+#ifdef CONFIG_DEBUG_LL_NS16550
 
+#if defined CONFIG_DEBUG_ERIZO
 #define DEBUG_LL_UART_ADDR	0x90000000
+#define DEBUG_LL_UART_CLK       (24000000 / 16)
+#endif
+
 #define DEBUG_LL_UART_SHIFT	2
 #define DEBUG_LL_UART_IOSIZE32
 
-#define DEBUG_LL_UART_CLK       (24000000 / 16)
 #define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
 #define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
 
diff --git a/common/Kconfig b/common/Kconfig
index db7cc6713ae2..ce349d4ebbf6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1374,6 +1374,7 @@ config DEBUG_RPI3_MINI_UART
 config DEBUG_ERIZO
 	bool "Erizo ns16550 port"
 	depends on SOC_ERIZO
+	select DEBUG_LL_NS16550
 
 config DEBUG_SIFIVE
 	bool "SiFive serial0 port"
@@ -1381,6 +1382,11 @@ config DEBUG_SIFIVE
 
 endchoice
 
+config DEBUG_LL_NS16550
+	bool
+	help
+	  Selected by RISC-V platforms that use ns16550 for debug_ll
+
 config DEBUG_IMX_UART_PORT
 	int "i.MX Debug UART Port Selection" if DEBUG_IMX1_UART || \
 						DEBUG_IMX21_UART || \
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

