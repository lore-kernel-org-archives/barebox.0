Delivery-date: Thu, 05 Jun 2025 13:39:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wC-003zqs-1L
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w9-0002c7-99
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DNLrqsgy9N+ABCTcxAfr0lKYET5jKuvgxHWCU5wxOBs=; b=Wi7n9/Z9H0j1IZTEQk6T9tccU8
	gZggfp0zuJn+5LGYFHwpbDolzYWw4nxybuZSkBFLZJGRg8PCOHoiUO0dcc1L3fx2GJf655zHgQ7fu
	0mk4a2+v4hU5j69QA288feWAN7NG1bPfQRLR8spwwcvaZxQ1La7P4qGWRKvWz2qD9xPqSRxd6vvDW
	VNrovta0sLZB1g+8SJckjgigQcGyUV+kWlm2JiSFtLXL2GpV1TOAizFPuxR8kR7ql2EOY4+zvV9AW
	9yNVu0KLsKMwU1Gq5EReSXGiAOVmjANSkPn879cQ/+VH8xuO7+Qpn1pn4GyIAmc91ae0O7oV8t5XU
	36pUljeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vd-0000000FOaj-0hAT;
	Thu, 05 Jun 2025 11:38:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOm-3oJ3
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001jW-MX; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x0v-1c;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-1P;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:30 +0200
Message-Id: <20250605113530.2076990-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_950507_BB37F74A 
X-CRM114-Status: GOOD (  13.93  )
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
Subject: [PATCH 21/21] sandbox: add support for coverage info generation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be able to check how well along the fuzzer can descend into the
parsers, add first coverage support and a target to generate HTML
coverage information.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore                      |  6 ++++++
 Documentation/devel/fuzzing.rst | 30 ++++++++++++++++++++++++++++++
 Makefile                        | 23 ++++++++++++++++++++++-
 arch/sandbox/Kconfig.debug      |  7 +++++++
 arch/sandbox/Makefile           |  7 +++++++
 5 files changed, 72 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index 0bee67af4881..c37188a9f315 100644
--- a/.gitignore
+++ b/.gitignore
@@ -98,3 +98,9 @@ GTAGS
 /allrandom.config
 /allyes.config
 /compile_commands.json
+
+# coverage data
+default.profdata
+default.profraw
+coverage.info
+coverage_html/
diff --git a/Documentation/devel/fuzzing.rst b/Documentation/devel/fuzzing.rst
index 3151246aef1a..4b6d565a470a 100644
--- a/Documentation/devel/fuzzing.rst
+++ b/Documentation/devel/fuzzing.rst
@@ -62,6 +62,36 @@ We maintain a corpus for every fuzz test on
 
 This helps bootstrap the fuzzer, so it can exercise new paths more quickly.
 
+Determining Source Code Coverage
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+.. note::
+	Coverage instrumentation is currently only supported with LLVM
+        and sandbox.
+
+To collect coverage information, barebox must be built with ``CONFIG_GCOV=y``.
+The linking process will take much longer than usual, but once done, running
+barebox will produce coverage information.
+
+.. code-block:: bash
+
+	images/fuzz-filetype -max_total_time=60 -max_len=2048
+
+After the process exists regularly (i.e., not aborted with ctrl+C!),
+it will produce a ``default.profraw`` file, which needs to be further
+processed:
+
+.. code-block:: bash
+
+	make coverage-html
+
+This will produce a ``${KBUILD_OUTPUT}/coverage_html/`` directory, which can be
+inspected by a web browser:
+
+.. code-block:: bash
+
+	firefox coverage_html/index.html
+
 Adding a fuzzer
 ^^^^^^^^^^^^^^^
 
