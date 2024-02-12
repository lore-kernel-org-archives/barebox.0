Delivery-date: Mon, 12 Feb 2024 16:46:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZYVz-003YVN-2E
	for lore@lore.pengutronix.de;
	Mon, 12 Feb 2024 16:46:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZYVz-0006kd-3r
	for lore@pengutronix.de; Mon, 12 Feb 2024 16:46:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yv0xhArA+t2OysUz6mUqVzgNn6ROJv5P2ViLdfuHDVo=; b=AdoNvCakTtRWMO0GVqeuwJsQXD
	j/c7biBCctrFlEMv+444XGS0cna9vjBvaj5AaYnvQrciC/rzRSk/brdX7Q1E0B7K/TQ2N9qwkXbOl
	7tgm2o224am0Zcx/YAa6OisqZF15evpzUmhJre8k1G+xNF1BrhfFrHFx1Nmz3aDUBdZDOgKLBin9U
	/FPGou4xA2s4sh0VUBSWnidwrLS2wPiYeLQjTDKPPnytVHfTWPgt9B15KLj6KGDwYanhOHzaALZcm
	arrUpeagcfryBzKGBjtNfKmPezxTYd5uK2WsDT29hTgX0vpGyJ0W5Z+vhkJXTiyXzphWJs6ea1/KV
	KACcv2hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZYVM-0000000612N-2OKk;
	Mon, 12 Feb 2024 15:46:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZYVI-0000000611R-3uRu
	for barebox@lists.infradead.org;
	Mon, 12 Feb 2024 15:45:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZYVF-0006eh-FE; Mon, 12 Feb 2024 16:45:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZYVE-000Jbv-8r; Mon, 12 Feb 2024 16:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZYVE-009TvS-0b;
	Mon, 12 Feb 2024 16:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Joacim Zetterling <joacim.zetterling@westermo.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Feb 2024 16:45:51 +0100
Message-Id: <20240212154551.2259925-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_074556_993003_606DFAB6 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] mci: sdhci: atmel: fix truncation when reading out caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The capability read out was changed a few years ago to use 32-bit
accessors, but the variable that it was stored in remained at 16-bit
leading to truncation of the upper bits and breaking detection of the
SD-Card on my SAMA5D27-SOM1-EK:

  ERROR: barebox-environment chosen:environment-sd.of: probe failed: No such file or directory

Fix this by using the appropriate type. The commit introducing the
regression touched multiple drivers, but the Atmel SDHCI one is the only
one which still used a 16-bit type.

Fixes: 1570f8d8d87e ("mci: sdhci: straighten capabilities register")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel-sdhci-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 171737ab01d4..a69d6b67b551 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -39,7 +39,7 @@ static inline struct at91_sdhci *to_priv(struct sdhci *sdhci)
 void at91_sdhci_host_capability(struct at91_sdhci *host,
 				unsigned *voltages)
 {
-	u16 caps;
+	u32 caps;
 
 	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
-- 
2.39.2



