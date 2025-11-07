Delivery-date: Fri, 07 Nov 2025 15:41:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNf3-00GKJ6-1h
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:41:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNf2-0008TJ-Og
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:41:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p9Fi37YQ3+ZZ3A2Ck6qjsiePEws+9Y0Ej2aGiaq87/Q=; b=q/himP9UGdHHVUj7fWHKCQetNn
	QX+GoIvzaYIEllH6p2DqephtTFW+v46WIeElilZFITPamOvFQqN8AgN+bWaAmBnLGnaDalZKdPaiE
	pX+k6J30ES2Btw8MdKLN65iFkS9SzsLmUGNzPfjIas34E3UVm1lvTOfQhh8EDH+Iaub6vahuatU0a
	acSLXhSyyypXwdxLQQnLTdTFdOm0Dkxsw9Nb2BHBOjJ6xUn/CI7cUTtlqOK4Fp+c40OCzJ0g4jfCb
	DcZdx23K7h5v2BGTrPwWBbBXke2+jGIMptG3A3UY0mo4BoF/3CPYEU+LKKmW70CbkwiJJRk+RSx4C
	EKaNSHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNed-0000000HWBw-0bAC;
	Fri, 07 Nov 2025 14:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNea-0000000HWBJ-0bEP
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:41:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0008Go-Kt; Fri, 07 Nov 2025 15:41:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeP-007Xpo-2D;
	Fri, 07 Nov 2025 15:41:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0000000BST9-04PC;
	Fri, 07 Nov 2025 15:41:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 15:41:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-talloc-v2-4-e47bfd0e5667@pengutronix.de>
References: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
In-Reply-To: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762526477; l=5515;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=thHpu7Ce7fRk1YtCmoERra1ZFqgS7PPbc8g/GtHDSXM=;
 b=FvveZZkc9u0J9iZpLRrgA3+Iy9stnYx1QE8NgfRkVG7ezc/J5cp4wR75iWnE4/bpUYVYI+lsA
 tK+a0GY2Q7qCByPbqv6s9FRzI3jRSIDq/7gSi4y0s/3CWSlPEYl36HQ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_064128_193661_166B6A7F 
X-CRM114-Status: GOOD (  17.96  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/4] sandbox: add memory leak debugging tooling around
 LeakSanitizer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

When enabled, this allows calling barebox_memleak_check() or running the
checkleak command to instruct LeakSanitizer to sweep the memory and find
unreferenced allocations.

LeakSanitizier is also enabled along AddressSanitizer and runs on AMD64
Linux automatically on exit already.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251027074446.2474869-1-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/Makefile         |  2 +-
 arch/sandbox/os/libc_malloc.c |  9 ++++++++
 commands/Kconfig              |  9 ++++++++
 commands/Makefile             |  1 +
 commands/checkleak.c          | 52 +++++++++++++++++++++++++++++++++++++++++++
 common/Kconfig.debug          |  6 +++++
 include/malloc.h              |  6 +++++
 7 files changed, 84 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 0318c8dd145294f21e88e9496d2a60ea0a94f436..be6412a23f8ae19f83d9102536e6cf8c53e75c87 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -36,7 +36,7 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 SANDBOX_PBL2PROPER_GLUE_SYMS := \
 	putchar errno setjmp longjmp \
-	malloc_stats memalign malloc free realloc calloc brk sbrk
+	malloc_stats memalign malloc free realloc calloc memleak_check brk sbrk
 
 KBUILD_CFLAGS += $(foreach s,$(SANDBOX_PBL2PROPER_GLUE_SYMS),-D$(s)=barebox_$(s))
 
diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index bb4fb1c9ead4a4c6aacedb06349ad96a2463b133..24d2da3cb2c1af2dd91c4e7e8abe3f8ed3a43c57 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -98,3 +98,12 @@ void *barebox_calloc(size_t n, size_t elem_size)
 
 	return mem;
 }
