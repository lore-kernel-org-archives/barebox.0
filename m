Delivery-date: Mon, 05 Dec 2022 14:32:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BZn-00Bda2-Fm
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 14:32:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BZm-0004ht-TG
	for lore@pengutronix.de; Mon, 05 Dec 2022 14:32:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+dpVdSFMeotpoznNr5zjgOgIBKB8NbYQa8sGFY018H0=; b=L/PsPDAsqFqzpxjRSMb6M31THY
	bjkQo860ijGyC2Yy1Ry2YyuFReKQuZYBwQiiHG9bWCnFuhbsGQffWE5K9A2vUrMLacpIByHhYg++i
	p4a9oNEG6KJEMZv61m/S3us87e1tITNyg2InfSM47uxRwgNuJfxlOb2M20BDZynwBapwY/R3frXP8
	/vgrHxn/5lZv7935uQpmFA37bJFY2VWo3u1SZameJLaOT0JmYuDbumxaIj05JsfdK+8PidqUHIX0v
	wH9OwBmrT6UA8w1ljdDsCYhMojoSspfKh6HxMBjsM1x6aTalRy97Y3GIDjvZ3+ygawVhQ6s0EPyBJ
	hYXMQeoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BYT-003QxU-S9; Mon, 05 Dec 2022 13:30:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BYL-003Qv2-CQ
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 13:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2BYK-0004Px-3r; Mon, 05 Dec 2022 14:30:36 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2BYI-002U5P-OJ; Mon, 05 Dec 2022 14:30:35 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2BYI-00CchZ-T8; Mon, 05 Dec 2022 14:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Dec 2022 14:30:33 +0100
Message-Id: <20221205133033.3008535-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_053037_492300_54E80260 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: rename CONFIG_HAS_ARCH_SJLJ to CONFIG_ARCH_HAS_SJLJ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have 9 symbols beginning with ARCH_HAS, but only with HAS_ARCH.
Change it over for symmetry. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig        | 2 +-
 arch/kvx/Kconfig        | 2 +-
 arch/mips/Kconfig       | 2 +-
 arch/mips/lib/Makefile  | 2 +-
 arch/openrisc/Kconfig   | 2 +-
 arch/powerpc/Kconfig    | 2 +-
 arch/riscv/Kconfig      | 2 +-
 arch/riscv/lib/Makefile | 2 +-
 arch/sandbox/Kconfig    | 2 +-
 arch/x86/Kconfig        | 4 ++--
 common/Kconfig          | 4 ++--
 11 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 59fce0c601b4..759b29ee77e1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -7,7 +7,7 @@ config ARM
 	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
 	select HAVE_ARCH_KASAN
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 	select ARM_OPTIMZED_STRING_FUNCTIONS if KASAN
 	default y
 
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 5e7ddeea1ce5..e18d02fffc11 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -14,7 +14,7 @@ config KVX
 	select FLEXIBLE_BOOTARGS
 	select FITIMAGE
 	select GENERIC_FIND_NEXT_BIT
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 	select HAS_CACHE
 	select HAS_DMA
 	select LIBFDT
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index be5a4ff30de9..70d85690dab9 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -302,7 +302,7 @@ choice
 config 32BIT
 	bool "32-bit barebox"
 	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 	help
 	  Select this option if you want to build a 32-bit barebox.
 
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 1ef340202acf..00d72d0a1a0a 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -10,7 +10,7 @@ obj-y += reloc.o
 obj-y += sections.o
 obj-y += shutdown.o
 obj-y += dma-default.o
-obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o
+obj-$(CONFIG_ARCH_HAS_SJLJ) += setjmp.o
 
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memcpy.o
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memset.o
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 34b24bec0858..4ae03b748c79 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -6,7 +6,7 @@ config OPENRISC
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select GENERIC_FIND_NEXT_BIT
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 	default y
 
 # not used
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 7525ecef4948..4ae6d423af15 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -8,7 +8,7 @@ config PPC
 	select HAS_CACHE
 	select GENERIC_FIND_NEXT_BIT
 	select OFTREE
-	select HAS_ARCH_SJLJ
+	select CONFIG_ARCH_HAS_SJLJ
 	default y
 
 choice
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 1190cd42723f..cd7f4abf5694 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -13,7 +13,7 @@ config RISCV
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAVE_IMAGE_COMPRESSION
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 	select HAS_KALLSYMS
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index f3db5320f751..693248080070 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -4,7 +4,7 @@ extra-y += barebox.lds
 
 obj-y += dtb.o
 obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
-obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
+obj-$(CONFIG_ARCH_HAS_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
 obj-$(CONFIG_RISCV_SBI) += sbi.o
 obj-$(CONFIG_CMD_RISCV_CPUINFO) += cpuinfo.o
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index d3889fcac03c..366a1d0b5228 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -15,7 +15,7 @@ config SANDBOX
 	select PARTITION_DISK
 	select ARCH_HAS_STACK_DUMP if ASAN
 	select GENERIC_FIND_NEXT_BIT
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 	select HAS_ASM_DEBUG_LL
 	default y
 
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 5e2e26cd6e5b..bd6a94bd0b0e 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -26,12 +26,12 @@ config 64BIT
 config X86_32
 	def_bool y
 	depends on !64BIT
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 
 config X86_64
 	def_bool y
 	depends on 64BIT
-	select HAS_ARCH_SJLJ
+	select ARCH_HAS_SJLJ
 
 endmenu
 
diff --git a/common/Kconfig b/common/Kconfig
index fb2bf4968310..19cd79311016 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -27,7 +27,7 @@ config HAS_DMA
 	  Drivers that depend on a DMA implementation can depend on this
 	  config, so that you don't get a compilation error.
 
-config HAS_ARCH_SJLJ
+config ARCH_HAS_SJLJ
 	bool
 	help
 	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
@@ -1004,7 +1004,7 @@ config POLLER
 config BTHREAD
 	bool "barebox co-operative (green) thread infrastructure"
 	select HAS_SCHED
-	depends on HAS_ARCH_SJLJ
+	depends on ARCH_HAS_SJLJ
 	help
 	  barebox threads are lightweight cooperative (green) threads that are
 	  scheduled within delay loops and the console idle to asynchronously
-- 
2.30.2



