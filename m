Delivery-date: Wed, 14 Jan 2026 13:15:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmU-001EHk-12
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:15:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmS-0002Ik-4r
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:15:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CHe7RwHkw2Gb/RFOmTUU8NzKr8YGsD18QSNeuRFw6QQ=; b=opGo5VhB7o49nOHN8Vo7QRxvJh
	B1/a3k24KIy9wbkF9pr2XfY7mjNmf7Rbp0MfF+Qjumn24AUnduz4Ci/ZMZZ+MuvGZayxp9v8D3BKN
	4oS4vFJKqW/Gx7udwcpLkIqorqjQ23g+fYaau6wBrMRjW8uSMkSoRDjPS1FLG04EqNffaicfgYnvq
	EeYQ52OuL60U0dkbh39/tteHidFU8IGcUirSGXKx0x0A1z4BqgbedwuwX4I2D+e3YQ1+UZoKeFepD
	uiSNC/BA4stW2Wgp+9V/HrLUGscks/r3wP4CfSXGj6ABd2RJVxZ+XOqwuRzrZU7kLkD51RAdWOTT1
	iClU/gOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlr-000000098Ba-2vaG;
	Wed, 14 Jan 2026 12:14:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlm-0000000983x-29it
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:14:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-0001iZ-OU; Wed, 14 Jan 2026 13:14:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzld-000aPQ-0C;
	Wed, 14 Jan 2026 13:14:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-11YE;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-5-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=15175;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TofsopQlBiAw4TnKjd7CsTADstDPMBYZOVBsh54QzHo=;
 b=0ltKy/32jaGeAMxwp48/AsO/hH8nZDRM8ghmN12szZypcjMMFyYE2XMoNvAlYUhfkNeAAbjMO
 cLzktFRUpytCHR3QsaFqhLfiL2DrI+DfZtG96zdzRigoEliwKEsXK3F
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_041438_948622_C323B2B2 
X-CRM114-Status: GOOD (  25.16  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 05/22] elf: add dynamic relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for applying dynamic relocations to ELF binaries. This allows
loading ET_DYN (position-independent) binaries and ET_EXEC binaries at
custom load addresses.

Key changes:
- Add elf_image.reloc_offset to track offset between vaddr and load address
- Implement elf_compute_load_offset() to calculate relocation offset
- Add elf_set_load_address() API to specify custom load address
- Implement elf_find_dynamic_segment() to locate PT_DYNAMIC
- Add elf_relocate() to apply relocations
- Provide weak default elf_apply_relocations() stub for unsupported architectures
- Add ELF dynamic section accessors

The relocation offset type is unsigned long to properly handle pointer
arithmetic and avoid casting issues.

Architecture-specific implementations should override the weak
elf_apply_relocations() function to handle their relocation types.

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/elf.c  | 282 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 include/elf.h |  64 +++++++++++++
 2 files changed, 341 insertions(+), 5 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index af73396b351d96489bd6fae1f035d379703ae528..9f969439884a71ea56eb62908867f3a383bc5efc 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -20,6 +20,18 @@ struct elf_segment {
 	void *phdr;
 };
 
+static void *elf_phdr_relocated_paddr(struct elf_image *elf, void *phdr)
+{
+	void *dst;
+
+	if (elf->reloc_offset)
+		dst = (void *)(unsigned long)(elf->reloc_offset + elf_phdr_p_vaddr(elf, phdr));
+	else
+		dst = (void *)(unsigned long)elf_phdr_p_paddr(elf, phdr);
+
+	return dst;
+}
+
 static int elf_request_region(struct elf_image *elf, resource_size_t start,
 			      resource_size_t size, void *phdr)
 {
@@ -60,9 +72,59 @@ static void elf_release_regions(struct elf_image *elf)
 	}
 }
 
