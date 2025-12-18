Delivery-date: Thu, 18 Dec 2025 12:13:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx3-00Co3V-1r
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx1-0005rd-Pw
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GXtX5cECHO1pTAfpGHW4CA/ILelQvBPRbrKDAYil1f0=; b=xknTYhJb4r2GGRyU9ei7FTNboj
	uujxct8VZduN655dJBGVf+ywlXemaFCnfWY5VVel82uNpRj1rdnVHSkXWPGqFG10i5y1ST2vGs/bu
	hO7wdmw0a1pdwfOOdOZylzhGRwdhaueq/VmRWoah9n5yXCDZcuDUKPb+3F0SzALPsYZupwXKz5wXk
	u2n8xXAomzLsar75fP8p8z7QxeSiTH77PWkBVpCLqKwtyaQ9XK3nswYgyFDQScMB8YOryecw2jqhr
	YD//+xzuyA2LOdhUSzaddNUv4cVSVeyuNvTVCWqQMZsdbKGBVMecE0mb0OnHE79mdyYGysIYp7Tl+
	6ywFeiJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwF-00000008ILU-0rX5;
	Thu, 18 Dec 2025 11:12:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IGB-2ibH
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005NM-PE; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgQ-15;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-0xqz;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:25 +0100
Message-ID: <20251218111242.1527495-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_998795_08B1FFCC 
X-CRM114-Status: GOOD (  29.47  )
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
Subject: [PATCH v1 05/54] efi: loader: add memory accounting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

For use by the EFI runtime, we implement here a naive allocator that
allocates all memory at the highest possible free address.

In future, we may consider switching to Linux' red-black tree based interval
trees, but this is good enough for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig           |   3 +
 arch/arm/Kconfig       |   1 +
 efi/Kconfig            |  19 ++
 efi/Makefile           |   1 +
 efi/loader/Kconfig     |   3 +
 efi/loader/Makefile    |   3 +
 efi/loader/memory.c    | 416 +++++++++++++++++++++++++++++++++++++++++
 include/efi/loader.h   |  33 ++++
 include/efi/types.h    |  14 ++
 include/linux/ioport.h |   2 +
 include/memory.h       |   2 +
 11 files changed, 497 insertions(+)
 create mode 100644 efi/loader/Kconfig
 create mode 100644 efi/loader/Makefile
 create mode 100644 efi/loader/memory.c
 create mode 100644 include/efi/loader.h

diff --git a/arch/Kconfig b/arch/Kconfig
index 5af114a6e9e5..ca9aa25a9c4b 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -107,6 +107,9 @@ config HAVE_EFI_PAYLOAD
 config HAVE_EFI_STUB
 	bool
 
+config HAVE_EFI_LOADER
+	bool
+
 config PHYS_ADDR_T_64BIT
 	bool
 
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d2d81a4f90d6..4b7f5b83c67e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -17,6 +17,7 @@ config ARM
 	select HAVE_ARCH_BOOTM_OFTREE
 	select HW_HAS_PCI
 	select ARCH_HAS_DMA_WRITE_COMBINE
+	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/efi/Kconfig b/efi/Kconfig
index 23ac601af647..766d6b0e3094 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -25,6 +25,25 @@ if EFI_PAYLOAD
 source "efi/payload/Kconfig"
 endif
 
+config EFI_LOADER
+	bool "barebox as EFI loader (provider)"
+	depends on HAVE_EFI_LOADER
+	select EFI
+	select EFI_GUID
+	select EFI_DEVICEPATH
+	select MEMORY_ATTRIBUTES
+	help
+	  Select this option if you want to run UEFI applications (like GNU
+	  GRUB or an EFI-stubbed kernel) on top of barebox.
+
+	  If this option is enabled, barebox will expose the UEFI API to
+	  loaded applications, enabling them to reuse barebox device drivers
+	  and file systems.
+
+if EFI_LOADER
+source "efi/loader/Kconfig"
+endif
+
 config EFI
 	bool
 
