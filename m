Delivery-date: Wed, 27 May 2026 14:18:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDDC-004Nwh-2N
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 14:18:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDDB-0001be-Tp
	for lore@pengutronix.de; Wed, 27 May 2026 14:18:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BGA3cVODEXDeAIG1+is7NXh31G1it11clGqQFVlg+lo=; b=lVE0vuajdCzS/sjGm6AUIOB/C+
	sY4vGwUgZRGSTOGO4b1bfzB7kXJCYipjrPp22T055dTFGvmWrLFX6xS9F9+YWXhSLaqxKguEAlszl
	wvXCYJJ4Kko3xXfRI34nqUgGqkKkN8DXskRVxfL/gIeWol4Xx0CKwX/QuZO83WfM0UNjLkq3HchAu
	ftjgxfzybAjTiI0o3XsxskXXGPaizt4hyYsouRL+OAHwJ3DPdhvGUPLlJM8grU663ratRML+errCm
	CB/TUiQRswjKtQFv1f7QIjplyiqLkKIB5XY7LEpGipR4K/ruldTwv/hUbTgEJMpoPFQyyu/CEBkFa
	wuDuoCxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDC4-000000044Bd-33lS;
	Wed, 27 May 2026 12:17:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDC2-000000044Aa-2nsn
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 12:17:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBt-0001FO-1a; Wed, 27 May 2026 14:16:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBs-0026eK-0o;
	Wed, 27 May 2026 14:16:52 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBs-0000000E7Uj-31TC;
	Wed, 27 May 2026 14:16:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: eagle.alexander923@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 27 May 2026 14:15:20 +0200
Message-ID: <20260527121649.3365172-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_051702_708090_8E471956 
X-CRM114-Status: GOOD (  17.35  )
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
Subject: [PATCH master v2 1/5] arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
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
 arch/Kconfig            | 6 ++++++
 arch/arm/Kconfig        | 1 +
 arch/mips/Kconfig       | 1 +
 arch/openrisc/Kconfig   | 1 +
 arch/powerpc/Kconfig    | 1 +
 arch/riscv/Kconfig      | 1 +
 arch/sandbox/Kconfig    | 1 +
 common/Kconfig          | 5 +++--
 common/memory.c         | 3 +++
 include/linux/pagemap.h | 1 +
 10 files changed, 19 insertions(+), 2 deletions(-)

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
index bfca650c49cc..1b2f12498355 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -296,8 +296,9 @@ config MALLOC_BASE
 
 config MALLOC_SIZE
 	hex
-	default 0x400000
-	prompt "malloc area size"
+	default 0x400000 if ARCH_HAS_MALLOC_SIZE
+	default 0
+	prompt "malloc area size" if ARCH_HAS_MALLOC_SIZE
 
 config SCRATCH_SIZE
 	hex
diff --git a/common/memory.c b/common/memory.c
index b61df68e02dc..bf927b6a30f3 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -12,6 +12,7 @@
 #include <init.h>
 #include <linux/ioport.h>
 #include <linux/err.h>
+#include <linux/pagemap.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <malloc.h>
@@ -53,6 +54,8 @@ void mem_malloc_init(void *start, void *end)
 	mem_malloc_initialized = 1;
 }
 
+static_assert(PAGE_ALIGNED(CONFIG_MALLOC_SIZE));
+
 static struct resource *barebox_res;
 static resource_size_t barebox_start;
 static resource_size_t barebox_size;
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 8bdaff4ebf1b..2ca8464f5092 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -15,6 +15,7 @@
 #define PAGE_MASK	(PAGE_SIZE - 1)
 #define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
 #define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
+#define PAGE_ALIGNED(addr)  IS_ALIGNED((unsigned long)(addr), PAGE_SIZE)
 
 #define PAGE_CACHE_SHIFT        PAGE_SHIFT
 #define PAGE_CACHE_SIZE         PAGE_SIZE
-- 
2.47.3



