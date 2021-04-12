Delivery-date: Tue, 13 Apr 2021 00:37:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BV-0006Gm-Pj
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:37:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5BU-0007RN-MV
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ukJyL9/NLDB5qlI8Jb7Rgvpgot9cCvsQRw/rjRfKaNE=; b=aSRAbYiJATyXw4xtLlIo0zkQO
	mU36JdUa8XYvdGF2U939vMIj8HNTXB0Vct0FSHosLbpiIml3rO8F73Y8ysIqSsSXOFBBkSEckO/Lr
	1B8qhANCkJuRbbNX6BpSJodDDpADfy3sGQeJz1ZWSyeYaKAQW+TVXBT9SLPABokAZNNyFhewXZeFe
	m5pu6hnF7w4zcdviihXs/WE0MgwB4RgE9NqWvpMFuvAysws6zljSxdWmOQbkvS2/Rx4nZOFVya5e7
	3FRGgLU06NhFsrQx58DhM0vAfq9pLS7ksfcnit/6VaDWmUM/ekwf3aD4h3Yi8EfOnU+KgJnKvCcT+
	TRMWvyCAQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5AJ-007nSt-9F; Mon, 12 Apr 2021 22:36:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59K-007n8V-Fh
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=hOVTtHrzdoDgTUw+Led6qwREBikf/xbQECs2T7EZOEg=; b=KObhbK/cngBfOSzJAJqjtKyUn0
 dmIZQaJdMDdl2ddYMB2Cow24SF0Z8Aq0OAHEy+0nYJf9NQFyNzcHrGWn/tf9ul+PJCJxWzVmkdZLp
 DJ4mRP+UfrjaGDYViNuKarXJ3hkjRtyHrHcpkwn3OvDbs465QZAGlBfht5tgM2YawVzEErB4oHcGF
 BFnTc0sDyUiA3XAnYYCdzY9t64DgaWdeoig5uS8fGn8dhwma+pEAhWwk6xPw7Fxp/rCt+hryqKHXu
 RJ+aSEaMRiIlI4VMA5WfD5zYVNo+Ff+Sx7t3QHd2zGc8jb2b7UL4xZrALcjNUJh9ZJjnoEZ3jDaWw
 YUIS5yig==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59G-006arV-HP
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BR-9F; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003tb-Fi; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:59 +0200
Message-Id: <20210412223502.29691-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153514_768175_7CEBA88B 
X-CRM114-Status: GOOD (  21.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/14] fastboot/dfu: use machine partitions as fall back
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the new machine partitions infrastructure to have fastboot and DFU
fall back to using the same partitions if the global.usbgadget.dfu_function
and global.fastboot_partitions are not set, respectively.

No functional change intended for configurations that have
MACHINE_PARTITIONS disabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c          |  9 ++++--
 common/usbgadget.c         | 64 +++++++++++++++++++++-----------------
 drivers/usb/gadget/multi.c | 12 +++++++
 include/fastboot.h         |  6 ++--
 include/file-list.h        |  5 +++
 include/usb/gadget-multi.h |  1 +
 net/fastboot.c             |  4 +--
 7 files changed, 64 insertions(+), 37 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index c8576a8d97c3..16eda93b93e4 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -41,6 +41,7 @@
 #include <linux/stat.h>
 #include <linux/mtd/mtd.h>
 #include <fastboot.h>
+#include <machine-partitions.h>
 
 #define FASTBOOT_VERSION		"0.4"
 
@@ -932,9 +933,13 @@ bool get_fastboot_bbu(void)
 	return fastboot_bbu;
 }
 
-const char *get_fastboot_partitions(void)
+struct file_list *get_fastboot_partitions(void)
 {
-	return fastboot_partitions;
+	if (fastboot_partitions && *fastboot_partitions)
+		return file_list_parse(fastboot_partitions);
+	if (!machine_partitions_empty())
+		return machine_partitions_get();
+	return NULL;
 }
 
 static int fastboot_globalvars_init(void)
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 009debd93efc..7aa9a7b9ef1e 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -17,6 +17,7 @@
 #include <usb/gadget-multi.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <machine-partitions.h>
 
 static int autostart;
 static int acm;
@@ -32,6 +33,15 @@ static struct file_list *parse(const char *files)
 	return list;
 }
 
+static inline struct file_list *get_dfu_function(void)
+{
+	if (dfu_function && *dfu_function)
+		return file_list_parse(dfu_function);
+	if (!machine_partitions_empty())
+		return machine_partitions_get();
+	return NULL;
+}
+
 int usbgadget_register(bool dfu, const char *dfu_opts,
 		       bool fastboot, const char *fastboot_opts,
 		       bool acm, bool export_bbu)
@@ -39,45 +49,37 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 	int ret;
 	struct device_d *dev;
 	struct f_multi_opts *opts;
