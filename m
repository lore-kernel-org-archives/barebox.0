Delivery-date: Fri, 13 Mar 2026 14:35:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fX-000DXU-1X
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:11 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fE-00018k-H0
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AOQEkxUQw5bkk1RX1vscWjlVI0oX1xIqCkgs3suHRc4=; b=mDmdb/W4etwFAUCyQEJyYJH+HO
	D3YS05coAPt6MESxzGV7+qKdfK9fHyXNTUd5EXORHLzMNXeyRY+TrLuzKHbWPPLSl9H3I3YzqbtTN
	S6wCDBnRGrHZwc5Tjix66EZAJsBcGTah10rG+5jA3Eq4pfS/pr7DPP+qEmMVXacRxWym4Uh14aBc8
	n7hJpV9vIM8/wducOd3vPoVaPFfHTllCxOwl16p1hnJG/17enWIW56pfqHeb7OxcHu7Jh8KE0nhPU
	1BSwI9nol9IAXC758JCWtj4lnqfMDE0xUxyAIXMDt++oxUQmyFnqhQaNAu8cOw7PgcROJTMXDNU6h
	Q2nflnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12di-00000000GY9-06pU;
	Fri, 13 Mar 2026 13:33:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fo7-25KK
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AOQEkxUQw5bkk1RX1vscWjlVI0oX1xIqCkgs3suHRc4=; b=jSIBCnBTb6cL4JYpOu9T7QFAe4
	rmW5zwMHn4Ki9SAGNVdcIi5OMac8M+BgNH3ri8hFZBT+iAjyDJLXDjwSsxIgAe1Zbq1lnM81w9W28
	ceJaDdbnMcBAHjO5ilSR/aF6RnPrPWl5QJ29Qy9EWnKcTVDhu8Xgno2zyAFcOpC45CqBbUI7EbCrX
	Fert9ZSzMYmdmLqZDep9uDw/96DaL5Zrc2jSe3li0DvIVsH410HVVyarqYD+QuGGd4vuk/uZepB8T
	7HmCPF/8l4ERUv0RJ9UgKFb6Ns4f11yiKnGkf+BBBft5qNBXmLfmPbmZkG4SmSxl0TpGFJJPTXOsB
	gq4Dwx2g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-00000003OSa-1jc8
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006vU-TZ; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Uq-2H;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-3qr8;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:24:59 +0100
Message-ID: <20260313132631.2257573-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_566072_2064FD5D 
X-CRM114-Status: UNSURE (   9.49  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 15/58] ARM: cpu: common: skip R_ARM_NONE relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Relocations may be turned into no-op in place by strip running on an
executable by having their type set to 0 (R_ARM_NONE).

This can happen with the incoming ELF loading in PBL support, so teach
relocate_to_current_adr() to skip these no-op relocation entries.

(cherry picked from commit 9ef816e176d9ace3a88911e37eb280552c2223e4)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260106081659.3491945-1-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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



