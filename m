Delivery-date: Fri, 09 Aug 2024 16:19:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSd-007rQX-28
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:19:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSc-00074F-RH
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:19:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+yrB18KTdHcc3UzjitaQ/J09Y03MZoztXC6OPpItTyo=; b=VqJAmDhmMreyjp8L7E8qp5GpAm
	+nXpSgsJqkhUXnHwfQYcNS/BzTFgNephoAIFYuS1ECzGM8Pqjl+sszaE4wUE02AXjJ8uOwi+/RaYi
	hdaX8cyDOKFRPIPYhMq+70eppOQmcwOLyWIsrNiNlCR0B7uwyFxMkOD4XKkLVXeTUBJwK+He2jOQ0
	F0yjo2P41qbJBc65mLFT+wsaNuWYZNBdKLj5XPdWF73rFnKJVWmrRlmJi+CLa2x1JsamZiRgQ5m8P
	IYVeE/hRIO86xMoDKEJ7xZQ2zDb6LSxt7ABSJ0P50Gm5MhmcWK7+ldoues5u2MEQI8cT+2SZQ4vUK
	FksBML1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQS7-0000000BUzx-20sX;
	Fri, 09 Aug 2024 14:18:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQRR-0000000BUhx-2uC7
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:18:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-0006mN-E7; Fri, 09 Aug 2024 16:17:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRH-005gZ7-Vt; Fri, 09 Aug 2024 16:17:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRH-001JLI-2p;
	Fri, 09 Aug 2024 16:17:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:17:52 +0200
