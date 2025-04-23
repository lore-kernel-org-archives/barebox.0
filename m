Delivery-date: Wed, 23 Apr 2025 11:47:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7WhT-004Umr-2Y
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 11:47:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7WhT-0004Gl-5Y
	for lore@pengutronix.de; Wed, 23 Apr 2025 11:47:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TYiDQCVFiKx1Esh8UTHsaRQi+coHBvUVvT7UJVnM3eM=; b=QdvGgjByhtcUUursNNfUVCwNbY
	2Z4H6Ry/Qe8z8oP2N1T2Xqc0HVnMf9f+Bz3Yli3C+q0AVM2UHfRkN0XC2ZHUF7UtubNJDCXHZ9bDK
	/HY8IhtCMwtQxXK6eF78weEyzUxQgo1K3JAEX6dC5WEhOpbbW5M2/WoLOjO/Tio7le6DOrfvxV8uK
	GjJGRx3qhjqWLayecR7lG6gsdGW5pPUlmFsNVsCAy3oYUux0x1j1LiFI5K2W2Nb5mTMth8NvjTgPp
	IcjWp0Dk1/T62lELPpTva3AU01BqgZudkG9U3QGhAPQW80RB+EGJT14ZlhWzMgupLYCO/WKh/yWC/
	74ePndtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Wgz-0000000A37I-08Ks;
	Wed, 23 Apr 2025 09:46:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7VcO-00000009mXc-2IBL
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 08:38:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7VcL-0006RO-HV; Wed, 23 Apr 2025 10:38:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7VcL-001ghR-19;
	Wed, 23 Apr 2025 10:38:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7VcL-00HML9-0r;
	Wed, 23 Apr 2025 10:38:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Apr 2025 10:38:01 +0200
Message-Id: <20250423083801.4137407-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_013808_590404_5812BCC5 
X-CRM114-Status: UNSURE (   9.18  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! mci: move mci_setup_cmd definition into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci: dwcmshc-sdhci: fix redefinition of mci_setup_cmd

No defconfigs currently enable the driver, so it went unnoticed that it
already defines mci_setup_cmd and that this would clash with defining it
in a header.

The allyesconfig CI test noticed that though, so drop the now duplicate
definition.

We likely will want to enable this driver in the kvx defconfig though
going forward.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/dwcmshc-sdhci.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index a7306fdb44a4..8398889a703c 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -40,14 +40,6 @@ static inline struct dwcmshc_host *priv_from_mci_host(struct mci_host *h)
 	return container_of(h, struct dwcmshc_host, mci);
 }
 
-static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsigned int arg,
-			  unsigned int response)
-{
-	p->cmdidx = cmd;
-	p->cmdarg = arg;
-	p->resp_type = response;
-}
-
 static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *current_cmd)
 {
 	int ret = 0;
-- 
2.39.5



