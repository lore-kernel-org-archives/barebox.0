Delivery-date: Fri, 12 Sep 2025 10:35:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwzFT-002AgG-2l
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 10:35:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwzFT-0001PZ-AS
	for lore@pengutronix.de; Fri, 12 Sep 2025 10:35:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4md8yzy/KsS7osck+dSHE2eMPHZfb7uypofthH6L8Ho=; b=AE7OXSpCpH7J8y/o33GjiXEgjS
	c/kldYuTO09agM8JRuqwQb+1Rv0kovCc06bBe+yve6R6j/ZeSj4Sg4jsNmN7QmJCTHYIhVYQe9g2u
	Dj+EeqnVqpd8siikYeiv6n9U6XIWsop48JFwcQScfI7kvKGij0IhGwXtqLUfJJh3DKuPy33b0KuKz
	bVokpdH1svQR05B6pm3JbTbohwSyTQQ2ygUEL/PN9o2Q49qLuflBg75YfPvZtcOiy4ZxJ0XJYvbqG
	G/SaGI5YXdSSCaOxavwQ7iBMygLacovZSaBahwU2ZBnOK8csw/A7Claa5JjOoXwh8g9DedvSyzosl
	u0PnIIYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwzEy-00000007xNL-0CP5;
	Fri, 12 Sep 2025 08:34:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwzEv-00000007xM2-2h4g
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 08:34:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uwzEt-0001JV-TB; Fri, 12 Sep 2025 10:34:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 12 Sep 2025 10:34:38 +0200
Message-ID: <20250912083439.2470689-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_013441_677988_C11A2FAD 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] RISC-V: fix stack clobbering in relocate_to_adr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

relocate_to_adr is decrementing two SZREG worth of stack space to be able
to spill two registers. An off-by-one led us to reference the word after
the reserved stack space, clobbering one word from the previous
function's stack frame unintentionally.

This this by decrementing the offsets by 1.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/lib/setupc.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
index d225186c79fd..423de4181ea6 100644
--- a/arch/riscv/lib/setupc.S
+++ b/arch/riscv/lib/setupc.S
@@ -32,14 +32,14 @@ ENTRY(relocate_to_adr)
 	/* adjust return address */
 	sub	ra, ra, a1		/* sub address where we are actually running */
 	add	ra, ra, a0		/* add address where we are going to run */
-	REG_S	ra, (SZREG * 2)(sp)
+	REG_S	ra, SZREG(sp)
 
 	beq	a0, a1, copied		/* skip if already at new address */
 
 	lla	a2, copied
 	sub	a2, a2, a1
 	add	a2, a2, a0
-	REG_S	a2, (SZREG * 1)(sp)
+	REG_S	a2, (sp)
 
 	lla	a2, __bss_start
 	sub	a2, a2, a1		 /* a2: size */
@@ -48,10 +48,10 @@ ENTRY(relocate_to_adr)
 
 	jal	sync_caches_for_execution
 
-	REG_L	a0, (SZREG * 1)(sp)
+	REG_L	a0, (sp)
 	jr	a0 			/* jump to relocated address */
 copied:
-	REG_L	ra, (SZREG * 2)(sp)
+	REG_L	ra, SZREG(sp)
 	addi	sp, sp, SZREG * 2
 	j	relocate_to_current_adr	/* relocate binary */
 ENDPROC(relocate_to_adr)
-- 
2.47.3



