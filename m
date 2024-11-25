Delivery-date: Mon, 25 Nov 2024 16:21:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatZ-000Fml-2p
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:21:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatZ-0001q6-Lz
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:21:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k4Iv2i0FvzARBhQqp8PRZMDvc5A4vaQ/ZKXcWqqx9Oo=; b=zLjJgJnLevq588ObrpC0R4UWZx
	w+iI1ey9Yl8tasYFcVX40jY8baHRvIGDrhx8xuGHKqigAsSkakah5NfuJZRZS6IGjcfCneU1ieTa6
	WGQz3XlI8443x5KahgPdifmFYBTbEPHv3eNGe4M275sNRfZxZVbc3N1hrBWcgLpGQBnWFZmNHQSvH
	LzIGkRYtG2JL8qZ8T2AycwKurz72T5EsBP1WxcC0/cJtJTN9s2ASd8e/ikUTaCOt82INyHovfc4Lo
	FO/ZwtDKWRjalXehUpwdnostmeoy9NNWr5Go8VNVKam11KAh4pnUQUjAVw5T5pwoympTCSYvbSPu9
	y6plbxjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat4-00000008S6x-11k2;
	Mon, 25 Nov 2024 15:20:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat0-00000008S4G-3Ohh
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:20:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasz-0001VN-K5; Mon, 25 Nov 2024 16:20:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0006Or-27;
	Mon, 25 Nov 2024 16:20:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0020Cn-2J;
	Mon, 25 Nov 2024 16:20:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:20:22 +0100
Message-Id: <20241125152024.477375-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152024.477375-1-a.fatoum@pengutronix.de>
References: <20241125152024.477375-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072026_844656_130AB252 
X-CRM114-Status: GOOD (  12.25  )
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
Subject: [PATCH 3/5] hardening: support initializing stack variables by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Uninitialized stack variables can be abused for information exposures
and may even be leveraged for exploits.

Add options to initialize the stack by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile              | 14 ++++++++
 lib/Kconfig.hardening | 76 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 90 insertions(+)

diff --git a/Makefile b/Makefile
index 7f7dde9e6bc9..a1ee82692564 100644
--- a/Makefile
+++ b/Makefile
@@ -689,6 +689,20 @@ endif
 
 KBUILD_CFLAGS-$(CONFIG_CC_IS_CLANG) += -Wno-gnu
 
+# Initialize all stack variables with a 0xAA pattern.
+KBUILD_CFLAGS-$(CONFIG_INIT_STACK_ALL_PATTERN)	+= -ftrivial-auto-var-init=pattern
+
+# Initialize all stack variables with a zero value.
+ifdef CONFIG_INIT_STACK_ALL_ZERO
+KBUILD_CFLAGS	+= -ftrivial-auto-var-init=zero
+ifdef CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO_ENABLER
+# https://github.com/llvm/llvm-project/issues/44842
+CC_AUTO_VAR_INIT_ZERO_ENABLER := -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
+export CC_AUTO_VAR_INIT_ZERO_ENABLER
+KBUILD_CFLAGS	+= $(CC_AUTO_VAR_INIT_ZERO_ENABLER)
+endif
+endif
+
 KBUILD_CFLAGS-$(CONFIG_WERROR) += -Werror
 
 # This warning generated too much noise in a regular build.
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 95dd10085410..8e392d4e8e60 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -12,6 +12,82 @@ config BUG_ON_DATA_CORRUPTION
 
 menu "Memory initialization"
 
+config CC_HAS_AUTO_VAR_INIT_PATTERN
+	def_bool $(cc-option,-ftrivial-auto-var-init=pattern)
+
+config CC_HAS_AUTO_VAR_INIT_ZERO_BARE
+	def_bool $(cc-option,-ftrivial-auto-var-init=zero)
+
+config CC_HAS_AUTO_VAR_INIT_ZERO_ENABLER
+	# Clang 16 and later warn about using the -enable flag, but it
+	# is required before then.
+	def_bool $(cc-option,-ftrivial-auto-var-init=zero -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang)
+	depends on !CC_HAS_AUTO_VAR_INIT_ZERO_BARE
+
+config CC_HAS_AUTO_VAR_INIT_ZERO
+	def_bool CC_HAS_AUTO_VAR_INIT_ZERO_BARE || CC_HAS_AUTO_VAR_INIT_ZERO_ENABLER
+
+choice
+	prompt "Initialize barebox stack variables at function entry"
+	default INIT_STACK_ALL_PATTERN if COMPILE_TEST && CC_HAS_AUTO_VAR_INIT_PATTERN
+	default INIT_STACK_ALL_ZERO if CC_HAS_AUTO_VAR_INIT_ZERO
+	default INIT_STACK_NONE
+	help
+	  This option enables initialization of stack variables at
+	  function entry time. This has the possibility to have the
+	  greatest coverage (since all functions can have their
+	  variables initialized), but the performance impact depends
+	  on the function calling complexity of a given workload's
+	  syscalls.
+
+	  This chooses the level of coverage over classes of potentially
+	  uninitialized variables. The selected class of variable will be
+	  initialized before use in a function.
+
+	config INIT_STACK_NONE
+		bool "no automatic stack variable initialization (weakest)"
+		help
+		  Disable automatic stack variable initialization.
+		  This leaves barebox vulnerable to the standard
+		  classes of uninitialized stack variable exploits
+		  and information exposures.
+
+	config INIT_STACK_ALL_PATTERN
+		bool "pattern-init everything (strongest)"
+		depends on CC_HAS_AUTO_VAR_INIT_PATTERN
+		help
+		  Initializes everything on the stack (including padding)
+		  with a specific debug value. This is intended to eliminate
+		  all classes of uninitialized stack variable exploits and
+		  information exposures, even variables that were warned about
+		  having been left uninitialized.
+
+		  Pattern initialization is known to provoke many existing bugs
+		  related to uninitialized locals, e.g. pointers receive
+		  non-NULL values, buffer sizes and indices are very big. The
+		  pattern is situation-specific; Clang on 64-bit uses 0xAA
+		  repeating for all types and padding except float and double
+		  which use 0xFF repeating (-NaN). Clang on 32-bit uses 0xFF
+		  repeating for all types and padding.
+
+	config INIT_STACK_ALL_ZERO
+		bool "zero-init everything (strongest and safest)"
+		depends on CC_HAS_AUTO_VAR_INIT_ZERO
+		help
+		  Initializes everything on the stack (including padding)
+		  with a zero value. This is intended to eliminate all
+		  classes of uninitialized stack variable exploits and
+		  information exposures, even variables that were warned
+		  about having been left uninitialized.
+
+		  Zero initialization provides safe defaults for strings
+		  (immediately NUL-terminated), pointers (NULL), indices
+		  (index 0), and sizes (0 length), so it is therefore more
+		  suitable as a production security mitigation than pattern
+		  initialization.
+
+endchoice
+
 config INIT_ON_ALLOC_DEFAULT_ON
 	bool "Enable heap memory zeroing on allocation by default"
 	depends on !MALLOC_LIBC
-- 
2.39.5