Message-Id: <20240809141755.312665-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071805_752996_546F5918 
X-CRM114-Status: GOOD (  14.79  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: add ARM32/ARM64 symbols for use in generic code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The CPU_32 and CPU_64 symbols are only defined for ARM, but they are
still confusing to encounter in common code, because they have no
explicit reference to ARM. Add ARM32/ARM64 symbols that can be used
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL                | 2 +-
 arch/arm/Kconfig       | 6 ++++++
 commands/Kconfig       | 4 ++--
 commands/smc.c         | 2 +-
 efi/Kconfig            | 4 ++--
 include/image.h        | 2 +-
 lib/decompress_unxz.c  | 2 +-
 pbl/Kconfig            | 2 +-
 scripts/Makefile.kasan | 9 ++++-----
 scripts/Makefile.pic   | 6 ++----
 test/self/digest.c     | 2 +-
 11 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 70e0f6f1740e..861d397814d9 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -97,7 +97,7 @@ do_build_target() {
 	${MAKE} ${target} &>/dev/null
 
 	if [ ${arch} = "arm" ]; then
-		grep -q "CONFIG_CPU_64=y" ${BUILDDIR}/.config
+		grep -q "CONFIG_ARM64=y" ${BUILDDIR}/.config
 		if [ $? = 0 ]; then
 			arch=arm64
 		fi
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 89125ca576ea..a998b18442b5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -15,6 +15,12 @@ config ARM
 	select PBL_RELOCATABLE
 	default y
 
+config ARM32
+	def_bool CPU_32
+
+config ARM64
+	def_bool CPU_64
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
diff --git a/commands/Kconfig b/commands/Kconfig
index 0c1de7606ea1..4a0486861186 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -463,7 +463,7 @@ config CMD_BOOTM
 config CMD_BOOTU
 	tristate
 	default y
-	depends on ARM && !CPU_64v8
+	depends on ARM32
 	prompt "bootu"
 	help
 	  Boot into already loaded Linux kernel, which must be raw (uncompressed).
@@ -472,7 +472,7 @@ config CMD_BOOTU
 
 config CMD_BOOTZ
 	tristate
-	depends on ARM && !CPU_64v8
+	depends on ARM32
 	prompt "bootz"
 	help
 	  Boot Linux zImage
diff --git a/commands/smc.c b/commands/smc.c
index 31430655829a..4d9426323520 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -111,7 +111,7 @@ static int do_smc(int argc, char *argv[])
 			printf("found psci version %ld.%ld\n", res.a0 >> 16, res.a0 & 0xffff);
 			break;
 		case 'c':
-			if (IS_ENABLED(CONFIG_CPU_64)) {
+			if (IS_ENABLED(CONFIG_ARM64)) {
 				printf("CPU bootstrap test not supported for ARMv8\n");
 				return COMMAND_ERROR;
 			}
diff --git a/efi/Kconfig b/efi/Kconfig
index dfe4d7327084..dc43addd60ec 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -39,8 +39,8 @@ config EFI_DEVICEPATH
 
 config EFI_PAYLOAD_DEFAULT_PATH
 	string
-	default "EFI/BOOT/BOOTARM.EFI"		if CPU_32
-	default "EFI/BOOT/BOOTAA64.EFI"		if CPU_64
+	default "EFI/BOOT/BOOTARM.EFI"		if ARM32
+	default "EFI/BOOT/BOOTAA64.EFI"		if ARM64
 	default "EFI/BOOT/BOOTIA32.EFI"		if X86_32
 	default "EFI/BOOT/BOOTx64.EFI"		if X86_64
 	default "EFI/BOOT/BOOTRISCV32.EFI"	if ARCH_RV32I
diff --git a/include/image.h b/include/image.h
index 277a546c8500..d9a1b8f3ee02 100644
--- a/include/image.h
+++ b/include/image.h
@@ -104,7 +104,7 @@ enum {
 #if defined(__PPC__)
 #define IH_ARCH IH_ARCH_PPC
 #elif defined(__ARM__)
-#ifdef CONFIG_CPU_64v8
+#ifdef CONFIG_ARM64
 #define IH_ARCH IH_ARCH_ARM64
 #else
 #define IH_ARCH IH_ARCH_ARM
diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
index 7b8a9cd33158..e97fca022a15 100644
--- a/lib/decompress_unxz.c
+++ b/lib/decompress_unxz.c
@@ -131,7 +131,7 @@
 #	define XZ_DEC_POWERPC
 #endif
 #ifdef CONFIG_ARM
-#	ifdef CONFIG_CPU_64
+#	ifdef CONFIG_ARM64
 #		define XZ_DEC_ARM64
 #	elif defined CONFIG_THUMB2_BAREBOX
 #		define XZ_DEC_ARMTHUMB
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 5ff2a6ad3c3c..98d71791454b 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -48,7 +48,7 @@ config PBL_RELOCATABLE
 
 config PBL_FULLY_PIC
 	bool "fully position-independent pbl image"
-	depends on PBL_RELOCATABLE && ARM && CPU_64
+	depends on PBL_RELOCATABLE && ARM64
 	help
 	  Compared to CONFIG_PBL_RELOCATABLE, this image has no relocations in
 	  the code sections.
diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
index 83f6aa543d01..f8759cb8bf73 100644
--- a/scripts/Makefile.kasan
+++ b/scripts/Makefile.kasan
@@ -8,10 +8,9 @@ CFLAGS_KASAN_MINIMAL := -fsanitize=kernel-address
 
 cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
 
+CFLAGS_KASAN-$(CONFIG_ARM32) += $(call cc-param,asan-stack=1)
+
 CFLAGS_KASAN := $(CFLAGS_KASAN_MINIMAL) \
 	$(call cc-param,asan-globals=1) \
-	$(call cc-param,asan-instrument-allocas=1)
-
-ifndef CONFIG_CPU_64
-CFLAGS_KASAN += $(call cc-param,asan-stack=1)
-endif
+	$(call cc-param,asan-instrument-allocas=1) \
+	$(CFLAGS_KASAN-y)
diff --git a/scripts/Makefile.pic b/scripts/Makefile.pic
index c30894ba98d9..a08ee67f4a3e 100644
--- a/scripts/Makefile.pic
+++ b/scripts/Makefile.pic
@@ -8,10 +8,8 @@
 picflags-$(CONFIG_X86_64)	:= -mcmodel=small
 picflags-$(CONFIG_X86)		+= -fPIC -fno-asynchronous-unwind-tables
 
-ifeq ($(CONFIG_ARM),y)
-picflags-$(CONFIG_CPU_32)	:= -fpic -mno-single-pic-base
-picflags-$(CONFIG_CPU_64)	:= -fpie
-endif
+picflags-$(CONFIG_ARM32)	:= -fpic -mno-single-pic-base
+picflags-$(CONFIG_ARM64)	:= -fpie
 
 picflags-y			+= -include $(srctree)/include/linux/hidden.h \
 				   -D__fully_pic__ \
diff --git a/test/self/digest.c b/test/self/digest.c
index 32815c85ba70..8d38f2be9377 100644
--- a/test/self/digest.c
+++ b/test/self/digest.c
@@ -206,7 +206,7 @@ static void test_digests(void)
 	test_digest_md5("generic");
 
 	test_digests_sha12("generic");
-	if (IS_ENABLED(CONFIG_CPU_32))
+	if (IS_ENABLED(CONFIG_ARM32))
 		test_digests_sha12("asm");
 
 	test_digests_sha35("generic");
-- 
2.39.2



