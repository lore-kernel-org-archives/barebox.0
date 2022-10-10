Delivery-date: Mon, 10 Oct 2022 08:10:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzT-0033Y3-4e
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:10:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlzR-0008RS-3g
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:10:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o08209yeU+UnFMoCvJcgQ8VDSz7st/KCCsgQvpg8lRc=; b=AyEPf7AYQGIjG8LkbsaxIHDnxA
	TkG3mhWSUoE3s9Ae7oypszXr0Qz0bUWwnhvrZ5BUfP8GXXXo1srluNr6TUKX9qadKB63udEaHHQOv
	ORw1Us07woGfwDPCM6l4FlTuA5H4FTXEi/IMk7WI3esxJ935FaIA+Rmu0BuzdXSaaQRcK0MHZsH+S
	5ZV29bZ5EUvSAqqUzT5FxPu2nTZ6/vQtZ62YI713OtjhRlDse7sb93Dt2XFkOH6Kx+cWmtzyY+DVK
	aRoGft98G7d3dzI3KvZmJapCeNEJYcZvdUWldrSeDMfN7SfghqxQaAnGHOrQ1jdMooGTri7wHtF6E
	DFst1v/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlyF-00H9fJ-TO; Mon, 10 Oct 2022 06:09:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohly3-00H9aK-Au
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:08:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly2-0008Ci-4M; Mon, 10 Oct 2022 08:08:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly1-000d9D-Eu; Mon, 10 Oct 2022 08:08:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohly0-008k2j-9R; Mon, 10 Oct 2022 08:08:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:08:42 +0200
Message-Id: <20221010060842.2083550-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
References: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230847_409585_D975EE67 
X-CRM114-Status: GOOD (  16.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] efi: add device tree configuration table support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When running on device-tree enabled systems, barebox as EFI payload may
be passed a device tree via the system table. We've no use for that just
yet, but lets make it available as /efi.dtb.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/guid.c           |  1 +
 common/efi/payload/Makefile |  1 +
 common/efi/payload/fdt.c    | 43 +++++++++++++++++++++++++++++++++++++
 include/efi.h               |  1 +
 4 files changed, 46 insertions(+)
 create mode 100644 common/efi/payload/fdt.c

diff --git a/common/efi/guid.c b/common/efi/guid.c
index 93418d57b469..ca16f4520ff2 100644
--- a/common/efi/guid.c
+++ b/common/efi/guid.c
@@ -14,6 +14,7 @@ efi_guid_t efi_block_io_protocol_guid = EFI_BLOCK_IO_PROTOCOL_GUID;
 efi_guid_t efi_rng_protocol_guid = EFI_RNG_PROTOCOL_GUID;
 efi_guid_t efi_barebox_vendor_guid = EFI_BAREBOX_VENDOR_GUID;
 efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
+efi_guid_t efi_fdt_guid = EFI_DEVICE_TREE_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
diff --git a/common/efi/payload/Makefile b/common/efi/payload/Makefile
index bcbdda335f06..eeed046b0045 100644
--- a/common/efi/payload/Makefile
+++ b/common/efi/payload/Makefile
@@ -2,5 +2,6 @@
 
 obj-y += init.o
 obj-y += image.o
+obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
 obj-$(CONFIG_CMD_IOMEM) += iomem.o
diff --git a/common/efi/payload/fdt.c b/common/efi/payload/fdt.c
new file mode 100644
index 000000000000..dbbc93fb7d68
--- /dev/null
+++ b/common/efi/payload/fdt.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define pr_fmt(fmt) "efi-fdt: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <libfile.h>
+#include <efi/efi-payload.h>
+#include <efi/efi-device.h>
+
+static int efi_fdt_probe(void)
+{
+	efi_config_table_t *ect;
+
+	for_each_efi_config_table(ect) {
+		struct fdt_header *oftree;
+		u32 magic, size;
+		int ret;
+
+		if (efi_guidcmp(ect->guid, EFI_DEVICE_TREE_GUID))
+			continue;
+
+		oftree = (void *)ect->table;
+		magic = be32_to_cpu(oftree->magic);
+
+		if (magic != FDT_MAGIC) {
+			pr_err("table has invalid magic 0x%08x\n", magic);
+			return -EILSEQ;
+		}
+
+		size = be32_to_cpu(oftree->totalsize);
+		ret = write_file("/efi.dtb", oftree, size);
+		if (ret) {
+			pr_err("error saving /efi.dtb: %pe\n", ERR_PTR(ret));
+			return ret;
+		}
+
+		return 0;
+	}
+
+	return 0;
+}
+late_initcall(efi_fdt_probe);
diff --git a/include/efi.h b/include/efi.h
index 36e08af67bf3..3595cf05ccb7 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -541,6 +541,7 @@ extern efi_guid_t efi_block_io_protocol_guid;
 extern efi_guid_t efi_rng_protocol_guid;
 extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
+extern efi_guid_t efi_fdt_guid;
 
 typedef struct {
 	efi_guid_t guid;
-- 
2.30.2



