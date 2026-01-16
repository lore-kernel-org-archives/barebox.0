Delivery-date: Fri, 16 Jan 2026 17:07:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMR-00213u-1V
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMP-0005X8-D0
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ZNcDveH8YtjFadaCOTNAI4/pt2t6sqWZUoq1SEAhVs=; b=00iGeAFJLFB2beHWM8YB49q7cr
	8sNtj03JxMf6imJli9PRzDsLN7Y9KtxmaYA3f9t5JpOQVcjPWE+Q2g3VAsa4lVowHg/091EbW16k6
	0bSCVBPi7csnKln7L5UPu/S6T2wzIcm7srjEj+LCKWJ388e1B8vf1AaIpNjsSyqA5RZwy5ZRUqrNa
	lhBKAoZs+9y2UPeK8nc03Bhbip7Wz50NM1oCSijL5OGDOGB3v1uR+gd+woV7wFzW8izylEksGI3UU
	eBQCF2u8ns9wMfA0mPtWr9mAfLtJ+BK63K+2ArheKaRSf3sU5DCGMyYJ+0fPhu94wuTw8rbxSnZPG
	w1gEwxXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLq-0000000EQ12-37gk;
	Fri, 16 Jan 2026 16:07:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLn-0000000EPvh-0KMp
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLl-0004sd-13; Fri, 16 Jan 2026 17:07:01 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:32 +0100
Message-ID: <20260116160654.3981425-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080703_107862_27F23788 
X-CRM114-Status: UNSURE (   9.74  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/13] ARM32: module: handle more relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compiling with arm-linux-gnueabihf-gcc (Debian 14.2.0-19) 14.2.0
generates a few more relocation types than the module loader currently
supports.

Import support for them from Linux, so we can start automatically
testing this feature.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/include/asm/elf.h |  2 ++
 arch/arm/lib32/module.c    | 20 ++++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 0b4704a4a561..f3b6e0dd37c3 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -29,9 +29,11 @@ typedef struct user_fp elf_fpregset_t;
 
 #define R_ARM_NONE	0
 #define R_ARM_PC24	1
+#define R_ARM_REL32	3
 #define R_ARM_ABS32	2
 #define R_ARM_CALL	28
 #define R_ARM_JUMP24	29
+#define R_ARM_PREL31	42
 
 #define R_ARM_THM_CALL		10
 #define R_ARM_THM_JUMP24	30
diff --git a/arch/arm/lib32/module.c b/arch/arm/lib32/module.c
index 7214e3c73c3d..0cf04ea9faba 100644
--- a/arch/arm/lib32/module.c
+++ b/arch/arm/lib32/module.c
@@ -49,6 +49,9 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 		loc = dstsec->sh_addr + rel->r_offset;
 
 		switch (ELF32_R_TYPE(rel->r_info)) {
+		case R_ARM_NONE:
+			/* ignore */
+			break;
 		case R_ARM_ABS32:
 			*(u32 *)loc += sym->st_value;
 			break;
@@ -90,6 +93,23 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 			*(u32 *)loc |= offset & 0x00ffffff;
 			break;
 
+		case R_ARM_PREL31:
+			offset = (*(s32 *)loc << 1) >> 1; /* sign extend */
+			offset += sym->st_value - loc;
+			if (offset >= 0x40000000 || offset < -0x40000000) {
+				pr_err("%s: section %u reloc %u sym '%s': relocation %u out of range (%#lx -> %#x)\n",
+				       module->name, relindex, i, strtab + sym->st_name,
+				       ELF32_R_TYPE(rel->r_info), loc,
+				       sym->st_value);
+				return -ENOEXEC;
+			}
+			*(u32 *)loc &= 0x80000000;
+			*(u32 *)loc |= offset & 0x7fffffff;
+			break;
+
+		case R_ARM_REL32:
+			*(u32 *)loc += sym->st_value - loc;
+			break;
 		default:
 			printf("%s: unknown relocation: %u\n",
 			       module->name, ELF32_R_TYPE(rel->r_info));
-- 
2.47.3



