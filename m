Delivery-date: Thu, 05 Jun 2025 13:39:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w4-003zoe-0Q
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w0-0002RU-Nx
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xBrH5kN++jRu4a08n6Z5VGcQT9tY2/ar4c65Q9hp3yA=; b=knJSMD21cqF/FV2PoUGykoNSfW
	u2AexbhY2MZEB3j2Az9aWh99gImlA9lwrQKC1wzQNXUB/PEMIkpaSSct1wpofGajLDuhaoEYP66ei
	JVYTUri9L3eQQXwbWfqZLOcpe+W4Tp75mPatNat2q+Y9vbO4pRYw0NG9gffp8y0jO+tHbJjTBAqKI
	02CWWKRr7m0534xqIOfXP5rA4w4LZ538PubcJG1dAKNPLCuSttqI64Ka2damWe6xaQ57MP4LslNpI
	et4cW9WZANQCEuSLtDQns/vxnkKgV0j4AkVbL7790e9XSDLJVbP6OY1sC0fVswKK9HuMJNBFDFgKy
	h/+YvYKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vX-0000000FOSe-0A6d;
	Thu, 05 Jun 2025 11:38:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOS-0l2S
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001iM-0l; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-001x0X-2e;
	Thu, 05 Jun 2025 13:38:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-1F;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:29 +0200
Message-Id: <20250605113530.2076990-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_225594_AA5E8CA5 
X-CRM114-Status: GOOD (  23.03  )
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
Subject: [PATCH 20/21] Documentation: add LLVM libfuzzer documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that first fuzzing support is in place, add a defconfig and document
how to use it to fuzz.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/devel.rst          |   1 +
 Documentation/devel/fuzzing.rst        | 106 +++++++++++++++++++++++++
 arch/sandbox/Makefile                  |   5 +-
 common/boards/configs/libfuzzer.config |  14 ++++
 4 files changed, 125 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devel/fuzzing.rst
 create mode 100644 common/boards/configs/libfuzzer.config

diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index 3e9d44218334..d985bff40d42 100644
--- a/Documentation/devel/devel.rst
+++ b/Documentation/devel/devel.rst
@@ -12,6 +12,7 @@ Contents:
    filesystems
    background-execution
    project-ideas
+   fuzzing
 
 * :ref:`search`
 * :ref:`genindex`