+
+#ifdef CONFIG_DEBUG_MEMLEAK
+void barebox_memleak_check(void)
+{
+	void __lsan_do_recoverable_leak_check(void);
+
+	__lsan_do_recoverable_leak_check();
+}
+#endif
diff --git a/commands/Kconfig b/commands/Kconfig
index 78b1e69dd38ef98ffd6a1863c3600fc79173e6cf..c7c03a65477b4f083c256dc55053aab8c8ad2741 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -210,6 +210,15 @@ config CMD_MEMINFO
 	  system bytes     =     282616
 	  in use bytes     =     274752
 
+config CMD_CHECKLEAK
+	tristate
+	prompt "checkleak"
+	depends on DEBUG_MEMLEAK
+	default y
+	help
+	  List memory leaks encountered since the last time
+	  the command ran.
+
 config CMD_ARM_MMUINFO
 	bool "mmuinfo command"
 	depends on CPU_V7 || CPU_V8
diff --git a/commands/Makefile b/commands/Makefile
index 858e0c257eba9bb3cf9bea1d2446be59bdd3a92e..8fffac8fd4428d275f86c5ad9898fed96c5b18ac 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -47,6 +47,7 @@ obj-$(CONFIG_CMD_TRUNCATE)	+= truncate.o
 obj-$(CONFIG_CMD_SYNC)		+= sync.o
 obj-$(CONFIG_CMD_FLASH)		+= flash.o
 obj-$(CONFIG_CMD_MEMINFO)	+= meminfo.o
+obj-$(CONFIG_CMD_CHECKLEAK)	+= checkleak.o
 obj-$(CONFIG_CMD_TIMEOUT)	+= timeout.o
 obj-$(CONFIG_CMD_READLINE)	+= readline.o
 obj-$(CONFIG_CMD_SETENV)	+= setenv.o
diff --git a/commands/checkleak.c b/commands/checkleak.c
new file mode 100644
index 0000000000000000000000000000000000000000..4254ff51d95dfcaeb8ce7e5aa2961017a2d86c4f
--- /dev/null
+++ b/commands/checkleak.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <command.h>
+#include <malloc.h>
+#include <abort.h>
+#include <getopt.h>
+#include <linux/kstrtox.h>
+
+static int do_checkleak(int argc, char *argv[])
+{
+	unsigned int count;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "l:")) > 0) {
+		switch(opt) {
+		case 'l':
+			if (kstrtouint(optarg, 0, &count))
+				return COMMAND_ERROR;
+			(void)malloc(count);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if (argc)
+		return COMMAND_ERROR_USAGE;
+
+	memleak_check();
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(checkleak)
+BAREBOX_CMD_HELP_TEXT("list memory leaks encountered since the last time")
+BAREBOX_CMD_HELP_TEXT("the command ran.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l COUNT",  "force leak of COUNT bytes")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(checkleak)
+	.cmd		= do_checkleak,
+	BAREBOX_CMD_DESC("check for memory leaks")
+	BAREBOX_CMD_OPTS("[-l]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_checkleak_help)
+BAREBOX_CMD_END
+
diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index 9c70555eb83caf5a69ee1c495300d3314fa4b176..2de885ebb3f8278a844249486350d98e8c36e18e 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -124,6 +124,12 @@ config PRINTF_FULL
 source "lib/Kconfig.ubsan"
 source "lib/kasan/Kconfig"
 
+config DEBUG_MEMLEAK
+	bool "barebox memory leak detector"
+	depends on MALLOC_LIBC && ASAN
+	help
+	  Say Y here if you want to enable LeakSanitizer.
+
 config COMPILE_TEST
 	bool "compile-test drivers of other platforms"
 	default n
diff --git a/include/malloc.h b/include/malloc.h
index 81ab0f457b01c54de08dd6ef8d5d3d7b0f94d7bb..31a2ff1b3d8e5daad123698de552f4217ca1d476 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -88,4 +88,10 @@ static inline bool want_init_on_free(void)
 	return IS_ENABLED(CONFIG_INIT_ON_FREE_DEFAULT_ON);
 }
 
+#ifdef CONFIG_DEBUG_MEMLEAK
+void memleak_check(void);
+#else
+static inline void memleak_check(void) {}
+#endif
+
 #endif /* __MALLOC_H */

-- 
2.47.3



