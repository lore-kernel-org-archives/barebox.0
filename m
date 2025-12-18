Delivery-date: Thu, 18 Dec 2025 12:13:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx0-00Co2O-1d
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwz-0005pe-FC
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fDBuVcT8j8pQrcyA0qpH62fNxYRWP+9uDg627VvcG5s=; b=Oq0lWVgNdyhlij7kYOQVeWQd4z
	FsYU5yLi9+gIEewvVjSAp6l2K2NgnLPb5H9SFG+ETAtIq1vo0zHQ8NIedrqmpEieii/35zxn11xaf
	JAWxlIVDXyKWP2PCThLLAqqBIt3hu/vi61B7ewvwNVPP699jnsOyUTNX8dR+YU9htJeM64InaeHYD
	Lp1gwuwOTYDnKWOdC2UV1kA6198EaDjL4t1LQ8QXH7MOj1exGv90J5wTIEqeqeIHYCwUleupjdTmw
	/kkXOQ2MHmVrelWh3X5U1q9E5ncM3GjWWcXNF/N4NLFhZ1zeAgY6+FJQ/RNn/1CbT6ksKCO8P23Dx
	slHzsviA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwE-00000008ILN-3XAT;
	Thu, 18 Dec 2025 11:12:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG8-2bYD
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005NU-Jq; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgU-1D;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-1BMD;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:26 +0100
Message-ID: <20251218111242.1527495-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_815219_E27B5354 
X-CRM114-Status: GOOD (  22.86  )
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
Subject: [PATCH v1 06/54] efi: loader: add pool allocator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In addition to the AllocatePages EFI boot service, there is also
AllocatePool, which allows allocating a number of bytes.

