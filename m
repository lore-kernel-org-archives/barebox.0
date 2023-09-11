Delivery-date: Mon, 11 Sep 2023 17:10:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYn-00Bcwt-EN
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:10:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYl-0005SA-1P
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:10:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7dIR3EmRzAI3gcKIJ/MUmu8RroM5JnC7yHHEQKAa+cE=; b=X1uTb9EdYrui4gQWCqvE8XSBzu
	GwUUDS6+rYXxVrRVopbjtCeRTMH1xID3frz1bGtV4svPld0osK3NQaCPY1cIBceIpl5Rs35YDJAS7
	nwsWjN0NEd8n8nfYNieJ3c2R3fFr98Hwtk6Ru4yTiFASMSvnj4ndKhHUGQRzIpje+x2IfxKVa0TYO
	QWK4XYeFxSGzEuockuorc24yCzlafQmHnJtw5iM4I3KXOTN1TRHE2af6ZtOlyW/xR06K9WmHQ6vaQ
	xubjgG7UK9WA15UZgRONKlkYZarKbjWfGCy/ofXKFR4bYu5trP7xFQBC6wtzHB0N78gWjP2hk7rCi
	cEsm3ILg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXM-000pT0-2P;
	Mon, 11 Sep 2023 15:09:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXG-000pOw-12
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:09:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiXA-0004yC-15; Mon, 11 Sep 2023 17:09:04 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-005a6M-L6; Mon, 11 Sep 2023 17:09:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX8-00F2re-2N;
	Mon, 11 Sep 2023 17:09:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:08:58 +0200
Message-Id: <20230911150900.3584523-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_080910_513541_90C016A6 
X-CRM114-Status: GOOD (  26.12  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] lib: add stackprotector support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC's "stack-protector" puts, at the beginning of functions, a canary value
on the stack just before the return address, and validates the value just
before actually returning.  Stack based buffer overflows (that need to
overwrite this return address) now also overwrite the canary, which gets
detected and the attack is then neutralized via a barebox panic.

Unlike Linux, we do not add support for the regular stack protector, as
that relies on a heuristic to detect vulnerable functions, which is
greatly improved upon by the later added strong stack protector.

In return, we add a CONFIG_STACKPROTECTOR_ALL option that's missing in
Linux: This turns out to be a nice way to find out, which functions lack
a __prereloc (or __no_stack_protector) annotation as every function will
access the canary and that fails if the function is called prior to
relocation. We don't give it a prompt though, because it's only
interesting for development.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                       |  3 --
 include/linux/compiler_types.h | 18 ++++++-
 lib/Kconfig                    |  2 +
 lib/Kconfig.hardening          | 98 ++++++++++++++++++++++++++++++++++
 lib/Makefile                   |  1 +
 lib/stackprot.c                | 32 +++++++++++
 scripts/Makefile.lib           | 10 ++++
 7 files changed, 159 insertions(+), 5 deletions(-)
 create mode 100644 lib/Kconfig.hardening
 create mode 100644 lib/stackprot.c

diff --git a/Makefile b/Makefile
index fb05e5ee7b22..6b3f035f2eb7 100644
--- a/Makefile
+++ b/Makefile
@@ -656,9 +656,6 @@ KBUILD_CFLAGS	+= -fno-omit-frame-pointer -fno-optimize-sibling-calls
 KBUILD_CFLAGS	+= $(call cc-disable-warning,frame-address,)
 endif
 
