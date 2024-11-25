Delivery-date: Mon, 25 Nov 2024 16:10:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajF-000FKp-1P
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:10:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajF-0006uw-8i
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:10:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gC2elvF7m1ip9l/NmbUfP5O0+8V1yA0v7mz9e8yDOP0=; b=hIBjCEh65FEJSJHTeqDPFzPm7s
	8lG3lRMOePiGqM9swUDBKRRhB3npbQ5ofgh5ixnq8nJQlZEuKjlkMqZXTKKFlXSiEYa/lMFD6GE2l
	UNsmXKgi+oAyf6DsyRNVa8r3REPQujBllyju0NVivQdSDdPzGwA6XuN+e7mL90Cdqh1P0DJO0xKBo
	KiL7wOPMPE1W8JhmqwWxDmBqbVZ9sN0cSUYhHulLsCrV6soqIt3TD8SzBNrdG/mAXFG8HqxlomD8x
	antdS5YqBZ/+3fk8p1257T1bzLKHMmKDNKHiJA7zS6qMFbcJMDa5EQ+L3I2BVpyMjtcfb9g1QZ9Rl
	vGYRO61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFail-00000008P0c-28v5;
	Mon, 25 Nov 2024 15:09:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaih-00000008Oy0-3Ixh
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:09:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaig-0006cw-IF; Mon, 25 Nov 2024 16:09:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-00069r-1t;
	Mon, 25 Nov 2024 16:09:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-001HUO-23;
	Mon, 25 Nov 2024 16:09:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:09:45 +0100
Message-Id: <20241125150945.166979-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125150945.166979-1-a.fatoum@pengutronix.de>
References: <20241125150945.166979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_070947_821712_BC012051 
X-CRM114-Status: GOOD (  15.48  )
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
Subject: [PATCH 4/4] Makefile: add LLVM/clang support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We can't compile all of barebox with clang yet, because we use
GCC-specific extensions, especially C-code in naked functions, which we
is judiciously used on 32-bit ARM platforms.

Nevertheless, sandbox can already be used with clang and it's useful for
incoming support for libfuzzer, so let's add support to Kbuild.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile               | 41 +++++++++++++++++++++++++++++++++++------
 arch/arm/Kconfig       |  3 ++-
 arch/sandbox/Makefile  |  4 ++++
 scripts/Makefile.clang |  9 +++++++++
 4 files changed, 50 insertions(+), 7 deletions(-)
 create mode 100644 scripts/Makefile.clang

diff --git a/Makefile b/Makefile
index b17452ed2cb1..7f7dde9e6bc9 100644
--- a/Makefile
+++ b/Makefile
@@ -383,8 +383,19 @@ HOST_LFS_CFLAGS := $(shell getconf LFS_CFLAGS 2>/dev/null)
 HOST_LFS_LDFLAGS := $(shell getconf LFS_LDFLAGS 2>/dev/null)
 HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 
-HOSTCC       = gcc
-HOSTCXX      = g++
+ifneq ($(LLVM),)
+ifneq ($(filter %/,$(LLVM)),)
+LLVM_PREFIX := $(LLVM)
+else ifneq ($(filter -%,$(LLVM)),)
+LLVM_SUFFIX := $(LLVM)
+endif
+
+HOSTCC	= $(LLVM_PREFIX)clang$(LLVM_SUFFIX)
+HOSTCXX	= $(LLVM_PREFIX)clang++$(LLVM_SUFFIX)
+else
+HOSTCC	= gcc
+HOSTCXX	= g++
+endif
 
 KBUILD_USERHOSTCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
 			      -O2 -fomit-frame-pointer -std=gnu11
