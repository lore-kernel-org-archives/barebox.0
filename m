Delivery-date: Wed, 10 Jan 2024 15:41:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZlb-00BjSV-1b
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 15:41:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZla-0003ow-Oo
	for lore@pengutronix.de; Wed, 10 Jan 2024 15:41:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YIsf4LSX8pLjMXohq2+YDKCQhv38xT2CR3H/CQm6fPE=; b=qUWmPjKRoX2cxXH1fLYV0gKEaI
	sjKFn7by4wkNn6ws0xwEAWi+GtURA6fAj0ZLnhC0VkhkMI6bU4OXBtMBbG+X1O2lisIYD42K0FyfQ
	Zh8Yw3LGv9dcpslYle58tjkZQHjXn+uW2kS19EsPWByCD0HenN1/gkj1iyDPiQS+tSLWC8D/vr5sK
	rnZwk8x2nzG+5H7s7Thu9Wv/Ve0maXVrZlMIkLBrgmvVYDxkbQFfH5lSxji+4x4c2EPWlyR8fXZzT
	YIBnqASq2/6G6bbXvDPMT9L/vJfVpGw6prarz4vwiLW1Eu52E2O38/ud0Iyvz4kBnwjWk1ChU6HPx
	Y4rF+aNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZkZ-00CN69-0c;
	Wed, 10 Jan 2024 14:40:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZkW-00CN5F-1j
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 14:40:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNZkT-0003Yz-NP; Wed, 10 Jan 2024 15:40:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNZkT-001iur-Ag; Wed, 10 Jan 2024 15:40:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNZkT-00FpdD-0m;
	Wed, 10 Jan 2024 15:40:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 15:39:58 +0100
Message-Id: <20240110143958.3773360-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_064008_598802_A1B650AE 
X-CRM114-Status: GOOD (  18.23  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RFC] bootm: support printing bootm parameters determined at runtime to file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox bootm command is often not called directly, but via
bootloader spec or FIT image boot handlers. For debugging, it can be
useful to reuse those boot handlers, but replace single artifacts, e.g.
using the barebox device tree instead of the bootloader-spec provided
device tree.

To make this easier, have boot -v -d (verbose + dry run) write a boot
script that reproduces the cancelled boot to /env/boot/cancelled.

The user can then edit the file and boot it manually.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/bootm.c | 85 ++++++++++++++++++++++++++++++++++++++++++++++++
 common/bootm.c   | 10 +++++-
 include/bootm.h  |  9 +++++
 3 files changed, 103 insertions(+), 1 deletion(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 95d267135cdb..520f041b6bac 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -8,6 +8,7 @@
 #include <driver.h>
 #include <command.h>
 #include <image.h>
+#include <boot.h>
 #include <malloc.h>
 #include <environment.h>
 #include <asm/byteorder.h>
@@ -36,6 +37,90 @@
 #define BOOTM_OPTS BOOTM_OPTS_COMMON
 #endif
 
+int bootm_print_cmd(const char *file, const struct bootm_data *data)
+{
+	int fd = CONSOLE_STDOUT;
+	const char *bootargs;
+	const char *verify = "";
+
+	if (!IS_ENABLED(CONFIG_GLOBALVAR))
+		return -ENOSYS;
+
+	if (file) {
+		fd = creat(file, 0755);
+		if (fd < 0)
+			return fd;
+	}
+
+	dprintf(fd, "#!/bin/sh\n\n");
+
+	if (data->appendroot)
+		dprintf(fd, "global.bootm.appendroot=%u\n", data->appendroot);
+	if (data->root_dev)
+		dprintf(fd, "global.bootm.root_dev='%s'\n", data->root_dev);
+	if (data->provide_machine_id)
+		dprintf(fd, "global.bootm.machine_id=%u\n", data->provide_machine_id);
+
+	switch (data->verify) {
+	case BOOTM_VERIFY_NONE:
+		verify = "none";
+		break;
+	case BOOTM_VERIFY_HASH:
+		verify = "hash";
+		break;
+	case BOOTM_VERIFY_AVAILABLE:
+		verify = "available";
+		break;
+	case BOOTM_VERIFY_SIGNATURE:
+		verify = "signature";
+		break;
+	}
+
+	dprintf(fd, "global.bootm.verify=%s\n", verify);
+
+	dprintf(fd, "\n");
+
+	if (data->os_address != UIMAGE_SOME_ADDRESS)
+		dprintf(fd, "global.bootm.image.loadaddr=0x%08lx\n", data->os_address);
+	if (data->os_file)
+		dprintf(fd, "global.bootm.image='%s'\n", data->os_file);
+	if (data->oftree_file)
+		dprintf(fd, "global.bootm.oftree='%s'\n", data->oftree_file);
+#ifdef CONFIG_BOOTM_INITRD
+	if (data->initrd_file)
+		dprintf(fd, "global.bootm.initrd='%s'\n", data->initrd_file);
+
+	if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
+		dprintf(fd, "global.bootm.initrd.loadaddr=0x%08lx\n", data->initrd_address);
+#endif
+	if (data->tee_file)
+		dprintf(fd, "global.bootm.tee_file='%s'\n", data->tee_file);
+
+	dprintf(fd, "\n");
+
+	bootargs = linux_bootargs_get();
+	if (bootargs)
+		dprintf(fd, "global linux.bootargs.dyn.concatenated='%s'\n", bootargs);
+
+	if (data->force || data->os_entry != UIMAGE_SOME_ADDRESS) {
+		/* We have no global variables for these two parameters yet, so
+		 * we just print a comment to alert the user to this fact
+		 */
+
+		dprintf(fd, "\n# bootm ");
+		if (data->force)
+				dprintf(fd, "-f ");
+		if (data->os_entry != UIMAGE_SOME_ADDRESS)
+				dprintf(fd, "-e %08lx ", data->os_entry);
+		dputc(fd, '\n');
+	}
+
+	if (file)
+		close(fd);
+
+	return 0;
+}
+
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
diff --git a/common/bootm.c b/common/bootm.c
index 29ea13e28cb8..3ecd788e7b16 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -825,8 +825,16 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	ret = handler->bootm(data);
-	if (data->dryrun)
+	if (data->dryrun) {
 		pr_info("Dryrun. Aborted\n");
+		if (bootm_verbose(data)) {
+			const char *file = "/env/boot/cancelled";
+			if (!bootm_print_cmd(file, bootm_data))
+				pr_info("Boot script written to %s\n", file);
+			else
+				pr_warn("Boot script write to %s failed: %m\n", file);
+		}
+	}
 
 err_out:
 	if (data->os_res)
diff --git a/include/bootm.h b/include/bootm.h
index ee2b574521db..53d2905ca992 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -41,6 +41,15 @@ struct bootm_data {
 
 int bootm_boot(struct bootm_data *data);
 
+#ifdef CONFIG_CMD_BOOTM
+int bootm_print_cmd(const char *file, const struct bootm_data *data);
+#else
+static inline int bootm_print_cmd(const char *file, const struct bootm_data *data)
+{
+	return -ENOSYS;
+}
+#endif
+
 struct image_data {
 	/* simplest case. barebox has already loaded the os here */
 	struct resource *os_res;
-- 
2.39.2



