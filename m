Delivery-date: Thu, 07 Sep 2023 10:23:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAIN-006uJy-6u
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:23:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAIJ-0007mw-DH
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:23:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0XGgnQqubVJKpRJQRN//RhzTVkI16J78UvsaLShqhk4=; b=hmNg9ykIjReYIJyGeJGLXvS39z
	CTk5G8N5PBUi+z/DWaQVGVWaGejbVBe6XlVzhd6UBuIOLUesF3S2SgjVOtwM3FGOgp7hNrpic4FGr
	d8MeQXpCX0ajM+ZZCBNzGMHautT5FfFqFx7tGPAQYRvTSnIR1KkLbcak/eXJ9DjuZNAxP00lVhsu+
	czfudrFta1OxgSyHszhIuGqucC5JiDYRhUe2aoerem4C4ma6jdn+NLmvyepKw1bjVKzyKZe+vboae
	HquY/gykoRRDWzoKZPK0ZVNEuKKg16xVT1my+FbGPtDhSAJ9ov3o5qAaiE3ohWE7HjRBx3O/nq/SD
	bXqSrBZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAH1-00Ba0O-0o;
	Thu, 07 Sep 2023 08:21:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAGx-00BZz8-0R
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:21:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGs-0007E5-8O; Thu, 07 Sep 2023 10:21:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGr-004buK-Rc; Thu, 07 Sep 2023 10:21:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGr-009zoA-1w;
	Thu, 07 Sep 2023 10:21:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  7 Sep 2023 10:21:26 +0200
Message-Id: <20230907082126.2326381-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907082126.2326381-1-a.fatoum@pengutronix.de>
References: <20230907082126.2326381-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_012155_169178_81354C08 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] console: pbl: correctly handle relocate_to_adr after pbl_set_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pbl_set_putc may be called by a PBL entry point to store the absolute
address of a routine to be used for printing out a character.

If barebox happens to be located outside of the initially known RAM,
it will be relocated into it by means of relocate_to_adr(), but nothing
will take care to update the function pointer stored by pbl_set_putc.

This will usually continue to work until barebox sets up the MMU and
everything not known to be RAM is marked as eXecute Never. After that,
the next PBL console print will trigger an instruction abort.

Fix this by not storing the putc function pointer, but instead an offset
relative to _text.

This is the second part of fixing barebox hanging on i.MX8M when located
at an address greater than 4G.

This change has been tested on both i.MX8M (AArch64) and i.MX6 (Thumb2).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pbl/console.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/pbl/console.c b/pbl/console.c
index 1a6e839c1559..d81bf580d52f 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -2,13 +2,14 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <asm/sections.h>
 #include <linux/err.h>
 
 /*
  * Put these in the data section so that they survive the clearing of the
  * BSS segment.
  */
-static __attribute__ ((section(".data"))) void (*__putc)(void *ctx, int c);
+static __attribute__ ((section(".data"))) ulong putc_offset;
 static __attribute__ ((section(".data"))) void *putc_ctx;
 
 /**
@@ -21,13 +22,19 @@ static __attribute__ ((section(".data"))) void *putc_ctx;
  */
 void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
 {
-	__putc = putcf;
+	putc_offset = (ulong)putcf - (ulong)_text;
 	putc_ctx = ctx;
 }
 
+static void __putc(void *ctx, int c)
+{
+	void (*putc)(void *, int) = (void *)_text + putc_offset;
+	putc(ctx, c);
+}
+
 void console_putc(unsigned int ch, char c)
 {
-	if (__putc)
+	if (putc_offset)
 		__putc(putc_ctx, c);
 	else
 		putc_ll(c);
-- 
2.39.2