diff --git a/Makefile b/Makefile
index df0770e832e1..80a403f61dda 100644
--- a/Makefile
+++ b/Makefile
@@ -429,6 +429,8 @@ OBJCOPY		= $(LLVM_PREFIX)llvm-objcopy$(LLVM_SUFFIX)
 OBJDUMP		= $(LLVM_PREFIX)llvm-objdump$(LLVM_SUFFIX)
 READELF		= $(LLVM_PREFIX)llvm-readelf$(LLVM_SUFFIX)
 STRIP		= $(LLVM_PREFIX)llvm-strip$(LLVM_SUFFIX)
+PROFDATA	= $(LLVM_PREFIX)llvm-profdata$(LLVM_SUFFIX)
+COV		= $(LLVM_PREFIX)llvm-cov$(LLVM_SUFFIX)
 else
 CC		= $(CROSS_COMPILE)gcc
 CXX		= $(CROSS_COMPILE)g++
@@ -450,6 +452,7 @@ PERL		= perl
 PYTHON3		= python3
 CHECK		= sparse
 MKIMAGE		= mkimage
+GENHTML		= genhtml
 BASH		= bash
 KGZIP		= gzip
 KBZIP2		= bzip2
@@ -518,7 +521,7 @@ LDFLAGS_elf += $(LDFLAGS_common) --nmagic -s
 
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC CXX
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
-export LEX YACC
+export LEX YACC PROFDATA COV GENHTML
 export HOSTCXX CHECK CHECKFLAGS MKIMAGE
 export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
@@ -1418,6 +1421,24 @@ endif
 	@echo  'Execute "make" or "make all" to build all targets marked with [*] '
 	@echo  'For further info see the documentation'
 
+# Code Coverage
+# ---------------------------------------------------------------------------
+
+barebox.coverage_html: barebox.coverage-info
+	genhtml -o $@ $<
+
+barebox.coverage-info: default.profdata
+	$(COV) export --format=lcov -instr-profile $< $(objtree)/barebox >$@
+
+default.profdata: $(srctree)/default.profraw
+	$(PROFDATA) merge -sparse $< -o $@
+
+# We intentionally don't depend on barebox being built as that can take >10
+# minutes when coverage is enabled
+PHONY += coverage-html
+coverage-html: barebox.coverage_html
+	@echo "HTML coverage generated to $(objtree)/$<"
+
 # Generate tags for editors
 # ---------------------------------------------------------------------------
 quiet_cmd_tags = GEN     $@
diff --git a/arch/sandbox/Kconfig.debug b/arch/sandbox/Kconfig.debug
index 4a754e389964..82ee355815c3 100644
--- a/arch/sandbox/Kconfig.debug
+++ b/arch/sandbox/Kconfig.debug
@@ -8,3 +8,10 @@ config ASAN
 
 	  This is the hosted implementation for sandbox as opposed to
 	  KASAN, which is the bare-metal implementation.
+
+config GCOV
+	bool "Enable gcov support"
+	depends on CC_IS_CLANG
+	help
+	  This option allows developers to retrieve coverage data from a sandbox
+	  session. Note that this will greatly increases link times.
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index f33d7fa961da..f9d79e9a7d15 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -79,6 +79,13 @@ SANDBOX_LIBS += -Wl,-Bstatic -L"$(CONFIG_CLANG_RUNTIME_DIR)" \
 		-lclang_rt.fuzzer_no_main-$(LIBARCH-y) -Wl,-Bdynamic
 endif
 
+ifeq ($(CONFIG_GCOV),y)
+GCOV_OPT-$(CONFIG_CC_IS_CLANG) = -fprofile-instr-generate -fcoverage-mapping
+GCOV_OPT-$(CONFIG_CC_IS_GCC) = -fprofile-arcs -ftest-coverage
+KBUILD_CFLAGS += $(GCOV_OPT-y)
+BAREBOX_LDFLAGS += $(GCOV_OPT-y)
+endif
+
 ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
 KBUILD_CFLAGS += -m32
 KBUILD_LDFLAGS += -m elf_i386
-- 
2.39.5



