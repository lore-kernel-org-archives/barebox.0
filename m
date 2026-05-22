Delivery-date: Fri, 22 May 2026 13:00:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNbo-002Zrt-0c
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 13:00:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNbn-0002FT-E8
	for lore@pengutronix.de; Fri, 22 May 2026 13:00:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tj9jfaM42HuyyP0qCrb1Sspq67W3A3tbOaf+x92aAH0=; b=IH880zkx5Qp+NIFoD+4srlmYUF
	FYqtQ0+FAW7KpJGxcQ9dno0lZ2FgRaOb1HQzM2XSIgU4uOtef3mnXKWme9CMHBRQ1TEGqIR/Jzs+j
	Y6sT5MEeqdqjemiNLR3WaP00Kqcg/riDiChVuTnJXZXuHzIm3MGqkkU7xB1GDGZS3i5lu5X1Vb5rJ
	fsduc7CSfgV0jAVJQe0Rf2A4vCpvpeMh5L+ARWjWS3yVFiDcZ5q2N8qlB4VqUbSgIzNdJr+g//NL/
	xctV78ypBo8fa7HERl9KJVLaJu5/NHggsJLajPwsHfu08B+1de5Ln33tvEI1JOnCetrwgVUaKqFU7
	S0YVg6HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNak-0000000AZRG-1qqY;
	Fri, 22 May 2026 10:58:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZOv-2sFf
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0001tw-0x; Fri, 22 May 2026 12:58:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001Fn1-1J;
	Fri, 22 May 2026 12:58:53 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-0000000BFtq-3fxX;
	Fri, 22 May 2026 12:58:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 12:53:07 +0200
Message-ID: <20260522105852.2681680-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
References: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035855_722783_61C11A5F 
X-CRM114-Status: GOOD (  14.05  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/6] arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new option is selected for all platforms, except for x86 and kvx as
these two platforms are the only ones that do not use MALLOC_SIZE:

- x86 (EFI payload): always allocates 16M as all bigger allocations
  are serviced via calling into the UEFI firmware.

- kvx always initializes memory area from barebox_text_end to end of
  memory described in DT

Note that CONFIG_MALLOC_SIZE is not hidden when ARCH_HAS_MALLOC_SIZE
is not selected. The reason for that is that CONFIG_MALLOC_SIZE is most
often 0 (malloc area is dynamically determined), but the Kconfig default
is 4M. This would lead to a breakage when bisecting for most boards:

- Board has CONFIG_MALLOC_SIZE=0
- Bisect jumps over commit removing ARCH_HAS_MALLOC_SIZE for an arch
- CONFIG_MALLOC_SIZE is set to default SZ_4M

This can easily happen, so we keep CONFIG_MALLOC_SIZE around even when
the symbol is unset at a value of 0 to cover the most common case.

For boards that actually set a non-zero value, special consideration
may need to be taken on bisect if the dynamic determination is not
sufficient.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig          | 6 ++++++
 arch/arm/Kconfig      | 1 +
 arch/mips/Kconfig     | 1 +
 arch/openrisc/Kconfig | 1 +
 arch/powerpc/Kconfig  | 1 +
 arch/riscv/Kconfig    | 1 +
 arch/sandbox/Kconfig  | 1 +
 common/Kconfig        | 5 +++--
 8 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 9f5673b5da31..23e65d58d52b 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -92,6 +92,12 @@ config ARCH_HAS_DATA_ABORT_MASK_PBL
 config ARCH_HAS_ZERO_PAGE
 	bool
 
+config ARCH_HAS_MALLOC_SIZE
+	bool
+	help
+	  This is selected by architectures, where CONFIG_MALLOC_SIZE
+	  can be used to specify an exact size of the malloc area.
+
 config HAVE_EFFICIENT_UNALIGNED_ACCESS
 	bool
 
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c735a0dbfd5b..53bddd55e179 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -20,6 +20,7 @@ config ARM
 	select ARCH_HAS_DMA_WRITE_COMBINE
 	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
 	select PBL_IMAGE_ELF
+	select ARCH_HAS_MALLOC_SIZE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d34377a33d47..264815f34d06 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -14,6 +14,7 @@ config MIPS
 	select ARCH_HAS_SJLJ
 	select ELF
 	select HAVE_ARCH_BOOTM_OFTREE
+	select ARCH_HAS_MALLOC_SIZE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index f82d160a3a15..c81be0aa8019 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -8,6 +8,7 @@ config OPENRISC
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
 	select HAS_DEBUG_LL
+	select ARCH_HAS_MALLOC_SIZE
 	default y
 
 config ARCH_MKIMAGE_NAME
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 49050a26d524..d9c9f3583463 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -9,6 +9,7 @@ config PPC
 	select OFTREE
 	select HAVE_ARCH_BOOTM_OFTREE
 	select ARCH_HAS_SJLJ
+	select ARCH_HAS_MALLOC_SIZE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f1d98d1b33a5..3e5de8e0ec63 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -21,6 +21,7 @@ config RISCV
 	select PBL_IMAGE_ELF
 	select HAVE_ARCH_BOARD_GENERIC_DT
 	select HAVE_ARCH_BOOTM_OFTREE
+	select ARCH_HAS_MALLOC_SIZE
 
 config ARCH_LINUX_NAME
 	string
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 504171809193..07821738f27a 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -27,6 +27,7 @@ config SANDBOX
 	select HAVE_PBL_MULTI_IMAGES
 	select PBL_IMAGE_NO_PIGGY
 	select PBL_CLOCKSOURCE if COMPILE_TEST
+	select ARCH_HAS_MALLOC_SIZE
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/common/Kconfig b/common/Kconfig
index a91fc86929f2..5ba4530d3f9b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -291,8 +291,9 @@ config STACK_SIZE
 
 config MALLOC_SIZE
 	hex
-	default 0x400000
-	prompt "malloc area size"
+	default 0x400000 if ARCH_HAS_MALLOC_SIZE
+	default 0
+	prompt "malloc area size" if ARCH_HAS_MALLOC_SIZE
 
 config SCRATCH_SIZE
 	hex
-- 
2.47.3



