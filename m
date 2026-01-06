Delivery-date: Tue, 06 Jan 2026 13:53:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZI-001tTF-35
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:53:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZH-0001OU-0S
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:53:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rciCRSX+w36AWlgcXintC6wTd9RDx9M/YjXV5XjM3Lo=; b=uzPVqiTT9343xMqkrKjk50HSgF
	fdOFVI2IlIO9OzEZKdr2yBfkCTBfzKsJ5fQbQl+51qqvLe2TT6rjh8Jww4FZL2NIcnGk1PqyKFDYH
	HWsYQl9sM+aO2hXMFGdOB7YP/5Egs54fu2l/YUIJCnxp+CiUlhqN9aLG8qqiPRffOxMU01gqsIS8j
	SBUTWdKrbFaAMIaeOYwd3UvZBgzqTfkitWFLR78kx1cKjMre6PGXaZ+uMdzoqZn2+h9PzlawBO5b/
	B8Wh5KsJHDNVlkZgBy0G6Rso50D7n1xlEznFm9Qw0X9larA6Kw3V8tgfDKkNKMg/RfUven5nLZ/cB
	hhHTlIwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Ys-0000000D1bv-15kn;
	Tue, 06 Jan 2026 12:53:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yo-0000000D1ZP-3OtC
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-00012y-BW; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lcj-2y;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3PNj;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-7-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=6819;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ASbP/VQteJbuAdGfYtiRReO0U5OWyK+kCLOc4dNEp2U=;
 b=tw+oq1Ky+bnw2qG6zhJkq8PK1eFtSZmhwTh7oLm2ov8CSW5iovNTOcakFUQ67s5yeWTgjJM7Z
 QvDAqRqkoCXDnJKf4uiA83OAUjf6x0pUMQP34na/oBqvFv3kadta9xv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045319_010309_94F6B700 
X-CRM114-Status: GOOD (  22.76  )
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
Subject: [PATCH v2 07/21] elf: implement elf_load_inplace()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement elf_load_inplace() to apply dynamic relocations to an ELF binary
that is already loaded in memory. Unlike elf_load(), this function does not
allocate memory or copy segments - it only modifies the existing image in
place.

This is useful for self-relocating loaders or when the ELF has been loaded
by external means (e.g., firmware or another bootloader).

For ET_DYN (position-independent) binaries, the relocation offset is
calculated relative to the first executable PT_LOAD segment (.text section),
taking into account the difference between the segment's virtual address
and its file offset.

The entry point is also adjusted to point to the relocated image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 common/elf.c  | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/elf.h |   8 ++++
 2 files changed, 160 insertions(+)

diff --git a/common/elf.c b/common/elf.c
index 77d4ac7c8545596b6f44751988e5e7f97b98df15..b3cc9b59644aa6e6e029fa44988dbdc0787c42f6 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -627,3 +627,155 @@ void elf_close(struct elf_image *elf)
 
 	free(elf);
 }
