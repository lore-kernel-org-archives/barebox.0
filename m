Delivery-date: Thu, 28 Aug 2025 19:24:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgMU-005WPJ-2o
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:24:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgMT-0003Mv-Oy
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:24:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OABpzZ+UHfeDoBrDJjG0yKxtwVE+pIOsBNhEYUsCKOw=; b=b1OiDUusqPx3sUsvEj/7cHiQof
	jHbWrZBnZ4HZaFhfYpoXnuFAMTH9RyeOftK7z2L6icU8kLURie5ROrsXH8bLA7D7GSEuCgvXM0Zl8
	QF9VIiwGcM05UtwIrzSxO3dgO2jrQBw5g3bIt7djB663tLTvOZFalC/is5sGehwTqD8fMiFdlCTbp
	BTF7f2EZ3gVuHu5HPwG71k187HvMLe1WjRMA1jqUBLrFEFo5RDCCdoNeunsyTsMYjf3C6rGf4WIj1
	i5BVtgDTkiIpXeLwvPDZYuOP2f6lYEXSu2C6K07HejHN/DwIb3TiWGsUzCf6ju0ufKZtG5UM4VfXq
	fT/OSZ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgLb-00000002PsJ-2qNb;
	Thu, 28 Aug 2025 17:23:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uratx-00000001MmZ-0HDD
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 11:34:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uratv-0005fu-Vd; Thu, 28 Aug 2025 13:34:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uratv-002YN1-2Z;
	Thu, 28 Aug 2025 13:34:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uratv-0000000Erw4-2uoi;
	Thu, 28 Aug 2025 13:34:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 28 Aug 2025 13:34:41 +0200
Message-ID: <20250828113442.3543907-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250828113442.3543907-1-s.hauer@pengutronix.de>
References: <20250828113442.3543907-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_043445_109449_52A749E6 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci: sdhci: am654: Use sdhci_wait_idle()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sdhci_wait_idle() is what Linux does and it works fine in barebox.
sdhci_wait_idle_data() instead also waits for the SDHCI_CMD_INHIBIT_DATA
bit which shouldn't be necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 34a42be2aa..0b79394c52 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -463,7 +463,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	int ret;
 	dma_addr_t dma;
 
-	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
+	ret = sdhci_wait_idle(&host->sdhci, cmd, data);
 	if (ret)
 		return ret;
 
-- 
2.47.2



