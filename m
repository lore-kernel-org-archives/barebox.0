Delivery-date: Fri, 16 Jan 2026 09:12:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewv-001tR8-0y
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:12:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgewu-00046L-9X
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:12:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WIGRqetzugXWT1RPymj0G2J8IAvSUHxQMFufvBH4diw=; b=2r4N2rqprEbYax6EAsa1kjU29c
	IeN/7Rs/3gOHXS+Ffd0FWqsEfwyg3UDQYjKOsz3TLzTRnoPa3lCpSyAK0dxKB/Do2oNU0iaxWF3b1
	1CQ0h863S6ZFnQcdm16phqq77DmftZ3Ecl7cjGqvnxtsYzb2KIjd+kxTfFTNP7YgghyoevaGY2jts
	NuErG5hv6TcuSm+ehVeV/K5mWM3+bjWEDSYQHXvbgb9ysU9ZWQtVUM/wRCU8bmazJlkOtgs3al3i1
	3uLLQpnELXXR8M3hnWyeS298xsvzg1W2q2OUzFM5LIuF0nFh2zx4J8ASIPkn90QlM1KArnDpnCsXj
	r9ntD3EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewT-0000000DjS4-0gQY;
	Fri, 16 Jan 2026 08:12:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgewR-0000000DjQ7-29VH
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:12:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-0003jS-Us; Fri, 16 Jan 2026 09:12:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewI-000t5L-0c;
	Fri, 16 Jan 2026 09:12:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1eAP;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-8-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=1119;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9t8IAZfGJedaIkZAXwJ5q7ceCx8iZYECeSHkeR3/0yk=;
 b=hd3NMqcsH3qut4UsdUm27YpeQfM8DdqVcFd17HeEv7pyCNuezWGcz+9xYm8/Vv6BSo2PQYEmX
 8TUhb+0Rr5nDr7AjjLLbc/wfo9CIoGFbPqkrVwH49hVol07B46gDsbB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001223_553732_32211853 
X-CRM114-Status: UNSURE (   9.22  )
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
Subject: [PATCH v5 08/22] riscv: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add architecture-specific ELF relocation support for RISC-V,
enabling dynamic relocation of position-independent ELF binaries.
The implemetation reuses the existing relocate_image().

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/reloc.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 18b13a7013..71d59d4ab6 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -75,3 +75,19 @@ void relocate_to_current_adr(void)
 
 	sync_caches_for_execution();
 }
+
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



