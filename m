Delivery-date: Tue, 16 Mar 2021 09:09:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4lJ-0002Oa-C8
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:09:09 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4lI-0001QA-D1
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1fsVBFpB6MNWZ/L26WvQ5tvWiahhYvY509RzQtfJAd0=; b=m/AZfAO0JT/lpnQfcISOkFwcw
	rM/nQJ7ZLA48x8TmkJDLdHU/Lg8my7Xllpfnuj2t1OFao9jdPDV5EjNEpmdVcvuHcq6j0OZzLhWNb
	6lCdxmFoXnpRFswW8uTt9YBHTRSYW8gcNj3Z9qYoT9QFETdHqbEqYZUd7Je/+RZphXrYtcZJXFJi0
	FXMjYhgLN4LEvN3rcnS/Arel9hcfcou/MH/98cohZyK3BcRcU1gbnEuPMW2nEDZ0O3iJHAJ2wNzOj
	ubxabCzQwdHujd/8xhSi+bw3mmYvRSo5O98m/gXhqDv+MirIagNO1W6+EDfKJNZEEgYOA0nasHr/Q
	IPY0D306A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4jp-0005kt-RX; Tue, 16 Mar 2021 08:07:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4ig-00056c-74
 for barebox@desiato.infradead.org; Tue, 16 Mar 2021 08:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=SQQoCkPJSJwnsungRJZDMUdjQVOrn+BmHbURiu0Kq2s=; b=FZ8tYI422A1cuaJX9ML2MFw4qW
 bgWh2iAfbpV3el8e+aLwMuXipCJkXwHLrxgtPyzXJv9o6Rq2Wz9J3Lu1ZyXgTNEkTLzLy2Gn3s5G0
 At/iKqP/mK1UXvo6A28uOV3fg08OMIhYbz2UB/L+p00lhaPBLBPEYm9rulXpYFf0+0r38HdPc1ZOq
 jUxYh/fL8IFxSoLYlVmYcQlgwyzN56F0sQJ5DlzkAuTsZdI20GumMDkbX7f53rkzQ6K4MlC2VhECV
 fXQJZ79NxGQAebPw0XGJAHplf8wJV8gj3/nFR69GAleL6DBW2c75TCyBHCbbWi1b3GSPKdzxlKxZu
 sGtVtemQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4hf-001dIS-VK
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:06:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hS-0007yD-Kz; Tue, 16 Mar 2021 09:05:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hR-0006DL-7Y; Tue, 16 Mar 2021 09:05:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Mar 2021 09:05:01 +0100
Message-Id: <20210316080505.19361-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316080505.19361-1-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_080527_526610_920AA033 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/20] RISC-V: add 64-bit support
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