-# Force gcc to behave correct even for buggy distributions
-KBUILD_CFLAGS          += $(call cc-option, -fno-stack-protector)
-
 KBUILD_CFLAGS-$(CONFIG_WERROR) += -Werror
 
 # This warning generated too much noise in a regular build.
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 9ce272bba5f3..800bc518feea 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -133,6 +133,20 @@ struct ftrace_likely_data {
 # define fallthrough                    do {} while (0)  /* fallthrough */
 #endif
 
+/*
+ * Optional: only supported since GCC >= 11.1, clang >= 7.0.
+ *
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-no_005fstack_005fprotector-function-attribute
+ *   clang: https://clang.llvm.org/docs/AttributeReference.html#no-stack-protector-safebuffers
+ */
+#if __has_attribute(__no_stack_protector__)
+# define __no_stack_protector		__attribute__((__no_stack_protector__))
+#elif ! defined CONFIG_STACKPROTECTOR
+# define __no_stack_protector		__attribute__((__optimize__("-fno-stack-protector")))
+#else
+# define __no_stack_protector
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
@@ -307,9 +321,9 @@ struct ftrace_likely_data {
 
 /* code that can't be instrumented at all */
 #define noinstr \
-	noinline notrace __no_sanitize_address
+	noinline notrace __no_sanitize_address __no_stack_protector
 
 #define __prereloc \
-	notrace __no_sanitize_address
+	notrace __no_sanitize_address __no_stack_protector
 
 #endif /* __LINUX_COMPILER_TYPES_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index aaede6864533..fbc9fff8654c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -227,3 +227,5 @@ config GENERIC_ALLOCATOR
 	  Support is curently limited to allocaing a complete mmio-sram at once.
 
 endmenu
+
+source "lib/Kconfig.hardening"
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
new file mode 100644
index 000000000000..503fdf7c0cc5
--- /dev/null
+++ b/lib/Kconfig.hardening
@@ -0,0 +1,98 @@
+menu "Hardening options"
+
+config STACKPROTECTOR
+	bool
+
+choice
+	prompt "Stack Protector buffer overflow detection"
+
+config STACKPROTECTOR_NONE
+	bool "None"
+
+config STACKPROTECTOR_STRONG
+	bool "Strong"
+	depends on $(cc-option,-fstack-protector-strong)
+	select STACKPROTECTOR
+	help
+	  This option turns on the "stack-protector" GCC feature. This
+	  feature puts, at the beginning of functions, a canary value on
+	  the stack just before the return address, and validates
+	  the value just before actually returning.  Stack based buffer
+	  overflows (that need to overwrite this return address) now also
+	  overwrite the canary, which gets detected and the attack is then
+	  neutralized via a kernel panic.
+
+	  Functions will have the stack-protector canary logic added in any
+	  of the following conditions:
+
+	  - local variable's address used as part of the right hand side of an
+	    assignment or function argument
+	  - local variable is an array (or union containing an array),
+	    regardless of array type or length
+	  - uses register local variables
+
+	  The canary will be a fixed value at first, but will be replaced by
+	  one generated from a hardware random number generator if available
+	  later on.
+
+config STACKPROTECTOR_ALL
+	bool "All"
+	depends on $(cc-option,-fstack-protector-all)
+	depends on COMPILE_TEST
+	select STACKPROTECTOR
+	help
+	  This pushes and verifies stack protector canaries on all functions,
+	  even those that don't need it. As this implies injection of a
+	  global variable dependency on every function, this option is useful
+	  for crashing functions called prior to prerelocation, which lack a
+	  __prereloc attribute. This is likely the only upside compared to
+	  the strong variant, so it's not selectable by default.
+
+endchoice
+
+choice
+	prompt "Stack Protector buffer overflow detection for PBL"
+
+config PBL_STACKPROTECTOR_NONE
+	bool
+
+config PBL_STACKPROTECTOR_STRONG
+	bool "Strong"
+	depends on $(cc-option,-fstack-protector-strong)
+	select STACKPROTECTOR
+	help
+	  For PBL, This option turns on the "stack-protector" GCC feature. This
+	  feature puts, at the beginning of functions, a canary value on
+	  the stack just before the return address, and validates
+	  the value just before actually returning.  Stack based buffer
+	  overflows (that need to overwrite this return address) now also
+	  overwrite the canary, which gets detected and the attack is then
+	  neutralized via a kernel panic.
+
+	  Functions will have the stack-protector canary logic added in any
+	  of the following conditions:
+
+	  - local variable's address used as part of the right hand side of an
+	    assignment or function argument
+	  - local variable is an array (or union containing an array),
+	    regardless of array type or length
+	  - uses register local variables
+
+	  The canary is always a fixed value.
+
+config PBL_STACKPROTECTOR_ALL
+	bool "PBL"
+	depends on $(cc-option,-fstack-protector-strong)
+	depends on COMPILE_TEST
+	select STACKPROTECTOR
+	help
+	  This pushes and verifies stack protector canaries on all functions,
+	  even those that don't need it. As this implies injection of a
+	  global variable dependency on every function, this option is useful
+	  for crashing functions called prior to prerelocation, which lack a
+	  __prereloc attribute. This is likely the only upside compared to
+	  the strong variant.
+
+endchoice
+
+endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 921e5eedf46e..2b577becc444 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -11,6 +11,7 @@ obj-y			+= strtox.o
 obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
 obj-$(CONFIG_KASAN)	+= kasan/
+obj-pbl-$(CONFIG_STACKPROTECTOR)	+= stackprot.o
 pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
 obj-y			+= misc.o
 obj-$(CONFIG_PARAMETER)	+= parameter.o
diff --git a/lib/stackprot.c b/lib/stackprot.c
new file mode 100644
index 000000000000..ca89b37d9042
--- /dev/null
+++ b/lib/stackprot.c
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <printk.h>
+#include <linux/kernel.h>
+#include <linux/export.h>
+#include <init.h>
+#include <stdlib.h>
+
+#ifdef __PBL__
+#define STAGE "PBL"
+#else
+#define STAGE "barebox"
+#endif
+
+void __stack_chk_fail(void);
+
+unsigned long __stack_chk_guard = (unsigned long)(0xfeedf00ddeadbeef & ~0UL);
+
+/*
+ * Called when gcc's -fstack-protector feature is used, and
+ * gcc detects corruption of the on-stack canary value
+ */
+noinstr void __stack_chk_fail(void)
+{
+	panic("stack-protector: " STAGE " stack is corrupted in: %pS\n", _RET_IP_);
+}
+EXPORT_SYMBOL(__stack_chk_fail);
+
+static int stackprot_randomize_guard(void)
+{
+	return get_crypto_bytes(&__stack_chk_guard, sizeof(__stack_chk_guard));
+}
+late_initcall(stackprot_randomize_guard);
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 5f0e666068f3..2af468803d8e 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -160,6 +160,16 @@ ifeq ($(CONFIG_DEBUG_PBL),y)
 PBL_CPPFLAGS   += -DDEBUG
 endif
 
+_stackp_flags-y                                        := -fno-stack-protector
+_stackp_flags-$(CONFIG_STACKPROTECTOR_STRONG)          := -fstack-protector-strong
+_stackp_flags-$(CONFIG_STACKPROTECTOR_ALL)             := -fstack-protector-all
+
+_stackp_flags_pbl-y                                    := -fno-stack-protector
+_stackp_flags_pbl-$(CONFIG_PBL_STACKPROTECTOR_STRONG)  := -fstack-protector-strong
+_stackp_flags_pbl-$(CONFIG_PBL_STACKPROTECTOR_ALL)     := -fstack-protector-all
+
+_c_flags += $(if $(part-of-pbl),$(_stackp_flags_pbl-y),$(_stackp_flags-y))
+
 # If building barebox in a separate objtree expand all occurrences
 # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
 
-- 
2.39.2



