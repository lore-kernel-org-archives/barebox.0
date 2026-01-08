Delivery-date: Thu, 08 Jan 2026 16:51:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHu-002fUc-0Y
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:51:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHt-0007H9-Gq
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:51:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bbP9BE2CZdup/g/5xf3hFzYxrYk6Atcc5u9O4Q8L6GY=; b=YC3CgmOOHDkhCPuRLGU4BAbAOy
	dd1VRl8Rfjtxsz1UsdLT22dtXHITbvwN9C7syDc+r58zhKBJZmvVklMXZ+erFJPqSxa/ye4ASI+PU
	OvAr9Y+y8ryorxnslF086gfYHs5IEgIkVffnc16PHYpGFbizFWtXl7bqYJsYKzo46vKmsuW7E2bZU
	lDXicCyWbfgvWs/+4LL672Wj4yEWgfumm8WF3wG0pGlPWxyI/EWMO82Gvj/n6n0R5gZLNADI6wMUX
	3QO/s8P9yh7fVlAHyVdPrRqv7l0AU1bwGJzImOjWMdyyZzvRAZu9MImmYfQTxgzYfYgWdXEXYGmjt
	nkJjYDUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHQ-0000000HaWi-2jcs;
	Thu, 08 Jan 2026 15:50:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHN-0000000HaVN-1G9k
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=bbP9BE2CZdup/g/5xf3hFzYxrYk6Atcc5u9O4Q8L6GY=; b=YVLGYkV1D6iXTBaeUnuNBq/jUz
	eMc/9jTd/ytsCbZ1CQy2RcceX3keTNHwsGMJTHcOafT07iyIYsoYmZPOKKCkn4u2gX8FowUZsI/nG
	4nC14vvj1OvymYSY6L5DzSouBx58QpSHAS0d+WlRKR0FfkVcCtL28/fVEHlplUv1wUc03FY+ysKV8
	wNjxyLg1TZVdCzUP3HtAs5DEodGzI5+JdXFocAzwCyXib6HF9VR4Ad5vroi1XQHfbwG1y/gbaM7kV
	G9+lYBeSthmyaPm3Z86f3g8x7GnmjeIlLjCp6vNFMshJ2VEJq82Km9xk691ZkM8UMuFKYhnVlz2AD
	QtbvWBeQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHK-0000000DYiB-2GZd
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hN-SN; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hVD-1Y;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1QhE;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260108-pbl-load-elf-v3-7-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=1248;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=e+/f3I5SsBPOVqmnd9++mvw+45+N3WWjg8Jd6SIfCM4=;
 b=/BKH7aQUAuEM7LQjKkS3Jnhle9O2A5k7OddjVPONvPsgKEAjH3xwFTilDScqIdjRmXktCABB8
 teCh813htD7CF+1opaPp1DxHGj75FOkcXnOzfc6PUhKTAfvpMNEw++/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_155026_645793_7106F932 
X-CRM114-Status: UNSURE (   9.08  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/23] riscv: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add architecture-specific ELF relocation support for RISC-V,
enabling dynamic relocation of position-independent ELF binaries.
The implemetation reuses the existing relocate_image().

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/reloc.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 18b13a7013cff4032c12b999470f265dbda13c51..71d59d4ab62ec07e23bc2ae3d9932f8d2baa7a81 100644
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



