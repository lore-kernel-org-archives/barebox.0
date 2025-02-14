Delivery-date: Fri, 14 Feb 2025 11:49:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGf-002EjW-11
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGd-0005Ak-Hi
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SPQs+ttywwX/Ps6BuwiJaAvWt1wbKSPJ2l/tgsS+SNE=; b=ldOAtkGOL3y5AQe6nVbvZQZlsb
	7Ys5T0Dt++lt0ZP79zNAeoK2rM/Pe2Qj30+VKjWAzmmek911qRzwX3ZKwf3bdZL7OO2PRENq5/6cM
	MSlVPDz3oUx8oYPPQh4mvJsTsVVqKtyn8Ujqw+yDJAxqRaURiYIk0i9nyi2nQ5ctvHOztcirB0mzv
	piTFfClhMPNkbs70AW14IDbLKtIupGdQm1q0uG3mPwF4Kceq7lJEW0nW16P05a0AOHo1v8zRKtzEK
	zujbHIcD3KslltsXKWtI/Xdz7HA2xUbHI7UODOnx98apRsO7k6qt5EW9I97EW7tm4jv4alM2FqB8A
	7sqvfANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titG2-0000000EYMn-2PKx;
	Fri, 14 Feb 2025 10:49:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titFB-0000000EYGh-2avg
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 10:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SPQs+ttywwX/Ps6BuwiJaAvWt1wbKSPJ2l/tgsS+SNE=; b=Jvt7qx2qOKFyjVyaoRBHt2v5iN
	gntXCIoHw4s4lNWl5fZAAFy5gfL9G7P2B26fzyHJ8TegeMZBbgeP3JWcIMStNCbwImK3M7qIecDB3
	VReOwnqCary/nYYiLbpKt1prOuO+wejG/gvOQDW08Znzv9CarP4En/L6I4FECnGkxzjGIpjyy95fD
	Lakvckax7oi6Sw4TOJHXh/hnEw6aXmExFb+JvkormA0wN38RnrrNuKL3gkf7N0Umhkh6cE1sqWVc7
	4QCeiu2SIOLc7OLzTB4Bz5aFcsvRaPHnxHzRxlMTX1AaOL+OsuLOQh9oPlHj/XhwP1SOefMGQVtdP
	VHQTtyUg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-00000001EXL-13O0
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF7-0004VB-5a; Fri, 14 Feb 2025 11:48:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3m-2u;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-2b;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:17 +0100
Message-Id: <20250214104817.2975052-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_104822_516390_9F15C4D2 
X-CRM114-Status: GOOD (  23.26  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] commands: boot: add support for overriding boot artifacts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replacing part of the boot artifacts is a common development use case,
e.g. to load the kernel from the network, but otherwise boot the
bootloader spec file as-is or to inject an initrd into an existing boot
flow (e.g. rsinit to enable usb9pfs boot).

Add a simple to use way to achieve that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst |   8 ++
 commands/boot.c                      |  53 +++++++++++++-
 common/Kconfig                       |   7 ++
 common/bootm.c                       | 106 +++++++++++++++++++++------
 include/bootm.h                      |  18 +++++
 5 files changed, 169 insertions(+), 23 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index b26ada943a59..b49b2c93b1f3 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -161,6 +161,14 @@ This entry can be booted with ``boot mmc``. It can also be made the default by
 setting the ``global.boot.default`` variable to ``mmc`` and then calling
 ``boot`` without arguments.
 
+Especially for development, it can be useful to override only parts of
+the images used in a boot. To do so, set ``CONFIG_BOOT_OVERRIDE=y``
+and configure the overrides as arguments to the ``boot`` command::
+
+.. code-block:: sh
+
+  boot -o bootm.image=/mnt/tftp/oftree mmc
+
 .. _bootloader_spec:
 
 Boot Loader Specification
diff --git a/commands/boot.c b/commands/boot.c
index e4699520e8f5..820708380191 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -6,6 +6,7 @@
 #include <getopt.h>
 #include <malloc.h>
 #include <boot.h>
+#include <bootm.h>
 #include <complete.h>
 
 #include <linux/stat.h>
@@ -23,6 +24,42 @@ static char *next_word(void *context)
 	return strsep(context, " ");
 }
 
