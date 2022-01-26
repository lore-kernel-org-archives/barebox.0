Delivery-date: Wed, 26 Jan 2022 10:24:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCeXX-00Dgpe-0t
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 10:24:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCeXV-0004H0-9v
	for lore@pengutronix.de; Wed, 26 Jan 2022 10:24:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u2OfRCoz49AuTDdcch0lvBaFo/3ffH6zJgI9E59hxr8=; b=bKN0ETQ44K0wHX
	n50Z9i/EsEuUSMhuC04pS2gidz2UFRIW4Xe2ySxAwx6PZ1f/pI5rPIrg/Vo6kWlvi6fY4LT6VbtgQ
	2NSRoE4zj4kmTwyTC/f0eyNF3p43fyISV72GH/XOvK1cgcIFZBPHJjBPL5XNQZS+/kKHxhQUj2iQD
	Y6dHnJqZExi80pECCD70A7C/u35WYNO2be/4Yqlm96TjAdXrzMq5soZuVEM/gAIFN5Rk2WuRB+Rs+
	fBp4IrcdzKVytFvOVg+oBU4HBkNqsgGhfC1o/LYpIssE7lm0Xa8JlcsogX96WTHK4pcuEeEYM2Y3g
	i2KZV3upOqVcmPz+tcjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCeW6-00AwHj-00; Wed, 26 Jan 2022 09:23:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCeTP-00AvR5-MY
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 09:20:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCeTO-0003Zu-9k; Wed, 26 Jan 2022 10:20:14 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCeTN-00GpLV-QG; Wed, 26 Jan 2022 10:20:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Jan 2022 10:20:07 +0100
Message-Id: <20220126092007.4010252-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_012015_772020_7B22AC0F 
X-CRM114-Status: GOOD (  11.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mmc: sdhci: Fix setting wrong buswidth
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

a0e22fc7bc accidently replaced SDHCI_DATA_WIDTH_4BIT with SDHCI_CTRL_8BITBUS.
Replace with SDHCI_CTRL_4BITBUS.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Fixes: a0e22fc7bc ("mci: sdhci: Use Linux defines for SDHCI_HOST_CONTROL register")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel-sdhci-common.c | 4 ++--
 drivers/mci/dove-sdhci.c         | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index eff2a993db..129480aa55 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -302,11 +302,11 @@ static int at91_sdhci_set_bus_width(struct at91_sdhci *host, unsigned bus_width)
 		break;
 	case MMC_BUS_WIDTH_4:
 		reg &= ~SDHCI_CTRL_8BITBUS;
-		reg |= SDHCI_CTRL_8BITBUS;
+		reg |= SDHCI_CTRL_4BITBUS;
 		break;
 	default:
 		reg &= ~SDHCI_CTRL_8BITBUS;
-		reg &= ~SDHCI_CTRL_8BITBUS;
+		reg &= ~SDHCI_CTRL_4BITBUS;
 	}
 
 	sdhci_write8(sdhci, SDHCI_HOST_CONTROL, reg);
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index e6ac769bde..7581511285 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -181,13 +181,13 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	/* set bus width */
 	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
-		~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
+		~(SDHCI_CTRL_4BITBUS | SDHCI_CTRL_8BITBUS);
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_8:
 		val |= SDHCI_CTRL_8BITBUS;
 		break;
 	case MMC_BUS_WIDTH_4:
-		val |= SDHCI_CTRL_8BITBUS;
+		val |= SDHCI_CTRL_4BITBUS;
 		break;
 	}
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