diff --git a/efi/Makefile b/efi/Makefile
index 4c35917475c0..e0f6ac549009 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-$(CONFIG_EFI_PAYLOAD)	+= payload/
+obj-$(CONFIG_EFI_LOADER)	+= loader/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
 obj-y				+= errno.o handle.o efivar.o efivar-filename.o
diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
new file mode 100644
index 000000000000..e7080d8d5093
--- /dev/null
+++ b/efi/loader/Kconfig
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/a0fe8cedcbe8c76403a77e57eac228b8f778a3ae/lib/efi_loader/Kconfig
+
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
new file mode 100644
index 000000000000..dea1e06c18cf
--- /dev/null
+++ b/efi/loader/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y += memory.o
diff --git a/efi/loader/memory.c b/efi/loader/memory.c
new file mode 100644
index 000000000000..075b559367fe
--- /dev/null
+++ b/efi/loader/memory.c
@@ -0,0 +1,416 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#define pr_fmt(fmt) "efi-loader: memory: " fmt
+
+#include <linux/minmax.h>
+#include <linux/printk.h>
+#include <linux/sprintf.h>
+#include <efi/loader.h>
+#include <efi/error.h>
+#include <init.h>
+#include <memory.h>
+#include <linux/list_sort.h>
+#include <linux/sizes.h>
+#include <dma.h>
+
+efi_uintn_t efi_memory_map_key;
+
+static efi_status_t find_pages_max(struct list_head *banks, size_t npages, size_t *page)
+{
+	struct memory_bank *bank;
+
+	list_for_each_entry_reverse(bank, banks, list) {
+		if ((bank->res->start >> EFI_PAGE_SHIFT) > *page)
+			continue;
+
+		for_each_memory_bank_region_reverse(bank, region) {
+			resource_size_t gap_firstpage, gap_lastpage;
+			resource_size_t candidate_last;
+
+			if (!region_is_gap(region))
+				continue;
+
+			gap_firstpage = EFI_PAGE_ALIGN(region->start) >> EFI_PAGE_SHIFT;
+			gap_lastpage = (EFI_PAGE_ALIGN(region->end + 1) >> EFI_PAGE_SHIFT);
+
+			if (!gap_lastpage || gap_lastpage < gap_firstpage)
+				continue;
+
+			/* make last page inclusive */
+			gap_lastpage--;
+
+			candidate_last = min_t(resource_size_t, gap_lastpage, *page);
+			if (candidate_last < gap_firstpage)
+				continue;
+
+			if (candidate_last - gap_firstpage + 1 < npages)
+				continue;
+
+			*page = candidate_last + 1 - npages;
+			return EFI_SUCCESS;
+		}
+	}
+
+	return EFI_OUT_OF_RESOURCES;
+}
+
+
+static const char *efi_memory_type_tostr(enum efi_memory_type type)
+{
+	switch (type) {
+	case EFI_RESERVED_TYPE:
+		return "res";
+	case EFI_LOADER_CODE:
+		return "ldcode";
+	case EFI_LOADER_DATA:
+		return "lddata";
+	case EFI_BOOT_SERVICES_CODE:
+		return "bscode";
+	case EFI_BOOT_SERVICES_DATA:
+		return "bsdata";
+	case EFI_RUNTIME_SERVICES_CODE:
+		return "rtcode";
+	case EFI_RUNTIME_SERVICES_DATA:
+		return "rtdata";
+	case EFI_CONVENTIONAL_MEMORY:
+		return "memory";
+	case EFI_UNUSABLE_MEMORY:
+		return "unsable";
+	case EFI_ACPI_RECLAIM_MEMORY:
+		return "acpireclaim";
+	case EFI_ACPI_MEMORY_NVS:
+		return "acpinvs";
+	case EFI_MEMORY_MAPPED_IO:
+		return "mmio";
+	case EFI_MEMORY_MAPPED_IO_PORT_SPACE:
+		return "mmioport";
+	case EFI_PAL_CODE:
+		return "pal";
+	case EFI_PERSISTENT_MEMORY_TYPE:
+		return "persistent";
+	case EFI_UNACCEPTED_MEMORY_TYPE:
+		return "unaccepted";
+	default:
+		return "unknown";
+	}
+}
+
+static u64 efi_memory_type_default_attrs(enum efi_memory_type type)
+{
+	switch (type) {
+	case EFI_RESERVED_TYPE:
+	case EFI_MEMORY_MAPPED_IO:
+	case EFI_MEMORY_MAPPED_IO_PORT_SPACE:
+	case EFI_UNACCEPTED_MEMORY_TYPE:
+		return 0;
+	case EFI_BOOT_SERVICES_CODE:
+	case EFI_LOADER_CODE:
+	case EFI_RUNTIME_SERVICES_CODE:
+	case EFI_ACPI_RECLAIM_MEMORY:
+	case EFI_ACPI_MEMORY_NVS:
+		return MEMATTRS_RWX;
+	case EFI_LOADER_DATA:
+	case EFI_BOOT_SERVICES_DATA:
+	case EFI_RUNTIME_SERVICES_DATA:
+		return MEMATTRS_RW;
+	case EFI_CONVENTIONAL_MEMORY:
+		return MEMATTRS_RWX;
+	case EFI_PAL_CODE:
+		return MEMATTRS_FAULT;
+	case EFI_PERSISTENT_MEMORY_TYPE:
+		return MEMATTRS_RW | MEMATTR_SP;
+	case EFI_UNUSABLE_MEMORY:
+	case EFI_MAX_MEMORY_TYPE:
+		pr_warn("Unallocatable type %u\n", type); // FIXME
+		return MEMATTRS_FAULT;
+	}
+
+	return MEMATTRS_RWX;
+}
+
+/**
+ * efi_allocate_pages - allocate memory pages
+ *
+ * @type:		type of allocation to be performed
+ * @memory_type:	usage type of the allocated memory
+ * @pages:		number of pages to be allocated
+ * @memory:		allocated memory
+ * @name:		name for informational purposes
+ * Return:		status code
+ */
+efi_status_t efi_allocate_pages(enum efi_allocate_type type,
+				enum efi_memory_type memory_type,
+				efi_uintn_t npages, uint64_t *memory,
+				const char *name)
+{
+	char namebuf[64];
+	const char *typestr;
+	struct resource *res;
+	uint64_t attrs, new_addr = *memory;
+	size_t new_page;
+	efi_status_t r;
+
+	++efi_memory_map_key;
+
+	if (npages == 0)
+		return EFI_INVALID_PARAMETER;
+
+	switch (type) {
+	case EFI_ALLOCATE_ANY_PAGES:
+		new_addr = U64_MAX;
+		typestr = "any";
+		fallthrough;
+	case EFI_ALLOCATE_MAX_ADDRESS:
+		new_page = new_addr >> EFI_PAGE_SHIFT;
+		r = find_pages_max(&memory_banks, npages, &new_page);
+		if (r != EFI_SUCCESS)
+			return r;
+		new_addr = new_page << EFI_PAGE_SHIFT;
+		typestr = "max";
+		break;
+	case EFI_ALLOCATE_ADDRESS:
+		typestr = "exact";
+		break;
+	default:
+		/* UEFI doesn't specify other allocation types */
+		return EFI_INVALID_PARAMETER;
+	}
+
+	scnprintf(namebuf, sizeof(namebuf), "efi%zu-%s%c%s", efi_memory_map_key,
+		  efi_memory_type_tostr(memory_type),
+		  name ? '-' : '\0', name ?: "");
+
+	attrs = efi_memory_type_default_attrs(memory_type);
+	if (!attrs)
+		return EFI_INVALID_PARAMETER;
+
+	res = request_sdram_region(namebuf, new_addr, npages << EFI_PAGE_SHIFT,
+				   efi_memory_type_to_resource_type(memory_type),
+				   attrs);
+	if (!res) {
+		pr_err("failed to request %s at page 0x%zx+%zu (%s)\n",
+		       namebuf, new_page, npages, typestr);
+		dump_stack();
+		return EFI_OUT_OF_RESOURCES;
+	}
+
+	if (memory_type == EFI_RUNTIME_SERVICES_CODE ||
+	    memory_type == EFI_RUNTIME_SERVICES_DATA)
+		res->runtime = true;
+
+	res->flags |= IORESOURCE_EFI_ALLOC;
+
+	*memory = new_addr;
+	return EFI_SUCCESS;
+}
+
+static int free_efi_only(struct resource *res, void *data)
+{
+	int *nfreed = data;
+
+	if (!(res->flags & IORESOURCE_EFI_ALLOC)) {
+		pr_warn("refusing to free non-EFI allocated resource %s at 0x%llx\n",
+			res->name, res->start);
+		*nfreed = -1;
+		return false;
+	}
+
+	if (nfreed >= 0)
+		++*nfreed;
+	return true;
+}
+
+// SPDX-SnippetBegin
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-SnippetCopyrightText: 2016 Alexander Graf
+// SPDX-SnippetComment: Origin-URL: https://github.com/u-boot/u-boot/blob/aa703a816a62deb876a1e77ccff030a7cc60f344/lib/efi_loader/efi_memory.c
+
+/**
+ * efi_alloc_aligned_pages() - allocate aligned memory pages
+ *
+ * @len:		len in bytes
+ * @memory_type:	usage type of the allocated memory
+ * @align:		alignment in bytes
+ * @name:		name for informational purposes
+ * Return:		aligned memory or NULL
+ */
+void *efi_alloc_aligned_pages(u64 len, int memory_type, size_t align,
+			      const char *name)
+{
+	u64 req_pages = efi_size_in_pages(len);
+	u64 true_pages = req_pages + efi_size_in_pages(align) - 1;
+	u64 free_pages;
+	u64 aligned_mem;
+	efi_status_t r;
+	u64 mem;
+
+	/* align must be zero or a power of two */
+	if (align & (align - 1))
+		return NULL;
+
+	/* Check for overflow */
+	if (true_pages < req_pages)
+		return NULL;
+
+	if (align < EFI_PAGE_SIZE) {
+		r = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES, memory_type,
+				       req_pages, &mem, name);
+		return (r == EFI_SUCCESS) ? (void *)(uintptr_t)mem : NULL;
+	}
+
+	r = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES, memory_type,
+			       true_pages, &mem, name);
+	if (r != EFI_SUCCESS)
+		return NULL;
+
+	aligned_mem = ALIGN(mem, align);
+	/* Free pages before alignment */
+	free_pages = efi_size_in_pages(aligned_mem - mem);
+	if (free_pages)
+		efi_free_pages(mem, free_pages);
+
+	/* Free trailing pages */
+	free_pages = true_pages - (req_pages + free_pages);
+	if (free_pages) {
+		mem = aligned_mem + req_pages * EFI_PAGE_SIZE;
+		efi_free_pages(mem, free_pages);
+	}
+
+	return (void *)(uintptr_t)aligned_mem;
+}
+
+// SPDX-SnippetEnd
+
+/**
+ * efi_free_pages() - free memory pages
+ *
+ * @memory:	start of the memory area to be freed
+ * @pages:	number of pages to be freed
+ * Return:	status code
+ */
+efi_status_t efi_free_pages(uint64_t memory, size_t pages)
+{
+	size_t size = pages << EFI_PAGE_SHIFT;
+	struct memory_bank *bank;
+	int nfreed = 0;
+
+	for_each_memory_bank(bank)
+		release_region_range(bank->res, memory, size, free_efi_only, &nfreed);
+
+	if (!nfreed)
+		pr_warn("can't free %llx: not found\n", memory);
+	if (nfreed <= 0)
+		return EFI_INVALID_PARAMETER;
+
+	return EFI_SUCCESS;
+}
+
+static int efi_memory_desc_from_res(const struct resource *region,
+				     struct efi_memory_desc *desc)
+{
+	efi_physical_addr_t phys_start = EFI_PAGE_ALIGN(region->start);
+	efi_uintn_t npages = efi_size_in_pages(EFI_PAGE_ALIGN(region->end + 1) - phys_start);
+
+	if (!npages)
+		return 0;
+
+	desc->phys_start = phys_start;
+	desc->virt_start = efi_phys_to_virt(phys_start);
+	desc->npages = npages;
+
+	if (region->flags & IORESOURCE_TYPE_VALID) {
+		desc->type = resource_get_efi_memory_type(region);
+		desc->attrs = resource_get_efi_memory_attrs(region);
+	} else {
+		pr_warn("encountered SDRAM region 0x%pa-0x%pa without valid type\n",
+			&region->start, &region->end);
+		desc->type = EFI_RESERVED_TYPE;
+		desc->attrs = EFI_MEMORY_WB;
+	}
+
+	return 1;
+}
+
+/**
+ * efi_get_memory_map() - get map describing memory usage.
+ *
+ * @memory_map_size:	on entry the size, in bytes, of the memory map buffer,
+ *			on exit the size of the copied memory map
+ * @memory_map:		buffer to which the memory map is written
+ * @map_key:		key for the memory map
+ * @descriptor_size:	size of an individual memory descriptor
+ * @descriptor_version:	version number of the memory descriptor structure
+ * Return:		status code
+ */
+efi_status_t efi_get_memory_map(size_t *memory_map_size,
+			       struct efi_memory_desc *memory_map,
+			       efi_uintn_t *map_key,
+			       size_t *descriptor_size,
+			       uint32_t *descriptor_version)
+{
+	size_t map_size = 0;
+	int i = 0, map_entries = 0;
+	size_t provided_map_size;
+	struct memory_bank *bank;
+
+	if (!memory_map_size)
+		return EFI_INVALID_PARAMETER;
+
+	provided_map_size = *memory_map_size;
+
+	for_each_memory_bank(bank) {
+		for_each_memory_bank_region(bank, region) {
+			if (list_empty(&region->children)) {
+				map_entries++;
+				continue;
+			}
+
+			for_each_resource_region(region, bbregion)
+				map_entries++;
+		}
+	}
+
+	map_size = map_entries * sizeof(struct efi_memory_desc);
+
+	/* Note: some regions may end up being 0-sized after alignment to page
+	 * boundaries and those will be skipped later.
+	 *
+	 * It's fine wrt *memory_map_size though as worst case, this means we
+	 * ask the caller to allocate a little more memory than actually needed.
+	 *
+	 * TODO: Should we rather enforce resource allocations from memory banks
+	 * to be page aligned from the outset?
+	 */
+	*memory_map_size = map_size;
+
+	if (descriptor_size)
+		*descriptor_size = sizeof(struct efi_memory_desc);
+
+	if (descriptor_version)
+		*descriptor_version = EFI_MEMORY_DESCRIPTOR_VERSION;
+
+	if (provided_map_size < map_size)
+		return EFI_BUFFER_TOO_SMALL;
+
+	if (!memory_map)
+		return EFI_INVALID_PARAMETER;
+
+	for_each_memory_bank(bank) {
+		for_each_memory_bank_region(bank, region) {
+			if (list_empty(&region->children)) {
+				i += efi_memory_desc_from_res(region, &memory_map[i]);
+				continue;
+			}
+
+			for_each_resource_region(region, bbregion)
+				i += efi_memory_desc_from_res(bbregion, &memory_map[i]);
+		}
+	}
+
+	*memory_map_size = i * sizeof(struct efi_memory_desc);
+
+	if (map_key)
+		*map_key = efi_memory_map_key;
+
+	return EFI_SUCCESS;
+}
diff --git a/include/efi/loader.h b/include/efi/loader.h
new file mode 100644
index 000000000000..a5359f07f125
--- /dev/null
+++ b/include/efi/loader.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-SnippetCopyrightText: 2016 Alexander Graf */
+
+#ifndef _EFI_LOADER_H
+#define _EFI_LOADER_H 1
+
+#include <efi/types.h>
+#include <efi/services.h>
+#include <efi/memory.h>
+
+#define EFI_SPECIFICATION_VERSION (2 << 16 | 80)
+
+/* Key identifying current memory map */
+extern efi_uintn_t efi_memory_map_key;
+
+/* Allocate pages on the specified alignment */
+void *efi_alloc_aligned_pages(u64 len, int memory_type, size_t align,
+			      const char *name);
+/* More specific EFI memory allocator, called by EFI payloads */
+efi_status_t efi_allocate_pages(enum efi_allocate_type type,
+				enum efi_memory_type memory_type,
+				efi_uintn_t pages, uint64_t *memory,
+				const char *name);
+/* EFI memory free function. */
+efi_status_t efi_free_pages(uint64_t memory, efi_uintn_t pages);
+/* Returns the EFI memory map */
+efi_status_t efi_get_memory_map(efi_uintn_t *memory_map_size,
+				struct efi_memory_desc *memory_map,
+				efi_uintn_t *map_key,
+				efi_uintn_t *descriptor_size,
+				uint32_t *descriptor_version);
+
+#endif /* _EFI_LOADER_H */
diff --git a/include/efi/types.h b/include/efi/types.h
index f157f7ffe106..e9acc4c497d1 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -10,6 +10,7 @@
 #include <linux/limits.h>
 #include <linux/stddef.h>
 #include <linux/compiler.h>
