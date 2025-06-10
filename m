Delivery-date: Wed, 11 Jun 2025 00:50:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7nu-005x2x-2U
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 00:50:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7nu-0007HK-15
	for lore@pengutronix.de; Wed, 11 Jun 2025 00:50:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XoykPm8sSReReiuWsFALBxoxPoRjciYn+UkBeCWoaQg=; b=ZKsuXN9xqglGKglRw1VvRQ4Dm+
	y7jFuY74GubSx6CP6kByeiTTmWBJZDcEFI3ese88TtTwzsEt3LlIlAfgy675FoeMAWiNStOX+vd/i
	yNBNE5om1AhbFKFfAj4se67aSHnZAAzw0xFVFpFgdVl+gTRYE01a5fAcHDOlNblI6g9fRDlCK7Odd
	6pGdq/l4IqeDYqfukrP6QvMrY7dQeYVqzTQ1EmJV3N7LhO1wlzlwVxTSKJoEBUg9foxHcyj+sUSnV
	zjv9jJjQkZHicKd+4BHcfZJMW0fQJFSG+2t9dsldWy0SBAaTotu5aeCPpHG8gxvBzsIKCifp9KFA/
	BdD5rWKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7nN-00000008ITl-42CP;
	Tue, 10 Jun 2025 22:50:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5Lf-000000080sq-0REp
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 20:13:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-0001P1-DW; Tue, 10 Jun 2025 22:13:29 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-002peW-0B;
	Tue, 10 Jun 2025 22:13:29 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Lc-00BICi-36;
	Tue, 10 Jun 2025 22:13:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>,
	lst@pengutronix.de,
	fpg@pengutronix.de,
	Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jun 2025 22:13:18 +0200
Message-Id: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_131331_139664_3CF43506 
X-CRM114-Status: GOOD (  11.59  )
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
Subject: [PATCH v2 1/3] ARM: optee-early: drop superfluous sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We expect start_optee_early() to be called with caches disabled, so there
is no point in calling sync_caches_for_execution inside.

Therefore let's verify the assumption that caches are indeed disabled
and drop the useless call.

Co-authored-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - panic instead of retuning error code (Rouven)
---
 arch/arm/lib32/optee-early.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index 735d829c99fb..c9959b5e41b8 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -7,7 +7,9 @@
  */
 #include <asm/cache.h>
 #include <asm/setjmp.h>
+#include <asm/system.h>
 #include <tee/optee.h>
+#include <linux/bug.h>
 #include <debug_ll.h>
 #include <string.h>
 
@@ -19,6 +21,9 @@ int start_optee_early(void *fdt, void *tee)
 	struct optee_header *hdr;
 	int ret;
 
+	/* We expect this function to be called with data caches disabled */
+	BUG_ON(get_cr() & CR_C);
+
 	hdr = tee;
 	ret = optee_verify_header(hdr);
 	if (ret < 0)
@@ -30,7 +35,6 @@ int start_optee_early(void *fdt, void *tee)
 	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
 	ret = setjmp(tee_buf);
 	if (ret == 0) {
-		sync_caches_for_execution();
 		tee_start(0, 0, fdt);
 		longjmp(tee_buf, 1);
 	}
-- 
2.39.5



