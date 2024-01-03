Delivery-date: Wed, 03 Jan 2024 19:33:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63O-002Nh2-22
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63G-00048Q-3w
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ept3Yy4rVZBwvdqBZ+syvvg+c5gUDDzHmWqbrb0PRo=; b=2NNB0slJqN+ZgS9WMG7EPG9gDY
	x86TRHvicsgQMtcGRE0knUX6IV8fPSBIODxXwwWhfSwAj3sdZ5u15tikZUvCbC1VucQ579rkwoo9U
	2dka5t/foJy1bBIZxaRl9QeFPiyD05flLGSyNFQJ1LDLW0q3MeZciON/Q5qGmuWm6yrCQ6IrdSuKn
	lTiTXgEBTohrWT3n7RrXIid8/ER/9L0DWtFE+A/MR0y2fmLtIywnYFAghj9+RkVDVFLPTGBsFGpgT
	tsjTqYioGq4e8bqxbVAMbrktyE3f/5L16WtZq72EoEx8mJQOkDOY3rb3+DWDn5qEppMOiP0jRjBCK
	Dg/f0u/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61q-00Bhzo-1v;
	Wed, 03 Jan 2024 18:31:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-00Bh1N-12
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL614-0001iQ-9c; Wed, 03 Jan 2024 19:30:58 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AyE-Sj; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-2F;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:43 +0100
Message-Id: <20240103181312.409668-84-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103101_385061_7CAF78B4 
X-CRM114-Status: GOOD (  17.90  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 083/112] efi: payload: factor C efi_main into dedicated file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For barebox as EFI payload on ARM, we will not call start_barebox()
ourselves as we will be using PBL, which we don't on x86 yet.

Therefore move that code out of the common init.c into a new
entry-single.c and early-mem.c that can be used as needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/Makefile       |  2 ++
 efi/payload/early-mem.c    | 32 +++++++++++++++++++++++++++
 efi/payload/entry-single.c | 45 ++++++++++++++++++++++++++++++++++++++
 efi/payload/init.c         | 45 --------------------------------------
 include/efi/efi-payload.h  |  3 +++
 5 files changed, 82 insertions(+), 45 deletions(-)
 create mode 100644 efi/payload/early-mem.c
 create mode 100644 efi/payload/entry-single.c

diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index eeed046b0045..71305bee7006 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -5,3 +5,5 @@ obj-y += image.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
 obj-$(CONFIG_CMD_IOMEM) += iomem.o
+obj-pbl-$(CONFIG_EFI_PAYLOAD) += early-mem.o
+obj-$(CONFIG_EFI_PAYLOAD) += entry-single.o
diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
new file mode 100644
index 000000000000..24bc1d34cc51
--- /dev/null
+++ b/efi/payload/early-mem.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/kernel.h>
+#include <linux/sizes.h>
+#include <efi.h>
+#include <efi/efi-payload.h>
+#include <linux/pagemap.h>
+
+efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
+				       size_t *memsize)
+{
+	struct efi_boot_services *bs = sys_table->boottime;
+	efi_physical_addr_t mem;
+	efi_status_t efiret;
+
+	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
+	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
+		efiret  = bs->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
+					     EFI_LOADER_DATA,
+					     *memsize/PAGE_SIZE, &mem);
+		if (!EFI_ERROR(efiret))
+			break;
+		if (efiret != EFI_OUT_OF_RESOURCES)
+			panic("failed to allocate malloc pool: %s\n",
+			      efi_strerror(efiret));
+	}
+	if (EFI_ERROR(efiret))
+		panic("failed to allocate malloc pool: %s\n",
+		      efi_strerror(efiret));
+
+	return mem;
+}
diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
new file mode 100644
index 000000000000..cb7981e03060
--- /dev/null
+++ b/efi/payload/entry-single.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#ifdef CONFIG_DEBUG_LL
+#define DEBUG
+#endif
+
+#include <linux/kernel.h>
+#include <linux/sizes.h>
+#include <efi.h>
+#include <efi/efi-payload.h>
+#include <memory.h>
+#include <common.h>
+
+/**
+ * efi-main - Entry point for EFI images
+ */
+void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
+{
+	efi_status_t efiret;
+	size_t memsize;
+	efi_physical_addr_t mem;
+
+#ifdef DEBUG
+	sys_table->con_out->output_string(sys_table->con_out, L"barebox\n");
+#endif
+
+	BS = sys_table->boottime;
+
+	efi_parent_image = image;
+	efi_sys_table = sys_table;
+	RT = sys_table->runtime;
+
+	efiret = BS->open_protocol(efi_parent_image, &efi_loaded_image_protocol_guid,
+			(void **)&efi_loaded_image,
+			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	if (!EFI_ERROR(efiret))
+		BS->handle_protocol(efi_loaded_image->device_handle,
+				&efi_device_path_protocol_guid, (void **)&efi_device_path);
+
+	mem = efi_earlymem_alloc(sys_table, &memsize);
+
+	mem_malloc_init((void *)mem, (void *)mem + memsize - 1);
+
+	start_barebox();
+}
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 906ede38336e..6c790c680602 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -266,51 +266,6 @@ static int efi_init(void)
 }
 device_efi_initcall(efi_init);
 
-/**
- * efi-main - Entry point for EFI images
- */
-void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
-{
-	efi_physical_addr_t mem;
-	size_t memsize;
-	efi_status_t efiret;
-
-#ifdef DEBUG
-	sys_table->con_out->output_string(sys_table->con_out, L"barebox\n");
-#endif
-
-	BS = sys_table->boottime;
-
-	efi_parent_image = image;
-	efi_sys_table = sys_table;
-	RT = sys_table->runtime;
-
-	efiret = BS->open_protocol(efi_parent_image, &efi_loaded_image_protocol_guid,
-			(void **)&efi_loaded_image,
-			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
-	if (!EFI_ERROR(efiret))
-		BS->handle_protocol(efi_loaded_image->device_handle,
-				&efi_device_path_protocol_guid, (void **)&efi_device_path);
-
-	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
-	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
-		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
-					     EFI_LOADER_DATA,
-					     memsize/PAGE_SIZE, &mem);
-		if (!EFI_ERROR(efiret))
-			break;
-		if (efiret != EFI_OUT_OF_RESOURCES)
-			panic("failed to allocate malloc pool: %s\n",
-			      efi_strerror(efiret));
-	}
-	if (EFI_ERROR(efiret))
-		panic("failed to allocate malloc pool: %s\n",
-		      efi_strerror(efiret));
-	mem_malloc_init((void *)mem, (void *)mem + memsize - 1);
-
-	start_barebox();
-}
-
 static int efi_core_init(void)
 {
 	struct device *dev;
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index 3713ef359228..774c069229ab 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -25,4 +25,7 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 		     void *buf, unsigned long size);
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
+efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
+				       size_t *memsize);
+
 #endif
-- 
2.39.2



