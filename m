Delivery-date: Tue, 06 Jan 2026 13:53:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZP-001tUQ-0K
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:53:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZO-0001V2-CW
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:53:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c1b+/ZdlslrKsW9mBMkuQBdO5g0D2HNA0njFC1243L4=; b=XRUNJdn8cvmIr/ACOZdvhdGZWt
	jtWQJAfEwgsxy6J+492js4Sidw9c4AwPx0hFiNPOvjq9I5007t5nwjGUVAT0+GTTkAeBUTsc9lWww
	SNi1WX0cNAl4V9WIlYAOFqCbMyj4fvkGIsusisvdhTbb7tCp/ANXdbwZ/pUWZFnVEvKWfrjgFaI/r
	fmTPsOCUK+2rYSd9m0pgYtoOOJmRLDKpgQuWL0g2QSVXp7qdC3oI420yTORIpgb1+kC8sc9AlkWBB
	+0qJwIv7dLSV2mv4B5gUvx6VaY05Q0zQEd8u4YvZVlx313SumKjezMkQQ8mjJHj+s6+x94+3CDrwu
	jIWLjlDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yz-0000000D1fr-0Ard;
	Tue, 06 Jan 2026 12:53:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yw-0000000D1eE-3sVl
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-000133-BW; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lch-30;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3FJf;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-4-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=3120;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UvJL965ZhPl1dx415ZaAwtXlfSMhaQ1nyKdweYEuZbU=;
 b=vi5hTZHT2YoAlOeTjLrJ4Oj+rLhOu19xT+7744PLToXptIhF9sOz1MYBk76jWrGMN1e5svueD
 HcWk7drgMtIDlse/Wjne9DaSM5Qa8a7m5PN09mmH0wJxwmyoc5xHd8u
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045326_965851_3CCACA53 
X-CRM114-Status: GOOD (  14.25  )
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
Subject: [PATCH v2 04/21] ARM: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement architecture-specific ELF relocation handlers for ARM32 and ARM64.
The implementation reuses the existing relocate_image().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 arch/arm/include/asm/elf.h |  7 +++++++
 arch/arm/lib32/reloc.c     | 23 +++++++++++++++++++++++
 arch/arm/lib64/reloc.c     | 25 +++++++++++++++++++++++--
 3 files changed, 53 insertions(+), 2 deletions(-)

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
index 378ba95b2ffd455436e704a803f5448fc2c2b18c..19a10ce7e7e637b8dbf7f71db3d97dfc0b215139 100644
--- a/arch/arm/lib32/reloc.c
+++ b/arch/arm/lib32/reloc.c
@@ -6,6 +6,7 @@
 #include <barebox.h>
 #include <elf.h>
 #include <debug_ll.h>
+#include <linux/printk.h>
 #include <asm/reloc.h>
 
 #define R_ARM_RELATIVE 23
@@ -54,3 +55,25 @@ void __prereloc relocate_image(unsigned long offset,
 	if (dynend)
 		__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
 }
+
+/*
+ * Apply ARM32 ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	Elf32_Rel *rel;
+	void *rel_ptr;
+	u64 relsz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	ret = elf_parse_dynamic_section_rel(elf, dyn_seg, &rel_ptr, &relsz);
+	if (ret)
+		return ret;
+
+	rel = (Elf32_Rel *)rel_ptr;
+
+	relocate_image(base, rel, (void *)rel + relsz, NULL, NULL);
+
+	return 0;
+}
diff --git a/arch/arm/lib64/reloc.c b/arch/arm/lib64/reloc.c
index 2288f9e2e336887c5edfbf6b080f487394754113..50bd0b88fae0a59a6a86a84c1df0743ac158e06c 100644
--- a/arch/arm/lib64/reloc.c
+++ b/arch/arm/lib64/reloc.c
@@ -7,8 +7,7 @@
 #include <elf.h>
 #include <debug_ll.h>
 #include <asm/reloc.h>
-
-#define R_AARCH64_RELATIVE 1027
+#include <linux/printk.h>
 
 /*
  * relocate binary to the currently running address
@@ -45,3 +44,25 @@ void __prereloc relocate_image(unsigned long offset,
 		dstart += sizeof(*rel);
 	}
 }
+
+/*
+ * Apply ARM64 ELF relocations
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

-- 
2.47.3