Make things easy to us and just map it to AllocatePages with an header
that holds the size to support the API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile     |   2 +-
 efi/loader/pool_alloc.c | 205 ++++++++++++++++++++++++++++++++++++++++
 include/efi/loader.h    |  10 ++
 3 files changed, 216 insertions(+), 1 deletion(-)
 create mode 100644 efi/loader/pool_alloc.c

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index dea1e06c18cf..0475cfc7452f 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-y += memory.o
+obj-y += memory.o pool_alloc.o
diff --git a/efi/loader/pool_alloc.c b/efi/loader/pool_alloc.c
new file mode 100644
index 000000000000..be10dd77e643
--- /dev/null
+++ b/efi/loader/pool_alloc.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: 2016 Alexander Graf
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/aa703a816a62deb876a1e77ccff030a7cc60f344/lib/efi_loader/efi_memory.c
+
+#define pr_fmt(fmt) "efi-loader: pool: " fmt
+
+#include <efi/memory.h>
+#include <efi/loader.h>
+#include <efi/error.h>
+#include <linux/printk.h>
+#include <linux/minmax.h>
+#include <init.h>
+#include <memory.h>
+#include <linux/list_sort.h>
+#include <linux/sizes.h>
+#include <dma.h>
+
+/* Magic number identifying memory allocated from pool */
+#define EFI_ALLOC_POOL_MAGIC 0x1fe67ddf6491caa2
+
+/**
+ * struct efi_pool_allocation - memory block allocated from pool
+ *
+ * @num_pages:	number of pages allocated
+ * @checksum:	checksum
+ * @data:	allocated pool memory
+ *
+ * Each UEFI AllocatePool() request is serviced as a separate
+ * (multiple) page allocation. We have to track the number of pages
+ * to be able to free the correct amount later.
+ *
+ * The checksum calculated in function checksum() is used in FreePool() to avoid
+ * freeing memory not allocated by AllocatePool() and duplicate freeing.
+ *
+ * EFI requires 8 byte alignment for pool allocations, so we can
+ * prepend each allocation with these header fields.
+ */
+struct efi_pool_allocation {
+	u64 num_pages;
+	u64 checksum;
+	char data[] __aligned(ARCH_DMA_MINALIGN);
+};
+
+/**
+ * checksum() - calculate checksum for memory allocated from pool
+ *
+ * @alloc:	allocation header
+ * Return:	checksum, always non-zero
+ */
+static u64 checksum(struct efi_pool_allocation *alloc)
+{
+	u64 addr = (uintptr_t)alloc;
+	u64 ret = (addr >> 32) ^ (addr << 32) ^ alloc->num_pages ^
+		  EFI_ALLOC_POOL_MAGIC;
+	if (!ret)
+		++ret;
+	return ret;
+}
+
+/**
+ * efi_allocate_pool - allocate memory from pool
+ *
+ * @pool_type:	type of the pool from which memory is to be allocated
+ * @size:	number of bytes to be allocated
+ * @buffer:	allocated memory
+ * @name:	name for informational purposes
+ * Return:	status code
+ */
+efi_status_t efi_allocate_pool(enum efi_memory_type pool_type, efi_uintn_t size,
+			       void **buffer, const char *name)
+{
+	efi_status_t r;
+	u64 addr;
+	struct efi_pool_allocation *alloc;
+	u64 num_pages = efi_size_in_pages(size +
+					  sizeof(struct efi_pool_allocation));
+
+	if (!buffer)
+		return EFI_INVALID_PARAMETER;
+
+	if (size == 0) {
+		*buffer = NULL;
+		return EFI_SUCCESS;
+	}
+
+	r = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES, pool_type, num_pages,
+			       &addr, name);
+	if (r == EFI_SUCCESS) {
+		alloc = (struct efi_pool_allocation *)(uintptr_t)addr;
+		alloc->num_pages = num_pages;
+		alloc->checksum = checksum(alloc);
+		*buffer = alloc->data;
+	}
+
+	return r;
+}
+
+/**
+ * efi_alloc() - allocate boot services data pool memory
+ *
+ * Allocate memory from pool and zero it out.
+ *
+ * @size:	number of bytes to allocate
+ * @name:		name for informational purposes
+ * Return:	pointer to allocated memory or NULL
+ */
+void *efi_alloc(size_t size, const char *name)
+{
+	void *buf;
+
+	if (efi_allocate_pool(EFI_BOOT_SERVICES_DATA, size, &buf, name) !=
+	    EFI_SUCCESS) {
+		pr_err("out of memory\n");
+		return NULL;
+	}
+	memset(buf, 0, size);
+
+	return buf;
+}
+
+/**
+ * efi_realloc() - reallocate boot services data pool memory
+ *
+ * Reallocate memory from pool for a new size and copy the data from old one.
+ *
+ * @ptr:	pointer to old buffer
+ * @size:	number of bytes to allocate
+ * @name:	name for informational purposes
+ * Return:	EFI status to indicate success or not
+ */
+efi_status_t efi_realloc(void **ptr, size_t size, const char *name)
+{
+	void *new_ptr;
+	struct efi_pool_allocation *alloc;
+	u64 num_pages = efi_size_in_pages(size +
+					  sizeof(struct efi_pool_allocation));
+	size_t old_size;
+
+	if (!*ptr) {
+		*ptr = efi_alloc(size, name);
+		if (*ptr)
+			return EFI_SUCCESS;
+		return EFI_OUT_OF_RESOURCES;
+	}
+
+	alloc = container_of(*ptr, struct efi_pool_allocation, data);
+
+	/* Check that this memory was allocated by efi_allocate_pool() */
+	if (((uintptr_t)alloc & EFI_PAGE_MASK) ||
+	    alloc->checksum != checksum(alloc)) {
+		pr_err("%s: illegal realloc 0x%p\n", __func__, *ptr);
+		return EFI_INVALID_PARAMETER;
+	}
+
+	/* Don't realloc. The actual size in pages is the same. */
+	if (alloc->num_pages == num_pages)
+		return EFI_SUCCESS;
+
+	old_size = alloc->num_pages * EFI_PAGE_SIZE -
+		sizeof(struct efi_pool_allocation);
+
+	new_ptr = efi_alloc(size, name);
+	if (!new_ptr)
+		return EFI_OUT_OF_RESOURCES;
+
+	/* copy old data to new alloced buffer */
+	memcpy(new_ptr, *ptr, min(size, old_size));
+
+	/* free the old buffer */
+	efi_free_pool(*ptr);
+
+	*ptr = new_ptr;
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_free_pool() - free memory from pool
+ *
+ * @buffer:	start of memory to be freed
+ * Return:	status code
+ */
+efi_status_t efi_free_pool(void *buffer)
+{
+	efi_status_t ret;
+	struct efi_pool_allocation *alloc;
+
+	if (!buffer)
+		return EFI_INVALID_PARAMETER;
+
+	alloc = container_of(buffer, struct efi_pool_allocation, data);
+
+	/* Check that this memory was allocated by efi_allocate_pool() */
+	if (((uintptr_t)alloc & EFI_PAGE_MASK) ||
+	    alloc->checksum != checksum(alloc)) {
+		pr_err("%s: illegal free 0x%p\n", __func__, buffer);
+		return EFI_INVALID_PARAMETER;
+	}
+	/* Avoid double free */
+	alloc->checksum = 0;
+
+	ret = efi_free_pages((uintptr_t)alloc, alloc->num_pages);
+
+	return ret;
+}
diff --git a/include/efi/loader.h b/include/efi/loader.h
index a5359f07f125..4a5670bcf672 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -13,6 +13,10 @@
 /* Key identifying current memory map */
 extern efi_uintn_t efi_memory_map_key;
 
+/* Allocate boot service data pool memory */
+void *efi_alloc(size_t len, const char *name);
+/* Reallocate boot service data pool memory */
+efi_status_t efi_realloc(void **ptr, size_t len, const char *name);
 /* Allocate pages on the specified alignment */
 void *efi_alloc_aligned_pages(u64 len, int memory_type, size_t align,
 			      const char *name);
@@ -23,6 +27,12 @@ efi_status_t efi_allocate_pages(enum efi_allocate_type type,
 				const char *name);
 /* EFI memory free function. */
 efi_status_t efi_free_pages(uint64_t memory, efi_uintn_t pages);
+/* EFI memory allocator for small allocations */
+efi_status_t efi_allocate_pool(enum efi_memory_type pool_type,
+			       efi_uintn_t size, void **buffer,
+			       const char *name);
+/* EFI pool memory free function. */
+efi_status_t efi_free_pool(void *buffer);
 /* Returns the EFI memory map */
 efi_status_t efi_get_memory_map(efi_uintn_t *memory_map_size,
 				struct efi_memory_desc *memory_map,
-- 
2.47.3