+
+static const void *elf_find_dynamic_inplace(struct elf_image *elf)
+{
+	void *buf = elf->hdr_buf;
+	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
+	int i;
+
+	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
+		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC) {
+			u64 offset = elf_phdr_p_offset(elf, phdr);
+			/* For in-place binary, PT_DYNAMIC is at hdr_buf + offset */
+			return elf->hdr_buf + offset;
+		}
+		phdr += elf_size_of_phdr(elf);
+	}
+
+	return NULL;  /* No PT_DYNAMIC segment */
+}
+
+/**
+ * elf_load_inplace() - Apply dynamic relocations to an ELF binary in place
+ * @elf: ELF image previously opened with elf_open_binary()
+ *
+ * This function applies dynamic relocations to an ELF binary that is already
+ * loaded at its target address in memory. Unlike elf_load(), this does not
+ * allocate memory or copy segments - it only modifies the existing image.
+ *
+ * This is useful for self-relocating loaders or when the ELF has been loaded
+ * by external means (e.g., loaded by firmware or another bootloader).
+ *
+ * The ELF image must have been previously opened with elf_open_binary().
+ *
+ * For ET_DYN (position-independent) binaries, the relocation offset is
+ * calculated relative to the first executable PT_LOAD segment (.text section).
+ *
+ * For ET_EXEC binaries, no relocation is applied as they are expected to
+ * be at their link-time addresses.
+ *
+ * Returns: 0 on success, negative error code on failure
+ */
+int elf_load_inplace(struct elf_image *elf)
+{
+	const void *dyn_seg;
+	void *buf, *phdr;
+	void *elf_buf;
+	int i, ret;
+
+	buf = elf->hdr_buf;
+	elf_buf = elf->hdr_buf;
+
+	/*
+	 * First pass: Clear BSS segments (p_memsz > p_filesz).
+	 * This must be done before relocations as uninitialized data
+	 * must be zeroed per C standard.
+	 */
+	phdr = buf + elf_hdr_e_phoff(elf, buf);
+	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
+		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
+			u64 p_offset = elf_phdr_p_offset(elf, phdr);
+			u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
+			u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
+
+			/* Clear BSS (uninitialized data) */
+			if (p_filesz < p_memsz) {
+				void *bss_start = elf_buf + p_offset + p_filesz;
+				size_t bss_size = p_memsz - p_filesz;
+				memset(bss_start, 0x00, bss_size);
+			}
+		}
+		phdr += elf_size_of_phdr(elf);
+	}
+
+	/*
+	 * Calculate relocation offset for the in-place binary.
+	 * For ET_DYN, we need to find the first executable PT_LOAD segment
+	 * (.text section) and use it as the relocation base.
+	 */
+	if (elf->type == ET_DYN) {
+		u64 text_vaddr = 0;
+		u64 text_offset = 0;
+		bool found_text = false;
+
+		/* Find first executable PT_LOAD segment (.text) */
+		phdr = buf + elf_hdr_e_phoff(elf, buf);
+		for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
+			if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
+				u32 flags = elf_phdr_p_flags(elf, phdr);
+				/* Check if segment is executable (PF_X = 0x1) */
+				if (flags & PF_X) {
+					text_vaddr = elf_phdr_p_vaddr(elf, phdr);
+					text_offset = elf_phdr_p_offset(elf, phdr);
+					found_text = true;
+					break;
+				}
+			}
+			phdr += elf_size_of_phdr(elf);
+		}
+
+		if (!found_text) {
+			pr_err("No executable PT_LOAD segment found\n");
+			ret = -EINVAL;
+			goto out;
+		}
+
+		/*
+		 * Calculate relocation offset relative to .text section:
+		 * - .text is at file offset text_offset, so in memory at: elf_buf + text_offset
+		 * - .text has virtual address text_vaddr
+		 * - reloc_offset = (actual .text address) - (virtual .text address)
+		 */
+		elf->reloc_offset = ((unsigned long)elf_buf + text_offset) - text_vaddr;
+
+		pr_debug("In-place ELF relocation: text_vaddr=0x%llx, text_offset=0x%llx, "
+			 "load_addr=%p, offset=0x%08lx\n",
+			 text_vaddr, text_offset, elf_buf, elf->reloc_offset);
+
+		/* Adjust entry point to point to relocated image */
+		elf->entry += elf->reloc_offset;
+	} else {
+		/*
+		 * ET_EXEC binaries are at their link-time addresses,
+		 * no relocation needed
+		 */
+		elf->reloc_offset = 0;
+	}
+
+	/* Find PT_DYNAMIC segment */
+	dyn_seg = elf_find_dynamic_inplace(elf);
+	if (!dyn_seg) {
+		/*
+		 * No PT_DYNAMIC segment found.
+		 * This is fine for statically-linked binaries or
+		 * binaries without relocations.
+		 */
+		pr_debug("No PT_DYNAMIC segment found\n");
+		ret = 0;
+		goto out;
+	}
+
+	/* Apply architecture-specific relocations */
+	ret = elf_apply_relocations(elf, dyn_seg);
+	if (ret) {
+		pr_err("In-place relocation failed: %d\n", ret);
+		goto out;
+	}
+
+	pr_debug("In-place ELF relocation completed successfully\n");
+	return 0;
+
+out:
+	return ret;
+}
diff --git a/include/elf.h b/include/elf.h
index 7832a522550f64843f7891d1e033f7868565decb..84b98553cff69257f8c2fbfb2e7504a4400e0f53 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -422,6 +422,14 @@ int elf_load(struct elf_image *elf);
  */
 void elf_set_load_address(struct elf_image *elf, void *addr);
 
+/*
+ * Apply dynamic relocations to an ELF binary already loaded in memory.
+ * This modifies the ELF image in place without allocating new memory.
+ * Useful for self-relocating loaders or externally loaded binaries.
+ * The elf parameter must have been previously opened with elf_open_binary().
+ */
+int elf_load_inplace(struct elf_image *elf);
+
 /*
  * Architecture-specific relocation handler.
  * Returns 0 on success, -ENOSYS if architecture doesn't support relocations,

-- 
2.47.3



