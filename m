Delivery-date: Wed, 24 Jul 2024 11:47:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYax-002Qlg-1x
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 11:47:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYax-0005lX-00
	for lore@pengutronix.de; Wed, 24 Jul 2024 11:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AD6Niu4my+MGQyjxjcaZSJC37ATsH0QQ4gEyQfodHz8=; b=h+1bS1iKA61tNY2hd9Mn+7kt7v
	BueG9jaIJ+s+aEjS7eA7RMEsNZYAnVEOL4cBgHzdqzOAg+6QxxRBSgeJ7zzfumhHeVUrkHzqFoIgr
	bRLMlMifucGd6MFU6OJm7wBmdUCeSSezr+FZWmm+DaPSv/RdqSb2Gy6vECXIE57xg+urU16VjeboQ
	nnofIUmoLDDQCLHrbYLxmTMJblINsLNssP9NwBZupuKoem9OSvOQFWOIAx2SMy0iwixaCmof/na/8
	d0dZ9WJeUsHT21rFOg6QNs0InGWccgH3PlrVBaiEOfGsUCbsKoY9AmBCVBX7pTbmWhiZzmWDff3QE
	ReUYi/ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYaS-0000000EymZ-0XxO;
	Wed, 24 Jul 2024 09:47:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYaP-0000000Eym5-2I9X
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 09:47:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYaN-0005hF-U0; Wed, 24 Jul 2024 11:47:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYaN-001pMx-HE; Wed, 24 Jul 2024 11:47:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYaN-003gDW-1O;
	Wed, 24 Jul 2024 11:47:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 11:47:02 +0200
Message-Id: <20240724094702.876140-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_024705_604315_3F92122B 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] rsa: fix deleting RSA keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RSA keys are appended onto rsa_keys with rsa_key_add, so it makes sense
that rsa_key_free would remove them from the key ring's linked list.

It's possible to have "standalone" RSA keys outside the key ring, but
those would be global variables which can't be freed anyway.

There are no current users of this function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/rsa.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index b798badce0d0..a379b77c9acb 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -439,6 +439,8 @@ struct rsa_public_key *rsa_of_read_key(struct device_node *node)
 
 void rsa_key_free(struct rsa_public_key *key)
 {
+	list_del(&key->list);
+
 	free(key->modulus);
 	free(key->rr);
 	free(key);
-- 
2.39.2