+static int elf_compute_load_offset(struct elf_image *elf)
+{
+	void *buf = elf->hdr_buf;
+	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
+	u64 min_vaddr = (u64)-1;
+	u64 min_paddr = (u64)-1;
+
+	/* Find lowest p_vaddr and p_paddr in PT_LOAD segments */
+	elf_for_each_segment(phdr, elf, buf) {
+		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
+			u64 vaddr = elf_phdr_p_vaddr(elf, phdr);
+			u64 paddr = elf_phdr_p_paddr(elf, phdr);
+
+			if (vaddr < min_vaddr)
+				min_vaddr = vaddr;
+			if (paddr < min_paddr)
+				min_paddr = paddr;
+		}
+	}
+
+	/*
+	 * Determine base load address:
+	 * 1. If user specified load_address, use it
+	 * 2. Otherwise for ET_EXEC, use NULL (segments use p_paddr directly)
+	 * 3. For ET_DYN, use lowest p_paddr
+	 */
+	if (elf->load_address)
+		elf->base_load_addr = elf->load_address;
+	else if (elf->type == ET_EXEC)
+		elf->base_load_addr = NULL;
+	else
+		elf->base_load_addr = (void *)(phys_addr_t)min_paddr;
+
+	/*
+	 * Calculate relocation offset:
+	 * - For ET_EXEC with no custom load address: no offset needed
+	 * - Otherwise: offset = base_load_addr - lowest_vaddr
+	 */
+	if (elf->type == ET_EXEC && !elf->load_address)
+		elf->reloc_offset = 0;
+	else
+		elf->reloc_offset = ((unsigned long)elf->base_load_addr - min_vaddr);
+
+	pr_debug("ELF load: type=%s, base=%p, offset=%08lx\n",
+		 elf->type == ET_EXEC ? "ET_EXEC" : "ET_DYN",
+		 elf->base_load_addr, elf->reloc_offset);
+
+	return 0;
+}
+
 static int request_elf_segment(struct elf_image *elf, void *phdr)
 {
-	void *dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, phdr);
+	void *dst;
 	int ret;
 	u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
 
@@ -73,6 +135,15 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
 	if (!p_memsz)
 		return 0;
 
+	/*
+	 * Calculate destination address:
+	 * - If reloc_offset is set (custom load address or ET_DYN):
+	 *   dst = reloc_offset + p_vaddr
+	 * - Otherwise (ET_EXEC, no custom address):
+	 *   dst = p_paddr (original behavior)
+	 */
+	dst = elf_phdr_relocated_paddr(elf, phdr);
+
 	if (dst < elf->low_addr)
 		elf->low_addr = dst;
 	if (dst + p_memsz > elf->high_addr)
@@ -124,7 +195,8 @@ static int load_elf_to_memory(struct elf_image *elf)
 		p_offset = elf_phdr_p_offset(elf, r->phdr);
 		p_filesz = elf_phdr_p_filesz(elf, r->phdr);
 		p_memsz = elf_phdr_p_memsz(elf, r->phdr);
-		dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, r->phdr);
+
+		dst = elf_phdr_relocated_paddr(elf, r->phdr);
 
 		pr_debug("Loading phdr offset 0x%llx to 0x%p (%llu bytes)\n",
 			 p_offset, dst, p_filesz);
@@ -168,6 +240,11 @@ static int load_elf_image_segments(struct elf_image *elf)
 	if (!list_empty(&elf->list))
 		return -EINVAL;
 
