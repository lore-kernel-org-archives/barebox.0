Delivery-date: Tue, 14 Nov 2023 14:31:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW5-00BJul-0O
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW5-00070g-5W
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BgUvcR8E6nDQwWYVPO8yu6/zbA3B83IbHUuPqYP5wWs=; b=Bgy5X8N13ROXa4/lGYwBGtzDe4
	6wMBnCiff4/kFahAMI59QJO/B1FHlQSh/DGaTc8G5EkcbqLoEtlWSRUZmMZKjk2EeZ+V2f3B6CJOM
	iy7WZSHGFujuJQWWPIzHEOZagIpJE18Vlb4KpvxIx/8yCkqFMp9oJZTd7SVIqBduxYVoCQLzBx2Ut
	eL5A0ug7mtv23oPl+AKQXVUFtGKr1wB48XB6X+Mb2JIMbj9t+5jdIOeBld78XUdICX5y4sWGOr2Id
	sQ4D4JWzAOtTcE1tuLyuJo6hPptvbkgGcpJS3ZLYQzTlOFqek6WmtY4nzKa5gjbW7aAo630YmyEQk
	g67Ywg5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUi-00G2kZ-2D;
	Tue, 14 Nov 2023 13:30:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2ht-1Z
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:17 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-4v
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:01 +0100
Message-Id: <20231114133007.3662931-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_531671_4697DDC9 
X-CRM114-Status: GOOD (  11.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/8] mci: core: check switch error for switch command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>

check whether SWITCH_ERROR is set, if set the device did not switch to
the expected mode as requested by the SWITCH command.

Signed-off-by: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
[m.felsch@pengutronix.de: align commit message and minor cleanups]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/mci-core.c | 15 ++++++++++++++-
 include/mci.h          |  1 +
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bc049c80298b..1276920e1604 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -494,7 +494,9 @@ int mci_send_ext_csd(struct mci *mci, char *ext_csd)
  */
 int mci_switch(struct mci *mci, unsigned index, unsigned value)
 {
+	unsigned int status;
 	struct mci_cmd cmd;
+	int ret;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SWITCH,
 		(MMC_SWITCH_MODE_WRITE_BYTE << 24) |
@@ -502,7 +504,18 @@ int mci_switch(struct mci *mci, unsigned index, unsigned value)
 		(value << 8),
 		 MMC_RSP_R1b);
 
-	return mci_send_cmd(mci, &cmd, NULL);
+	ret = mci_send_cmd(mci, &cmd, NULL);
+	if (ret)
+		return ret;
+
+	ret = mci_send_status(mci, &status);
+	if (ret)
+		return ret;
+
+	if (status & R1_SWITCH_ERROR)
+		return -EIO;
+
+	return 0;
 }
 
 static blkcnt_t mci_calc_blk_cnt(blkcnt_t cap, unsigned shift)
diff --git a/include/mci.h b/include/mci.h
index 616c7c3cae5c..f38384613728 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -319,6 +319,7 @@
 #define R1_STATUS(x)			(x & 0xFFF9A000)
 #define R1_CURRENT_STATE(x)		((x & 0x00001E00) >> 9)	/* sx, b (4 bits) */
 #define R1_READY_FOR_DATA 		(1 << 8)		/* sx, a */
+#define R1_SWITCH_ERROR			(1 << 7)
 #define R1_APP_CMD			(1 << 5)
 
 #define R1_STATUS_MASK			(~0x0206BF7F)
-- 
2.39.2



