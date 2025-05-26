Delivery-date: Mon, 26 May 2025 16:19:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgG-000Xuk-0I
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:19:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgE-0002Jf-IZ
	for lore@pengutronix.de; Mon, 26 May 2025 16:19:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VPxR5d0h7JsT4C6AsCF/nLCTpJHbwEB+nDHFauv8a+g=; b=lMrh4YpjWle+jtpI4AnvpBF/kg
	CaOPF+eQ5OTcmPfoyzogC9/+DuIZgLmeJzR3mfb4CawKEVr2ui5Onlq3gSKq6qhVhZVR8e87u1SPF
	vBYR7D3NYJBkzefVU6TAjmRrqbLfYQ0lh7n/eCexMe2zM5T32oGHQET7PwJbdRqKZmRGLSA0Nx2Ql
	XxwTRzg+WXKnsXlEt1ynwKNFmDlWMByZiWPAh7IeN7nGG0FUQhuyL3G5coQ/LH7nfVfDxhgUO5xJ+
	OXqvRBPFxNWPbBFEA2mPFqBPH4R9es7xAO8eSdI11HYszhjNZ5TqzkZ5fWdY7iHWJH0lhdqhhFB8o
	AXSY6J/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfl-00000008zD0-0Q2o;
	Mon, 26 May 2025 14:19:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfh-00000008z9D-1fa0
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:19:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uJYfe-0001p8-6f; Mon, 26 May 2025 16:19:18 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 26 May 2025 16:19:10 +0200
Message-Id: <20250526141914.185212-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250526141914.185212-1-a.fatoum@barebox.org>
References: <20250526141914.185212-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_071921_581399_620C379C 
X-CRM114-Status: GOOD (  17.21  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] resource: record EFI memory type and attributes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While struct resource has some defines for attributes like
IORESOURCE_MEM_CACHEABLE, there are not enough bits to cover all
memory attributes and types specified by EFI.

As the upper 32-bit of the existing struct resource::flags member on
64-bit systems is unused, let's repurpose it to hold the memory type and
attributes. As we want to make use of this information even without EFI,
we add generic sounding constants that happen to be identical to the EFI
constant values.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/efi.h          | 37 +-------------------
 include/efi/memtype.h  | 79 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h | 40 ++++++++++++++++++++-
 3 files changed, 119 insertions(+), 37 deletions(-)
 create mode 100644 include/efi/memtype.h

diff --git a/include/efi.h b/include/efi.h
index 217e3d9f56ff..82d3380a31a9 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -15,6 +15,7 @@
 #include <linux/string.h>
 #include <linux/types.h>
 #include <efi/types.h>
+#include <efi/memtype.h>
 
 /* Bit mask for EFI status code with error */
 #define EFI_ERROR_MASK (1UL << (BITS_PER_LONG-1))
@@ -86,42 +87,6 @@ struct efi_memory_desc {
     u64 attrs;
 };
 
-/* Memory types: */
-enum efi_memory_type {
-	EFI_RESERVED_TYPE,
-	EFI_LOADER_CODE,
-	EFI_LOADER_DATA,
-	EFI_BOOT_SERVICES_CODE,
-	EFI_BOOT_SERVICES_DATA,
-	EFI_RUNTIME_SERVICES_CODE,
-	EFI_RUNTIME_SERVICES_DATA,
-	EFI_CONVENTIONAL_MEMORY,
-	EFI_UNUSABLE_MEMORY,
-	EFI_ACPI_RECLAIM_MEMORY,
-	EFI_ACPI_MEMORY_NVS,
-	EFI_MEMORY_MAPPED_IO,
-	EFI_MEMORY_MAPPED_IO_PORT_SPACE,
-	EFI_PAL_CODE,
-	EFI_MAX_MEMORY_TYPE
-};
-
-/* Attribute values: */
-#define EFI_MEMORY_UC		((u64)0x0000000000000001ULL)	/* uncached */
-#define EFI_MEMORY_WC		((u64)0x0000000000000002ULL)	/* write-coalescing */
-#define EFI_MEMORY_WT		((u64)0x0000000000000004ULL)	/* write-through */
-#define EFI_MEMORY_WB		((u64)0x0000000000000008ULL)	/* write-back */
-#define EFI_MEMORY_UCE		((u64)0x0000000000000010ULL)	/* uncached, exported */
-#define EFI_MEMORY_WP		((u64)0x0000000000001000ULL)	/* write-protect */
-#define EFI_MEMORY_RP		((u64)0x0000000000002000ULL)	/* read-protect */
-#define EFI_MEMORY_XP		((u64)0x0000000000004000ULL)	/* execute-protect */
-#define EFI_MEMORY_NV		((u64)0x0000000000008000ULL)	/* non-volatile */
-#define EFI_MEMORY_RUNTIME	((u64)0x8000000000000000ULL)	/* range requires runtime mapping */
-#define EFI_MEMORY_MORE_RELIABLE \
-				((u64)0x0000000000010000ULL)	/* higher reliability */
-#define EFI_MEMORY_RO		((u64)0x0000000000020000ULL)	/* read-only */
-#define EFI_MEMORY_SP		((u64)0x0000000000040000ULL)	/* specific-purpose memory (SPM) */
-#define EFI_MEMORY_DESCRIPTOR_VERSION	1
-
 #define EFI_PAGE_SHIFT		12
 #define EFI_PAGE_SIZE		(1ULL << EFI_PAGE_SHIFT)
 #define EFI_PAGE_MASK		(EFI_PAGE_SIZE - 1)
