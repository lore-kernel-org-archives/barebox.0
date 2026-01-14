Delivery-date: Wed, 14 Jan 2026 13:15:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmO-001EGt-1X
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:15:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzmM-0002Dy-KW
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:15:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zin3ezFjJjMxrY842fbzjODjT+OicIL9W37bFI1S5Rk=; b=HSvwAJlLooVnCsSKqmfjUbUNY1
	H+A4aHHl4Az+lfKRuYhls0FkVlgpMRDzwBZ6NZcJsB3gR0xFYU0JAtP/oRrAVfAcj0Y80tgYgO6C/
	5kaWnQesx9kFiBSfyCFCQopmomUqSulYcOlhcGxV0CNY+euQeIFFU5B9ZaE5VwMUffm0SBhrpYfLu
	CDCO4kFw4eJMw/YlkDo2oJHQT501f2S6FKLDn/H2zOLMibW+zqCscMelY3KTf2Ze4QZX6dAY417uB
	1VuKjEGAXfvcmHhfnYuSQoYqhZNMAG4I/Ae3yRgZmnWH2RNa7VpKugDINdVcxgT85uv8QI0vvddUb
	apqXzkaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzli-0000000981W-42Pk;
	Wed, 14 Jan 2026 12:14:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzlg-000000097yT-09WK
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:14:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-0001ib-TP; Wed, 14 Jan 2026 13:14:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzld-000aPU-0D;
	Wed, 14 Jan 2026 13:14:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-15Hv;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-9-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=6000;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=B53kg3HGQdkRovs6ehYQXYi7mUzZIPMYgi2xYJyMp4Q=;
 b=zLfQAOPqNxlBAS3aDAWiMv6aDakvB8iBZLCHKQsJci+FcREuyNoA8tZvtiTZl7T1XPzUaX+0s
 QVt0NS6YPj2CYS0J5CierfnJd7i1WoYHocKtfELQkIxgoEY+wFPBTJp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_041432_088511_09754CC4 
X-CRM114-Status: GOOD (  20.42  )
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
Subject: [PATCH v4 09/22] elf: implement elf_load_inplace()
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
index 9f969439884a71ea56eb62908867f3a383bc5efc..6f173daaa6a863dbdac9f8b57e086731ea7082d6 100644
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
index 77f7294b5423dd15c27a8d2c994cdefd3c94fade..6046de8dc938b53d0881d5bb58f5bdc0ee5a57ef 100644
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



