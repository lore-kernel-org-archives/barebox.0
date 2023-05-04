Delivery-date: Thu, 04 May 2023 10:19:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBK-004LL8-G8
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBH-0001vg-Rr
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L1mtlVi+azXaW39Vumhlbpn/hxk33rZALLkntmVCJ/c=; b=qMrRoXExRFP8MKrO9ORykbFubh
	yTI4TYUWvJXHi8jJtXJ+/b0ZjHNdvhyWq+nAFeNaH9EdQ9hqo3Yz2uWXe3gq1hSdS4K8GKmf7W1s3
	PavbDj4IQrmiTtYTiZgB7f3p/DKkSYvwO56gVKFRtIKZgBeWAXC5cjzlQsghzilzdrHvxzPOSStzg
	LMkOmH0VBoWnQeUgEvlKXYw6X5/pvjwfChEkahgFSfU3KA9SDSYkS1RzVzhHjgtprcQuc4haKKjJU
	dn8aVTjISj6MBkk+em8LZAMWNHgSyxFhfTc3huYHqsGx8ke5liQrBKo+olC/1iuifAV2+mH2rwkHq
	n304Gjug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA6-0074Zu-1p;
	Thu, 04 May 2023 08:18:02 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9x-0074Ti-2H
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9v-0001Ix-Ao; Thu, 04 May 2023 10:17:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0011Fb-L9; Thu, 04 May 2023 10:17:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hbi-8R; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:40 +0200
Message-Id: <20230504081745.305841-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011753_738438_B37BE977 
X-CRM114-Status: UNSURE (   9.51  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/18] phy: realtek: Add RTL8125 internal phy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/realtek.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 6e064c8f49..c23947b7cb 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -154,6 +154,12 @@ static struct phy_driver realtek_drvs[] = {
 		.features	= PHY_BASIC_FEATURES,
 		.read_page	= rtl821x_read_page,
 		.write_page	= rtl821x_write_page,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc840),
+		.drv.name	= "RTL8226B_RTL8221B 2.5Gbps PHY",
+		.features	= PHY_GBIT_FEATURES,
+		.read_page	= rtl821x_read_page,
+		.write_page	= rtl821x_write_page,
 	}, {
 		PHY_ID_MATCH_EXACT(0x001cc910),
 		.drv.name	= "RTL8211 Gigabit Ethernet",
-- 
2.39.2