+	/* Calculate load offset for ET_DYN */
+	ret = elf_compute_load_offset(elf);
+	if (ret)
+		return ret;
+
 	elf_for_each_segment(phdr, elf, buf) {
 		ret = request_elf_segment(elf, phdr);
 		if (ret)
@@ -194,6 +271,8 @@ static int load_elf_image_segments(struct elf_image *elf)
 
 static int elf_check_image(struct elf_image *elf, void *buf)
 {
+	u16 e_type;
+
 	if (memcmp(buf, ELFMAG, SELFMAG)) {
 		pr_err("ELF magic not found.\n");
 		return -EINVAL;
@@ -201,14 +280,17 @@ static int elf_check_image(struct elf_image *elf, void *buf)
 
 	elf->class = ((char *) buf)[EI_CLASS];
 
-	if (elf_hdr_e_type(elf, buf) != ET_EXEC) {
-		pr_err("Non EXEC ELF image.\n");
+	e_type = elf_hdr_e_type(elf, buf);
+	if (e_type != ET_EXEC && e_type != ET_DYN) {
+		pr_err("Unsupported ELF type: %u (only ET_EXEC and ET_DYN supported)\n", e_type);
 		return -ENOEXEC;
 	}
 
 	if (elf->class != ELF_CLASS)
 		return -EINVAL;
 
+	elf->type = e_type;
+
 	if (!elf_hdr_e_phnum(elf, buf)) {
 		pr_err("No phdr found.\n");
 		return -ENOEXEC;
@@ -334,9 +416,199 @@ struct elf_image *elf_open(const char *filename)
 	return elf_check_init(filename);
 }
 
+void elf_set_load_address(struct elf_image *elf, void *addr)
+{
+	elf->load_address = addr;
+}
+
+static void *elf_find_dynamic_segment(struct elf_image *elf)
+{
+	void *buf = elf->hdr_buf;
+	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
+
+	elf_for_each_segment(phdr, elf, buf) {
+		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC)
+			return elf_phdr_relocated_paddr(elf, phdr);
+	}
+
+	return NULL;  /* No PT_DYNAMIC segment */
+}
+
+/**
+ * elf_parse_dynamic_section - Parse the dynamic section and extract relocation info
+ * @elf: ELF image structure
+ * @dyn_seg: Pointer to the PT_DYNAMIC segment
+ * @rel_out: Output pointer to the relocation table (either REL or RELA)
+ * @relsz_out: Output size of the relocation table in bytes
+ * @is_rela: flag indicating RELA (true) vs REL (false) format is expected
+ *
+ * This is a generic function that works for both 32-bit and 64-bit ELF files,
+ * and handles both REL and RELA relocation formats.
+ *
+ * Returns: 0 on success, -EINVAL on error
+ */
+static int elf_parse_dynamic_section(struct elf_image *elf, const void *dyn_seg,
+				     void **rel_out, u64 *relsz_out, void **symtab,
+				     bool is_rela)
+{
+	const void *dyn = dyn_seg;
+	void *rel = NULL, *rela = NULL;
+	u64 relsz = 0, relasz = 0;
+	u64 relent = 0, relaent = 0;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	size_t expected_rel_size, expected_rela_size;
+
+	/* Calculate expected sizes based on ELF class */
+	if (ELF_CLASS == ELFCLASS32) {
+		expected_rel_size = sizeof(Elf32_Rel);
+		expected_rela_size = sizeof(Elf32_Rela);
+	} else {
+		expected_rel_size = sizeof(Elf64_Rel);
+		expected_rela_size = sizeof(Elf64_Rela);
+	}
+
+	/* Iterate through dynamic entries until DT_NULL */
+	while (elf_dyn_d_tag(elf, dyn) != DT_NULL) {
+		unsigned long tag = elf_dyn_d_tag(elf, dyn);
+
+		switch (tag) {
+		case DT_REL:
+			/* REL table address - needs to be adjusted by load offset */
+			rel = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
+			break;
+		case DT_RELSZ:
+			relsz = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_RELENT:
+			relent = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_RELA:
+			/* RELA table address - needs to be adjusted by load offset */
+			rela = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
+			break;
+		case DT_RELASZ:
+			relasz = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_RELAENT:
+			relaent = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_SYMTAB:
+			*symtab = (void *)(unsigned long)(base + elf_dyn_d_val(elf, dyn));
+			break;
+		default:
+			break;
+		}
+
+		dyn += elf_size_of_dyn(elf);
+	}
+
+	/* Check that we found exactly one relocation type */
+	if (rel && rela) {
+		pr_err("ELF has both REL and RELA relocations\n");
+		return -EINVAL;
+	}
+
+	if (rel && !is_rela) {
+		/* REL relocations */
+		if (!relsz || relent != expected_rel_size) {
+			pr_debug("No REL relocations or invalid relocation info\n");
+			return -EINVAL;
+		}
+		*rel_out = rel;
+		*relsz_out = relsz;
+
+		return 0;
+	} else if (rela && is_rela) {
+		/* RELA relocations */
+		if (!relasz || relaent != expected_rela_size) {
+			pr_debug("No RELA relocations or invalid relocation info\n");
+			return -EINVAL;
+		}
+		*rel_out = rela;
+		*relsz_out = relasz;
+
+		return 0;
+	}
+
+	pr_debug("No relocations found in dynamic section\n");
+
+	return -EINVAL;
+}
+
+int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
+				     void **rel_out, u64 *relsz_out, void **symtab)
+{
+	return elf_parse_dynamic_section(elf, dyn_seg, rel_out, relsz_out, symtab,
+					 false);
+}
+
+int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
+				     void **rel_out, u64 *relsz_out, void **symtab)
+{
+	return elf_parse_dynamic_section(elf, dyn_seg, rel_out, relsz_out, symtab,
+					 true);
+}
+
+/*
+ * Weak default implementation for architectures that don't support
+ * ELF relocations yet. Can be overridden by arch-specific implementation.
+ */
+int __weak elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	pr_warn("ELF relocations not supported for this architecture\n");
+	return -ENOSYS;
+}
+
+static int elf_relocate(struct elf_image *elf)
+{
+	void *dyn_seg;
+
+	/*
+	 * Relocations needed if:
+	 * - ET_DYN (position-independent), OR
+	 * - ET_EXEC with custom load address
+	 */
+	if (elf->type == ET_EXEC && !elf->load_address)
+		return 0;
+
+	/* Find PT_DYNAMIC segment */
+	dyn_seg = elf_find_dynamic_segment(elf);
+	if (!dyn_seg) {
+		/*
+		 * No PT_DYNAMIC segment found.
+		 * For ET_DYN this is unusual but legal.
+		 * For ET_EXEC with custom load address, this means no relocations
+		 * can be applied - warn the user.
+		 */
+		if (elf->type == ET_EXEC && elf->load_address) {
+			pr_warn("ET_EXEC loaded at custom address but no PT_DYNAMIC segment - "
+				"relocations cannot be applied\n");
+		} else {
+			pr_debug("No PT_DYNAMIC segment found\n");
+		}
+		return 0;
+	}
+
+	/* Call architecture-specific relocation handler */
+	return elf_apply_relocations(elf, dyn_seg);
+}
+
 int elf_load(struct elf_image *elf)
 {
-	return load_elf_image_segments(elf);
+	int ret;
+
+	ret = load_elf_image_segments(elf);
+	if (ret)
+		return ret;
+
+	/* Apply relocations if needed */
+	ret = elf_relocate(elf);
+	if (ret) {
+		pr_err("Relocation failed: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
 }
 
 void elf_close(struct elf_image *elf)
diff --git a/include/elf.h b/include/elf.h
index a062af77004ab7fe730793552d2cce9d5675dd7f..77f7294b5423dd15c27a8d2c994cdefd3c94fade 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -394,11 +394,15 @@ extern Elf64_Dyn _DYNAMIC [];
 struct elf_image {
 	struct list_head list;
 	u8 class;
+	u16 type;		/* ET_EXEC or ET_DYN */
 	u64 entry;
 	void *low_addr;
 	void *high_addr;
 	void *hdr_buf;
 	const char *filename;
+	void *load_address;	/* User-specified load address (NULL = use p_paddr) */
+	void *base_load_addr;	/* Calculated base address for ET_DYN */
+	unsigned long reloc_offset;	/* Offset between p_vaddr and actual load address */
 };
 
 static inline size_t elf_get_mem_size(struct elf_image *elf)
@@ -411,6 +415,31 @@ struct elf_image *elf_open(const char *filename);
 void elf_close(struct elf_image *elf);
 int elf_load(struct elf_image *elf);
 
+/*
+ * Set the load address for the ELF file.
+ * Must be called before elf_load().
+ * If not set, ET_EXEC uses p_paddr, ET_DYN uses lowest p_paddr.
+ */
+void elf_set_load_address(struct elf_image *elf, void *addr);
+
+/*
+ * Architecture-specific relocation handler.
+ * Returns 0 on success, -ENOSYS if architecture doesn't support relocations,
+ * other negative error codes on failure.
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg);
+
+/*
+ * Parse the dynamic section and extract relocation information.
+ * This is a generic function that works for both 32-bit and 64-bit ELF files,
+ * and handles both REL and RELA relocation formats.
+ * Returns 0 on success, -EINVAL on error.
+ */
+int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
+				  void **rel_out, u64 *relsz_out, void **symtab);
+int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
+				   void **rel_out, u64 *relsz_out, void **symtab);
+
 #define ELF_GET_FIELD(__s, __field, __type) \
 static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 	if (elf->class == ELFCLASS32) \