diff --git a/Documentation/devel/fuzzing.rst b/Documentation/devel/fuzzing.rst
new file mode 100644
index 000000000000..3151246aef1a
--- /dev/null
+++ b/Documentation/devel/fuzzing.rst
@@ -0,0 +1,106 @@
+Fuzzing barebox
+===============
+
+As described in the :ref:`security` chapter, some parts of barebox need to
+deal with untrusted inputs. To aid in finding and fixing issues that might
+be exploited, barebox can be built with LLVM's libfuzzer to exercise
+these security-critical parsers.
+
+Building
+^^^^^^^^
+
+The barebox sandbox architecture has support for libfuzzer when compiled with
+LLVM. The ``libfuzzer_defconfig`` enables it as well as different hardening
+options to crash barebox on detection of memory safety issues::
+
+  $ export LLVM=1 # or e.g. LLVM=-19, if clang is called clang-19
+  $ make libfuzzer_defconfig
+  $ make -j$(nproc)
+  # [snip]
+  images built:
+  barebox
+  fuzz-filetype
+  fuzz-fit
+  fuzz-fs
+  fuzz-dtb
+  fuzz-fdt-compatible
+  fuzz-partitions
+
+All fuzzers generated are symlinks to the same barebox executable. barebox
+will detect that it was invoked via symlink and switch to fuzzing mode.
+
+Fuzzing
+^^^^^^^
+
+Fuzzers can be run directly or by invoked the main barebox binary with the
+``--fuzz`` option. The latter is mostly useful for debugging.
+
+Examples of running the fuzzers::
+
+  # Just run the fuzzer with no corpus
+  images/fuzz-filetype
+
+  # Multi-threaded fuzzing is recommended as is using a corpus
+  images/fuzz-dtb -rss_limit_mb=10000 -max_len=51200 -jobs=64 \
+	../barebox-fuzz-corpora/dtb
+
+  # Some fuzzers still leak, so disable leak detection till resolved
+  images/fuzz-fit -max_total_time=600 -rss_limit_mb=20000 -max_len=128000 -detect_leaks=0
+
+  # Debug a crash
+  gdb --args images/fuzz-fit crash-$HASH
+
+When a crash is detected, libfuzzer will create a ``crash-$HASH`` file
+that can be passed instead of the corpus directory to run the fuzz test
+once.
+
+Corpora
+^^^^^^^
+
+We maintain a corpus for every fuzz test on
+`Github <https://github.com/barebox/barebox-fuzz-corpora>`_.
+
+This helps bootstrap the fuzzer, so it can exercise new paths more quickly.
+
+Adding a fuzzer
+^^^^^^^^^^^^^^^
+
+The barebox integration of libfuzzer is a bit unusual; barebox supplies
+its own ``main()`` and calls into libfuzzer instead of the over way round.
+
+This allows us to write fuzz tests naturally inline without having
+to setup things beforehand as barebox will have already executed all
+of its initcalls for example.
+
+To add a new fuzz test, just add a function next to the parser that
+parses a memory buffer::
+
+  #include <fuzz.h>
+
+  static int fuzz_dtb(const u8 *data, size_t size)
+  {
+  	struct device_node *np;
+
+  	np = of_unflatten_dtb_const(data, size);
+  	if (!IS_ERR(np))
+  		of_delete_node(np);
+
+  	return 0;
+  }
+  fuzz_test("dtb", fuzz_dtb);
+
+
+.. note:: Fuzz tests should not leak memory, otherwise
+ the fuzzing process may abort eventually due to memory exhaustion.
+
+This function than needs to be registered by name in
+``images/Makefile.sandbox``::
+
+  fuzzer-$(CONFIG_OFTREE)	+= dtb
+
+Searching the source tree for ``fuzz_test`` will show more examples,
+e.g. how to wrap the received buffer in a ramdisk to interface
+with code that requires block devices.
+
+When adding a new fuzzing test, please also `submit a pullrequest
+with a corpus <https://github.com/barebox/barebox-fuzz-corpora/compare>_.
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 6566cd563ed8..f33d7fa961da 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -2,13 +2,16 @@
 
 KBUILD_DEFCONFIG := sandbox_defconfig
 
-generated_configs += headless_defconfig noshell_defconfig lockdown_defconfig
+generated_configs += headless_defconfig noshell_defconfig lockdown_defconfig \
+		     libfuzzer_defconfig
 headless_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,headless)
 noshell_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,noshell)
 lockdown_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,headless noshell)
+libfuzzer_defconfig:
+	$(call merge_into_defconfig,sandbox_defconfig,libfuzzer)
 
 KBUILD_CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
 
diff --git a/common/boards/configs/libfuzzer.config b/common/boards/configs/libfuzzer.config
new file mode 100644
index 000000000000..df03beac0ec8
--- /dev/null
+++ b/common/boards/configs/libfuzzer.config
@@ -0,0 +1,14 @@
+CONFIG_BOOTM_FITIMAGE=y
+CONFIG_PRINTF_FULL=y
+CONFIG_BUG_ON_DATA_CORRUPTION=y
+CONFIG_UBSAN=y
+CONFIG_UBSAN_NO_ALIGNMENT=y
+CONFIG_ASAN=y
+CONFIG_FORTIFY_SOURCE=y
+CONFIG_HWRNG=y
+CONFIG_HWRNG_DEV_RANDOM=y
+CONFIG_STACKPROTECTOR_STRONG=y
+CONFIG_TEST=y
+CONFIG_FUZZ=y
+CONFIG_FUZZ_EXTERNAL=y
+CONFIG_CMD_FUZZ=y
-- 
2.39.5



