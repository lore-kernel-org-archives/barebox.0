Delivery-date: Sun, 21 Mar 2021 16:20:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsY-00022W-F5
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:20:34 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsU-0002Hx-Rc
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:20:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1fsVBFpB6MNWZ/L26WvQ5tvWiahhYvY509RzQtfJAd0=; b=h4lHvj6MGDDwrSUhoOpxPiNUN
	yvIiBwDD2rBjDND/OVJoT07ZTvG+OrEpcj/4mS8KO3hzUxdP1GSn7P1M9W13jb25CuGMMqPYztQQ8
	V6pMGVOdDkWEM0sjYsZ/QefGC1RCv8Oy6igyA5rNyuyttTbzrARKkmGDW79vLR3N/a5aNXYBl5yMo
	7wvhph7p7Yu9K31XUQJs8PWB/Mh1aeyj6tolILN54bBOEthNdBtA5+BlNyMeVIilQX0Gn9ZvBoZDY
	8C7tK2o2lovHs8hmRhuSf4sfuagyOurf0/mq5mJ8iS/2qUsBvNjyRcveMAnJ/7XKyy0/lSdTowepz
	R8sqM9/UA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzqw-00A4PI-1x; Sun, 21 Mar 2021 15:18:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzm5-00A41d-5D
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011a-By; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm1-0007wh-2M; Sun, 21 Mar 2021 16:13:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:40 +0100
Message-Id: <20210321151344.5810-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151441_862170_84C3AEEA 
X-CRM114-Status: GOOD (  13.07  )
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
Subject: [PATCH v3 17/21] RISC-V: add 64-bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

As our assembly routines are now written to work correctly on 32-bit as
well as 64-bit, nothing is holding us back from adding 64-bit support.

Signed-off-by: Rouven Czerwinski <r.czerwinksi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig             | 27 +++++++++++++++++++--------
 arch/riscv/Makefile            |  7 +++++--
 arch/riscv/include/asm/elf.h   |  1 -
 arch/riscv/include/asm/types.h |  8 +-------
 arch/riscv/lib/barebox.lds.S   |  5 +++++
 arch/riscv/lib/pbl.lds.S       |  5 +++++
 6 files changed, 35 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 91e8546f9624..08a0e7cef48d 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -11,6 +11,7 @@ config RISCV
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAVE_IMAGE_COMPRESSION
+	select HAS_ARCH_SJLJ
 	select HAS_KALLSYMS
 
 config ARCH_TEXT_BASE
@@ -25,6 +26,7 @@ choice
 
 config MACH_ERIZO
 	bool "erizo family"
+	select ARCH_RV32I
 	select HAS_DEBUG_LL
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
@@ -41,24 +43,33 @@ config ARCH_RV32I
 	select GENERIC_LIB_ASHLDI3
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
-	select HAS_ARCH_SJLJ
+	select 32BIT
+
+config ARCH_RV64I
+	bool "RV64I"
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select 64BIT
 
 endchoice
 
 config CPU_SUPPORTS_32BIT_KERNEL
 	bool
 
-choice
-	prompt "barebox code model"
-	default 32BIT
+config CPU_SUPPORTS_64BIT_KERNEL
+	bool
+
+config PHYS_ADDR_T_64BIT
+	bool
 
 config 32BIT
-	bool "32-bit barebox"
+	bool
 	depends on CPU_SUPPORTS_32BIT_KERNEL
-	help
-	  Select this option to build a 32-bit barebox.
 
-endchoice
+config 64BIT
+	bool
+	depends on CPU_SUPPORTS_64BIT_KERNEL
+	select ARCH_DMA_ADDR_T_64BIT
+	select PHYS_ADDR_T_64BIT
 
 source "arch/riscv/mach-erizo/Kconfig"
 
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 00456ed02ce1..c49c1b09ec8e 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -3,8 +3,11 @@ KBUILD_DEFCONFIG := erizo_generic_defconfig
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
 ifeq ($(CONFIG_ARCH_RV32I),y)
-	riscv-cflags-y := -march=rv32im -mabi=ilp32
-	riscv-ldflags-y := -melf32lriscv
+	riscv-cflags-y += -march=rv32im -mabi=ilp32
+	riscv-ldflags-y += -melf32lriscv
+else
+	riscv-cflags-y += -march=rv64im -mabi=lp64
+	riscv-ldflags-y += -melf64lriscv
 endif
 
 riscv-cflags-y += -Wstrict-prototypes -mcmodel=medany -fpic
diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
index adb8ec8f6ece..0cd27724da60 100644
--- a/arch/riscv/include/asm/elf.h
+++ b/arch/riscv/include/asm/elf.h
@@ -4,7 +4,6 @@
 
 #if __SIZEOF_POINTER__ == 8
 #define ELF_CLASS	ELFCLASS64
-#define CONFIG_PHYS_ADDR_T_64BIT
 #else
 #define ELF_CLASS	ELFCLASS32
 #endif
diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
index af37d7738c65..1ad5904f9178 100644
--- a/arch/riscv/include/asm/types.h
+++ b/arch/riscv/include/asm/types.h
@@ -3,18 +3,12 @@
 
 #include <asm-generic/int-ll64.h>
 
-#ifdef __riscv64
+#if __riscv_xlen == 64
 /*
  * This is used in dlmalloc. On RISCV64 we need it to be 64 bit
  */
 #define INTERNAL_SIZE_T unsigned long
 
-/*
- * This is a Kconfig variable in the Kernel, but we want to detect
- * this during compile time, so we set it here.
- */
-#define CONFIG_PHYS_ADDR_T_64BIT
-
 #endif
 
 #endif /* __ASM_RISCV_TYPES_H */
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 562ad5dc6662..7856b57a5220 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -15,6 +15,11 @@
 
 OUTPUT_ARCH(riscv)
 ENTRY(start)
+#ifdef CONFIG_64BIT
+OUTPUT_FORMAT("elf64-littleriscv")
+#else
+OUTPUT_FORMAT("elf32-littleriscv")
+#endif
 SECTIONS
 {
 	. = 0x0;
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index 881faac34064..e238b2bfd34e 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -6,6 +6,11 @@
 #include <asm-generic/memory_layout.h>
 
 OUTPUT_ARCH(riscv)
+#ifdef CONFIG_64BIT
+OUTPUT_FORMAT("elf64-littleriscv")
+#else
+OUTPUT_FORMAT("elf32-littleriscv")
+#endif
 SECTIONS
 {
 	. = 0x0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

