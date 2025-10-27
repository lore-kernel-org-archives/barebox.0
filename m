Delivery-date: Mon, 27 Oct 2025 08:45:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHuo-00CGXm-00
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:45:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHun-0007uY-BH
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:45:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oAqaVmw2HuMw7zZ1AqlsR9bIJK5KkRlMwf7O0hv0PAY=; b=UPbKR5JdrQ70gt39wPyDHaPR7q
	rldQ644m1mE/Sw14yllNHGyxjVA39we9vej3uDwnpYjnJRmrKYb3NALoLGYuQCD4n3pgIskMXm7eC
	ZhgZUBSIw9OjLZpO6lZ1orMzZQWh5TFSYy28nyZB/651CG7T6c9iRDxd38ZGgECetNqhAGqp/SZVe
	i0uD4DU3tI8+DIrB9LB0ZTTRhY+/ijp3BcMVhDAc6xB1Vrsxc/+rwmGCiAjpHJv1ZhZxvvjryRSGD
	lxGg0a1ZXn5BHHsAwxC2ioQTnfccytsUy8vbsUmSTKGYPzl7sl5XMYIWg0TgsQ63biU4m91Ib48GK
	R1fcsDdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHuN-0000000DIQT-3hiO;
	Mon, 27 Oct 2025 07:44:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHuL-0000000DIPz-0lMk
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:44:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHuJ-0007pG-Bq; Mon, 27 Oct 2025 08:44:47 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:44:45 +0100
Message-ID: <20251027074446.2474869-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_004449_222989_E6D7D1B0 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: add memory leak debugging tooling around LeakSanitizer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When enabled, this allows calling barebox_memleak_check() or running the
checkleak command to instruct LeakSanitizer to sweep the memory and find
unreferenced allocations.

LeakSanitizier is also enabled along AddressSanitizer and runs on AMD64
Linux automatically on exit already.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/sandbox/Makefile         |  2 +-
 arch/sandbox/os/libc_malloc.c |  9 ++++++
 commands/Kconfig              |  9 ++++++
 commands/Makefile             |  1 +
 commands/checkleak.c          | 52 +++++++++++++++++++++++++++++++++++
 common/Kconfig.debug          |  6 ++++
 include/malloc.h              |  6 ++++
 7 files changed, 84 insertions(+), 1 deletion(-)
 create mode 100644 commands/checkleak.c

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index fdff09c07cb9..1b1774cc4b0a 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -36,7 +36,7 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 SANDBOX_PBL2PROPER_GLUE_SYMS := \
 	putchar errno setjmp longjmp \
-	malloc_stats memalign malloc free realloc calloc brk sbrk
+	malloc_stats memalign malloc free realloc calloc memleak_check brk sbrk
 
 KBUILD_CFLAGS += $(foreach s,$(SANDBOX_PBL2PROPER_GLUE_SYMS),-D$(s)=barebox_$(s))
 
diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index bb4fb1c9ead4..fee4550f327c 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -98,3 +98,12 @@ void *barebox_calloc(size_t n, size_t elem_size)
 
 	return mem;
 }
+
+#ifdef CONFIG_DEBUG_MEMLEAK
+void barebox_memleak_check(void)
+{
+	void __lsan_do_leak_check(void);
+
+	__lsan_do_leak_check();
+}
+#endif
diff --git a/commands/Kconfig b/commands/Kconfig
index 78b1e69dd38e..c7c03a65477b 100644
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
index 858e0c257eba..8fffac8fd442 100644
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
index 000000000000..c0449fc82e00
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
+	while((opt = getopt(argc, argv, "l:")) > 0) {
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
index 9c70555eb83c..2de885ebb3f8 100644
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
index 81ab0f457b01..31a2ff1b3d8e 100644
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



