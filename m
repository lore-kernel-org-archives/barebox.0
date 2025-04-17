Delivery-date: Thu, 17 Apr 2025 08:24:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5IfW-001lWE-0j
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 08:24:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5IfV-0003gk-LL
	for lore@pengutronix.de; Thu, 17 Apr 2025 08:24:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UvamBbPDOvUGi2ei2mUMmQxx2BYctel9KbDg/hy5CY=; b=y/mAD1yQvWA+rtjGDsRwvPIIhU
	rL7w7HWq/YLzJUXULZMEJB53udLCcp+EUOMJqbg1UWsPlioyZ7VEDBlvk+8Ad4rDeHxZfgmDtQEcS
	z0eFa431HP9nUZC3hNTuTpBtOoQmncpMF0YBYxEz9o9pQ/hgUwb1u16TD+npxzXrGpZnKYARr8Xcy
	hzRUoIbQESmad3ko+wYX9R5hlXWQrZABR3/JoZoFwI9uvnZFwnEImuYbuo1eXiKMxsHgWjU8CE1A3
	v+/0lF7sKhI3psgFMgj9X18cg+Z8m2h6MxJsZzIFJLGxafqDAj/ICUbOOaG5qEF1WVPlHcDo3921g
	Z5d55L/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Ieu-0000000BtTl-1rAi;
	Thu, 17 Apr 2025 06:23:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5IdG-0000000BtJF-3uOS
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 06:21:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5IdE-0002w3-Ty; Thu, 17 Apr 2025 08:21:52 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5IdE-000hng-2O;
	Thu, 17 Apr 2025 08:21:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5IdE-00ENIq-26;
	Thu, 17 Apr 2025 08:21:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 08:21:52 +0200
Message-Id: <20250417062152.3425911-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250417062152.3425911-1-a.fatoum@pengutronix.de>
References: <20250417062152.3425911-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_232154_966570_4A90FF5D 
X-CRM114-Status: GOOD (  10.79  )
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
Subject: [PATCH master 2/2] crypto: imx-scc: blobgen: use HWRNG for random numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The kernel's get_random_bytes provides random numbers suitable for crypto
purposes, while in barebox, we need to use get_crypto_bytes for that.

This footgun needs to be fixed, but until we do, let's make sure crypto
code doesn't use a badly seeded PRNG.

Fixes: b62a31a9069b ("crypto: add new imx-scc driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/imx-scc/scc-blobgen.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/imx-scc/scc-blobgen.c b/drivers/crypto/imx-scc/scc-blobgen.c
index 530d0840f810..a444386dab5a 100644
--- a/drivers/crypto/imx-scc/scc-blobgen.c
+++ b/drivers/crypto/imx-scc/scc-blobgen.c
@@ -67,7 +67,7 @@ static int imx_scc_blob_encrypt(struct blobgen *bg, const char *modifier,
 	req.dst = blob;
 	req.nbytes = bufsiz;
 
-	get_random_bytes(req.info, MAX_IVLEN);
+	get_crypto_bytes(req.info, MAX_IVLEN);
 
 	ret = imx_scc_cbc_des_encrypt(&req);
 	if (ret)
-- 
2.39.5



