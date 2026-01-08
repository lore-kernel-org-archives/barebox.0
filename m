Delivery-date: Thu, 08 Jan 2026 16:50:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHo-002fSZ-1M
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:50:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHn-0007Bv-La
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:50:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rkanbwsakzZqjUKDScUhh3ZuhKmYb+vyVq55L7NJDj8=; b=Rl8dXRDQhzQ4MQyiahATUodS5t
	ppAGGqZlM+Nb/bl/aEL9DVwLSQI0PS+8WeZwOol3aSS828jEy3i78ZJDT1VXItiB71cW/s7ACfd0O
	u+R1MOQgQqZGdRohyxY/wfHlsUuLzCc8uI3Yk1Utp5IdmNiRt/f/BM2B1f/52wsjsqGSwRNv/9j7Y
	IhD5C893mlLgUsZh2msX9zmcO4Xi8cuk73v1R0+QzRIiJ5+SiuiJ7nsdpuClLhWVL1zTecOqPcjIS
	lWiqEd9qeAFmww5apNLBYQlzrxgiDdQP2GXfrhbVV7NAoESX0tQ6Lta9SoIh1PTOtNudc+U6ZM13d
	u+peElPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHG-0000000HaQN-2Qaa;
	Thu, 08 Jan 2026 15:50:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHF-0000000HaOX-0I6H
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=rkanbwsakzZqjUKDScUhh3ZuhKmYb+vyVq55L7NJDj8=; b=fqMg3hgEudZ+Qv8mNp8Dv8TV5y
	rr/0CvtnsiuKtlfpPULU9+YoP/MTSw36e28Sq6GrN7HrMLOQBmI22U0Uq9Z4yksqmkLyUgQsrSxz1
	IzRuTqnPwhV9OsbT4KdamR3KZ90DLaao/lGkmsgWRWCu5TpRaMxEuhUh6UDDdVNyBN8iGa1wFOwYc
	egJsW6gBFL3s7F17fbijIBeDTKrfQ0bH8h8PHTTq+6q+s4TuIMNtd7q85sjqv7ehSDWrhCxlVJDON
	6fQpzm5vkGDzgtOX2vxyuWPDcUh98Lh+FiBGdjF7kPg6tUGzxNYV1CvP3MjREDhF+hUF9fKOqZGyV
	nyCjazSQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHC-0000000DYgI-1Yy4
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hL-Sj; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hVC-1a;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1Pwo;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-6-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=1792;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=R065iWMdiFCXcu7PjtBNCQceDRrISIbQoNsZGYvmKHI=;
 b=NAqZqO1E0EVeZnQk2e8tit5XhQEXkZ1UN7Efi8erXN981Xep9mdxrxidj6WrM4X1RiJiCTNWP
 c1t0+CBLcxCCFgtXqzl7Zl1s3wTnhzsSo+baiyS+zCh0vKVXip0Yhtx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_155018_505905_3AE3C57D 
X-CRM114-Status: GOOD (  10.91  )
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
Subject: [PATCH v3 06/23] riscv: define generic relocate_image
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



