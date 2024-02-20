Delivery-date: Tue, 20 Feb 2024 10:32:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMU1-00FqkD-09
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTw-0002oo-UM
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0hVzoQLf1SatGgr47Sx5ZiceMYwqeeIYH5Uw8l/6+Y=; b=4As3DPQCILr+w6T1EhHSQ/fblY
	yhKnEE+T384QxrPKCJ1/VoCNgts7moe2Ez8d46P8iGRn37TpdpiL2XJYut112/NP9vwcKmhbuV71q
	qJvkz93TfI6LhxObfoYK5s4CRvo0NwWmzDOaAt6404qeD1W0lwey2OdlAHLFJ6Hba9BU+ia3Y+24v
	RvGJdMp+TEhG64p4qd/CHh9/j2FyOpfB46C9hpCyjPQDt5frS474jrLUHBQlaUcYHf2uR+DoOsp99
	Kig1VMBMmrSAr2TSZkt5+noYhHkAjcBd7dJgQu8LC7WQu5DBOVT27SkHX4tVUOyCtsGcLaSC2gT7X
	vHK3/3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMTI-0000000E01F-0w3q;
	Tue, 20 Feb 2024 09:31:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT7-0000000Dztq-3z9y
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002F1-N4; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001ohq-5d; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-0G;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:48 +0100
Message-Id: <20240220093100.1539120-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013118_100802_4AC411CB 
X-CRM114-Status: GOOD (  13.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 02/14] mci: atmel_mci: fix zeroing of block length on AT91SAM9263
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't read back ATMCI_MR, but instead set up the value once and keep
writing it on every reset. On the SAM9263, but not on the later SAM9x5,
the ATMCI_MR register also includes a field for the block length. Not
taking that into account means that we zero the block length on every
reset.

While the effect of this zeroing is likely limited, because we set the
block length on every transfer via ATMCI_BLKR, it would be less surprising
and more robust against future change to not intermittently zero the block
length via the MR register.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel_mci_common.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
index 098e90503a3a..7b11e9134e65 100644
--- a/drivers/mci/atmel_mci_common.c
+++ b/drivers/mci/atmel_mci_common.c
@@ -68,7 +68,17 @@ static void atmci_set_clk_rate(struct atmel_mci *host,
 				 clock_min, host->bus_hz / (2 * 256));
 			clkdiv = 255;
 		}
-		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv);
+
+		/*
+		 * Older Atmels without CLKODD have the block length
+		 * in the upper 16 bits of both MCI_MR and MCI_BLKR
+		 *
+		 * To avoid intermittent zeroing of the block length,
+		 * just hardcode 512 here and have atmci_setup_data()
+		 * change it as necessary.
+		 */
+
+		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv) | ATMCI_BLKLEN(512);
 	}
 
 	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%ld clkIos=%d divider=%d\n",
-- 
2.39.2



