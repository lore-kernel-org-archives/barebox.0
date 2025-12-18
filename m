Delivery-date: Thu, 18 Dec 2025 12:38:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKo-00CoLi-2R
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKN-0000b3-77
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hHlMdMtFUPNoRD9aWxIEkZpKZReuN9kRXmY0Ns+rBb4=; b=oWafw5iVp9ffBYFY/o9td5z4GM
	Fxvj2SwghEyGL1eZseVf8pQHnNOw75J87n3X+qCmdStmBi1jKcHmxuNnn9IIh2QaUMr3j8r0w3xOv
	FoxShwpVBl7S/5Jcmu8CBEJSAY9WdzwcqasdTBF+xIlTIzQq0aWxDKt13Xo/8CEOPTxqhFNL1E5TP
	kl6xHrQh2DuFgO4j8FL9N1N6jYPXuWws13uL6KdYMnrkXx6+vkAtVn4HwtLBWUjW1oHGDAEC1pzao
	Y//MEsxpRa45Uxa5sszZHpGLulzyvYTtQo8bK26LFUiAwhxZVAWOGj8bwkWINFCY6wuDy81Fn3s/Z
	A5RQkJHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJV-00000008KLV-21MX;
	Thu, 18 Dec 2025 11:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBG-3gAX
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00089W-CV; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006Guw-0e;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-2MdT;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:13 +0100
Message-ID: <20251218111242.1527495-54-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_911992_A84CE123 
X-CRM114-Status: GOOD (  15.68  )
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
Subject: [PATCH v1 53/54] efi: loader: pass along SMBIOS table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows e.g. dmidecode in Linux to query the information that barebox
has collected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig      | 13 +++++++++++
 efi/loader/Makefile |  1 +
 efi/loader/smbios.c | 55 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 69 insertions(+)
 create mode 100644 efi/loader/smbios.c

diff --git a/common/Kconfig b/common/Kconfig
index b61a5bc40a1f..d4d9d930a996 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -755,6 +755,19 @@ config MMCBLKDEV_ROOTARG
 	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
 	      alias")
 
+config GENERATE_SMBIOS_TABLE
+	bool "Generate an SMBIOS (System Management BIOS) table"
+	depends on EFI_LOADER && OF
+	select SMBIOS
+	default y
+	help
+	  The System Management BIOS (SMBIOS) specification addresses how
+	  motherboard and system vendors present management information about
+	  their products in a standard format by extending the BIOS interface
+	  on Intel architecture systems.
+
+	  Check http://www.dmtf.org/standards/smbios for details.
+
 config BAREBOX_UPDATE
 	bool "In-system barebox update infrastructure"
 
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index c06d1f7c8c35..7992a4f5caa0 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -15,6 +15,7 @@ obj-y += loadopts.o
 obj-$(CONFIG_BOOT) += bootesp.o
 obj-$(CONFIG_EFI_LOADER_BOOTMGR) += efibootmgr.o
 obj-$(CONFIG_BOOTM) += bootm.o
+obj-$(CONFIG_GENERATE_SMBIOS_TABLE) += smbios.o
 obj-y += efi_var_common.o
 obj-y += efi_variable.o
 obj-y += efi_var_mem.o
diff --git a/efi/loader/smbios.c b/efi/loader/smbios.c
new file mode 100644
index 000000000000..81ba77c24017
--- /dev/null
+++ b/efi/loader/smbios.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: 2016 Alexander Graf
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/1c5aab803c0b0f07be1d3b0029f4031463497acf/lib/efi_loader/efi_smbios.c
+
+#define pr_fmt(fmt) "efi-loader: smbios: " fmt
+
+#include <efi/loader.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <efi/memory.h>
+#include <efi/loader/table.h>
+#include <linux/printk.h>
+#include <malloc.h>
+#include <smbios.h>
+#include <init.h>
+#include <linux/sizes.h>
+
+#define TABLE_SIZE	SZ_4K
+
+/*
+ * Install the SMBIOS table as a configuration table.
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_smbios_register(void *data)
+{
+	efi_status_t ret;
+	u64 memory;
+	void *buf;
+
+	/* Align the table to a 4KB boundary to keep EFI happy */
+	ret = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				 EFI_RUNTIME_SERVICES_DATA,
+				 efi_size_in_pages(TABLE_SIZE),
+				 &memory, "smbios");
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	buf = efi_phys_to_virt(memory);
+
+	if (!write_smbios_table(buf)) {
+		pr_err("Failed to write SMBIOS table\n");
+		return -EINVAL;
+	}
+
+	/* Install SMBIOS information as configuration table */
+	return efi_install_configuration_table(&efi_smbios3_guid, buf);
+}
+
+static int efi_smbios_init(void)
+{
+	efi_register_deferred_init(efi_smbios_register, NULL);
+	return 0;
+}
+postenvironment_initcall(efi_smbios_init);
-- 
2.47.3



