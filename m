Delivery-date: Fri, 16 Jan 2026 09:13:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgexF-001tUH-2Q
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:13:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgexE-0004KM-Ad
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:13:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LzhN7bOUpLWEzsJUBJFP4gykqhC3p2bvhzJh6MsyFvU=; b=F0CWUgpEQGR+WisnPlmXlTb8fG
	Z9VB6fSdBiiwyG48zfpIRMoVD8Zm5m3GhWy4MxAybsCgTjhPq+E5wMbGtHYcRIOPUypdEw5yVJTA9
	5/1mZ0X4517c8lRx1Cl2rusTBjSUcJaQj5dfwWjpFkMoHRbh+ZKJMVW5RROTDV07g2tZGdZv7bcvo
	M/G1bS8ZKyt+/kW7vAJoD0cPqmXEf9V9rh0BPTt7tB3G+OZbJ4aSJC8gTPsqEmaZQWbatUvuZcJT+
	VHf+OMYEznTSzsSWwyqQ0HfhJEG8zstI2r11kBgJHUYx1g2esotu2Db5eAO3N8dNW6iiqMEYIT1pQ
	fb9b3iJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewc-0000000DjXH-1txP;
	Fri, 16 Jan 2026 08:12:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewZ-0000000DjV3-2AC5
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:12:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-0003jP-Uq; Fri, 16 Jan 2026 09:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewI-000t5M-0d;
	Fri, 16 Jan 2026 09:12:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1equ;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-9-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=5880;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sbn9Rf054cV4P2oSX/zh/vTcgGehl6r0lJrXr8/vEDo=;
 b=adnKhGZ2mosIbiyfzlnlmU0X7n/7Ch1V13JRJXeje6ueOGbR1a6gCP4teWhcs+NIzPY9P+4dy
 1bBx/BCF1vvBvp76LnkWF+wIZqZV8K+cHoVaiCl3wJYQUXHllokVs2k
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001231_565037_DA882AAA 
X-CRM114-Status: GOOD (  20.26  )
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
Subject: [PATCH v5 09/22] elf: implement elf_load_inplace()
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

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/elf.c  | 127 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/elf.h |   8 ++++
 2 files changed, 135 insertions(+)

diff --git a/common/elf.c b/common/elf.c
index 9f96943988..6f173daaa6 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -622,3 +622,130 @@ void elf_close(struct elf_image *elf)
 
 	free(elf);
 }
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
+	int ret;
+	u64 text_vaddr = U64_MAX;
+	u64 text_vaddr_min = U64_MAX;
+	u64 text_offset = U64_MAX;
+
+	buf = elf->hdr_buf;
+	elf_buf = elf->hdr_buf;
+
+	/*
+	 * First pass: Clear BSS segments (p_memsz > p_filesz) and find lowest
+	 * virtual address.
+	 * BSS clearing must be done before relocations as uninitialized data
+	 * must be zeroed per C standard.
+	 */
+	phdr = buf + elf_hdr_e_phoff(elf, buf);
+	elf_for_each_segment(phdr, elf, buf) {
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
+
+			text_vaddr = elf_phdr_p_vaddr(elf, phdr);
+
+			if (text_vaddr < text_vaddr_min) {
+				text_vaddr_min = text_vaddr;
+				text_offset = p_offset;
+			}
+		}
+	}
+
+	text_vaddr = text_vaddr_min;
+
+	/*
+	 * Calculate relocation offset for the in-place binary.
+	 * For ET_DYN, we need to find the first PT_LOAD segment
+	 * and use it as the relocation base.
+	 */
+	if (elf->type == ET_DYN) {
+
+		if (text_vaddr == U64_MAX) {
+			pr_err("No PT_LOAD segment found\n");
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
+	dyn_seg = elf_find_dynamic_segment(elf);
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
index 6f77b53597..8b5eb9584e 100644
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



