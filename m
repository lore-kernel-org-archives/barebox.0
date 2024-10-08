Delivery-date: Wed, 09 Oct 2024 02:16:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syKNB-0021KP-2j
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 02:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syKNB-0007sM-6s
	for lore@pengutronix.de; Wed, 09 Oct 2024 02:16:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5IacstQOE6Nd4rGPz51i1/7GidzPjkhNUlmD5HPLFLc=; b=FG6uUAzQBrzGLdab4oiInkLQqS
	yI/CO1ihpCKyANO7vOQ/S3Mq1bijs9Pse9TYJFtEYDoJ7NFOOJxrV2akfMrONdpZ93I6uKL229lsl
	7on174WTk5xPilLrR9mFnx/OI/nb2sEC964TdZT0+4Njd6zXW5v46XpT3nLUEqUBP68A6FjSGfu9W
	HHr2OhdkqdzZvtiJahD2orsLI7TMRQVchHRVQHHrNFcg1p/Z7ZiVm2O+fYjYpxis2eWZndQeDIq92
	zRiTmG2XtwkkvqQaMnbM2FYApSSyYio0lnadcr+6OOwrZh83YTXlc+9XtJsgrg4FL3XlXm5Wkznr/
	KQdsQpzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syKMk-00000007VDN-02lj;
	Wed, 09 Oct 2024 00:15:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syJNd-00000007OnW-35w7
	for barebox@lists.infradead.org;
	Tue, 08 Oct 2024 23:12:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1syJNZ-0004eE-3l
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 01:12:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1syJNY-000TNU-Np
	for barebox@lists.infradead.org; Wed, 09 Oct 2024 01:12:32 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1syJNY-008pzJ-25
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 01:12:32 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  9 Oct 2024 01:12:28 +0200
Message-Id: <20241008231228.2106435-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_161237_796162_EEB78611 
X-CRM114-Status: UNSURE (   9.39  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] mci: core: add write_reliable device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add mmcX.write_reliable parameter so it can be queried by
scripts and board code.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/mci/mci-core.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 48a3df9ec9..1b7526abfa 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2680,6 +2680,22 @@ static int mci_get_partition_setting_completed(struct mci *mci)
 	return ret;
 }
 
+static int mci_get_write_reliable(struct mci *mci)
+{
+	u8 *ext_csd;
+	int ret;
+
+	ext_csd = mci_get_ext_csd(mci);
+	if (IS_ERR(ext_csd))
+		return PTR_ERR(ext_csd);
+
+	ret = ext_csd[EXT_CSD_WR_REL_SET] & 0x1f;
+
+	dma_free(ext_csd);
+
+	return ret;
+}
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci MCI device instance
@@ -2796,6 +2812,13 @@ static int mci_card_probe(struct mci *mci)
 				"Failed to determine EXT_CSD_PARTITION_SETTING_COMPLETED\n");
 		else
 			dev_add_param_bool_fixed(&mci->dev, "partitioning_completed", ret);
+
+		ret = mci_get_write_reliable(mci);
+		if (ret < 0)
+			dev_dbg(&mci->dev,
+				"Failed to determine EXT_CSD_WR_REL_SET\n");
+		else
+			dev_add_param_bool_fixed(&mci->dev, "write_reliable", ret);
 	}
 
 	mci_parse_cid(mci);
-- 
2.39.5



