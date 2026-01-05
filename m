Delivery-date: Mon, 05 Jan 2026 12:27:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikY-001VDN-0q
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikV-0006CR-ED
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xIumic1hkD34TmnDWJ2naeyHejR6BvGgWeRvjGZNR/M=; b=A/e5WR2O2A8P3haq/vMQHEC9HJ
	NPIYePJf7sx3McgzBG/jXGQ2UghOJ351r2mchilSeYrjGPYstb80ImdzDwhTX8rdyF3CZVXA+d34t
	o8fFAKHDobpa4s3ZV7wqjPIcitXs/s0jQbX2G4/hOoiPq+kSRb1csZcr+9axZrwcPRBQTpVX3Ze5H
	IVQHUyAyD61nv861dVN2DO8VCLF6I7BxzBUQanD0jrSn9nfs9uHWcCZPI8xIKdb50KAMnGQUIozF7
	/j9lRHivCtC7KRv898QTvWFetYBsR4O6eM/++W6ossbkoKK2fwVxOKoK3y+fqcFMhxm7ZhAMPxIpX
	Sa+/QK7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijz-0000000BBSl-1tXz;
	Mon, 05 Jan 2026 11:27:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijw-0000000BBPK-0y7T
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:27:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Yr-MB; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xb-1D;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0tOa;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-3-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=12541;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=a+xofQpOwjT93tfkoYC9LJPCmZgCdN2moMhiUt58mY8=;
 b=8qjW5LKUO3iWnTkvLeKVtkXuh2VdiemI05fXO44P8+OF2RDNZPuaqkpPlVRLK8N3fpRrEfJRA
 OKVkkF4rfiZAydQRROiPNqMhYHYk8/91KIf85BPvW9m30gfZVTyUcEQ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032712_578962_87FCB442 
X-CRM114-Status: GOOD (  26.08  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH 03/19] elf: add dynamic relocation support
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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 common/elf.c    | 187 ++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 include/elf.h   |  53 ++++++++++++++++
 lib/Makefile    |   1 +
 lib/elf_reloc.c |  15 +++++
 4 files changed, 251 insertions(+), 5 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 692323c6beab2dd8aae9a9e874fb4980152a74e0..fc2949c285ebb0c0740c68c551926da8d0bb8637 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -65,9 +65,63 @@ static void elf_release_regions(struct elf_image *elf)
 	}
 }
 
+static int elf_compute_load_offset(struct elf_image *elf)
+{
+	void *buf = elf->hdr_buf;
+	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
+	u64 min_vaddr = (u64)-1;
+	u64 min_paddr = (u64)-1;
+	int i;
+
+	/* Find lowest p_vaddr and p_paddr in PT_LOAD segments */
+	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
+		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
+			u64 vaddr = elf_phdr_p_vaddr(elf, phdr);
+			u64 paddr = elf_phdr_p_paddr(elf, phdr);
+
+			if (vaddr < min_vaddr)
+				min_vaddr = vaddr;
+			if (paddr < min_paddr)
+				min_paddr = paddr;
+		}
+		phdr += elf_size_of_phdr(elf);
+	}
+
+	/*
+	 * Determine base load address:
+	 * 1. If user specified load_address, use it
+	 * 2. Otherwise for ET_EXEC, use NULL (segments use p_paddr directly)
+	 * 3. For ET_DYN, use lowest p_paddr
+	 */
+	if (elf->load_address) {
+		elf->base_load_addr = elf->load_address;
+	} else if (elf->type == ET_EXEC) {
+		elf->base_load_addr = NULL;
+	} else {
+		elf->base_load_addr = (void *)(phys_addr_t)min_paddr;
+	}
+
+	/*
+	 * Calculate relocation offset:
+	 * - For ET_EXEC with no custom load address: no offset needed
+	 * - Otherwise: offset = base_load_addr - lowest_vaddr
+	 */
+	if (elf->type == ET_EXEC && !elf->load_address) {
+		elf->reloc_offset = 0;
+	} else {
+		elf->reloc_offset = ((unsigned long)elf->base_load_addr - min_vaddr);
+	}
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
 
@@ -78,6 +132,20 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
 	if (!p_memsz)
 		return 0;
 
+	/*
+	 * Calculate destination address:
+	 * - If reloc_offset is set (custom load address or ET_DYN):
+	 *   dst = reloc_offset + p_vaddr
+	 * - Otherwise (ET_EXEC, no custom address):
+	 *   dst = p_paddr (original behavior)
+	 */
+	if (elf->reloc_offset) {
+		u64 p_vaddr = elf_phdr_p_vaddr(elf, phdr);
+		dst = (void *)(unsigned long)(elf->reloc_offset + p_vaddr);
+	} else {
+		dst = (void *)(unsigned long)elf_phdr_p_paddr(elf, phdr);
+	}
+
 	if (dst < elf->low_addr)
 		elf->low_addr = dst;
 	if (dst + p_memsz > elf->high_addr)
@@ -129,7 +197,18 @@ static int load_elf_to_memory(struct elf_image *elf)
 		p_offset = elf_phdr_p_offset(elf, r->phdr);
 		p_filesz = elf_phdr_p_filesz(elf, r->phdr);
 		p_memsz = elf_phdr_p_memsz(elf, r->phdr);
-		dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, r->phdr);
+
+		/*
+		 * Calculate destination address (same logic as request_elf_segment):
+		 * - If reloc_offset is set: dst = reloc_offset + p_vaddr
+		 * - Otherwise: dst = p_paddr
+		 */
+		if (elf->reloc_offset) {
+			u64 p_vaddr = elf_phdr_p_vaddr(elf, r->phdr);
+			dst = (void *)(unsigned long)(elf->reloc_offset + p_vaddr);
+		} else {
+			dst = (void *)(unsigned long)elf_phdr_p_paddr(elf, r->phdr);
+		}
 
 		pr_debug("Loading phdr offset 0x%llx to 0x%p (%llu bytes)\n",
 			 p_offset, dst, p_filesz);
