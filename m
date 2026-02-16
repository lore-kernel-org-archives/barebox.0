Delivery-date: Mon, 16 Feb 2026 10:17:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujq-002GyT-1m
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujn-0007ms-CX
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=85Qw6Dier6UjQX5AXBuaqkIRIdt7aurhkibAn7QyNyQ=; b=EecWmxAJp8IvEtHjDwmBe0jQDk
	Ogq/talifHJ3Hcps9OCSgkjBqpo3gqxyoiTkW4kdRnZUXPzJ25WZgszBKPYi5dPOn8YQOqqi3q1Js
	AEtTAvwoumpItR0lEnzkZurX2DUF/V227jSM30jv6FoGEaHOTXwGbQOAjPi87iSS4DWWYXSF/Rb+9
	LryYjSyUpl8p8KqYsGsim0Kgr2WqTzi992yl/wW4gBorYUwHdu6MbxhMfWjVF9sNdrdOikPiHhh3g
	Q0Jp3QvSxhjaAxdrJlVokewmurVTPjsMhhZDkQEGO0In4Jp1BdoWIWAGefv0dsKt4B9GZe+/rMG/p
	f7lgsVmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruit-00000006EjW-2Rz7;
	Mon, 16 Feb 2026 09:16:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruih-00000006ES0-2UAe
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0006Wt-UC; Mon, 16 Feb 2026 10:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012XY-0o;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-1W4c;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:44:36 +0100
Message-ID: <20260216084758.3548990-37-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011643_633018_8ECB7993 
X-CRM114-Status: GOOD (  13.88  )
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
Subject: [PATCH master 36/39] efi: payload: skip ELF MMU handling when booted via stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We should not touch the MMU when running as EFI app and must trust
that the EFI firmware has taken care of it.

This was so far realized by skipping MMU setup if MMU is already
enabled, but with the switch to ELF for barebox proper, the same check
can't be repeated in pbl_mmu_setup_from_elf(), so add an explicit check
that barebox wasn't invoked via the PE entry point.

Fixes: 6cb7fc2edbb6 ("ARM: PBL: setup MMU with proper permissions from ELF segments")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/entry-multi.c | 13 +++++++++++++
 include/efi/mode.h        |  6 +++++-
 pbl/mmu.c                 |  4 ++++
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
index ef90ee077622..de977efc50b8 100644
--- a/efi/payload/entry-multi.c
+++ b/efi/payload/entry-multi.c
@@ -7,11 +7,23 @@
 #include <asm/common.h>
 #include <efi/protocol/text.h>
 #include <efi/payload.h>
+#include <efi/mode.h>
 #include <pbl.h>
 #include <pbl/handoff-data.h>
 
 asmlinkage void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table);
 
+/*
+ * Put these in the data section so that they survive the clearing of the
+ * BSS segment.
+ */
+static __attribute__ ((section(".data"))) bool is_efi_payload;
+
+bool efi_is_payload(void)
+{
+	return is_efi_payload;
+}
+
 static void efi_putc(void *ctx, int ch)
 {
 	struct efi_system_table *sys_table = ctx;
@@ -30,6 +42,7 @@ void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
 #endif
 	pbl_set_putc(efi_putc, sys_table);
 
+	is_efi_payload = true;
 	efidata.image = image;
 	efidata.sys_table = sys_table;
 
diff --git a/include/efi/mode.h b/include/efi/mode.h
index d63c47e88dbb..5093e9b2971f 100644
--- a/include/efi/mode.h
+++ b/include/efi/mode.h
@@ -18,10 +18,14 @@ enum efi_loader_state {
 	EFI_LOADER_RUNTIME,
 };
 
+#if IN_PBL && defined(CONFIG_EFI_STUB)
+bool efi_is_payload(void);
+#else
 static inline bool efi_is_payload(void)
 {
-	return IS_ENABLED(CONFIG_EFI_PAYLOAD) && BS;
+	return IS_ENABLED(CONFIG_EFI_PAYLOAD) && IN_PROPER && BS;
 }
+#endif
 
 #ifdef CONFIG_EFI_LOADER
 enum efi_loader_state efi_is_loader(void);
diff --git a/pbl/mmu.c b/pbl/mmu.c
index e7c9b8b1e8e4..897221c53f9b 100644
--- a/pbl/mmu.c
+++ b/pbl/mmu.c
@@ -10,6 +10,7 @@
 #include <asm/mmu.h>
 #include <linux/bits.h>
 #include <linux/sizes.h>
+#include <efi/mode.h>
 
 /*
  * Map ELF segment permissions (p_flags) to architecture MMU flags
@@ -45,6 +46,9 @@ int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
 	void *phdr;
 	int i = -1;
 
+	if (efi_is_payload())
+		return 0;
+
 	pr_debug("Setting up MMU from ELF segments\n");
 
 	/*
-- 
2.47.3