diff --git a/include/efi/memtype.h b/include/efi/memtype.h
new file mode 100644
index 000000000000..3f33b911a545
--- /dev/null
+++ b/include/efi/memtype.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _EFI_MEMTYPE_H_
+#define _EFI_MEMTYPE_H_
+
+#include <linux/ioport.h>
+#include <efi/types.h>
+
+/* Memory types: */
+enum efi_memory_type {
+	EFI_RESERVED_TYPE = MEMTYPE_RESERVED,
+	EFI_LOADER_CODE = MEMTYPE_LOADER_CODE,
+	EFI_LOADER_DATA = MEMTYPE_LOADER_DATA,
+	EFI_BOOT_SERVICES_CODE = MEMTYPE_BOOT_SERVICES_CODE,
+	EFI_BOOT_SERVICES_DATA = MEMTYPE_BOOT_SERVICES_DATA,
+	EFI_RUNTIME_SERVICES_CODE = MEMTYPE_RUNTIME_SERVICES_CODE,
+	EFI_RUNTIME_SERVICES_DATA = MEMTYPE_RUNTIME_SERVICES_DATA,
+	EFI_CONVENTIONAL_MEMORY = MEMTYPE_CONVENTIONAL,
+	EFI_UNUSABLE_MEMORY = MEMTYPE_UNUSABLE,
+	EFI_ACPI_RECLAIM_MEMORY = MEMTYPE_ACPI_RECLAIM,
+	EFI_ACPI_MEMORY_NVS = MEMTYPE_ACPI_NVS,
+	EFI_MEMORY_MAPPED_IO = MEMTYPE_MMIO,
+	EFI_MEMORY_MAPPED_IO_PORT_SPACE = MEMTYPE_MMIO_PORT,
+	EFI_PAL_CODE = MEMTYPE_PAL_CODE,
+	EFI_PERSISTENT_MEMORY_TYPE = MEMTYPE_PERSISTENT,
+	EFI_UNACCEPTED_MEMORY_TYPE = MEMTYPE_UNACCEPTED,
+	EFI_MAX_MEMORY_TYPE = MEMTYPE_MAX,
+};
+
+/* Attribute values: */
+#define EFI_MEMORY_UC		((u64)MEMATTR_UC)	/* uncached */
+#define EFI_MEMORY_WC		((u64)MEMATTR_WC)	/* write-coalescing */
+#define EFI_MEMORY_WT		((u64)MEMATTR_WT)	/* write-through */
+#define EFI_MEMORY_WB		((u64)MEMATTR_WB)	/* write-back */
+#define EFI_MEMORY_UCE		((u64)MEMATTR_UCE)	/* uncached, exported */
+#define EFI_MEMORY_WP		((u64)MEMATTR_WP)	/* write-protect */
+#define EFI_MEMORY_RP		((u64)MEMATTR_RP)	/* read-protect */
+#define EFI_MEMORY_XP		((u64)MEMATTR_XP)	/* execute-protect */
+#define EFI_MEMORY_NV		((u64)MEMATTR_NV)	/* non-volatile */
+#define EFI_MEMORY_RUNTIME	((u64)0x8000000000000000)	/* range requires runtime mapping */
+
+#define EFI_MEMORY_MORE_RELIABLE ((u64)MEMATTR_MORE_RELIABLE)	/* higher reliability */
+#define EFI_MEMORY_RO		((u64)MEMATTR_RO)	/* read-only */
+#define EFI_MEMORY_SP		((u64)MEMATTR_SP)	/* specific-purpose memory (SPM) */
+
+static inline enum efi_memory_type resource_type_to_efi_memory_type(unsigned type)
+{
+	return type;
+}
+
+static inline unsigned efi_memory_type_to_resource_type(enum efi_memory_type type)
+{
+	return type;
+}
+
+static inline enum efi_memory_type resource_get_efi_memory_type(const struct resource *res)
+{
+	if (res->flags & IORESOURCE_TYPE_VALID)
+		return resource_type_to_efi_memory_type(res->type);
+	return EFI_CONVENTIONAL_MEMORY;
+}
+
+static inline u64 resource_get_efi_memory_attrs(const struct resource *res)
+{
+	if (res->flags & IORESOURCE_TYPE_VALID)
+		return res->attrs | (res->runtime ? EFI_MEMORY_RUNTIME : 0);
+	return 0;
+}
+
+static inline void resource_set_efi_memory_type_attrs(struct resource *res,
+						enum efi_memory_type type,
+						u64 attrs)
+{
+	res->type = type;
+	res->runtime = attrs & EFI_MEMORY_RUNTIME;
+	res->attrs = attrs & ~EFI_MEMORY_RUNTIME;
+	res->flags |= IORESOURCE_TYPE_VALID;
+}
+
+#endif
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index c6328e9a7fc2..1e266185651f 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -22,7 +22,10 @@ struct resource {
 	resource_size_t start;
 	resource_size_t end;
 	const char *name;
-	unsigned long flags;
+	unsigned int flags;
+	unsigned int type:4;
+	unsigned int attrs:27;
+	unsigned int runtime:1;
 	struct resource *parent;
 	struct list_head children;
 	struct list_head sibling;
@@ -53,6 +56,8 @@ struct resource {
 #define IORESOURCE_WINDOW	0x00200000	/* forwarded by bridge */
 #define IORESOURCE_MUXED	0x00400000	/* Resource is software muxed */
 
+#define IORESOURCE_TYPE_VALID	0x00800000	/* type & attrs are valid */
+
 #define IORESOURCE_EXCLUSIVE	0x08000000	/* Userland may not map this resource */
 #define IORESOURCE_DISABLED	0x10000000
 #define IORESOURCE_UNSET	0x20000000
@@ -95,6 +100,39 @@ struct resource {
 #define IORESOURCE_MEM_SHADOWABLE	(1<<5)	/* dup: IORESOURCE_SHADOWABLE */
 #define IORESOURCE_MEM_EXPANSIONROM	(1<<6)
 
+enum resource_memtype {
+        MEMTYPE_RESERVED,
+        MEMTYPE_LOADER_CODE,
+        MEMTYPE_LOADER_DATA,
+        MEMTYPE_BOOT_SERVICES_CODE,
+        MEMTYPE_BOOT_SERVICES_DATA,
+        MEMTYPE_RUNTIME_SERVICES_CODE,
+        MEMTYPE_RUNTIME_SERVICES_DATA,
+        MEMTYPE_CONVENTIONAL,
+        MEMTYPE_UNUSABLE,
+        MEMTYPE_ACPI_RECLAIM,
+        MEMTYPE_ACPI_NVS,
+        MEMTYPE_MMIO,
+        MEMTYPE_MMIO_PORT,
+        MEMTYPE_PAL_CODE,
+        MEMTYPE_PERSISTENT,
+        MEMTYPE_UNACCEPTED,
+        MEMTYPE_MAX,
+};
+
+#define MEMATTR_UC	0x00000001	/* uncached */
+#define MEMATTR_WC	0x00000002	/* write-coalescing */
+#define MEMATTR_WT	0x00000004	/* write-through */
+#define MEMATTR_WB	0x00000008	/* write-back */
+#define MEMATTR_UCE	0x00000010	/* uncached, exported */
+#define MEMATTR_WP	0x00001000	/* write-protect */
+#define MEMATTR_RP	0x00002000	/* read-protect */
+#define MEMATTR_XP	0x00004000	/* execute-protect */
+#define MEMATTR_NV	0x00008000	/* non-volatile */
+#define MEMATTR_MORE_RELIABLE 0x00010000  /* higher reliability */
+#define MEMATTR_RO	0x00020000	/* read-only */
+#define MEMATTR_SP	0x00040000	/* specific-purpose */
+
 /* PnP I/O specific bits (IORESOURCE_BITS) */
 #define IORESOURCE_IO_16BIT_ADDR	(1<<0)
 #define IORESOURCE_IO_FIXED		(1<<1)
-- 
2.39.5



