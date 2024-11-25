Delivery-date: Mon, 25 Nov 2024 16:16:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaoj-000Fex-2q
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:16:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaoj-0000bQ-ME
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:16:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A/zFxDzQapxxcA8PF980S6SpCluirmUXL3tw0VQffY0=; b=uS9jik5+EhCzbkrT7DQogVaeIb
	IvdiVEG9a4SH55o1nPnsfSBeGvARXxqKqN+8oAo02CCJ3iQr3teUGHrDgvaHBHV4NjbRzC6fMkEVh
	Q9C9sXva3c8fwQ7XdluwJ9+hqLnPm9KzIG44V/yu8GtAmToo5pRy6e8pNcqncWgWbtIcZu4EDx3RG
	hxATBoAnj+h1+N/9MKnQuFtW+4MUMphpHDj1rYBJV8z8BWIoPxu586uJaNUmpQAFATp79K5BXX+1H
	KnOtBrPQpraEFPFgadaYe4qR8KfA5cWNkdtYoM9gqqNz18Nkvcg73kVFe+l7wKR7O7v/UZ094SlHO
	Db32lOXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaoK-00000008Qws-09PF;
	Mon, 25 Nov 2024 15:15:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaoG-00000008Qvg-3X5l
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:15:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFao7-0000Q1-G6; Mon, 25 Nov 2024 16:15:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFao6-0006Na-1a;
	Mon, 25 Nov 2024 16:15:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFao6-001nzn-1m;
	Mon, 25 Nov 2024 16:15:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ysionneau@kalrayinc.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:15:22 +0100
Message-Id: <20241125151522.430233-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151522.430233-1-a.fatoum@pengutronix.de>
References: <20241125151522.430233-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071532_880550_268D11E2 
X-CRM114-Status: GOOD (  16.81  )
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
Subject: [PATCH v2 2/2] sandbox: add cpuinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have stack dump support in sandbox via AddressSanitizer, if it's
compiled in. To make it easier to test proper operation, let's a cpuinfo
command like we already do on ARM and give it the same -s option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Have cpuinfo print uname when called without command line arguments
---
 arch/sandbox/Kconfig                          |  7 +++
 arch/sandbox/board/Makefile                   |  1 +
 arch/sandbox/board/cpuinfo.c                  | 53 +++++++++++++++++++
 .../sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                      |  5 ++
 5 files changed, 67 insertions(+)
 create mode 100644 arch/sandbox/board/cpuinfo.c

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 52915490ca98..caff3a138fea 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -58,6 +58,13 @@ config SANDBOX_REEXEC
 	  The normal reset handler hangs barebox. On Linux, barebox
 	  instead can exec itself to simulate a reset.
 
+config CMD_SANDBOX_CPUINFO
+	bool "cpuinfo command"
+	depends on COMMAND_SUPPORT
+	default y
+	help
+	  Say yes here to get a dummy cpuinfo command.
+
 config SDL
 	bool
 
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 8e6e1d2d8843..029bfe7ff163 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -10,6 +10,7 @@ obj-y += dtb.o
 obj-y += power.o
 obj-y += dev-random.o
 obj-y += watchdog.o
+obj-$(CONFIG_CMD_SANDBOX_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_LED) += led.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/cpuinfo.c b/arch/sandbox/board/cpuinfo.c
new file mode 100644
index 000000000000..589135102cd3
--- /dev/null
+++ b/arch/sandbox/board/cpuinfo.c
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <getopt.h>
+#include <command.h>
+#include <complete.h>
+#include <mach/linux.h>
+
+static int do_cpuinfo(int argc, char *argv[])
+{
+	int opt, fd, ret = -ENOENT;
+	char buf[256] = "Unknown host system";
+
+	while ((opt = getopt(argc, argv, "s")) > 0) {
+		switch (opt) {
+		case 's':
+			if (!IS_ENABLED(CONFIG_ARCH_HAS_STACK_DUMP))
+				return -ENOSYS;
+
+			dump_stack();
+			return 0;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	fd = linux_open("/proc/version", false);
+	if (fd >= 0) {
+		ret = linux_read(fd, buf, sizeof(buf));
+		linux_close(fd);
+
+		if (ret > 0)
+			printf("%.*s\n", ret, buf);
+	} else {
+		printf("Unknown host system\n");
+	}
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(cpuinfo)
+BAREBOX_CMD_HELP_TEXT("Shows misc info about CPU")
+BAREBOX_CMD_HELP_OPT ("-s", "print call stack info (if supported)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(cpuinfo)
+	.cmd            = do_cpuinfo,
+	BAREBOX_CMD_DESC("show info about CPU")
+	BAREBOX_CMD_OPTS("[-s]")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_cpuinfo_help)
+BAREBOX_CMD_END
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index f4d91f08de8e..e09780f09278 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -15,6 +15,7 @@ int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(const char *dev);
 uint64_t linux_get_time(void);
 int linux_open(const char *filename, int readwrite);
+int linux_close(int fd);
 char *linux_get_stickypage_path(void);
 int linux_open_hostfile(struct hf_info *hf);
 int linux_read(int fd, void *buf, size_t count);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 14018b2a63b0..d8bb345614ac 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -185,6 +185,11 @@ int linux_open(const char *filename, int readwrite)
 	return open(filename, (readwrite ? O_RDWR : O_RDONLY) | O_CLOEXEC);
 }
 
+int linux_close(int fd)
+{
+	return close(fd);
+}
+
 int linux_read(int fd, void *buf, size_t count)
 {
 	ssize_t ret;
-- 
2.39.5



