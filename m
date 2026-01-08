Delivery-date: Thu, 08 Jan 2026 16:50:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHr-002fTL-1o
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:50:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHq-0007F0-RO
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:50:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CAuNz0Oo5HBVp1k7lehBHSCZbReCntDAADlkcTn/bxs=; b=tHXMmcWfN02bMDkkDSQd2k5v0z
	AUS5FkgdNaGTv+t66JCW3J1VneLtJHKzYgaF6P7MG0SnN/FC+0gCIL3+2Tc82r7c1gKOT/yIeh7LH
	VtEpgGS3IBjrQZ5mxUHWB+up0fC0xToOK+Q/b8auX0D8wbyXqIc2lV0k/r6UXp8EN+abR67G6ieaK
	UmIgvVrMgNGNzxunuMutJHWXG8vLpDho7qXLCxtN0UDoSZQmL370ewjkHewvhzPP4aw6Lu0VxZJej
	S2FURIyhXIV8pjslqWfCRavgwY8p3DVhFoz9YS5x43xYm1pgH8QlxC5joTlPWzyMvTVkGCLS0RZbW
	KlaAjr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHJ-0000000HaQc-43bJ;
	Thu, 08 Jan 2026 15:50:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHF-0000000HaOY-0IS5
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CAuNz0Oo5HBVp1k7lehBHSCZbReCntDAADlkcTn/bxs=; b=eEFs97tJckwykI9eZ2W/7UEfV0
	xqDX3L2odYFO/T6KjGXWTAPOpYqZqfCMKzddThTVpiT14Og60JC9uny10dV0X4CrndVzXzsEZ+M59
	spQYRCt2jgyEsWgySFWzSPBIYBbpvA4My28Kv2uTJ6HGcAIjabLpaE9zWbowUUKMb3OXGGD8lhI01
	QNaPHLIfloY8og/8xEIqyTXHOknBpSGRqpuX0DKNuTg/A8peHJzt3UxZ7YMH4/65nz006gql2FXKa
	oGxl5Sky84gqZS2XrMAi1dYXAAGUC4Oe/YuMoE3BOGMaOmy0GsZfYLyk+/rQbrzjvIyoDcjJ92pZc
	9B16gFew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHC-0000000DYgJ-1ikj
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hI-S7; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hVB-1Q;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1P1z;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-5-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=2917;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=z421Ipmg4RgBKASkLHE7SZUPb7A+yZpIODYp5/S9A8Q=;
 b=sebdCPXIElRLTR+tDOOfaQJoJyCXtUOoA6PKMtDkLZqPQn76A0X10OOdNo9d4dGMSXPFUIUd7
 klR06cGVfDHDHbPRFjLqfkQ6ACJCrqmBu0ygy1IAlCkaY5P7IIBN7yk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_155018_509604_4FFAF4BF 
X-CRM114-Status: GOOD (  13.63  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 05/23] ARM: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement architecture-specific ELF relocation handlers for ARM32 and ARM64.
The implementation reuses the existing relocate_image().

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/elf.h |  7 +++++++
 arch/arm/lib32/reloc.c     | 19 +++++++++++++++++++
 arch/arm/lib64/reloc.c     | 21 +++++++++++++++++++--
 3 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 0b4704a4a5615e648f67705ad9daf8dea9f41bab..630c85f2b421cba7e37ea7147c047be948ecdc7e 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -36,6 +36,13 @@ typedef struct user_fp elf_fpregset_t;
 #define R_ARM_THM_CALL		10
 #define R_ARM_THM_JUMP24	30
 
+/* Additional relocation types for dynamic linking */
+#define R_ARM_RELATIVE		23
+
+#define R_AARCH64_NONE		0
+#define R_AARCH64_ABS64		257
+#define R_AARCH64_RELATIVE	1027
+
 /*
  * These are used to set parameters in the core dumps.
  */
diff --git a/arch/arm/lib32/reloc.c b/arch/arm/lib32/reloc.c
index 378ba95b2ffd455436e704a803f5448fc2c2b18c..edd3d7eb486649d70a3ce5a77c25ad52ccd12bc1 100644
--- a/arch/arm/lib32/reloc.c
+++ b/arch/arm/lib32/reloc.c
@@ -54,3 +54,22 @@ void __prereloc relocate_image(unsigned long offset,
 	if (dynend)
 		__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
 }
+
+/*
+ * Apply ARM32 ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	void *rel_ptr = NULL, *symtab = NULL;
+	u64 relsz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	ret = elf_parse_dynamic_section_rel(elf, dyn_seg, &rel_ptr, &relsz, &symtab);
+	if (ret)
+		return ret;
+
+	relocate_image(base, rel_ptr, rel_ptr + relsz, symtab, NULL);
+
+	return 0;
+}
diff --git a/arch/arm/lib64/reloc.c b/arch/arm/lib64/reloc.c
index 2288f9e2e336887c5edfbf6b080f487394754113..b4981578747007c84eca643db327807ce15ba7c9 100644
--- a/arch/arm/lib64/reloc.c
+++ b/arch/arm/lib64/reloc.c
@@ -8,8 +8,6 @@
 #include <debug_ll.h>
 #include <asm/reloc.h>
 
-#define R_AARCH64_RELATIVE 1027
-
 /*
  * relocate binary to the currently running address
  */
@@ -45,3 +43,22 @@ void __prereloc relocate_image(unsigned long offset,
 		dstart += sizeof(*rel);
 	}
 }
+
+/*
+ * Apply ARM64 ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	void *rela_ptr = NULL, *symtab = NULL;
+	u64 relasz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rela_ptr, &relasz, &symtab);
+	if (ret)
+		return ret;
+
+	relocate_image(base, rela_ptr, rela_ptr + relasz, symtab, NULL);
+
+	return 0;
+}

-- 
2.47.3



