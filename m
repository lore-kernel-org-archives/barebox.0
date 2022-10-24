Delivery-date: Mon, 24 Oct 2022 14:13:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwKO-000fBq-Ls
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 14:13:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwKN-0007qq-IP
	for lore@pengutronix.de; Mon, 24 Oct 2022 14:13:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xSzfOw7GerISilSf9dJ1kGAmNOIL2epoVFbYnKHmZXo=; b=2nWFI/gFjYBjAkzgDYyumYiw72
	UpqljNFLaixXiejL9IIhaAAYYD/DXqwLTlJVtk4vTgst24QtbjTvzgnibs3XPhuUHCodT5r0CSdmP
	goSTRUjCgJvhEXhUpT5EU0bmTJmn/C7AfrTJ80kQEUhMesBDYa5gZ38boM0NENy5x7GrVRr617Iyc
	MGPkxboDgpiekeSR1fHzSYb8fG+OsdvQt/W7Mo3P0jNl5W76VAkNj+t10OW7VG2WVSEstBCjkbT/w
	rWmReTcVDFvLCVj913ZO06xKh7Rj4QcuSCN8xQQgZw4dVN3Kz7FQm9uE8BbgvDeWdRL/uyS3hG3CG
	NpPmVPoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwJC-001IrD-Di; Mon, 24 Oct 2022 12:11:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwJ8-001IqL-6e
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 12:11:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omwJ6-0007hf-Th; Mon, 24 Oct 2022 14:11:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omwJ7-0006pI-58; Mon, 24 Oct 2022 14:11:52 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omwJ5-007j9m-6z; Mon, 24 Oct 2022 14:11:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 14:11:50 +0200
Message-Id: <20221024121150.1841826-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-6-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_051154_261733_D2430872 
X-CRM114-Status: UNSURE (   8.93  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM64: asm: rewrite ENTRY_FUNCTION(_WITHSTACK) fully in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have enough space before the barebox header to set up stack, insert
the optional break point and branch to the board-specific entry point.

Do that instead of jumping over the header and continuing directly
afterwards.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/head_64.S | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
index 4ed4ffb05250..f934e96c6eaf 100644
--- a/arch/arm/cpu/head_64.S
+++ b/arch/arm/cpu/head_64.S
@@ -9,21 +9,11 @@
 
 .section .text_head_prologue_common, "x"
 ENTRY(__barebox_arm64_head)
-	nop
-	nop
 	nop
 	adr x9, __pbl_board_stack_top
 	ldr w9, [x9]
 	cbz x9, 1f
 	mov sp, x9
-	b 1f
-	.org 0x20
-	.asciz "barebox"
-	.word 0xffffffff
-	.word _barebox_image_size	/* image size to copy */
-	.rept 8
-	.word 0x55555555
-	.endr
 1:
 #ifdef CONFIG_PBL_BREAK
 	brk #17
@@ -33,4 +23,11 @@ ENTRY(__barebox_arm64_head)
 	nop
 #endif
 	b __pbl_board_entry
+	.org 0x20
+	.asciz "barebox"
+	.word 0xffffffff
+	.word _barebox_image_size	/* image size to copy */
+	.rept 8
+	.word 0x55555555
+	.endr
 END(__barebox_arm64_head)
-- 
2.30.2



