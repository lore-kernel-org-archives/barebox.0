Delivery-date: Wed, 26 Aug 2026 14:21:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdb-007QpX-1t
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C6681202282
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h5e5hX3t;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h7oWrGUDUKkNrMyvaR0EOaLkPDuURgJFz/YGlilWBOE=; b=h5e5hX3tesR54bZbvVCNb/GgBL
	Vri+7jWAytDld3QCdADRHW8NDUJQA/4AETlYwe+h2xip4/bzxfXzyOnR6GTKN58EBhTNVnN4czJR8
	t+4LdKeNzH+j6y+uK2+ZxK66/2yCVnG0KwX4uwJFf58Nf5KhddgcOgbhAQ77CM/OIdPbb1s3oAftE
	XOPcal2NACHbMEEI6kFvmmSHveSK+iwdzTeXv3kit9pXYwaRLRz21HnO7hYv5HDOGLhf688KoKjBQ
	KRLfHDEryl73ws2q8cuHsxM0rPq3kDM3qxFwidkAwsDfAL3ChO/desDKV3meWz7CuWUhfpBujtuS3
	1cS4kbfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCc3-00000002Ppk-477y;
	Wed, 26 Aug 2026 12:20:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbu-00000002PkG-1kZd
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3F28520220C;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-003RBG-0T;
	Wed, 26 Aug 2026 14:19:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-0000000CK1K-0AOo;
	Wed, 26 Aug 2026 14:19:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 6/9] efi: add global.efi.bootargs for bootm'd EFI applications
