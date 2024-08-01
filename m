Delivery-date: Thu, 01 Aug 2024 07:58:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpZ-00528n-01
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpX-0008IE-D9
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=64N1KGy15NhneRTDNWK2kxzoAoBIjID/vwiHQ8ZZddU=; b=3iOZnWyYgSTh6RR2sQU7GBchbo
	Z3PoA6iVnM+E08gOLDljfTn3Zd0gwyvlubn5ygR5a2QeljVtWErDGUmnuKfLMvrPAq5WKXy2NbPv4
	N3RbCkDCvQYaCQe+Ed7SojgDQ0jKc71cs5NYdLgIuPUqylaPDdxKIYZV/7m0mgg5fIBasxx814PnT
	vH+YiZtLtH1Vuv1T76/gS0RDPQd9gI5rbuFVpoeYdVvoPg3NmuX6fY7PqF6KB+/j62AgFXCCvBTGO
	V/EnxscO5dsOJl3hnE8oaeniijSNsLYa4VN3v07IhieMn+GKQA7k9kjFjDx3HliYxRN6ZQhMrdawN
	5g6hJhWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOox-00000003pX4-2ceb;
	Thu, 01 Aug 2024 05:57:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoo-00000003pS6-1CTR
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-0007v1-BZ; Thu, 01 Aug 2024 07:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hW1-Ty; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-2d;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:26 +0200
Message-Id: <20240801055737.3190132-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225742_471790_1B90611D 
X-CRM114-Status: GOOD (  11.01  )
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
Subject: [PATCH v2 08/19] rsatoc: remove unnecessary error check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In rsa_get_exponent() 'e' will always be a non NULL argument, no need to
check for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 22f0318298..afef6212d0 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -163,15 +163,10 @@ static int engine_get_pub_key(const char *key_id, EVP_PKEY **key)
 static int rsa_get_exponent(RSA *key, uint64_t *e)
 {
 	int ret;
-	BIGNUM *bn_te;
+	BIGNUM *bn_te = NULL;
 	const BIGNUM *key_e;
 	uint64_t te;
 
-	bn_te = NULL;
-
-	if (!e)
-		goto cleanup;
-
 	RSA_get0_key(key, NULL, &key_e, NULL);
 	if (BN_num_bits(key_e) > 64) {
 		ret = -EINVAL;
-- 
2.39.2



