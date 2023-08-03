Delivery-date: Thu, 03 Aug 2023 09:01:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRSKS-004gfX-PI
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 09:01:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRSKR-0007uz-2b
	for lore@pengutronix.de; Thu, 03 Aug 2023 09:00:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h9+Eb4QKqXlL4jgYZgutICGvxK+NIDHdsJer6CIY+ks=; b=EMsKo20z/5DjhHMhmbV1C7ziOp
	iqbFksB/bHOvu9ycOTfpEkDove3yIV/wSTjyG5XLMg9jXy7mQpsdhBTfFDyAZjQLqrdootGTeoJtu
	go9k0WoOMNQszCkIWBMq9drYV5js6k1AJHYHrv9SpQH7NqgCkQfR10VivsBZGGCFB7uxyXT1kZog0
	/L4KG5vOP/oI3AqPpbnNTiO5GAXM9bwusfs7p0yHHO1OJ5tpPx6MnxIPz8PDe0+pwvENGHxqAHlnS
	kugzmDR7LGclE4Qs0ezCOCfvj09u4WhFR4JKtZPL7UqxUzqivWfNozgVKgxiED/ALoUr6NKuZK0nL
	FGzd7yLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRSJR-006otG-0j;
	Thu, 03 Aug 2023 06:59:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRSJN-006osB-3C
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 06:59:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSJM-0007dF-Ol; Thu, 03 Aug 2023 08:59:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSJM-000mTr-4J; Thu, 03 Aug 2023 08:59:52 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSJL-00G3ro-I2; Thu, 03 Aug 2023 08:59:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 08:59:50 +0200
Message-Id: <20230803065950.3828070-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_235954_056337_6D37FA24 
X-CRM114-Status: GOOD (  12.67  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: arasan: Fix reg/val argument swap in register write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sdhci_write8() takes the register before the value. Fix the argument
order.

The wrong code path is only taken when the xlnx,fails-without-test-cd
property exists which is not the case for any dts file in the tree, so
this bugfix shouldn't have any practical consequences.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 71e974c384..8965acd442 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -84,7 +84,7 @@ static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
 
 		ctrl = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
 		ctrl |= SDHCI_CTRL_CDTEST_INS | SDHCI_CTRL_CDTEST_INS;
-		sdhci_write8(&host->sdhci, ctrl, SDHCI_HOST_CONTROL);
+		sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, ctrl);
 	}
 
 	return 0;
-- 
2.39.2



