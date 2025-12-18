Delivery-date: Thu, 18 Dec 2025 12:38:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKk-00CoL0-10
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKJ-0000YF-CB
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lu3etYCkRg2YfGpT0jdiL0acTN6gxTYVkOKLe6eBFH0=; b=CdEOaww6UUfuFMicJ6r4x7xZ5Q
	zaMH7iMBZsNOALCvU1W+YDlnma0xdpQLCt4E+k67amfVhmKHY05uyf0x/rEBEnrUKbZIb2Ygs0T8i
	ei25cXXzZaLgp6FPkm2J2vuhX5A5ogFSVlQJ6JgUDUnM/AsGSZqeEbbsi0bvPyKZ8hvm3JO9IWBQZ
	QDmNEkA3QlCg9/ojdCBoLberCvMClx81Syopzw7/9oZc72Qppt09u9YlUrhj7Sxq+ONJiTDANaJZn
	WLNq7sgMcRqdpOyFYPU4Dv4C+gYXXxEVCzBdtLjUP+1N+tLI/dYRLTZbK+sW9GmJ9BQK3jhV7gtJW
	S7XueM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-00000008KGz-0Nfe;
	Thu, 18 Dec 2025 11:36:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KB7-0yxM
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-00087f-La; Thu, 18 Dec 2025 12:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006GuM-1W;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-0XH1;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:04 +0100
Message-ID: <20251218111242.1527495-45-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_273643_9CC72BA8 
X-CRM114-Status: GOOD (  18.05  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 44/54] efi: loader: add rudimentary EFI boot manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Actual efibootmgr is a bit more involved and would require evaluating
the Boot#### variables. This is planned, but for now let's only
implement the fallback when no variables have been found.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c           |  7 ++--
 efi/loader/Kconfig      | 11 ++++++
 efi/loader/Makefile     |  1 +
 efi/loader/efibootmgr.c | 79 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 95 insertions(+), 3 deletions(-)
 create mode 100644 efi/loader/efibootmgr.c

diff --git a/common/boot.c b/common/boot.c
index a8a92057844b..7b2ce4740759 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -136,9 +136,10 @@ static int init_boot(void)
 {
 	if (!global_boot_default)
 		global_boot_default = xstrdup(
-			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "bootsource ")
-			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "storage.builtin ")
-			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "storage.removable ")
+			IF_ENABLED(CONFIG_EFI_LOADER_BOOTMGR,  "efibootmgr ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "bootsource ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.builtin ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.removable ")
 			"net"
 		);
 
diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index d54783f9a084..ca0ec6b5010a 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -1,6 +1,17 @@
 # SPDX-License-Identifier: GPL-2.0-only
 # SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/a0fe8cedcbe8c76403a77e57eac228b8f778a3ae/lib/efi_loader/Kconfig
 
+config EFI_LOADER_BOOTMGR
+	bool "Rudimentary UEFI Boot Manager support"
+	select BOOT
+	select BOOT_DEFAULTS
+	default y
+	help
+	  This boot manager doesn't yet make use of Boot# variables, but instead
+	  hardcodes order to lookup removable and then builtin storage devices
+	  for EFI payloads located at the removable media path indicated by
+	  CONFIG_EFI_PAYLOAD_DEFAULT_PATH within their respective devices.
+
 config EFI_LOADER_DEBUG_SUPPORT
 	bool "EFI Debug Support"
 	default y
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 84a8bf1ca229..62483057b426 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -13,3 +13,4 @@ obj-y += watchdog.o
 obj-y += pe.o
 obj-y += loadopts.o
 obj-$(CONFIG_BOOT) += bootesp.o
+obj-$(CONFIG_EFI_LOADER_BOOTMGR) += efibootmgr.o
diff --git a/efi/loader/efibootmgr.c b/efi/loader/efibootmgr.c
new file mode 100644
index 000000000000..4f8b04d8298c
--- /dev/null
+++ b/efi/loader/efibootmgr.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#define pr_fmt(fmt) "efi-loader: efibootmgr: " fmt
+
+#include <boot.h>
+#include <driver.h>
+
+struct resolve_ctx {
+	struct bootentry_provider *provider;
+	struct bootentries *entries;
+};
+
+static int populate_esp_bootentries(struct cdev *cdev, void *_ctx)
+{
+	struct resolve_ctx *ctx = _ctx;
+
+	pr_debug("processing %s\n", cdev->name);
+
+	return ctx->provider->generate(ctx->entries, cdev->name);
+}
+
+static int efibootmgr_add_entry_from_bootvars(struct bootentries *entries,
+					      const char *name)
+{
+	/* TODO: actually make use of the Boot# variables
+	 * instead of only hardcoding order
+	 */
+	return 0;
+}
+
+static int efibootmgr_add_entry_from_fallback(struct bootentries *entries,
+					      const char *name)
+{
+	struct resolve_ctx ctx;
+	int nremovable, nbuiltin;
+
+	ctx.provider = get_bootentry_provider("esp");
+	if (!ctx.provider)
+		return -ENOENT;
+
+	ctx.entries = entries;
+
+	nremovable = cdev_alias_resolve_for_each("storage.removable",
+						 populate_esp_bootentries, &ctx);
+	if (nremovable < 0)
+		return nremovable;
+
+	nbuiltin = cdev_alias_resolve_for_each("storage.builtin",
+					       populate_esp_bootentries, &ctx);
+	if (nbuiltin < 0)
+		return nbuiltin;
+
+	return nbuiltin + nremovable;
+}
+
+static int efibootmgr_add_entry(struct bootentries *entries, const char *name)
+{
+	int nentries;
+
+	if (strcmp(name, "efibootmgr"))
+		return 0;
+
+	nentries = efibootmgr_add_entry_from_bootvars(entries, name);
+	if (nentries)
+		return nentries;
+
+	return efibootmgr_add_entry_from_fallback(entries, name);
+}
+
+static struct bootentry_provider efibootmgr_entry_provider = {
+	.name = "efibootmgr",
+	.generate = efibootmgr_add_entry,
+};
+
+static int efibootmgr_init(void)
+{
+	return bootentry_register_provider(&efibootmgr_entry_provider);
+}
+device_initcall(efibootmgr_init);
-- 
2.47.3