-	const char *fastboot_partitions = get_fastboot_partitions();
-
-	if (dfu && !dfu_opts && dfu_function && *dfu_function)
-		dfu_opts = dfu_function;
-
-	if (IS_ENABLED(CONFIG_FASTBOOT_BASE) && fastboot && !fastboot_opts &&
-	    fastboot_partitions && *fastboot_partitions)
-		fastboot_opts = fastboot_partitions;
-
-	if (!dfu_opts && !fastboot_opts && !acm)
-		return COMMAND_ERROR_USAGE;
-
-	/*
-	 * Creating a gadget with both DFU and Fastboot may not work.
-	 * fastboot 1:8.1.0+r23-5 can deal with it, but dfu-util 0.9
-	 * seems to assume that the device only has a single configuration
-	 * That's not our fault though. Emit a warning and continue
-	 */
-	if (fastboot_opts && dfu_opts)
-		pr_warn("Both DFU and Fastboot enabled. dfu-util may not like this!\n");
 
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
-	if (fastboot_opts) {
-		opts->fastboot_opts.files = parse(fastboot_opts);
+	if (dfu)
+		opts->dfu_opts.files = dfu_opts ? parse(dfu_opts)
+			: get_dfu_function();
+
+	if (IS_ENABLED(CONFIG_FASTBOOT_BASE) && fastboot) {
+		opts->fastboot_opts.files = fastboot_opts ? parse(fastboot_opts)
+			: get_fastboot_partitions();
+
 		opts->fastboot_opts.export_bbu = export_bbu;
 	}
 
-	if (dfu_opts)
-		opts->dfu_opts.files = parse(dfu_opts);
+	opts->create_acm = acm;
 
-	if (!opts->dfu_opts.files && !opts->fastboot_opts.files && !acm) {
+	if (usb_multi_count_functions(opts) == 0) {
 		pr_warn("No functions to register\n");
-		free(opts);
-		return 0;
+		ret = COMMAND_ERROR_USAGE;
+		goto err;
 	}
 
-	opts->create_acm = acm;
+	/*
+	 * Creating a gadget with both DFU and Fastboot may not work.
+	 * fastboot 1:8.1.0+r23-5 can deal with it, but dfu-util 0.9
+	 * seems to assume that the device only has a single configuration
+	 * That's not our fault though. Emit a warning and continue
+	 */
+	if (!file_list_empty(opts->fastboot_opts.files) && !file_list_empty(opts->dfu_opts.files))
+		pr_warn("Both DFU and Fastboot enabled. dfu-util may not like this!\n");
 
 	dev = get_device_by_name("otg");
 	if (dev)
@@ -85,7 +87,11 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 
 	ret = usb_multi_register(opts);
 	if (ret)
-		usb_multi_opts_release(opts);
+		goto err;
+
+	return 0;
+err:
+	usb_multi_opts_release(opts);
 
 	return ret;
 }
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 95f5b90c88b5..3fb22486a0e9 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -266,6 +266,18 @@ void usb_multi_unregister(void)
 	gadget_multi_opts = NULL;
 }
 
+unsigned usb_multi_count_functions(struct f_multi_opts *opts)
+{
+	unsigned count = 0;
+
+	count += !file_list_empty(opts->fastboot_opts.files) ||
+		opts->fastboot_opts.export_bbu;
+	count += !file_list_empty(opts->dfu_opts.files);
+	count += opts->create_acm;
+
+	return count;
+}
+
 void usb_multi_opts_release(struct f_multi_opts *opts)
 {
 	if (opts->fastboot_opts.files)
diff --git a/include/fastboot.h b/include/fastboot.h
index 2eab2dfe6ae8..cf8a177bf12c 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -58,16 +58,16 @@ enum fastboot_msg_type {
 
 #ifdef CONFIG_FASTBOOT_BASE
 bool get_fastboot_bbu(void);
-const char *get_fastboot_partitions(void);
+struct file_list *get_fastboot_partitions(void);
 #else
 static inline int get_fastboot_bbu(void)
 {
 	return false;
 }
 
-static inline const char *get_fastboot_partitions(void)
+static inline struct file_list *get_fastboot_partitions(void)
 {
-	return NULL;
+	return file_list_parse("");
 }
 #endif
 
diff --git a/include/file-list.h b/include/file-list.h
index 2538883c3659..be97a49b7a2b 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -35,4 +35,9 @@ struct file_list_entry *file_list_entry_by_name(struct file_list *files, const c
 #define file_list_for_each_entry(files, entry) \
 	list_for_each_entry(entry, &files->list, list)
 
+static inline bool file_list_empty(struct file_list *files)
+{
+	return !files || !files->num_entries;
+}
+
 #endif /* __FILE_LIST */
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 9bb6c889f3e9..f30dae5686ae 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -15,6 +15,7 @@ struct f_multi_opts {
 int usb_multi_register(struct f_multi_opts *opts);
 void usb_multi_unregister(void);
 void usb_multi_opts_release(struct f_multi_opts *opts);
+unsigned usb_multi_count_functions(struct f_multi_opts *opts);
 
 int usbgadget_register(bool dfu, const char *dfu_opts,
 		       bool fastboot, const char *fastboot_opts,
diff --git a/net/fastboot.c b/net/fastboot.c
index 9082aa48f6e1..df388adc8995 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -499,7 +499,6 @@ void fastboot_net_free(struct fastboot_net *fbn)
 struct fastboot_net *fastboot_net_init(struct fastboot_opts *opts)
 {
 	struct fastboot_net *fbn;
-	const char *partitions = get_fastboot_partitions();
 	bool bbu = get_fastboot_bbu();
 	int ret;
 
@@ -513,8 +512,7 @@ struct fastboot_net *fastboot_net_init(struct fastboot_opts *opts)
 		fbn->fastboot.cmd_flash = opts->cmd_flash;
 		ret = fastboot_generic_init(&fbn->fastboot, opts->export_bbu);
 	} else {
-		fbn->fastboot.files = file_list_parse(partitions ?
-						      partitions : "");
+		fbn->fastboot.files = get_fastboot_partitions() ?: file_list_parse("");
 		ret = fastboot_generic_init(&fbn->fastboot, bbu);
 	}
 	if (ret)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

