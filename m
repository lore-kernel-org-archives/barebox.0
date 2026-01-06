Delivery-date: Tue, 06 Jan 2026 13:53:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZG-001tSC-3D
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:53:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZF-0001Nl-Pu
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:53:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wjnRQ7aJx3h1C2FL9blydgedqvlQ3xDeSrxS3865i2w=; b=kw2TPGGp++N7IYtMbldnz7DBh1
	9+AYUe48MDn2RuceWUE5krsZLQ0YlIEa9AFX+QIDsZ/ioHzKLQtzC5mXKakQW7r+oCPAtC4tJybzd
	biP+KY5lAVLHT/HVdQKS/qt06KZj+JGInscsyn5+HrMniLHcG/6oNUe81X0x92xg68mhEry/lZOcs
	n0ectYFkGhsiAgRP8dsiEFTdAw8b/z4SHw4ot48hxycyjooxI1fZOooTlO/p/3zqf6hpmLh/+GRri
	tiVvC5WR1t0Z86MEVAOZERH7tkMlzepsAE6xBBTMSW8I/VTmwb4We8UFbxEbdqOzAGwTQVeEUNhQg
	jMN5ZnSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yl-0000000D1YR-0RKy;
	Tue, 06 Jan 2026 12:53:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yi-0000000D1X9-1cgf
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-000131-BW; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lcg-2y;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3ILF;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-5-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=1739;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WJ7DVaMgoLVyTE2DMNRZ6OQcdpEm5W5Y128wGf/JUKM=;
 b=NYP4gxAWOGh2ZdEMCRpX6XXx3L2Fpvyx4k8D19yytDrPVuhZC/Qb9KoLg6T3lLwITbSdFYzbD
 gcjmlZkrcMfCqSlTDqnus7+g84HodHXLOJJCPefz6nCPDRtDROdID8R
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045312_428682_0DC6CF5E 
X-CRM114-Status: GOOD (  11.48  )
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
Subject: [PATCH v2 05/21] riscv: define generic relocate_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the ELF loader in PBL to relocate barebox proper, export a
new relocate_image capable of relocating barebox and implement
relocate_to_current_adr() in terms of it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/reloc.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 0c1ec8b4880227d16ab5e7b580244f1db2e967ec..18b13a7013cff4032c12b999470f265dbda13c51 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -30,26 +30,15 @@ void sync_caches_for_execution(void)
 	local_flush_icache_all();
 }
 
-void relocate_to_current_adr(void)
+static void relocate_image(unsigned long offset,
+			   void *dstart, void *dend,
+			   long *dynsym, long *dynend)
 {
-	unsigned long offset;
-	unsigned long *dynsym;
-	void *dstart, *dend;
 	Elf_Rela *rela;
 
-	/* Get offset between linked address and runtime address */
-	offset = get_runtime_offset();
 	if (!offset)
 		return;
 
-	/*
-	 * We have yet to relocate, so using runtime_address
-	 * to compute the relocated address
-	 */
-	dstart = runtime_address(__rel_dyn_start);
-	dend = runtime_address(__rel_dyn_end);
-	dynsym = runtime_address(__dynsym_start);
-
 	for (rela = dstart; (void *)rela < dend; rela++) {
 		unsigned long *fixup;
 
@@ -74,5 +63,15 @@ void relocate_to_current_adr(void)
 		}
 	}
 
+}
+
+void relocate_to_current_adr(void)
+{
+	relocate_image(get_runtime_offset(),
+		       runtime_address(__rel_dyn_start),
+		       runtime_address(__rel_dyn_end),
+		       runtime_address(__dynsym_start),
+		       NULL);
+
 	sync_caches_for_execution();
 }

-- 
2.47.3



