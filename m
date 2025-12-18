Delivery-date: Thu, 18 Dec 2025 12:40:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN7-00CoXa-27
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMV-0002F7-6L
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGQeYiIcnJwY5EIRAulH2d2ygKFgpgfTT5JrEEx+hK4=; b=T2/fwQquywXolCddGGieJ0m6o8
	V5xrqnOxXhzF/noRR0vCB4ukYDfqRU6HoTYISPx0cCNtUarjBoaGJBcs0oQJfJDFKeXpsZYQSE0kD
	4ZBjxuIZNFoIlwjoq7k85EUrJYQRMLx7zKy6cQYHL/YN7h17JBtbu9vUoOM34sUpIgjTcYoecx0oc
	jIJHgu4aTeOtgMWj+JxjKPBotcvtaRrezINDdcEi4zC8zD/97+pAW7YhocOjvOz9HkF76tx+QEpS2
	HcP70yozBQ2H7iCaIr4dr5y0CJp/9oKWP27McO9gcTeK9Om6WwgHZ1890Q4/McZTyn397URdRweue
	0zh2Bj6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKL-00000008LUx-0Yph;
	Thu, 18 Dec 2025 11:37:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJY-00000008KPY-1qyD
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mGQeYiIcnJwY5EIRAulH2d2ygKFgpgfTT5JrEEx+hK4=; b=H/ey8doThDUI9rU7Lj2Lfiwiec
	83g6DQB8srxzWyAst07XO2CesLZoesa3z5iI+Z+FLT1M/dALGOVulhcsEB6yYhGE5AxMqRl6xk7ex
	WepTxI7UWU58dZeXe4Q+aD27KlkLT3jJ2Th3ZYIKPEioHwtTBwVGnOXNP+uBP56rUH2S/pO2UftYQ
	+BUZFwrcdMpIm6CrSe1Lqjb2yTUL74HZpUwS+yqny/QVTn8omeO2ZuXVLetXEq80uln8k15uduwG2
	5wanzbRoyuyjBsgRurlutjUqsn9WNNzn8Hvzrt212tB0V3jem0KUzm4ki8yV7mlOGj0rxalMooW/F
	qcS2IfCw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRx-00000008fRR-0j40
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008Br-9Q; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gve-0K;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-0ATT;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:02 +0100
Message-ID: <20251218111242.1527495-43-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_321157_5A1C76EF 
X-CRM114-Status: GOOD (  23.45  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 42/54] bootm: add global.bootm.efi toggle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI-stubbed kernel images can be booted via EFI or completely via DT.
To allow barebox to support both in the same build, introduce a
global.bootm.efi variable that controls this when loader support is
enabled. The default will be to use EFI if support in both barebox and
kernel is available, but there is an option to disable use of EFI and to
enforce it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/armlinux.c | 14 ++++---------
 arch/riscv/lib/bootm.c    | 14 ++++---------
 common/bootm.c            | 43 +++++++++++++++++++++++++++++++++++++++
 common/filetype.c         | 16 +++++++++++++++
 efi/payload/bootm.c       |  1 +
 include/bootm.h           | 12 +++++++++++
 include/filetype.h        |  1 +
 7 files changed, 81 insertions(+), 20 deletions(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 7803d5671719..e40b61a26b07 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -33,15 +33,10 @@ static int do_bootm_linux(struct image_data *data)
 }
 
 static struct image_handler aarch64_linux_handler = {
-        .name = "ARM aarch64 Linux image",
-        .bootm = do_bootm_linux,
-        .filetype = filetype_arm64_linux_image,
-};
-
-static struct image_handler aarch64_linux_efi_handler = {
-        .name = "ARM aarch64 Linux/EFI image",
-        .bootm = do_bootm_linux,
-        .filetype = filetype_arm64_efi_linux_image,
+	.name = "ARM aarch64 Linux image",
+	.bootm = do_bootm_linux,
+	.check_image = bootm_efi_check_image,
+	.filetype = filetype_arm64_linux_image,
 };
 
 static int do_bootm_barebox(struct image_data *data)
@@ -87,7 +82,6 @@ static int aarch64_register_image_handler(void)
 	if (efi_is_payload())
 		return 0;
 
