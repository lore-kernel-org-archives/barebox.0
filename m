Delivery-date: Tue, 06 Jan 2026 13:54:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZV-001tVJ-0K
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:54:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZU-0001a5-Bq
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:54:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cM5FtWf4ljkN+8ZN7Jk3hg0ZZQ94z59U0HBBCh8cfL8=; b=iMrA2GKhzYBLYYicT8jGFjIlYW
	E0TYCfkjlHkKq+Uryatqcxmkq0GsdqTwklTABSWp7hhPiSbkuGCsiMvH1FyUuYoJqN79cI5KEHVg7
	ZxVSaY0WbnMh5M/xYRa6w4OB0gZjWlHjSun2Crvuvh11ADOgVj3twsjvCOlSH/eGo8jsKWrvJAHY6
	YrnoPW55Sv+HrR4NRr5V+4CWx6nNq4FeHIOGlB+yR+NgaU62JmvLy5vM3oEtzSXx29q96yVbyItXK
	vYJhSG/IouvdZ6RkDpi9U4yCsFQhNXucYFwiL5dadSTcgJpk04kJLkW95I+ZwikTHIFzq7QAI1E8t
	SZqOKqCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Z7-0000000D1mY-0pv9;
	Tue, 06 Jan 2026 12:53:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Z4-0000000D1jL-3csh
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-00012x-BY; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lci-2z;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3LaU;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260106-pbl-load-elf-v2-6-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=1975;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HCBH41DEC/rDj41XyhOb1uyaf/Ev1DTaAOW4pNHSI9I=;
 b=muC/LNyZ+J9fiLz0t39N/7QHVdr1EqQSqo3PhukLfKb8ZOS0J0KcpT0uRWKsQGWZjDuS3Zkvu
 hPUmch7KiryCmkLr+H3SvxvNY/Wt8CgULJpgEWUOjwJSVvB5beXw1KO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045334_903702_BD3DF3B3 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v2 06/21] riscv: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add architecture-specific ELF relocation support for RISC-V,
enabling dynamic relocation of position-independent ELF binaries.
The implemetation reuses the existing relocate_image().

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/reloc.c | 55 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 18b13a7013cff4032c12b999470f265dbda13c51..9a5004cf5b762b39bb98f7f0ab112c204185b33a 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -75,3 +75,58 @@ void relocate_to_current_adr(void)
 
 	sync_caches_for_execution();
 }
+
+#if __riscv_xlen == 64
+
+/*
+ * Apply RISC-V 64-bit ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	Elf64_Rela *rela;
+	void *rel_ptr;
+	u64 relasz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rel_ptr, &relasz);
+	if (ret)
+		return ret;
+
+	rela = (Elf64_Rela *)rel_ptr;
+
+	relocate_image(base, rela, (void *)rela + relasz, NULL, NULL);
+
+	return 0;
+}
+
+#else /* 32-bit RISC-V */
+
+/*
+ * Apply RISC-V 32-bit ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	Elf32_Rela *rela;
+	void *rel_ptr;
+	u64 relasz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	if (elf->class != ELFCLASS32) {
+		pr_err("Wrong ELF class for RISC-V 32 relocation\n");
+		return -EINVAL;
+	}
+
+	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rel_ptr, &relasz);
+	if (ret)
+		return ret;
+
+	rela = (Elf32_Rela *)rel_ptr;
+
+	relocate_image(base, rela, (void *)rela + relasz, NULL, NULL);
+
+	return 0;
+}
+
+#endif

-- 
2.47.3



