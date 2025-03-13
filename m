Delivery-date: Thu, 13 Mar 2025 07:46:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKu-00DSPn-05
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:46:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKs-0006tZ-Nm
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:46:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZWAwO5Z36WqNinTMZSew075Dmi/tYAeeEdIAFJlm8f8=; b=MbEDXHeTSRO8Jics311Gum4sx0
	KvEyq/OAZVdy1HQndsD/vSrwr9TuD0lgjLLug1TBlgwk+l9E+I5NK8QSiKebsAdBMQP+vUyz6DSiG
	XASIZd7d4q7ocLd5QFlFeqqv0Lp03euuJa+cjjCozc7yos6p7AIWyQb/DLmrZWiDXs1CeijI0vcNj
	aR48H48f7Y7TbXDHsiBjdaVNV/LvV8jGOQuASTS0YAtTzRmFSMAfpzLplpAYVNv9To2xi+3k0GJs3
	xX10P1T/nN9GnOnTY4AaNVTLF81WPGuQsvQOyDkjk0CJg84PMUyVTckMyZnmP4la+YKEdcdHsL/69
	TJ6CdR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKS-0000000AFlm-2jnd;
	Thu, 13 Mar 2025 06:46:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKN-0000000AFhm-2POH
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:46:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-0006Vm-AI; Thu, 13 Mar 2025 07:45:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-005UJF-0I;
	Thu, 13 Mar 2025 07:45:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKL-000K8j-3D;
	Thu, 13 Mar 2025 07:45:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:45:55 +0100
Message-Id: <20250313064557.77398-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313064557.77398-1-a.fatoum@pengutronix.de>
References: <20250313064557.77398-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234559_621483_0615174A 
X-CRM114-Status: GOOD (  12.40  )
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
Subject: [PATCH 4/6] arch: move hidden arch options to arch/Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a number of Kconfig symbols that are exclusively selected from
architecture Kconfig files, but are defined all over.

Move the definition of these symbols into arch/Kconfig, where they
are supposed to be.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig            | 42 +++++++++++++++++++++++++++++++++++++++++
 common/Kconfig          | 21 ---------------------
 common/Kconfig.debug_ll |  3 ---
 lib/Kconfig             | 12 ------------
 lib/Kconfig.ubsan       |  2 --
 lib/kasan/Kconfig       |  3 ---
 6 files changed, 42 insertions(+), 41 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 21175b90a076..b1200184678f 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -62,5 +62,47 @@ config ARCH_DMA_DEFAULT_COHERENT
 config ARCH_HAS_ASAN_FIBER_API
 	bool
 
+config ARCH_HAS_STACK_DUMP
+	bool
+
+config ARCH_HAS_DATA_ABORT_MASK
+	bool
+
+config ARCH_HAS_ZERO_PAGE
+	bool
+
+config HAVE_EFFICIENT_UNALIGNED_ACCESS
+	bool
+
 config HAVE_ARCH_BOARD_GENERIC_DT
 	bool
+
+config HAVE_MOD_ARCH_SPECIFIC
+	bool
+	help
+	  The arch uses struct mod_arch_specific to store data.  Many arches
+	  just need a simple module loader without arch specific data - those
+	  should not enable this.
+
+config ARCH_HAS_SJLJ
+	bool
+	help
+	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
+
+config ARCH_DMA_ADDR_T_64BIT
+	bool
+
+config ARCH_USE_SYM_ANNOTATIONS
+	bool
+	help
+	  This is selected by architectures that exclusively use the new SYM_
+	  macros in their assembly code and not the deprecated ENTRY/PROC.
+
+config HAS_DEBUG_LL
+	bool
+
+config HAVE_ARCH_KASAN
+	bool
+
+config ARCH_HAS_UBSAN_SANITIZE_ALL
+	bool
diff --git a/common/Kconfig b/common/Kconfig
index 6e5fba33ea4a..de66f0461cf1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -35,11 +35,6 @@ config HAS_DMA
 	  Drivers that depend on a DMA implementation can depend on this
 	  config, so that you don't get a compilation error.
 
-config ARCH_HAS_SJLJ
-	bool
-	help
-	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
-
 config GENERIC_GPIO
 	bool
 
@@ -84,9 +79,6 @@ config MENUTREE
 	select GLOB
 	select GLOB_SORT
 
-config ARCH_DMA_ADDR_T_64BIT
-	bool
-
 config BAREBOX_UPDATE_IMX_NAND_FCB
 	bool
 	depends on ARCH_IMX7 || ARCH_IMX6 || ARCH_IMX28
@@ -359,13 +351,6 @@ config MODULES
 	  As modules can't be signed, loading external modules is not
 	  recommended for secure systems.
 
-config HAVE_MOD_ARCH_SPECIFIC
-	bool
-	help
-	  The arch uses struct mod_arch_specific to store data.  Many arches
-	  just need a simple module loader without arch specific data - those
-	  should not enable this.
-
 config KALLSYMS
 	depends on HAS_KALLSYMS
 	bool "kallsyms"
@@ -1359,9 +1344,3 @@ source "common/boards/Kconfig"
 config DDR_SPD
 	bool
 	select CRC_ITU_T
-
-config ARCH_USE_SYM_ANNOTATIONS
-	bool
-	help
-	  This is selected by architectures that exclusively use the new SYM_
-	  macros in their assembly code and not the deprecated ENTRY/PROC.
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 1f9255b1a45b..8c49f5b72882 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -1,8 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config HAS_DEBUG_LL
-	bool
-
 config DEBUG_LL
 	bool
 	depends on HAS_DEBUG_LL
diff --git a/lib/Kconfig b/lib/Kconfig
index 40c7b2cb5d65..8e1d8086fbb6 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -213,18 +213,6 @@ config BLOBGEN
 	select BASE64
 	bool "include blob encode/decode support"
 
-config ARCH_HAS_STACK_DUMP
-	bool
-
-config ARCH_HAS_DATA_ABORT_MASK
-	bool
-
-config ARCH_HAS_ZERO_PAGE
-	bool
-
-config HAVE_EFFICIENT_UNALIGNED_ACCESS
-	bool
-
 config GENERIC_ALLOCATOR
 	bool
 	help
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index c04ff3cbb6fd..063563536be1 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -1,6 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-config ARCH_HAS_UBSAN_SANITIZE_ALL
-	bool
 
 config UBSAN
 	bool "Undefined behaviour sanity checker"
diff --git a/lib/kasan/Kconfig b/lib/kasan/Kconfig
index 895a62d88439..532412953ba5 100644
--- a/lib/kasan/Kconfig
+++ b/lib/kasan/Kconfig
@@ -1,8 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config HAVE_ARCH_KASAN
-	bool
-
 config CC_HAS_KASAN_GENERIC
 	def_bool $(cc-option, -fsanitize=kernel-address)
 
-- 
2.39.5



