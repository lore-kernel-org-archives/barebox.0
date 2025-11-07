Delivery-date: Fri, 07 Nov 2025 22:38:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHUAD-00GQhc-1I
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 22:38:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHUAC-00066r-Ln
	for lore@pengutronix.de; Fri, 07 Nov 2025 22:38:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gd2qCNGJBQ8YPUAFfi4PSV0DYhIZyzAyrS/mzw0vDTQ=; b=iOLHXw79iZX5V1K60dvog2khY5
	IkUIVCEcqgJbinbbXF8rpJvJLIFwotVp6skCBfocJMYjVzjiue+3K2DTUeo7Pp1tZAUSEAsXQVRxS
	kUmiNNOyWgsU5yupmhL3kGVg4Ny/hrGQbGxp5aGVrSCTWwYFp814gc6KzNk+Oakrte7T0MdCqd6I2
	SKMRJrKDSdLryyW4y0tz0brG9KZ4zjSJRDckqxTHXYyjFoqWw2mRzDWltai2crJdU8wnxDGjYH6kl
	v2ksYdjUAMOMh4HC6UfMgHyFlbGi5y1pJCsrp9b95v/IH+WxNvVYUUwSFCXga7YcbNHTuyt5bKnIx
	XxUknmPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHU9h-00000001BfN-43i8;
	Fri, 07 Nov 2025 21:38:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHU9b-00000001BdD-2ZLR
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 21:37:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Z-0005ut-2H; Fri, 07 Nov 2025 22:37:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-007anX-2q;
	Fri, 07 Nov 2025 22:37:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-0000000EssG-3J2Z;
	Fri, 07 Nov 2025 22:37:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 22:37:49 +0100
Message-ID: <20251107213752.3547508-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
References: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_133755_653990_175BA8B2 
X-CRM114-Status: GOOD (  21.43  )
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
Subject: [PATCH 3/3] efi: payload: x86: make handover vs startimage a runtime decision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we are keeping handover the default for now, this should change in
future and the first step towards doing that is allowing users to try
both at runtime.

Add a new $global.linux.efi.handover variable to control this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/configs/efi_defconfig |  1 +
 efi/payload/Kconfig            | 24 ++++++++++++++++++++++--
 efi/payload/Makefile           |  2 +-
 efi/payload/bootm.c            | 29 ++++++++++++++++++++++++++---
 efi/payload/handover.c         |  5 +++--
 efi/payload/image.h            | 11 +++++++++++
 6 files changed, 64 insertions(+), 8 deletions(-)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 1dd823af40ea..e21ac4fda3e7 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -18,6 +18,7 @@ CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_LL=y
+CONFIG_EFI_PAYLOAD_BOOTM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 31eab4f3ef88..782e974d8f58 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -26,9 +26,29 @@ config EFI_STUB
 	def_bool HAVE_EFI_STUB
 
 config EFI_HANDOVER_PROTOCOL
-	bool "EFI Handover protocol"
-	depends on !EFI_PAYLOAD_BOOTM
+	bool "EFI Handover protocol (DEPRECATED)"
 	depends on X86
+	default y
+	help
+	  Select this in order to include support for booting Linux
+	  over the deprecated EFI handover protocol, which defines alternative
+	  entry points into the EFI stub.
+
+	  This is a practice that has no basis in the UEFI specification,
+	  and requires a priori knowledge on the part of the bootloader about
+	  Linux/x86 specific ways of passing the command line and initrd,
+	  and where in memory those assets may be loaded.
+
+	  This method of booting has been deprecated in Linux v6.2 in favor
+	  of the StartImage() boot service and should not be required with
+	  Linux v5.7 and above.
+
+	  If you say y here, the handover protocol will be used, unless
+	  global.linux.efi.handover=0 was set.
+
+	  If unsure, keep the default of y. The StartImage support for booting
+	  Linux is still new in barebox and will be made the default once we
+	  gain more confidence in its implementation.
 
 config EFI_PAYLOAD_BOOTM
 	bool "EFI bootm protocol"
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index 083728c53cb4..34efe6105d22 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -3,7 +3,7 @@
 obj-y += init.o
 obj-y += image.o
 obj-$(CONFIG_EFI_HANDOVER_PROTOCOL) += handover.o
