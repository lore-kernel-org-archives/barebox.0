Delivery-date: Thu, 18 Dec 2025 12:39:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLx-00CoQH-2n
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCL6-00019b-98
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:39:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RqmLilCe/L0wSi27hZbNzp0Uj5joaFruO6BP1fPDO40=; b=WX7/bVGCPkQSVqtTno0Rtk5CGP
	WD46Wgts7xeQC0xNc7gnBV2GM7scSvMA4FM5l0/Rr6I8GgAlhP9OOKUj+u7jqUEdjG8dYGLyLOAC1
	qziLbTgGHEKfO1A8SgkvzbeoBfVPMz3amkWZXSHiAZZJTsbfTixPU8bOY5jwJuPngRZ19kgJk3CiB
	ELkXwoL0Q9osmJ3vdMi88Z1wvpJuILwsZ+MGATzavyfoxIXqLaMDa7bDKT7xapQPMVK/VeaoVtLm6
	z/LUmfQxW2qPt0Sxhk9DNWAzzRbNxfjI7YFSrpdywdFYY8YbtJvCdvuOAWj04EtQVM0ikYKUv1Pco
	JMgbPnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJg-00000008KXZ-2CtF;
	Thu, 18 Dec 2025 11:37:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJV-00000008KK9-02r0
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RqmLilCe/L0wSi27hZbNzp0Uj5joaFruO6BP1fPDO40=; b=CwjYPo+uviSifGBU4ApWbW9CB8
	sUVc5JQILQRL2h6BGMPVkDgn2P1JhvmC0Q/yFqej5lLdjvB4TkFzXOh9PEH/x8XLx8Qvn+FG1GZCh
	H81ZT0VsnvEyrKoqOhPmc7Fg78mPyDFf5/sW4iodLqLLvet1f24GFufWFLP7jDuOEr9Og6Pt8NXD3
	I+xlXFOCgjValY8a5qBKklzCXmaWIHFiO3n7CxQPEjXhURUuNHErd//eSTx42jJzDoDaiXaiIt3il
	3QxcG4ozhhOFwhpzKUcVSYvmrfDY0BaXqCsj3G+HXeSPXO+cS/CKxCfGnQ5lGDqByQc9+kzs1xlMu
	Uy2J5X7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-000000063vu-30bq
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008FG-Kr; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006Gwg-1T;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-2Z34;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:33 +0100
Message-ID: <20251218111242.1527495-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_113653_830479_2B21B863 
X-CRM114-Status: GOOD (  14.81  )
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
Subject: [PATCH v1 13/54] efi: loader: add table utility functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add some common helpers for use in the upcoming EFI boot and runtime
services implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig          |  1 +
 efi/loader/Makefile  |  1 +
 efi/loader/table.c   | 31 +++++++++++++++++++++++++++++++
 include/efi/loader.h |  8 ++++++++
 4 files changed, 41 insertions(+)
 create mode 100644 efi/loader/table.c

diff --git a/efi/Kconfig b/efi/Kconfig
index 766d6b0e3094..590dd7918440 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -32,6 +32,7 @@ config EFI_LOADER
 	select EFI_GUID
 	select EFI_DEVICEPATH
 	select MEMORY_ATTRIBUTES
+	select CRC32
 	help
 	  Select this option if you want to run UEFI applications (like GNU
 	  GRUB or an EFI-stubbed kernel) on top of barebox.
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 1f07cf6005b9..b4294d746b8b 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -2,3 +2,4 @@
 
 obj-y += memory.o pool_alloc.o
 obj-y += trace.o
+obj-y += table.o
diff --git a/efi/loader/table.c b/efi/loader/table.c
new file mode 100644
index 000000000000..0c200365b835
--- /dev/null
+++ b/efi/loader/table.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <efi/services.h>
+#include <efi/loader.h>
+#include <efi/error.h>
+#include <efi/attributes.h>
+#include <crc.h>
+
+/**
+ * efi_update_table_header_crc32() - Update crc32 in table header
+ *
+ * @table:	EFI table
+ */
+void __efi_runtime efi_update_table_header_crc32(struct efi_table_hdr *table)
+{
+	table->crc32 = __pi_crc32(0, table, table->headersize);
+}
+
+/**
+ * efi_unimplemented() - replacement function, returns EFI_UNSUPPORTED
+ *
+ * This function is used after SetVirtualAddressMap() is called as replacement
+ * for services that are not available anymore due to constraints of our
+ * implementation.
+ *
+ * Return:	EFI_UNSUPPORTED
+ */
+efi_status_t __efi_runtime EFIAPI efi_unimplemented(void)
+{
+	return EFI_UNSUPPORTED;
+}
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 4a5670bcf672..fcca8676479d 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -8,6 +8,8 @@
 #include <efi/services.h>
 #include <efi/memory.h>
 
+struct efi_table_hdr;
+
 #define EFI_SPECIFICATION_VERSION (2 << 16 | 80)
 
 /* Key identifying current memory map */
@@ -40,4 +42,10 @@ efi_status_t efi_get_memory_map(efi_uintn_t *memory_map_size,
 				efi_uintn_t *descriptor_size,
 				uint32_t *descriptor_version);
 
+/* Update CRC32 in table header */
+void efi_update_table_header_crc32(struct efi_table_hdr *table);
+
+/* replacement function, returns EFI_UNSUPPORTED */
+efi_status_t __efi_runtime EFIAPI efi_unimplemented(void);
+
 #endif /* _EFI_LOADER_H */
-- 
2.47.3



