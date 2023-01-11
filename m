Delivery-date: Wed, 11 Jan 2023 18:37:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf2J-0091Gx-Lp
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:37:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf2H-0004Kg-OR
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:37:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3gvn74hjSHG/7MuN/Ua1bALlaiSkvfLF4t0rU8z3084=; b=Gn/mYRXGSEOybetMqhk6fqpv+8
	C4ooIWQVVqEomhN8sprsN+sZGX5bIK7c7ikQatFlWDrr8yWxHAtmwz7hvkR5vh+UU7PDsLsdfTdjz
	5BYr7SwqF1D+D2z6QRG/Cs32Ho4H93t/2HPO/K+J7cQit3JJUxzN7wf3+UkxmqFUJj3kwUgEBm6hZ
	MJBN86N9DKK4BDtBUVClfCMROSdPa8bMVplq4h+6oL+o4SHzVPbpAE7RQPeCjy9UvTfrrbBGX0Nav
	/sftYV01BiiLeA+ckzBFaaH7Qo2Cjh5P59FDJgy/BABMcubG5OnvzxJc4oS0xvj0m4dHXCQrBeOog
	oLEvFxOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf12-00CRih-Dr; Wed, 11 Jan 2023 17:35:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf0x-00CRhc-H8
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:35:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf0w-00049A-0p; Wed, 11 Jan 2023 18:35:50 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf0v-005M5D-Do; Wed, 11 Jan 2023 18:35:49 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf0u-006y0g-Qj; Wed, 11 Jan 2023 18:35:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:35:48 +0100
Message-Id: <20230111173548.1660598-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_093551_582703_57572280 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] mtd: consult CONFIG_OFDEVICE in mtd_get_of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Get barebox on non-DT platforms with NAND a tiny bit smaller by
directly returning NULL if CONFIG_OFDEVICE is not enabled, thereby
allowing more code to be discarded at compile-time in absence of
link-time optimization.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - don't dereference parent device without NULL-check (Sascha)
---
 include/linux/mtd/mtd.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 6b539a9eceb5..54cb2ec64ce2 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -293,6 +293,8 @@ static inline void mtd_set_of_node(struct mtd_info *mtd,
 
 static inline struct device_node *mtd_get_of_node(struct mtd_info *mtd)
 {
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return NULL;
 	if (mtd->dev.of_node)
 		return mtd->dev.of_node;
 	if (mtd->dev.parent)
-- 
2.30.2