-obj-$(CONFIG_EFI_PAYLOAD_BOOTM) += bootm.o
+obj-y += bootm.o
 obj-y += efi-initrd.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index da53e3939d26..2e060762f238 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -9,6 +9,7 @@
 
 #include <clock.h>
 #include <common.h>
+#include <globalvar.h>
 #include <linux/sizes.h>
 #include <linux/ktime.h>
 #include <memory.h>
@@ -284,16 +285,32 @@ static int efi_app_execute(struct image_data *data)
 	return efi_execute_image(handle, loaded_image, type);
 }
 
+static int linux_efi_handover = true;
+
+bool efi_x86_boot_method_check(struct image_handler *handler,
+			       struct image_data *data,
+			       enum filetype detected_filetype)
+{
+	if (handler->filetype != detected_filetype)
+		return false;
+
+	if (IS_ENABLED(CONFIG_EFI_HANDOVER_PROTOCOL) && linux_efi_handover)
+		return handler == &efi_x86_linux_handle_handover;
+	else
+		return handler == &efi_x86_linux_handle_tr;
+}
+
 static struct image_handler efi_app_handle_tr = {
 	.name = "EFI Application",
 	.bootm = efi_app_execute,
 	.filetype = filetype_exe,
 };
 
-static struct image_handler efi_x86_linux_handle_tr = {
-	.name = "EFI X86 Linux kernel",
+struct image_handler efi_x86_linux_handle_tr = {
+	.name = "EFI X86 Linux kernel (StartImage)",
 	.bootm = do_bootm_efi_stub,
 	.filetype = filetype_x86_efi_linux_image,
+	.check_image = efi_x86_boot_method_check,
 };
 
 static struct image_handler efi_arm64_handle_tr = {
@@ -302,12 +319,18 @@ static struct image_handler efi_arm64_handle_tr = {
 	.filetype = filetype_arm64_efi_linux_image,
 };
 
+BAREBOX_MAGICVAR(global.linux.efi.handover,
+		 "Use legacy x86 handover protocol instead of StartImage BootService");
+
 static int efi_register_bootm_handler(void)
 {
 	register_image_handler(&efi_app_handle_tr);
 
-	if (IS_ENABLED(CONFIG_X86))
+	if (IS_ENABLED(CONFIG_X86)) {
+		if (IS_ENABLED(CONFIG_EFI_HANDOVER_PROTOCOL))
+			globalvar_add_simple_bool("linux.efi.handover", &linux_efi_handover);
 		register_image_handler(&efi_x86_linux_handle_tr);
+	}
 
 	if (IS_ENABLED(CONFIG_ARM64))
 		register_image_handler(&efi_arm64_handle_tr);
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index f549568b6d03..8c6dd2896f47 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -128,10 +128,11 @@ static int do_bootm_efi(struct image_data *data)
 	return 0;
 }
 
-static struct image_handler efi_x86_linux_handle_handover = {
-	.name = "EFI Application",
+struct image_handler efi_x86_linux_handle_handover = {
+	.name = "EFI X86 Linux kernel (Legacy Handover)",
 	.bootm = do_bootm_efi,
 	.filetype = filetype_x86_efi_linux_image,
+	.check_image = efi_x86_boot_method_check,
 };
 
 static int efi_register_handover_handler(void)
diff --git a/efi/payload/image.h b/efi/payload/image.h
index 673b21db839a..bab1be368c21 100644
--- a/efi/payload/image.h
+++ b/efi/payload/image.h
@@ -3,6 +3,10 @@
 #define __EFI_PAYLOAD_IMAGE_H__
 
 #include <efi/types.h>
+#include <filetype.h>
+
+struct efi_loaded_image;
+struct image_data;
 
 int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 		   efi_handle_t *h);
@@ -11,4 +15,11 @@ int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
 		      enum filetype filetype);
 
+extern struct image_handler efi_x86_linux_handle_tr;
+extern struct image_handler efi_x86_linux_handle_handover;
+
+bool efi_x86_boot_method_check(struct image_handler *handler,
+			       struct image_data *data,
+			       enum filetype detected_filetype);
+
 #endif
-- 
2.47.3



