Delivery-date: Wed, 06 Nov 2024 20:03:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ7-005dZE-23
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ6-0001uX-Qj
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6gBLqmoQ0YJCilEB8M9OXj37uM6fl+Sm/w9RH1Bk7io=; b=LysbYJpQm72jaFBXUvG24O87Ei
	R6H0x85vRAN9WhAF+wTLIUsAzgrfIq+GpiMG9wAAczIHA0w3/DvpCU2KFfnc9lZuYQhHwUoj5ii0B
	uzJC8rIGueWnpKYwxz6fzrFUAILehy4GzM0DQ20YRY7tV8/vyt82qehSyHRyX3lktGFAl+U69xuVE
	MAZBVOys/fKJmD/ZrtlFkTMiXvjs0tt4tBOvN/lGyztYAWt7Uzpn8ov4whOw/XLuc+MOD3+vFebmx
	9niDyuqkkkydxgNMy8Ad0oXca9UFnKQd4QmvgO0uq9eCfqDh7TkxrDDfkFKoe/3Zfm78H7+eHl6nn
	FMEsxzvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIb-00000004R38-05RQ;
	Wed, 06 Nov 2024 19:02:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Put-1pUr
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000Vb-2c; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-002LMh-2s;
	Wed, 06 Nov 2024 19:57:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-2Y;
	Wed, 06 Nov 2024 19:57:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:57:20 +0100
Message-Id: <20241106185724.2526-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_599950_A2705F0F 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] ARM: lds: move stack top section to front of rodata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The stack top is referenced from the entry point before relocation.
Depending on the firmware, .rodata can get quite big and this position-
independent relocation may lead to link errors:

  (.text_head_prologue_common+0x4): relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against
  symbol `__pbl_board_stack_top'

One way to workaround this is using fw-external, but if barebox is
running second stage anyway it is a hack having to use fw-external when
there is no chainloading of barebox proper involved anyway.

Let's avoid this linker error, by moving the stack top in front of
.rodata instead of behind it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 4f58a4eba0c5..f097ac1fdd46 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -61,9 +61,6 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 	BAREBOX_PBL_SIZE
 
-	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
-
 	. = ALIGN(ASM_SZPTR);
 	__pbl_board_stack_top = .;
 	.rodata.pbl_board_stack_top : {
@@ -73,6 +70,9 @@ SECTIONS
 	}
 	ASSERT(. - __pbl_board_stack_top <= 2 * ASM_SZPTR, "Only One PBL per Image allowed")
 
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = ALIGN(PBL_SEGMENT_ALIGN);
-- 
2.39.5



