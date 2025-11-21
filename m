Delivery-date: Fri, 21 Nov 2025 16:18:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vMSty-003OUq-1p
	for lore@lore.pengutronix.de;
	Fri, 21 Nov 2025 16:18:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vMSty-0001hO-1k
	for lore@pengutronix.de; Fri, 21 Nov 2025 16:18:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1lFXclts7LoM+pUE56ZqFdPXwe0J1qYvFRcKABkXzKA=; b=rI3vrjPSvUL2Q+65IqT/Bhlocl
	yZQUjsHJ8HP8xeg1AYM8XV7ogf9kxz46MOrXUjK8WwUAHgTQhAGHodHH0G2S1iPSVaERDLZTGeIpF
	ZP5wM2x4mZzQ1YqeGdgDpMmF8YZePmF+fvbFtTGnR1q7QH2o6gDJe81VwJyRrKQlFR2aThITS9fO2
	3PraHqnZfb+xGMaFEX5JpR5IOf0MXdE6OUx+wPD4qLHbnN9JfVEMzLPyuYqjnucvIRM2nfDiObvbS
	+jGz3wHmX4O0GCEciWGQOcjrj2JqzU+qjy/hksbeT58296ceiw0prEG3qIc8kp7IsHpmkrbl6ihso
	Pl9b+bmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMStR-00000008bav-0wl7;
	Fri, 21 Nov 2025 15:17:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMStP-00000008baF-27Vd
	for barebox@lists.infradead.org;
	Fri, 21 Nov 2025 15:17:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vMStN-0001bq-W7; Fri, 21 Nov 2025 16:17:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vMStN-001bmQ-2b;
	Fri, 21 Nov 2025 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vMStO-0000000Ebdk-0cTb;
	Fri, 21 Nov 2025 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 21 Nov 2025 16:17:44 +0100
Message-ID: <20251121151744.3481273-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_071747_544767_6542C919 
X-CRM114-Status: GOOD (  12.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] public-keys: fix warning message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

idr_alloc() returns the id allocated or a negative error code. Checking
for an error with if (ret) is wrong, check for < 0 instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/public-keys.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 496970cc72..a2d31f4bc2 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -60,7 +60,7 @@ static int init_public_keys(void)
 
 	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
 		ret = idr_alloc(&public_keys, *iter, 0, INT_MAX, GFP_NOWAIT);
-		if (ret)
+		if (ret < 0)
 			pr_warn("error while adding key\n");
 	}
 
-- 
2.47.3



