Delivery-date: Wed, 22 May 2024 10:08:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1V-00DPTS-23
	for lore@lore.pengutronix.de;
	Wed, 22 May 2024 10:08:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1U-0004iP-1w
	for lore@pengutronix.de; Wed, 22 May 2024 10:08:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zx7o2xeqY6/QcpdETVM6gyGJf0EZQEPep7lycKPKcvM=; b=Z2hqN79ChY45mGModcT0dFUFSS
	hxMDsCAopBh4Q2juiXyABg5mOxDyLtV5VtJ6vKvkjGfODqXOzygFKJkkTZUQyfJjWYs6QWCNJ5CKQ
	M5nsiYhXcrLj9C46r33rW/zA7/jA4z1l47WpAk7rPZKP3I5I97aOQohnJgeFJkNuYkkfmGIZWat70
	vhhRIolgem28tJOrfQDd5KyWjYBtnCLelYRdMCr6Rfu6XGMHUCZYFiCIi46kfmuHTPFhAw1rIbKfj
	Sp5KvNc3t2/LnNVgVxYCAChZd7aP+bN9Ve1SMDWsyxwZSEidALIHWQgfAbOzPoD4Yj7YZDMHld4r5
	UlYA7PIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h0n-00000002JBz-45dv;
	Wed, 22 May 2024 08:07:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h0l-00000002JB9-37eZ
	for barebox@lists.infradead.org;
	Wed, 22 May 2024 08:07:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0c-0004Ku-BF; Wed, 22 May 2024 10:07:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0a-002Uq0-01; Wed, 22 May 2024 10:07:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0Z-008FGq-2u;
	Wed, 22 May 2024 10:07:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 May 2024 10:07:32 +0200
Message-Id: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_010747_802958_CEF89B40 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] mci: sdhci: use host device, not card, for debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All other messages printed in sdhci.c use the host's device to prefix
the message, except this one debug message here that uses the card's
instead. Unify this by using the host device everywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index ba1e07e966ae..da6c2ddb5879 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -170,7 +170,7 @@ static int __sdhci_execute_tuning(struct sdhci *host, u32 opcode)
 
 	}
 
-	dev_dbg(&host->mci->mci->dev, "Tuning timeout, falling back to fixed sampling clock\n");
+	dev_dbg(host->mci->hw_dev, "Tuning timeout, falling back to fixed sampling clock\n");
 	sdhci_reset_tuning(host);
 	return -EAGAIN;
 }
-- 
2.39.2