-	register_image_handler(&aarch64_linux_efi_handler);
 	register_image_handler(&aarch64_linux_handler);
 	register_image_handler(&aarch64_barebox_handler);
 
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index 08791458f824..2a47579b41ef 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -31,15 +31,10 @@ static int do_bootm_linux(struct image_data *data)
 }
 
 static struct image_handler riscv_linux_handler = {
-        .name = "RISC-V Linux image",
-        .bootm = do_bootm_linux,
-        .filetype = filetype_riscv_linux_image,
-};
-
-static struct image_handler riscv_linux_efi_handler = {
-        .name = "RISC-V Linux/EFI image",
-        .bootm = do_bootm_linux,
-        .filetype = filetype_riscv_efi_linux_image,
+	.name = "RISC-V Linux image",
+	.bootm = do_bootm_linux,
+	.check_image = bootm_efi_check_image,
+	.filetype = filetype_riscv_linux_image,
 };
 
 static struct image_handler riscv_barebox_handler = {
@@ -51,7 +46,6 @@ static struct image_handler riscv_barebox_handler = {
 static int riscv_register_image_handler(void)
 {
 	register_image_handler(&riscv_linux_handler);
-	register_image_handler(&riscv_linux_efi_handler);
 	register_image_handler(&riscv_barebox_handler);
 
 	return 0;
diff --git a/common/bootm.c b/common/bootm.c
index 620eb19ff1d3..4e4d940d9198 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -6,6 +6,7 @@
 #include <bootm-overrides.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <efi/mode.h>
 #include <malloc.h>
 #include <memory.h>
 #include <block.h>
@@ -73,6 +74,7 @@ static int bootm_earlycon;
 static int bootm_provide_machine_id;
 static int bootm_provide_hostname;
 static int bootm_verbosity;
+static int bootm_efi_mode = BOOTM_EFI_AVAILABLE;
 
 void bootm_data_init_defaults(struct bootm_data *data)
 {
@@ -95,6 +97,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->provide_hostname = bootm_provide_hostname;
 	data->verbose = bootm_verbosity;
 	data->dryrun = bootm_dryrun;
+	data->efi_boot = bootm_efi_mode;
 }
 
 void bootm_data_restore_defaults(const struct bootm_data *data)
@@ -115,6 +118,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 	bootm_provide_hostname = data->provide_hostname;
 	bootm_verbosity = data->verbose;
 	bootm_dryrun = data->dryrun;
+	bootm_efi_mode = data->efi_boot;
 }
 
 static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_AVAILABLE;
@@ -807,6 +811,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data->initrd_address = bootm_data->initrd_address;
 	data->os_address = bootm_data->os_address;
 	data->os_entry = bootm_data->os_entry;
+	data->efi_boot = bootm_data->efi_boot;
 
 	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
 	if (ret < 0 && ret != -EFBIG) {
@@ -1052,6 +1057,30 @@ struct bootm_overrides bootm_set_overrides(const struct bootm_overrides override
 }
 #endif
 
+bool bootm_efi_check_image(struct image_handler *handler,
+			   struct image_data *data,
+			   enum filetype detected_filetype)
+{
+	/* This is our default: Use EFI when support is compiled in,
+	 * and fallback to normal boot otherwise.
+	 */
+	if (data->efi_boot == BOOTM_EFI_AVAILABLE) {
+		if (IS_ENABLED(CONFIG_EFI_LOADER))
+			data->efi_boot = BOOTM_EFI_REQUIRED;
+		else
+			data->efi_boot = BOOTM_EFI_DISABLED;
+	}
+
+	/* If EFI is disabled, we assume EFI-stubbed images are
+	 * just normal non-EFI stubbed ones
+	 */
+	if (data->efi_boot == BOOTM_EFI_DISABLED)
+		return handler->filetype == filetype_no_efistub(detected_filetype);
+
+	/* If EFI is required, we enforce handlers to match exactly */
+	return detected_filetype == handler->filetype;
+}
+
 static int do_bootm_compressed(struct image_data *img_data)
 {
 	struct bootm_data bootm_data = {
@@ -1140,6 +1169,12 @@ static struct image_handler zstd_bootm_handler = {
 
 int linux_rootwait_secs = 10;
 
+static const char * const bootm_efi_loader_mode_names[] = {
+	[BOOTM_EFI_DISABLED] = "disabled",
+	[BOOTM_EFI_AVAILABLE] = "available",
+	[BOOTM_EFI_REQUIRED] = "required",
+};
+
 static int bootm_init(void)
 {
 	globalvar_add_simple("bootm.image", NULL);
@@ -1174,6 +1209,11 @@ static int bootm_init(void)
 		globalvar_add_simple_int("linux.rootwait",
 					 &linux_rootwait_secs, "%d");
 
+	if (IS_ENABLED(CONFIG_EFI_LOADER) && !efi_is_payload())
+		globalvar_add_simple_enum("bootm.efi", &bootm_efi_mode,
+					  bootm_efi_loader_mode_names,
+					  ARRAY_SIZE(bootm_efi_loader_mode_names));
+
 	if (IS_ENABLED(CONFIG_BZLIB))
 		register_image_handler(&bzip2_bootm_handler);
 	if (IS_ENABLED(CONFIG_ZLIB))
@@ -1200,6 +1240,9 @@ BAREBOX_MAGICVAR(global.bootm.oftree, "bootm default oftree");
 BAREBOX_MAGICVAR(global.bootm.tee, "bootm default tee image");
 BAREBOX_MAGICVAR(global.bootm.dryrun, "bootm default dryrun level");
 BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
+#ifdef CONFIG_EFI_LOADER
+BAREBOX_MAGICVAR(global.bootm.efi, "efiloader: Behavior for EFI-stubbable boot images: EFI \"disabled\", EFI if \"available\" (default), EFI is \"required\"");
+#endif
 BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early log output");
 BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
diff --git a/common/filetype.c b/common/filetype.c
index b82667c30a4b..9b348377f222 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -595,3 +595,19 @@ bool filetype_is_linux_efi_image(enum filetype ft)
 		return false;
 	}
 }
+
+enum filetype filetype_no_efistub(enum filetype ft)
+{
+	switch (ft) {
+	case filetype_arm_efi_zimage:
+		return filetype_arm_zimage;
+	case filetype_arm64_efi_linux_image:
+		return filetype_arm64_linux_image;
+	case filetype_riscv_efi_linux_image:
+		return filetype_riscv_linux_image;
+	case filetype_x86_efi_linux_image:
+		return filetype_x86_linux_image;
+	default:
+		return ft;
+	}
+}
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 87bf1de709b4..ea5b1265aeaa 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -316,6 +316,7 @@ struct image_handler efi_x86_linux_handle_tr = {
 static struct image_handler efi_arm64_handle_tr = {
 	.name = "EFI ARM64 Linux kernel",
 	.bootm = do_bootm_efi_stub,
+	.check_image = bootm_efi_check_image,
 	.filetype = filetype_arm64_efi_linux_image,
 };
 
diff --git a/include/bootm.h b/include/bootm.h
index b08e20c50da7..e56a999f0b11 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -13,6 +13,12 @@ enum bootm_verify {
 	BOOTM_VERIFY_AVAILABLE,
 };
 
+enum bootm_efi_mode {
+	BOOTM_EFI_DISABLED,
+	BOOTM_EFI_AVAILABLE,
+	BOOTM_EFI_REQUIRED,
+};
+
 struct bootm_data {
 	const char *os_file;
 	const char *initrd_file;
@@ -40,6 +46,7 @@ struct bootm_data {
 	 * of global.hostname to Kernel.
 	 */
 	bool provide_hostname;
+	enum bootm_efi_mode efi_boot;
 	unsigned long initrd_address;
 	unsigned long os_address;
 	unsigned long os_entry;
@@ -109,6 +116,7 @@ struct image_data {
 	int verbose;
 	int force;
 	int dryrun;
+	enum bootm_efi_mode efi_boot;
 };
 
 struct image_handler {
@@ -165,4 +173,8 @@ void bootm_force_signed_images(void);
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
 
+bool bootm_efi_check_image(struct image_handler *handler,
+			   struct image_data *data,
+			   enum filetype detected_filetype);
+
 #endif /* __BOOTM_H */
diff --git a/include/filetype.h b/include/filetype.h
index aed02fcc2566..0e19e46c513d 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -91,6 +91,7 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 int is_fat_boot_sector(const void *_buf);
 bool filetype_is_barebox_image(enum filetype ft);
 bool filetype_is_linux_efi_image(enum filetype ft);
+enum filetype filetype_no_efistub(enum filetype);
 
 static inline bool file_is_compressed_file(enum filetype ft)
 {
-- 
2.47.3