+static int boot_add_override(struct bootm_overrides *overrides, char *var)
+{
+	const char *val;
+
+	if (!IS_ENABLED(CONFIG_BOOT_OVERRIDE))
+		return -ENOSYS;
+
+	var += str_has_prefix(var, "global.");
+
+	val = parse_assignment(var);
+	if (!val) {
+		val = globalvar_get(var);
+		if (isempty(val))
+			val = NULL;
+	}
+
+	if (!strcmp(var, "bootm.image")) {
+		if (isempty(val))
+			return -EINVAL;
+		overrides->os_file = val;
+	} else if (!strcmp(var, "bootm.oftree")) {
+		overrides->oftree_file = val;
+	} else if (!strcmp(var, "bootm.initrd")) {
+		overrides->initrd_file = val;
+	} else {
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static inline bool boot_has_overrides(const struct bootm_overrides *overrides)
+{
+	return overrides->os_file || overrides->oftree_file || overrides->initrd_file;
+}
+
 static int do_boot(int argc, char *argv[])
 {
 	char *freep = NULL;
@@ -31,11 +68,12 @@ static int do_boot(int argc, char *argv[])
 	unsigned default_menu_entry = 0;
 	struct bootentries *entries;
 	struct bootentry *entry;
+	struct bootm_overrides overrides = {};
 	void *handle;
 	const char *name;
 	char *(*next)(void *);
 
-	while ((opt = getopt(argc, argv, "vldmM:t:w:")) > 0) {
+	while ((opt = getopt(argc, argv, "vldmM:t:w:o:")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
@@ -65,6 +103,11 @@ static int do_boot(int argc, char *argv[])
 		case 'w':
 			boot_set_watchdog_timeout(simple_strtoul(optarg, NULL, 0));
 			break;
+		case 'o':
+			ret = boot_add_override(&overrides, optarg);
+			if (ret)
+				return ret;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -85,6 +128,8 @@ static int do_boot(int argc, char *argv[])
 	}
 
 	entries = bootentries_alloc();
+	if (boot_has_overrides(&overrides))
+		bootm_set_overrides(&overrides);
 
 	while ((name = next(&handle)) != NULL) {
 		if (!*name)
@@ -119,6 +164,8 @@ static int do_boot(int argc, char *argv[])
 
 	ret = 0;
 out:
+	if (boot_has_overrides(&overrides))
+		bootm_unset_overrides();
 	bootentries_free(entries);
 	free(freep);
 
@@ -150,6 +197,10 @@ BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
 BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
 BAREBOX_CMD_HELP_OPT ("-M INDEX","Show a menu with boot options with entry INDEX preselected")
 BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
+#ifdef CONFIG_BOOT_OVERRIDE
+BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{image,oftree,initrd}) with VAL")
+BAREBOX_CMD_HELP_OPT ("            ","if VAL is not specified, the value of VAR is taken")
+#endif
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/Kconfig b/common/Kconfig
index b5fba72390d8..0ce99e98286c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -599,6 +599,13 @@ menuconfig BOOTM
 	default y if COMMAND_SUPPORT
 	bool "bootm support"
 
+config BOOT_OVERRIDE
+	bool "Support partial override of boot entries"
+	depends on BOOTM
+	help
+	  Allow overriding of bootm image, oftree and initrd by passing
+	  -o as an argument to the boot command.
+
 config BOOTM_SHOW_TYPE
 	bool
 	depends on BOOTM && UIMAGE
diff --git a/common/bootm.c b/common/bootm.c
index d2373f321c19..80905d4cf1ce 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -17,6 +17,8 @@
 
 static LIST_HEAD(handler_list);
 
+static __maybe_unused struct bootm_overrides bootm_overrides;
+
 int register_image_handler(struct image_handler *handler)
 {
 	list_add_tail(&handler->list, &handler_list);
@@ -141,6 +143,23 @@ static inline bool image_is_uimage(struct image_data *data)
 	return IS_ENABLED(CONFIG_BOOTM_UIMAGE) && data->os;
 }
 
+static bool bootm_get_override(char **oldpath, const char *newpath)
+{
+	if (!IS_ENABLED(CONFIG_BOOT_OVERRIDE))
+		return false;
+	if (bootm_signed_images_are_forced())
+		return false;
+	if (!newpath)
+		return false;
+
+	if (oldpath && strcmp(*oldpath, newpath)) {
+		free(*oldpath);
+		*oldpath = *newpath ? xstrdup(newpath) : NULL;
+	}
+
+	return true;
+}
+
 /*
  * bootm_load_os() - load OS to RAM
  *
@@ -155,6 +174,12 @@ static inline bool image_is_uimage(struct image_data *data)
  */
 int bootm_load_os(struct image_data *data, unsigned long load_address)
 {
+	if (bootm_get_override(&data->os_file, bootm_overrides.os_file)) {
+		if (load_address == UIMAGE_INVALID_ADDRESS)
+			return -EINVAL;
+		goto os_file;
+	}
+
 	if (data->os_res)
 		return 0;
 
@@ -194,15 +219,15 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (IS_ENABLED(CONFIG_ELF) && data->elf)
 		return elf_load(data->elf);
 
-	if (data->os_file) {
-		data->os_res = file_to_sdram(data->os_file, load_address);
-		if (!data->os_res)
-			return -ENOMEM;
+os_file:
+	if (!data->os_file)
+		return -EINVAL;
 
-		return 0;
-	}
+	data->os_res = file_to_sdram(data->os_file, load_address);
+	if (!data->os_res)
+		return -ENOMEM;
 
-	return -EINVAL;
+	return 0;
 }
 
 static bool fitconfig_has_ramdisk(struct image_data *data)
@@ -263,6 +288,9 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return NULL;
 
+	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file))
+		goto initrd_file;
+
 	if (data->initrd_res)
 		return data->initrd_res;
 
@@ -292,6 +320,7 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		goto done1;
 	}
 
+initrd_file:
 	if (!data->initrd_file)
 		return NULL;
 
@@ -404,12 +433,17 @@ void *bootm_get_devicetree(struct image_data *data)
 {
 	enum filetype type;
 	struct fdt_header *oftree;
+	bool from_fit = false;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return ERR_PTR(-ENOSYS);
 
-	if (fitconfig_has_fdt(data)) {
+	from_fit = fitconfig_has_fdt(data);
+	if (bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file))
+		from_fit = false;
+
+	if (from_fit) {
 		const void *of_tree;
 		unsigned long of_size;
 
@@ -530,24 +564,29 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 
 int bootm_get_os_size(struct image_data *data)
 {
+	const char *os_file;
+	struct stat s;
 	int ret;
 
-	if (data->elf)
-		return elf_get_mem_size(data->elf);
-	if (image_is_uimage(data))
-		return uimage_get_size(data->os, uimage_part_num(data->os_part));
-	if (data->os_fit)
-		return data->fit_kernel_size;
-
-	if (data->os_file) {
-		struct stat s;
-		ret = stat(data->os_file, &s);
-		if (ret)
-			return ret;
-		return s.st_size;
+	if (bootm_get_override(NULL, bootm_overrides.os_file)) {
+		os_file = bootm_overrides.os_file;
+	} else {
+		if (data->elf)
+			return elf_get_mem_size(data->elf);
+		if (image_is_uimage(data))
+			return uimage_get_size(data->os, uimage_part_num(data->os_part));
+		if (data->os_fit)
+			return data->fit_kernel_size;
+		if (!data->os_file)
+			return -EINVAL;
+		os_file = data->os_file;
 	}
 
-	return -EINVAL;
+	ret = stat(os_file, &s);
+	if (ret)
+		return ret;
+
+	return s.st_size;
 }
 
 static int bootm_open_os_uimage(struct image_data *data)
@@ -909,6 +948,22 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
+	if (bootm_get_override(&data->os_file, bootm_overrides.os_file)) {
+		if (data->os_res) {
+			release_sdram_region(data->os_res);
+			data->os_res = NULL;
+		}
+	}
+
+	bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file);
+
+	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file)) {
+		if (data->initrd_res) {
+			release_sdram_region(data->initrd_res);
+			data->initrd_res = NULL;
+		}
+	}
+
 	ret = handler->bootm(data);
 	if (data->dryrun)
 		pr_info("Dryrun. Aborted\n");
@@ -946,6 +1001,13 @@ int bootm_boot(struct bootm_data *bootm_data)
 	return ret;
 }
 
+#ifdef CONFIG_BOOT_OVERRIDE
+void bootm_set_overrides(const struct bootm_overrides *overrides)
+{
+	bootm_overrides = *overrides;
+}
+#endif
+
 static int do_bootm_compressed(struct image_data *img_data)
 {
 	struct bootm_data bootm_data = {
diff --git a/include/bootm.h b/include/bootm.h
index b86d06b0f55d..0e5e99773a26 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -160,4 +160,22 @@ void bootm_force_signed_images(void);
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
 
+struct bootm_overrides {
+	const char *os_file;
+	const char *oftree_file;
+	const char *initrd_file;
+};
+
+#ifdef CONFIG_BOOT_OVERRIDE
+void bootm_set_overrides(const struct bootm_overrides *overrides);
+#else
+static inline void bootm_set_overrides(const struct bootm_overrides *overrides) {}
+#endif
+
+static inline void bootm_unset_overrides(void)
+{
+	struct bootm_overrides overrides = {};
+	bootm_set_overrides(&overrides);
+}
+
 #endif /* __BOOTM_H */
-- 
2.39.5



