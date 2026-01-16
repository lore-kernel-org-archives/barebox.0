Delivery-date: Fri, 16 Jan 2026 09:12:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewz-001tSs-0W
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:12:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewy-0004A0-5q
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:12:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tMAgC2r4sFo3pD6jqCN19DZEPYBAJbp5xRDM0+rFTfs=; b=oqk2FEI3t4fSDN1YwNeZ9R/Rye
	KnLruj4/hvc+TEapBLw6/UXMCwSEPy0ev8cDZdfbhst6AvPrUomRlQAf9efZhGKNLvaREwxDTh6YP
	eeUGuIh+9AwvB5PQnSkvSsYZIyY3VtlBDqC8uGRJCfz/qxf/2Z6ijnC6OEcJddP1Ok1dtZPUbOfKl
	sEsoD0/5e49Qm+FRr9ApKNK8GMvpKgkAbB+ZA1RqaR3ZyXAdj/A+WHXMmAa26+6m2TU0SJN3DMPoX
	hTlMkQ/W+rrB2s4IkZkNJ6K64HbCKNokKEGKCfKGwKWy1QobtH4q6Z0fSbkeIajrnTNhXTi/LS7XR
	LdSiYDVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewW-0000000DjTp-3HAr;
	Fri, 16 Jan 2026 08:12:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewR-0000000DjQE-3NcY
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:12:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-0003jO-Uq; Fri, 16 Jan 2026 09:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewI-000t5K-0d;
	Fri, 16 Jan 2026 09:12:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1dQm;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-7-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=1732;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=s9hne2PnlXbYtjvcybei0qIq7mufcOPwQvu2K1cuhlU=;
 b=rLIN681leltT48+f/AxoFEk5PM3BAjuZicKFqtvqCZ+HJqYx8YPKbypuv0kkfPAlCuxxRYW6P
 3Y4IL4WuSn0A9eOLJAQap6lXVWVNgGMAjnnDa7W0LqFIMVDvCd+bzb0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001223_851443_CF75F310 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: [PATCH v5 07/22] riscv: define generic relocate_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by the ELF loader in PBL to relocate barebox proper, export a
new relocate_image capable of relocating barebox and implement
relocate_to_current_adr() in terms of it.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/reloc.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 0c1ec8b488..18b13a7013 100644
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



