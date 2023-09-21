Delivery-date: Thu, 21 Sep 2023 12:26:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsk-005lGO-8A
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:26:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGsi-00034K-3I
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:26:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x37m3WvbTUcMiNxYC8lVw8E0AXdX1unJcFrXnlwguoI=; b=WOkBRN6GiOaQ0RuSGS4hsj7/mp
	9W2UEE3sNi33Gb1tztNK7oGImw+j+shmcOjfm8vT1d3XLPQg0UXe96QStFusXC8fa1Y8605HeBd1o
	a7uyqfmcV0P9pQCmaLiFfIvDiwEafsVL9FXlHyurYF+YC1KgNCqM93CbiflmqG+c1nIse2KY+TJFt
	IJlK/BXh4tOVUmBlhoIxawpq8cOX594dLkBox7fTnhfeTZUVFmXCcVUNzfJZnIo+2oMjjJf15S7VU
	8zRovLPXGJ+gqoiiBpbPsqsKsGJaC1cVY6e96kOeXRDEfBcnOW6VAdZqhMFc/HS/mtGfnsyx+q7Yk
	ux4C2KnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrj-005iJA-1X;
	Thu, 21 Sep 2023 10:24:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGrf-005iH2-33
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:24:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGre-0002Xt-R9; Thu, 21 Sep 2023 12:24:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGre-007u2Y-E8; Thu, 21 Sep 2023 12:24:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGre-004eeC-1G;
	Thu, 21 Sep 2023 12:24:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:24:46 +0200
Message-Id: <20230921102446.1109545-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032455_982944_4CBB1C20 
X-CRM114-Status: UNSURE (   7.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] digest: add digest_algo helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Code handling different digest types may want easy access to the digest
algorithm currently in use. Add a simple inline helper for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/digest.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/digest.h b/include/digest.h
index b984d57d778e..2816ddffaed2 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -161,6 +161,11 @@ static inline const char *digest_name(struct digest *d)
 	return d->algo->base.name;
 }
 
+static inline enum hash_algo digest_algo(struct digest *d)
+{
+	return d->algo->base.algo;
+}
+
 static inline void* digest_ctx(struct digest *d)
 {
 	return d->ctx;
-- 
2.39.2



