Delivery-date: Wed, 30 Oct 2024 12:47:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-002gBR-1Y
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 12:47:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-0003xX-Qi
	for lore@pengutronix.de; Wed, 30 Oct 2024 12:47:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qOM1rV34Et9UwV1wh/TglavskO2KUJGnfGWK2f8ZKeA=; b=aAx99mX7yyGbYgdPCjXv82jZTf
	TGZmILbfQLu5HX5ujgknP4qamVsI3JwqtMsUnphlGs1wLumDydi7ZTYbKnbf3oE3tQvxJOzglJMzg
	5GJZTl22P+HbkdVGOC1R0P3UAN7oifw52hQUSzU4o9fhPLIP6qgjwLS6QIKN3nFyvUvozIu3uMqfQ
	CQypMMXGqC+d68FNi52VymMRJPaM/I36RLPQZvuUxklDSx/sX9JkLN+i1a498ldfbZceI7sAodQ9b
	pWfLtLcRT5YpPV2AF72ACvJWz3csqrObSIT8nWeV25JgfxH3zAzoDMqom1qsmbhNAW0di/PBr+1an
	0TcZiSYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t67A8-00000000CX1-1qu1;
	Wed, 30 Oct 2024 11:46:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t66uL-000000008ox-3oQ8
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 11:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-0001gb-IS; Wed, 30 Oct 2024 12:30:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-001BhB-0q;
	Wed, 30 Oct 2024 12:30:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-00333E-0c;
	Wed, 30 Oct 2024 12:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 12:30:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-handoff-data-v1-3-4403e0c62c2a@pengutronix.de>
References: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
In-Reply-To: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730287836; l=583;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dEavPPgFuFLfJAToLapApBhMuLs7MlLSSX2LJIMJgrA=;
 b=A+WtGXS+2AIhWj74dHPO9/lAWPi99aFQmufOVC3euL+cjlN2wxWgivLRby5zi4ENtYahwtkmy
 9I8kSz83uQgChfJaNk53uR4O3W1kO9mGE99ClWdy3H/sUKifAI1IpU5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_043037_990777_B8F66A1A 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] handoff-data: set flags of moved handoff data entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When moving handoff data around we have to initialize the flags field
of the moved entry.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/handoff-data.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index 17b0512132..a0a04cad0c 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -115,6 +115,7 @@ void handoff_data_move(void *dest)
 
 		newde->size = hde->size;
 		newde->cookie = hde->cookie;
+		newde->flags = hde->flags;
 		list_add_tail(&newde->list, &hdnew->entries);
 	}
 

-- 
2.39.5



