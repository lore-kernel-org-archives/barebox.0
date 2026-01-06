Delivery-date: Tue, 06 Jan 2026 09:17:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Fy-001pKn-2L
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:17:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Fy-0001cw-4g
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:17:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SOeRV9mEr2v0DJaFARtfw0lAyFISo3vtPSmbIEGb3lg=; b=deTQjdzJ78a6ulgqS3/3n+ZpoB
	GK4gGCX2AGHfCdqfNUE05JKoYWfL3k06mrDc9ntBMR2GeERt8WU4XNzc5YnWHfebQSyOZcCxFZdVU
	OjltO6VFzOUNtXAmHlpel0V7575IzRN7PLdPsQZyCrwh+ubICJnSlOth8ZwZrUjRnZFYyWgNXbDtT
	XpkKl/Yw5iBYGRyKDcvzTfaptNDidN2GvwmHm62L9TrM2FS3KVzGcOTQZ6DoDeSn/7afYVT0Xtj5l
	GaOB+Lg2TZz1mSwtNkNHaFBiP5bEvlUt0PNz6b9r69yHAyMd/N+C2WyvDokFX1/PEahIPFzhluF5u
	dmZ8SxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2FW-0000000Cb74-3SIA;
	Tue, 06 Jan 2026 08:17:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2FU-0000000Cb6N-1Vju
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:17:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vd2FQ-0001Ua-Mx; Tue, 06 Jan 2026 09:17:00 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  6 Jan 2026 09:16:56 +0100
Message-ID: <20260106081659.3491945-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_001704_398691_9C8B30CB 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: cpu: common: skip R_ARM_NONE relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Relocations may be turned into no-op in place by strip running on an
executable by having their type set to 0 (R_ARM_NONE).

This can happen with the incoming ELF loading in PBL support, so teach
relocate_to_current_adr() to skip these no-op relocation entries.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/common.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 339ef2db2534..5b65b0745b98 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -36,6 +36,7 @@ void sync_caches_for_execution(void)
 	arm_early_mmu_cache_flush();
 }
 
+#define R_ARM_NONE 0
 #define R_ARM_RELATIVE 23
 #define R_AARCH64_RELATIVE 1027
 
@@ -78,14 +79,19 @@ void __prereloc relocate_to_current_adr(void)
 #if defined(CONFIG_CPU_64)
 	while (dstart < dend) {
 		struct elf64_rela *rel = dstart;
+		unsigned long *fixup;
 
-		if (ELF64_R_TYPE(rel->r_info) == R_AARCH64_RELATIVE) {
-			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
+		switch(ELF64_R_TYPE(rel->r_info)) {
+		case R_AARCH64_RELATIVE:
+			fixup = (unsigned long *)(rel->r_offset + offset);
 
 			*fixup = rel->r_addend + offset;
 			rel->r_addend += offset;
 			rel->r_offset += offset;
-		} else {
+			break;
+		case R_ARM_NONE:
+			break;
+		default:
 			putc_ll('>');
 			puthex_ll(rel->r_info);
 			putc_ll(' ');
@@ -104,20 +110,26 @@ void __prereloc relocate_to_current_adr(void)
 
 	while (dstart < dend) {
 		struct elf32_rel *rel = dstart;
+		unsigned long r, *fixup;
 
-		if (ELF32_R_TYPE(rel->r_info) == R_ARM_RELATIVE) {
-			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
+		switch (ELF32_R_TYPE(rel->r_info)) {
+		case R_ARM_RELATIVE:
+			fixup = (unsigned long *)(rel->r_offset + offset);
 
 			*fixup = *fixup + offset;
 
 			rel->r_offset += offset;
-		} else if (ELF32_R_TYPE(rel->r_info) == R_ARM_ABS32) {
-			unsigned long r = dynsym[ELF32_R_SYM(rel->r_info) * 4 + 1];
-			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
+			break;
+		case R_ARM_ABS32:
+			r = dynsym[ELF32_R_SYM(rel->r_info) * 4 + 1];
+			fixup = (unsigned long *)(rel->r_offset + offset);
 
 			*fixup = *fixup + r + offset;
 			rel->r_offset += offset;
-		} else {
+			break;
+		case R_ARM_NONE:
+			break;
+		default:
 			putc_ll('>');
 			puthex_ll(rel->r_info);
 			putc_ll(' ');
-- 
2.47.3



