Delivery-date: Sun, 19 Mar 2023 16:50:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIj-006euY-Ey
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 16:50:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIj-0002xd-EO
	for lore@pengutronix.de; Sun, 19 Mar 2023 16:50:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J7n2LI0RI6nMSnOqqMx4B7Kqmux3go6ZDZeISwRzkKs=; b=rFS+cXkUnMrSOur119By5IlAVp
	O5KrmJU6fUIe1E61wKfpQn2K08D04ipgodnCVF5JtWqTou2189AcxJOWLcQ4l7h5Tb9vAxfLBaQC0
	tY4BBcF9KoEojU3ZoqOZFIxRn3FhuuyLaetpnh15e9r2xMz75ijcbZoXLsSutEFxrM6nTt5yBAcbR
	xYMS2kxsyuLh6jdYtPc1vicrbN2YDQvj3OAzusqWVA3OYxZfJlTFCVaf90UK9gJ4LoeqPv5XI5L9z
	FeLFrzknDXJ63+E4/ARYrDBJ8MAniBEjDqDeyDll+8lOQXEprQISsv1rtP7dNB1jj7eK5sWjUOwZk
	jok9i9jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHl-006xiK-0G;
	Sun, 19 Mar 2023 15:49:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHh-006xh8-34
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 15:49:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 531C461068
	for <barebox@lists.infradead.org>; Sun, 19 Mar 2023 15:49:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46AAEC433D2;
	Sun, 19 Mar 2023 15:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679240964;
	bh=YrwbEUN7oGCN0NelMVRkMDnQN6z8gX9CTydPwfP60RM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IDKRdUGtPcYO9ddd+sDy/4IIsbExr31WpeENbW3oAFxJ+R/R5f3hBmnisRDmOScv0
	 WLjwMwnZ8cWk5L65Y4084rxKNGIMrGsZlLqMJO819mKUIauGHv9LPmwt3s3GDCDC5R
	 MXh4IGRelAfFsfpMYkQUX176smv6ZvV5xYVPs51v8VOCyVTS3bnwHT38EP4rXj63E6
	 Kh8YaOPH4tNMfbQDoTPROdZcXESRZKqMFdzQ+O/njDP9zBPy83oDYzaqu7J8J35Hbg
	 74dLUIqHjmy5lgcE/HkLjIxU0xyIIAXTpLuebGZnbH4quZKk1SDvUjO5rqL4sYDkJr
	 PQs0hRIhKctow==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Sun, 19 Mar 2023 16:49:08 +0100
Message-Id: <20230319154909.24047-3-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230319154909.24047-1-wsa@kernel.org>
References: <20230319154909.24047-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_084926_027422_F31A269E 
X-CRM114-Status: GOOD (  13.12  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mtd: nand: atmel: legacy: use proper ecc_shift
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The logic of the ternary operator is broken because '1 << x' is always
true even if 'x' is 0. Convert the logic to really use either the pdata
value or a sane default. Fixes "WARNING: Total number of ECC bytes
exceeded oobsize" on my USB-A9G20.

Fixes: babffbb193 ("mtd: atmel_nand: Add per board ECC setup")
Signed-off-by: Wolfram Sang <wsa@kernel.org>
---

The other option is to revert babffbb193. I don't see any user. The code
was obviously not enough tested as well.

 drivers/mtd/nand/atmel/legacy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/atmel/legacy.c
index ea1fd64ad8..184cf465e3 100644
--- a/drivers/mtd/nand/atmel/legacy.c
+++ b/drivers/mtd/nand/atmel/legacy.c
@@ -1240,7 +1240,7 @@ static int __init atmel_nand_probe(struct device *dev)
 
 	nand_chip->ecc.mode = pdata->ecc_mode;
 	nand_chip->ecc.strength = pdata->ecc_strength ? : 1;
-	nand_chip->ecc.size = 1 << pdata->ecc_size_shift ? : 512;
+	nand_chip->ecc.size = 1 << (pdata->ecc_size_shift ? : 9);
 
 	if (pdata->ecc_mode == NAND_ECC_HW) {
 		nand_chip->ecc.mode = NAND_ECC_HW;
-- 
2.35.1