@@ -426,10 +455,12 @@ ELF_GET_FIELD(hdr, e_phentsize, u16)
 ELF_GET_FIELD(hdr, e_type, u16)
 ELF_GET_FIELD(hdr, e_machine, u16)
 ELF_GET_FIELD(phdr, p_paddr, u64)
+ELF_GET_FIELD(phdr, p_vaddr, u64)
 ELF_GET_FIELD(phdr, p_filesz, u64)
 ELF_GET_FIELD(phdr, p_memsz, u64)
 ELF_GET_FIELD(phdr, p_type, u32)
 ELF_GET_FIELD(phdr, p_offset, u64)
+ELF_GET_FIELD(phdr, p_flags, u32)
 
 static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
 {
@@ -445,4 +476,37 @@ static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
 	     elf_hdr_e_phnum(elf, buf) * elf_size_of_phdr(elf); \
 	     phdr += elf_size_of_phdr(elf))
 
+/* Dynamic section accessors */
+static inline s64 elf_dyn_d_tag(struct elf_image *elf, const void *arg)
+{
+	if (elf->class == ELFCLASS32)
+		return (s64)((Elf32_Dyn *)arg)->d_tag;
+	else
+		return (s64)((Elf64_Dyn *)arg)->d_tag;
+}
+
+static inline u64 elf_dyn_d_val(struct elf_image *elf, const void *arg)
+{
+	if (elf->class == ELFCLASS32)
+		return (u64)((Elf32_Dyn *)arg)->d_un.d_val;
+	else
+		return (u64)((Elf64_Dyn *)arg)->d_un.d_val;
+}
+
+static inline u64 elf_dyn_d_ptr(struct elf_image *elf, const void *arg)
+{
+	if (elf->class == ELFCLASS32)
+		return (u64)((Elf32_Dyn *)arg)->d_un.d_ptr;
+	else
+		return (u64)((Elf64_Dyn *)arg)->d_un.d_ptr;
+}
+
+static inline unsigned long elf_size_of_dyn(struct elf_image *elf)
+{
+	if (elf->class == ELFCLASS32)
+		return sizeof(Elf32_Dyn);
+	else
+		return sizeof(Elf64_Dyn);
+}
+
 #endif /* _LINUX_ELF_H */

-- 
2.47.3



