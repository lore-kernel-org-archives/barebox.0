Delivery-date: Wed, 09 Oct 2024 08:08:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsR-0027eF-1B
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 08:08:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsQ-0007Jy-PO
	for lore@pengutronix.de; Wed, 09 Oct 2024 08:08:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2KrXVv36mfo4lR+jpW2uf9wFCNNzjoBYC/HQ4Z6Gb5M=; b=YiZFh3LtDdaYloNpDY9D5ZaC6/
	Z4ae4nyvuofi+UYE9AxdIbKKoM/DlOnwI+MBWfyUC715AKxExEWzTl1rIOrdsxnRJeNPk4KIQpBpf
	aZZEJgyQrriJzVb/oXpf0kqtpmoFCS6xrTaf1iOBTJ8Lln8nUQM/l1tg++1vLPzEZrbkaQPrTHH0e
	zJugdIC0WuyqSU8LvY29H4bfcN/TyzRu71mEYBsnWaTfYcXsXE+h61nBOFDjAiqVRY0gxz0KKaaOq
	UwhdTG5HYJZRrYK+HmGeCf5t9KwqxnX4igI2EI9r8d9v4fuDo8ZabklbVa3CB6lxgUQC0cPew5aMt
	3ZH65SoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPrx-000000082m8-16bg;
	Wed, 09 Oct 2024 06:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPpI-000000082IV-37ak
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 06:05:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-0006vE-8v; Wed, 09 Oct 2024 08:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-000XZw-SG; Wed, 09 Oct 2024 08:05:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-00HI6s-2Y;
	Wed, 09 Oct 2024 08:05:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 08:05:08 +0200
Message-Id: <20241009060511.4121157-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_230536_863747_D7BB9ED8 
X-CRM114-Status: GOOD (  17.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM64: board-dt-2nd: grow stack down from start of binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When first added, the ARM64 generic DT image started with `adr x1, 0'.
With the addition of the optional EFI entry point, a nop with an
optional MZ magic needed to be added at the start of the binary and so
`adr x1, 0' moved further down.

This 0 however is interpreted relative to the program counter and thus
the stack was now setup not from the start of the image down, but from
the location at which the adr instruction is located.

This happens to be 0x48, which not only overwrites the header during
execution, but also is not aligned to 16 bytes.

This issue went unnoticed so far, because the stack is only used to
find out the available memory (either from FDT or EFI boot service)
after which the stack is set up at a properly aligned fixed location
for the remainder of barebox' execution.

Under KVM however, this quickly crashes on the first stack access:

        ldr     x0, =0x4007fff8
        mov     sp, x0
        stp     x0, x1, [sp] // <-- data abort

Thus fix the code to grow the stack down from the first address.

Fixes: 742e78976dd4 ("ARM64: add optional EFI stub")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/board-dt-2nd-aarch64.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
index 030366c1cbf5..2ea13d20b450 100644
--- a/arch/arm/cpu/board-dt-2nd-aarch64.S
+++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
@@ -22,7 +22,7 @@ ENTRY("start_dt_2nd")
 	.int   .Lpe_header_offset  /* reserved (PE-COFF offset) */
 	.asciz "barebox"	   /* unused for now */
 2:
-	adr x1, 0
+	adr x1, _text - .
 	mov sp, x1
 	/* Stack now grows into the 0x80000 image load offset specified
 	 * above. This is more than enough until FDT /memory is decoded.
-- 
2.39.5



