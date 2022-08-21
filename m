Delivery-date: Sun, 21 Aug 2022 15:31:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPl2f-006K0D-JA
	for lore@lore.pengutronix.de; Sun, 21 Aug 2022 15:31:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPl2d-0005cl-MU
	for lore@pengutronix.de; Sun, 21 Aug 2022 15:31:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pBcFMvyfX49lwC3ir6zRV2TDr90atjNRGbklihZXuvo=; b=VnrJZ37RAwS5jc
	7gWMBmbLaoiGYfKguyftUUZ8NjEaAjnL1YQdzWFgs2mmuu8jpWpq//597P7Phn9JvbUZPtASoK1vG
	q3NlXz4xCPRizOtoH0GyeBqE2WsudcgO9OjAm2FOCRma8jOJ/7K3C5+ySgT30lvj2wttfMo0deoP1
	j0w9fBCntOiecWJ/WkJUAdmWDTMSNtBdq2pLfZNx4D/4pv7SLnjsBGfY1CyvNMob49SBO7EMr5ihr
	dPxhHqGVl9s+coOOxDKxp0SZ73tG+zBFUHPgxeoS6NsldvSbRE97j5FXJDaE45QcGW0ShQKkqP7Ks
	+mRGXGeIQ+bFivw5SRKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPl0p-00Afec-O6; Sun, 21 Aug 2022 13:29:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPl0k-00AfaS-Dc
	for barebox@lists.infradead.org; Sun, 21 Aug 2022 13:29:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oPl0f-0005Hl-0B; Sun, 21 Aug 2022 15:29:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oPl0e-0017Hc-AB; Sun, 21 Aug 2022 15:29:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oPl0d-0026Lm-IB; Sun, 21 Aug 2022 15:28:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Aug 2022 15:28:58 +0200
Message-Id: <20220821132858.501018-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_062906_499069_350C3D88 
X-CRM114-Status: UNSURE (   9.97  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! pbl: export pbl_barebox_verify
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

crypto: digest: always export functions for PBL

We already build the digest functions for PBL, but the configuration may
lack CONFIG_DIGEST, which leads to compile errors due to clashes between
the static inline helpers and the actual definitions. Fix this.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/digest.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/digest.h b/include/digest.h
index e4a521696434..b984d57d778e 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -76,7 +76,7 @@ struct digest {
 /*
  * digest functions
  */
-#ifdef CONFIG_DIGEST
+#if defined(CONFIG_DIGEST) || defined(__PBL__)
 int digest_algo_register(struct digest_algo *d);
 void digest_algo_unregister(struct digest_algo *d);
 void digest_algo_prints(const char *prefix);
-- 
2.30.2



