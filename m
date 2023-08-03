Delivery-date: Thu, 03 Aug 2023 12:51:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvZ-004wOf-Ph
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvX-0001of-Kc
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zj2i7gq8b5uqbwwQrqsFEPVgQdSDFEh7MpbCFggwxHY=; b=UM1K4JuBLWSQ4fg+XBn0n2S+sE
	UlQYwDZfuFhdC+Ss797UAu8qY1V/UOy3Ui8MrFMSdWI0o4actE0zyyOpbKJE6mSNXUvqIY80qzYPF
	6ntnVw9TR1lXQ2xfSKw/vMC67EAkvtOP6HMuvRLbScbzapBDoxxih5lg2LDvyYpAkc/o9cWCWXoY7
	7NCFm8hZCWOsTrzTt3sEfSAwYVUxTfOPjSNzsmc7OLVrrRAuE8R4nJlOZgfXwFvnkHQ48oCzEX3rC
	1ck+z/OavrSB2kAtf6gcqieNy+EhejRGWI7aOxCnu0fLCBG6JDxQRF48K+66CWxsom2O/+HLe9iNK
	rdDg3/dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuR-007UiF-0q;
	Thu, 03 Aug 2023 10:50:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuE-007UZZ-0X
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000xm-Vr; Thu, 03 Aug 2023 12:50:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-000ow2-Bn; Thu, 03 Aug 2023 12:50:08 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzb-N1; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:54 +0200
Message-Id: <20230803105003.4088205-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 13/22] mci: make debugging output more useful
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of only printing which bus widths we try, also print the
result.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bc049c8029..60df99e605 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1193,9 +1193,6 @@ static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width,
 	u32 ext_csd_bits;
 	int err;
 
-	dev_dbg(&mci->dev, "attempting buswidth %u%s\n", 1 << bus_width,
-		mci_timing_is_ddr(timing) ? " (DDR)" : "");
-
 	ext_csd_bits = mci_bus_width_ext_csd_bits(bus_width);
 
 	if (mci_timing_is_ddr(timing))
@@ -1203,16 +1200,20 @@ static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width,
 
 	err = mci_switch(mci, EXT_CSD_BUS_WIDTH, ext_csd_bits);
 	if (err < 0)
-		return err;
+		goto out;
 
 	mci->host->timing = timing;
 	mci_set_bus_width(mci, bus_width);
 
 	err = mmc_compare_ext_csds(mci, bus_width);
 	if (err < 0)
-		return err;
+		goto out;
+
+out:
+	dev_dbg(&mci->dev, "Tried buswidth %u%s: %s\n", 1 << bus_width,
+		mci_timing_is_ddr(timing) ? " (DDR)" : "", err ? "failed" : "OK");
 
-	return bus_width;
+	return err ?: bus_width;
 }
 
 static int mci_mmc_select_bus_width(struct mci *mci)
-- 
2.39.2