Date: Wed, 26 Aug 2026 14:17:10 +0200
Message-ID: <20260826121956.2936414-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052007_764314_CE3A63E9 
X-CRM114-Status: GOOD (  27.48  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The load options of an EFI application booted via bootm can
    so far only be influenced for EFI-stubbed Linux kernels and only via the
   Linux bootargs. There is no way to pass options to a generic EFI ap [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: kzw6534rfnyurttr7autk1ywerh16oi5
X-Rspamd-Queue-Id: C6681202282

The load options of an EFI application booted via bootm can so far only be
influenced for EFI-stubbed Linux kernels and only via the Linux bootargs.
There is no way to pass options to a generic EFI application like a shell
or a boot loader, and no way to pass EFI-stub-specific options like initrd=
or efi= to a kernel separately from what goes into the Linux bootargs.

Add a global.efi.bootargs.* family of variables that works like
global.linux.bootargs.*: all variables with that prefix are concatenated in
lexicographical order and become the load options of any EFI application
booted via bootm. For EFI-stubbed Linux kernels, the Linux bootargs are
appended, so the kernel command line becomes
"$global.efi.bootargs $global.linux.bootargs".

The helper lives outside efi/payload and efi/loader, as the variable is
meant to be used identically when barebox runs as EFI payload and when it
runs as EFI loader. Executing an application directly from the shell keeps
passing only the shell arguments and the legacy x86 handover protocol is
unaffected, because it bypasses the EFI stub that would interpret the load
options.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c          |  1 +
 efi/Makefile           |  2 +-
 efi/bootargs.c         | 65 ++++++++++++++++++++++++++++++++++++++++++
 efi/loader/bootm.c     | 27 ++++++++++++------
 efi/payload/bootm.c    | 23 ++++++++++-----
 include/efi/bootargs.h |  9 ++++++
 test/py/test_shell.py  | 26 +++++++++++++++++
 7 files changed, 136 insertions(+), 17 deletions(-)
 create mode 100644 efi/bootargs.c
 create mode 100644 include/efi/bootargs.h

diff --git a/common/boot.c b/common/boot.c
index dc1441d0dc91..dce5c5330eeb 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -201,6 +201,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
+	globalvar_set_match("efi.bootargs.dyn.", "");
 
 	return ret;
 }
diff --git a/efi/Makefile b/efi/Makefile
index 7032e1fe1ded..4338e188db56 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -6,4 +6,4 @@ obj-$(CONFIG_EFI_RUNTIME)	+= runtime/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
 obj-y				+= errno.o handle.o efivar.o efivar-filename.o
-obj-y				+= initrd.o
+obj-y				+= initrd.o bootargs.o
diff --git a/efi/bootargs.c b/efi/bootargs.c
new file mode 100644
index 000000000000..4a238388ef3f
--- /dev/null
+++ b/efi/bootargs.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * bootargs.c - load options for EFI applications started via bootm
+ *
+ * Copyright (C) 2026 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <magicvar.h>
+#include <globalvar.h>
+#include <bootargs.h>
+#include <efi/bootargs.h>
+
+/**
+ * efi_bootargs_get() - compute load options for an EFI application
+ * @linux_image: whether the image is an EFI-stubbed Linux kernel
+ *
+ * All variables beginning with "global.efi.bootargs." are concatenated in
+ * lexicographical order. For Linux kernels, the Linux bootargs are appended,
+ * so the EFI stub sees them as the kernel command line.
+ *
+ * Return: newly allocated string to be freed by the caller or NULL
+ */
+char *efi_bootargs_get(bool linux_image)
+{
+	const char *linux_args = NULL;
+	char *efi_args, *options;
+
+	efi_args = globalvar_get_match("efi.bootargs.", " ");
+	if (efi_args && !*efi_args) {
+		free(efi_args);
+		efi_args = NULL;
+	}
+
+	if (linux_image)
+		linux_args = linux_bootargs_get();
+	if (linux_args && !*linux_args)
+		linux_args = NULL;
+
+	if (efi_args && linux_args)
+		options = xasprintf("%s %s", efi_args, linux_args);
+	else if (linux_args)
+		options = xstrdup(linux_args);
+	else
+		options = efi_args;
+
+	if (options != efi_args)
+		free(efi_args);
+
+	return options;
+}
+
+static int efi_bootargs_init(void)
+{
+	globalvar_add_simple("efi.bootargs.base", NULL);
+
+	return 0;
+}
+late_initcall(efi_bootargs_init);
+
+BAREBOX_MAGICVAR(global.efi.bootargs.*,
+		 "Load options of EFI applications started via bootm. Linux bootargs are appended for EFI-stubbed kernels");
+BAREBOX_MAGICVAR(global.efi.bootargs.dyn.*,
+		 "Load options set by boot entries. Cleared after each boot entry");
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index a68db742e173..e3d654774831 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -13,7 +13,6 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
-#include <bootargs.h>
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
@@ -34,6 +33,7 @@
 #include <efi/services.h>
 #include <efi/error.h>
 #include <efi/initrd.h>
+#include <efi/bootargs.h>
 #include <efi/devicepath.h>
 
 /**
@@ -199,6 +199,7 @@ static int efi_loader_bootm(struct image_data *data)
 	resource_size_t start, end;
 	void *load_option = NULL;
 	u32 load_option_size = 0;
+	char *options;
 	efi_handle_t handle;
 	struct efi_device_path *file_path = NULL;
 	struct efi_event *evt;
@@ -215,19 +216,19 @@ static int efi_loader_bootm(struct image_data *data)
 	if (IS_ERR(os_res))
 		return PTR_ERR(os_res);
 
-	if (filetype_is_linux_efi_image(data->kernel_type)) {
-		const char *options;
-
-		options = linux_bootargs_get();
-		if (options) {
-			load_option = xstrdup_char_to_wchar(options);
-			load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
-		}
+	options = efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_type));
+	if (options) {
+		load_option = xstrdup_char_to_wchar(options);
+		load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
 	}
 
 	file_path = efi_dp_from_file(AT_FDCWD, data->os_file);
 
 	pr_info("Loading %pD\n", file_path);
+	if (data->verbose && options)
+		pr_info("Load options: %s\n", options);
+
+	free(options);
 
 	/* Initialize EFI drivers */
 	efiret = efi_init_obj_list();
@@ -321,6 +322,14 @@ static int efi_loader_bootm(struct image_data *data)
 	/* Control is returned to us, disable EFI watchdog */
 	efi_set_watchdog(0);
 
+	/*
+	 * A still loaded driver would keep referencing the load options.
+	 * efi_set_load_options() tolerates the already deleted handle of an
+	 * application.
+	 */
+	efi_set_load_options(handle, 0, NULL);
+	free(load_option);
+
 	return -efi_errno(efiret);
 
 out:
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index fe2d27b7ff10..491bafb66898 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -22,7 +22,6 @@
 #include <string.h>
 #include <linux/err.h>
 #include <boot.h>
-#include <bootargs.h>
 #include <bootm.h>
 #include <fs.h>
 #include <libfile.h>
@@ -32,6 +31,7 @@
 #include <efi/payload/driver.h>
 #include <efi/error.h>
 #include <efi/initrd.h>
+#include <efi/bootargs.h>
 
 #include "image.h"
 
@@ -167,6 +167,7 @@ static int do_bootm_efi_stub(struct image_data *data)
 	bool image_freed = false;
 	efi_handle_t handle = NULL; /* silence compiler warning */
 	enum filetype type;
+	char *options;
 	int ret;
 
 	ret = efi_load_os(data, &loaded_image, &handle);
@@ -186,9 +187,11 @@ static int do_bootm_efi_stub(struct image_data *data)
 	if (data->dryrun)
 		goto unload_ramdisk;
 
-	ret = efi_execute_image(handle, loaded_image, true, type,
-				filetype_is_linux_efi_image(type) ?
-				linux_bootargs_get() : NULL);
+	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
+
+	ret = efi_execute_image(handle, loaded_image, true, type, options);
+
+	free(options);
 
 	/* efi_execute_image takes care to unload the image on error,
 	 * so we set image_freed and fall through to freeing ramdisk
@@ -215,6 +218,7 @@ static int efi_app_execute(struct image_data *data)
 	struct efi_loaded_image *loaded_image;
 	efi_handle_t handle;
 	enum filetype type;
+	char *options;
 	int ret;
 
 	ret = efi_load_image(data->os_file, &loaded_image, &handle);
@@ -223,14 +227,19 @@ static int efi_app_execute(struct image_data *data)
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
 
+	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
+
 	if (data->dryrun) {
 		BS->unload_image(handle);
+		free(options);
 		return 0;
 	}
 
-	return efi_execute_image(handle, loaded_image, true, type,
-				 filetype_is_linux_efi_image(type) ?
-				 linux_bootargs_get() : NULL);
+	ret = efi_execute_image(handle, loaded_image, true, type, options);
+
+	free(options);
+
+	return ret;
 }
 
 static int linux_efi_handover = true;
diff --git a/include/efi/bootargs.h b/include/efi/bootargs.h
new file mode 100644
index 000000000000..dfd17261ff9d
--- /dev/null
+++ b/include/efi/bootargs.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_BOOTARGS_H
+#define __EFI_BOOTARGS_H
+
+#include <linux/types.h>
+
+char *efi_bootargs_get(bool linux_image);
+
+#endif /* __EFI_BOOTARGS_H */
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index 23c2d5dbb0b6..05090ae07be0 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -155,3 +155,29 @@ def test_barebox_test_var_exists(barebox, barebox_config):
 
     # Clean up
     barebox.run_check('rm /tmp/testvars')
+
+
+def test_boot_bootargs_dyn_cleared(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
+                  "CONFIG_CMD_ECHO")
+
+    barebox.run_check("echo -o /env/boot/dyntest '#!/bin/sh'")
+    barebox.run_check("echo -a /env/boot/dyntest "
+                      "'global linux.bootargs.dyn.test=linux-dyn'")
+    barebox.run_check("echo -a /env/boot/dyntest "
+                      "'global efi.bootargs.dyn.test=efi-dyn'")
+    barebox.run_check("echo -a /env/boot/dyntest "
+                      "'global efi.bootargs.nodyntest=efi-static'")
+
+    # Run the script, but don't actually boot anything
+    barebox.run("boot -d -d dyntest")
+
+    # .dyn. variables must not leak into subsequent boot entries
+    assert barebox.run_check("echo ${global.linux.bootargs.dyn.test}") == [""]
+    assert barebox.run_check("echo ${global.efi.bootargs.dyn.test}") == [""]
+    # ... but other variables are left alone
+    assert barebox.run_check("echo ${global.efi.bootargs.nodyntest}") == \
+        ["efi-static"]
+
+    barebox.run_check("global -r efi.bootargs.nodyntest")
+    barebox.run_check("rm /env/boot/dyntest")
-- 
2.47.3



