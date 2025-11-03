Delivery-date: Mon, 03 Nov 2025 08:47:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFpHs-00EmSC-32
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 08:47:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFpHr-0002tQ-Ri
	for lore@pengutronix.de; Mon, 03 Nov 2025 08:47:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Zjg+4Dtl4Klb8NbtgxRjjvWmdJZdzYntmpKJV9RfsDE=; b=rW44IR2FwztrHHt+3val8S2ldu
	d3RgLL5L8yNR31C6SZSitxjZYh0WFkIJCer5IJUWVIFqA2+Xyo5MPO0Tu4L38m2hWFp4UF6VwARf7
	44z5JIb+0GR3tcrE02TJIteDfib1mL6ud85w7iFmut//exIlauRC1cffZuMVYTwEb3CNPIZNwi0F5
	3CtgEK+Ytx064hvIa9IMTBd5sn0AmyK0f27Nw1/+XWlooxAalOGNaow3vsYpeA1yhkm3Stt2Qx+TJ
	1cglMoY6sDhjYP1QznmrrKQU22TeeAF/TuMmZ+IBfprkSflZd64WX4pY2BETf2hu7mAtMJmVEIPkf
	cB2w8V5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFpHR-00000009O2w-2TAy;
	Mon, 03 Nov 2025 07:47:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFpHO-00000009O2b-2B06
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 07:47:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vFpHM-0002l4-Cw; Mon, 03 Nov 2025 08:47:04 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  3 Nov 2025 08:47:02 +0100
Message-ID: <20251103074703.305235-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_234706_555100_2C6BF625 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] x86: drop unused header asm/segment.h and modes.h headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This headers are left-overs from the legacy BIOS support that has been
removed a few years ago and are not included anywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/x86/include/asm/modes.h   | 48 ----------------------------------
 arch/x86/include/asm/segment.h | 26 ------------------
 2 files changed, 74 deletions(-)
 delete mode 100644 arch/x86/include/asm/modes.h
 delete mode 100644 arch/x86/include/asm/segment.h

diff --git a/arch/x86/include/asm/modes.h b/arch/x86/include/asm/modes.h
deleted file mode 100644
index b33df858921c..000000000000
--- a/arch/x86/include/asm/modes.h
+++ /dev/null
@@ -1,48 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/* SPDX-FileCopyrightText: 2009 Juergen Beisert, Pengutronix */
-
-/**
- * @file
- * @brief Declarations to bring some light in the real/protected/flat mode darkness
- */
-#ifndef _ASM_X86_MODES_H
-#define _ASM_X86_MODES_H
-
-#ifndef __ASSEMBLY__
-
-#include <types.h>
-
-extern uint64_t gdt[];
-extern unsigned gdt_size;
-
-#endif
-
-/** to simplify GDT entry generation */
-#define GDT_ENTRY(flags, base, limit)			\
-	((((base)  & 0xff000000ULL) << (56-24)) |	\
-	 (((flags) & 0x0000f0ffULL) << 40) |		\
-	 (((limit) & 0x000f0000ULL) << (48-16)) |	\
-	 (((base)  & 0x00ffffffULL) << 16) |		\
-	 (((limit) & 0x0000ffffULL)))
-
-/** 32 bit barebox text */
-#define GDT_ENTRY_BOOT_CS	2
-#define __BOOT_CS		(GDT_ENTRY_BOOT_CS * 8)
-
-/** 32 bit barebox data */
-#define GDT_ENTRY_BOOT_DS	3
-#define __BOOT_DS		(GDT_ENTRY_BOOT_DS * 8)
-
-/** 16 bit barebox text */
-#define GDT_ENTRY_REAL_CS	4
-#define __REAL_CS		(GDT_ENTRY_REAL_CS * 8)
-
-/** 16 bit barebox data */
-#define GDT_ENTRY_REAL_DS	5
-#define __REAL_DS		(GDT_ENTRY_REAL_DS * 8)
-
-/** Something to make others happy */
-#define GDT_ENTRY_BOOT_TSS	6
-#define __BOOT_TSS		(GDT_ENTRY_BOOT_TSS * 8)
-
-#endif /* _ASM_X86_MODES_H */
diff --git a/arch/x86/include/asm/segment.h b/arch/x86/include/asm/segment.h
deleted file mode 100644
index 9e1d897b0386..000000000000
--- a/arch/x86/include/asm/segment.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/* SPDX-FileCopyrightText: 2009 Juergen Beisert, Pengutronix */
-
-#ifndef _ASM_X86_SEGMENT_H
-#define _ASM_X86_SEGMENT_H
-
-#include <linux/compiler.h>
-
-/**
- * @file
- * @brief To be able to mark functions running in real _and_ flat mode
- */
-
-/**
- * Section for every program code needed to bring barebox from real mode
- * to flat mode
- */
-#define __bootcode	__section(.boot.text)
-
-/**
- * Section for every data needed to bring barebox from real mode
- * to flat mode
- */
-#define __bootdata	__section(.boot.data)
-
-#endif /* _ASM_X86_SEGMENT_H */
-- 
2.47.3



