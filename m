Delivery-date: Mon, 03 Nov 2025 08:43:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFpDn-00EmOZ-2S
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 08:43:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFpDn-0002J9-7b
	for lore@pengutronix.de; Mon, 03 Nov 2025 08:43:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1N+l4XGdNeNEi+0xqeTq3PGPsAZXoDewFPEmyYZN3qc=; b=2dAaxgf52kYWceRAYCXCrhtDdN
	OseitW4ZLt9KfmMtIFrUNTnF5fw8rDF+7EY9JaRYI3qR9OUHG1D0pypxGgEKcQV0vB8+o5XOTt7Rf
	1I3orZ2WIGEDEjV/FH2jPF7o0KVWduBfkIcbR+BFMYHcXe8Yxz5570fYNwrqYM7OoBkYGmo1rrAZQ
	FCFXE9qm6dOO0d8ECVhoCXK8tbp+BY04Ke59aLjMfjwI3vmXwIjhIAb143diAP5XMHEneccJFpzyS
	HrKYRFgbPjW+QAzK59SBZIhxWK+FmK+U12cvhFAzfLiM7EejyRPxEXyPq0Oev5yjJIECxHwWyMo+J
	wkAmKpzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFpDF-00000009NN5-0pEx;
	Mon, 03 Nov 2025 07:42:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFpDB-00000009NMb-3EmI
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 07:42:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vFpD8-0002EI-E2; Mon, 03 Nov 2025 08:42:42 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  3 Nov 2025 08:42:40 +0100
Message-ID: <20251103074241.299831-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_234245_812641_B6742AAF 
X-CRM114-Status: UNSURE (   7.53  )
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
Subject: [PATCH] imd: drop .barebox_imd section from arm/riscv non-PBL lds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both ARM and RISC-V are platforms that always have a PBL in front of
barebox proper.

As this means any IMD tags in barebox proper would be usually compressed
and thus not visible to software outside, we can just drop these
sections from the barebox.lds.S, knowing that pbl.lds.S includes them.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/barebox.lds.S | 2 --
 arch/arm/lib64/barebox.lds.S | 2 --
 arch/riscv/lib/barebox.lds.S | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index b304561a9859..877788eb8083 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -69,8 +69,6 @@ SECTIONS
 		CONSTRUCTORS
 	}
 
-	.barebox_imd : { BAREBOX_IMD }
-
 	. = .;
 
 	BAREBOX_RELOCATION_TABLE
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index e6406b04d135..44f23fe275dc 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -46,8 +46,6 @@ SECTIONS
 
 	.data : { *(.data*) }
 
-	.barebox_imd : { BAREBOX_IMD }
-
 	BAREBOX_RELOCATION_TABLE
 
 	_edata = .;
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index e71bd89fb144..f6e6b29b412f 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -58,8 +58,6 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
-	.barebox_imd : { BAREBOX_IMD }
-
 	/DISCARD/ : { *(.rela.plt*) }
 	.rela.dyn : {
 		__rel_dyn_start = .;
-- 
2.47.3