@@ -173,6 +252,11 @@ static int load_elf_image_segments(struct elf_image *elf)
 	if (!list_empty(&elf->list))
 		return -EINVAL;
 
+	/* Calculate load offset for ET_DYN */
+	ret = elf_compute_load_offset(elf);
+	if (ret)
+		return ret;
+
 	for (i = 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
 		ret = request_elf_segment(elf, phdr);
 		if (ret)
@@ -201,6 +285,8 @@ static int load_elf_image_segments(struct elf_image *elf)
 
 static int elf_check_image(struct elf_image *elf, void *buf)
 {
+	u16 e_type;
+
 	if (memcmp(buf, ELFMAG, SELFMAG)) {
 		pr_err("ELF magic not found.\n");
 		return -EINVAL;
@@ -208,11 +294,14 @@ static int elf_check_image(struct elf_image *elf, void *buf)
 
 	elf->class = ((char *) buf)[EI_CLASS];
 
-	if (elf_hdr_e_type(elf, buf) != ET_EXEC) {
-		pr_err("Non EXEC ELF image.\n");
+	e_type = elf_hdr_e_type(elf, buf);
+	if (e_type != ET_EXEC && e_type != ET_DYN) {
+		pr_err("Unsupported ELF type: %u (only ET_EXEC and ET_DYN supported)\n", e_type);
 		return -ENOEXEC;
 	}
 
+	elf->type = e_type;
+
 	if (!elf_hdr_e_phnum(elf, buf)) {
 		pr_err("No phdr found.\n");
 		return -ENOEXEC;
@@ -338,9 +427,97 @@ struct elf_image *elf_open(const char *filename)
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
+	int i;
+
+	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
+		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC) {
+			u64 offset = elf_phdr_p_offset(elf, phdr);
+			void *dyn_addr;
+
+			/* If loaded from file, PT_DYNAMIC might not be in hdr_buf */
+			if (elf->filename) {
+				/*
+				 * Calculate address in loaded memory using same logic
+				 * as request_elf_segment
+				 */
+				if (elf->reloc_offset) {
+					u64 p_vaddr = elf_phdr_p_vaddr(elf, phdr);
+					dyn_addr = (void *)(unsigned long)(elf->reloc_offset + p_vaddr);
+				} else {
+					u64 paddr = elf_phdr_p_paddr(elf, phdr);
+					dyn_addr = (void *)(phys_addr_t)paddr;
+				}
+				return dyn_addr;
+			} else {
+				/* Binary in memory, use offset */
+				return elf->hdr_buf + offset;
+			}
+		}
+		phdr += elf_size_of_phdr(elf);
+	}
+
+	return NULL;  /* No PT_DYNAMIC segment */
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
index 994db642b0789942530f6ef7fdffdd2218afd7b6..4b19c917639d0d655d9f7530f0311afa599f1a98 100644
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
@@ -411,6 +415,20 @@ struct elf_image *elf_open(const char *filename);
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
+int elf_apply_relocations(struct elf_image *elf, void *dyn_seg);
+
 #define ELF_GET_FIELD(__s, __field, __type) \
 static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 	if (elf->class == ELFCLASS32) \
@@ -426,10 +444,12 @@ ELF_GET_FIELD(hdr, e_phentsize, u16)
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
@@ -439,4 +459,37 @@ static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
 		return sizeof(Elf64_Phdr);
 }
 
+/* Dynamic section accessors */
+static inline s64 elf_dyn_d_tag(struct elf_image *elf, void *arg)
+{
+	if (elf->class == ELFCLASS32)
+		return (s64)((Elf32_Dyn *)arg)->d_tag;
+	else
+		return (s64)((Elf64_Dyn *)arg)->d_tag;
+}
+
+static inline u64 elf_dyn_d_val(struct elf_image *elf, void *arg)
+{
+	if (elf->class == ELFCLASS32)
+		return (u64)((Elf32_Dyn *)arg)->d_un.d_val;
+	else
+		return (u64)((Elf64_Dyn *)arg)->d_un.d_val;
+}
+
+static inline u64 elf_dyn_d_ptr(struct elf_image *elf, void *arg)
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
diff --git a/lib/Makefile b/lib/Makefile
index 9ab4cad0359c0e8e5ad0c0785d8f45afc9c1d00e..11716ec420cb46799b56512429afdbf1c2bba7cc 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -24,6 +24,7 @@ obj-y			+= readkey.o
 obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
+obj-y			+= elf_reloc.o
 obj-$(CONFIG_FIP)	+= fip.o tbbr_config.o
 obj-$(CONFIG_JSMN)	+= jsmn.o
 obj-y			+= stringlist.o
diff --git a/lib/elf_reloc.c b/lib/elf_reloc.c
new file mode 100644
index 0000000000000000000000000000000000000000..d9e09800a6a836e7a97f5d55a8120b2632c0c25e
--- /dev/null
+++ b/lib/elf_reloc.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <elf.h>
+#include <errno.h>
+
+/*
+ * Weak default implementation for architectures that don't support
+ * ELF relocations yet. Can be overridden by arch-specific implementation.
+ */
+int __weak elf_apply_relocations(struct elf_image *elf, void *dyn_seg)
+{
+	pr_warn("ELF relocations not supported for this architecture\n");
+	return -ENOSYS;
+}

-- 
2.47.3