+#include <linux/align.h>
 #include <linux/uuid.h>
 
 typedef unsigned long efi_status_t;
@@ -120,6 +121,19 @@ enum efi_allocate_type {
 #define EFI_PAGE_SHIFT			12
 #define EFI_PAGE_SIZE			(1ULL << EFI_PAGE_SHIFT)
 #define EFI_PAGE_MASK			(EFI_PAGE_SIZE - 1)
+#define EFI_PAGE_ALIGN(val)		ALIGN((val), EFI_PAGE_SIZE)
+#define EFI_PAGE_ALIGN_DOWN(val)	ALIGN_DOWN((val), EFI_PAGE_SIZE)
+
+/**
+ * efi_size_in_pages() - convert size in bytes to size in pages
+ *
+ * This macro returns the number of EFI memory pages required to hold 'size'
+ * bytes.
+ *
+ * @size:	size in bytes
+ * Return:	size in pages
+ */
+#define efi_size_in_pages(size) (((size) + EFI_PAGE_MASK) >> EFI_PAGE_SHIFT)
 
 #endif
 
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index d57defd20ee1..20c72e1b6cbb 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -58,6 +58,8 @@ struct resource {
 
 #define IORESOURCE_TYPE_VALID	0x00800000	/* type & attrs are valid */
 
+#define IORESOURCE_EFI_ALLOC	0x02000000	/* Resource allocated by barebox EFI loader */
+
 #define IORESOURCE_EXCLUSIVE	0x08000000	/* Userland may not map this resource */
 #define IORESOURCE_DISABLED	0x10000000
 #define IORESOURCE_UNSET	0x20000000
diff --git a/include/memory.h b/include/memory.h
index 6a6f0e2eb7d3..6189a0f65c50 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -26,6 +26,8 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 				    resource_size_t size);
 
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
+#define for_each_memory_bank_reverse(mem)	\
+	list_for_each_entry_reverse(mem, &memory_banks, list)
 #define for_each_reserved_region(mem, rsv) \
 	list_for_each_entry(rsv, &(mem)->res->children, sibling) \
 		if (!is_reserved_resource(rsv)) {} else
-- 
2.47.3