@@ -397,15 +408,26 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
-
-LD		= $(CROSS_COMPILE)ld
-CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
+ifneq ($(LLVM),)
+CC		= $(LLVM_PREFIX)clang$(LLVM_SUFFIX)
+LD		= $(LLVM_PREFIX)ld.lld$(LLVM_SUFFIX)
+AR		= $(LLVM_PREFIX)llvm-ar$(LLVM_SUFFIX)
+NM		= $(LLVM_PREFIX)llvm-nm$(LLVM_SUFFIX)
+OBJCOPY		= $(LLVM_PREFIX)llvm-objcopy$(LLVM_SUFFIX)
+OBJDUMP		= $(LLVM_PREFIX)llvm-objdump$(LLVM_SUFFIX)
+READELF		= $(LLVM_PREFIX)llvm-readelf$(LLVM_SUFFIX)
+STRIP		= $(LLVM_PREFIX)llvm-strip$(LLVM_SUFFIX)
+else
+CC		= $(CROSS_COMPILE)gcc
+LD		= $(CROSS_COMPILE)ld
 AR		= $(CROSS_COMPILE)ar
 NM		= $(CROSS_COMPILE)nm
-STRIP		= $(CROSS_COMPILE)strip
 OBJCOPY		= $(CROSS_COMPILE)objcopy
 OBJDUMP		= $(CROSS_COMPILE)objdump
+READELF		= $(CROSS_COMPILE)readelf
+STRIP		= $(CROSS_COMPILE)strip
+endif
 LEX		= flex
 YACC		= bison
 AWK		= awk
@@ -459,6 +481,7 @@ KBUILD_AFLAGS_KERNEL :=
 KBUILD_CFLAGS_KERNEL :=
 KBUILD_AFLAGS_MODULE := -DMODULE
 KBUILD_CFLAGS_MODULE := -DMODULE
+CLANG_FLAGS :=
 
 LDFLAGS_barebox	:= -Map barebox.map
 
@@ -530,6 +553,10 @@ ifdef building_out_of_srctree
 	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+include $(srctree)/scripts/Makefile.clang
+endif
+
 ifdef config-build
 # ===========================================================================
 # *config targets only - make sure prerequisites are updated, and descend
@@ -660,6 +687,8 @@ KBUILD_CFLAGS	+= -fno-omit-frame-pointer -fno-optimize-sibling-calls
 KBUILD_CFLAGS	+= $(call cc-disable-warning,frame-address,)
 endif
 
+KBUILD_CFLAGS-$(CONFIG_CC_IS_CLANG) += -Wno-gnu
+
 KBUILD_CFLAGS-$(CONFIG_WERROR) += -Werror
 
 # This warning generated too much noise in a regular build.
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0251f2dcef62..516cc721a5f6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -287,8 +287,9 @@ config BOARD_ARM_GENERIC_DT_AARCH64
 	default y
 
 config AEABI
-	bool "Use the ARM EABI to compile barebox"
+	bool "Use the ARM EABI to compile barebox" if !CC_IS_CLANG
 	depends on !CPU_V8
+	default CC_IS_CLANG
 	help
 	  This option allows for barebox to be compiled using the latest
 	  ARM ABI (aka EABI).
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 5c51f2de38b3..5d434bcbf19b 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -62,6 +62,10 @@ endif
 ifeq ($(CONFIG_ASAN),y)
 KBUILD_CPPFLAGS += -fsanitize=address
 SANITIZER_LIBS += -fsanitize=address
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+KBUILD_CPPFLAGS += -fno-sanitize-address-globals-dead-stripping
+BAREBOX_LDFLAGS += -fno-sanitize-address-globals-dead-stripping
+endif
 endif
 
 ifeq ($(CONFIG_UBSAN),y)
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
new file mode 100644
index 000000000000..c0302ff82670
--- /dev/null
+++ b/scripts/Makefile.clang
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+CLANG_FLAGS	+= -Wno-typdef-redefinition
+CLANG_FLAGS	+= -Werror=unknown-warning-option
+CLANG_FLAGS	+= -Werror=ignored-optimization-argument
+CLANG_FLAGS	+= -Werror=option-ignored
+CLANG_FLAGS	+= -Werror=unused-command-line-argument
+KBUILD_CPPFLAGS	+= $(CLANG_FLAGS)
+KBUILD_USERHOSTCFLAGS += $(CLANG_FLAGS)
+export CLANG_FLAGS
-- 
2.39.5



