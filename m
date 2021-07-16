Delivery-date: Fri, 16 Jul 2021 14:23:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m4Mrz-0003hr-LL
	for lore@lore.pengutronix.de; Fri, 16 Jul 2021 14:23:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m4Mry-0008DO-IZ
	for lore@pengutronix.de; Fri, 16 Jul 2021 14:23:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PrGwy3BRufrK1HE3RBcSsXsLMaxPXsZEzLL+OWNj7kA=; b=k0b2qroh2onCkW
	WsOU3fcKBDkvNFbRAMtGco0cnve1lpfxwRmDFSjshMnvB2fuWCBLyMldZGWP5Ed5CkfdE1qm4+iqg
	dOFJVWIMmUC4a2ld2hJV3Asvd6uAlO+BSElWYSuyXgfJey/tBtZB46UW1oQGPDIFdXLLSCIVETEVL
	8uDH3JUX+oXaj2SrnswYCUGIzbiirA8ohpgRqs5UTeM8Sbx5WhNXwOMob/WViZ6bqGJXJx8P8yt7b
	b/nbjdGYywoaOxJqeDTLaebXibbO8AuSD1GI0XjEMe+l3SZ88dB2f09yRjnH7WxCaa+xxwwO4SQmT
	ftLLB25YR6OJFLNQrHNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4MqH-004MEj-Cg; Fri, 16 Jul 2021 12:21:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4MqC-004MDl-DP
 for barebox@lists.infradead.org; Fri, 16 Jul 2021 12:21:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>) id 1m4Mq8-00083M-UL
 for barebox@lists.infradead.org; Fri, 16 Jul 2021 14:21:12 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
 by bjornoya.blackshift.org (Postfix) with SMTP id 39BF1650A1C
 for <barebox@lists.infradead.org>; Fri, 16 Jul 2021 12:21:12 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 by bjornoya.blackshift.org (Postfix) with ESMTPS id 2604E650A1B;
 Fri, 16 Jul 2021 12:21:12 +0000 (UTC)
Received: from blackshift.org (localhost [::1])
 by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 46f27de9;
 Fri, 16 Jul 2021 12:21:11 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 16 Jul 2021 14:21:10 +0200
Message-Id: <20210716122110.4022409-1-mkl@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_052116_512101_8156D627 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: Roland Hieber <rhi@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] habv4: habv4_get_status(): do not print HAB error event in
 case of known RNG self test failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In commit

| 655e085e3a22 ("crypto: caam - Always do rng selftest")

the kconfig option CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST was
removed, which resulted in the pr_debug() never being executed. Remove
the IS_ENABLED() to restore the original behavior, i.e. to not print
the HAB error Event if it is the known RNG self-test failure.

Fixes: 655e085e3a22 ("crypto: caam - Always do rng selftest")
Reported-by: Roland Hieber <rhi@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv4.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index c2acb81369d8..d58768fa5481 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -553,8 +553,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 			break;
 
 		/* suppress RNG self-test fail events if they can be handled in software */
-		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
-		    is_known_rng_fail_event(data, len)) {
+		if (is_known_rng_fail_event(data, len)) {
 			pr_debug("RNG self-test failure detected, will run software self-test\n");
 		} else {
 			pr_err("-------- HAB Event %d --------\n", i);
-- 
2.30.2



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

