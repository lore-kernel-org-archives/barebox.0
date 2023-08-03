Delivery-date: Thu, 03 Aug 2023 12:51:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvT-004wMj-Ug
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvS-0001lX-4r
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BrlKW56EwXGfjgDI8BGH8wkoj4VIx0HLbP10oxWIMR0=; b=1c9D6rSqqSLkmM/Xptj6YE77t6
	s6waZQD6X/RtQggqroa7bhqBQSmw3KPKkiQ0OQWw2A13ktsEHREXOr9+8j8JgklO4FcVqKEJkkmOy
	oSMBJWbPjHrhRWr9kPRfhyri43X1eLXQFNmSeIKvq5c0uwES+dZqpGHYWToQQK9wVcxHKTbI1UGHZ
	dMfZs7y7nVqjOQIavkU2aniIpTbBacYcH5ZfVT6Y8UisKlghpOwc8ubnS+LJp8d5uYEeOawuHlpy0
	V8LuVotih8uFKJGUvUp/qalkLsY8sGWaIZEWkLyFTZ+Mggp8p9aRJhXlMi4bg3Lc5QS5/IRHKufsA
	AUjSvAkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuK-007UeE-0K;
	Thu, 03 Aug 2023 10:50:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuC-007UXB-1E
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-0000ud-7D; Thu, 03 Aug 2023 12:50:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-000ov7-Fj; Thu, 03 Aug 2023 12:50:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzE-C6; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:48 +0200
Message-Id: <20230803105003.4088205-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035008_467521_DC114111 
X-CRM114-Status: GOOD (  10.82  )
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
Subject: [PATCH 07/22] serial: ns16550: Add support for UARTs on K3 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 11bf133275..c3bc79adc2 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -553,6 +553,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 	}, {
 		.compatible = "nvidia,tegra20-uart",
 	},
+#if IS_ENABLED(CONFIG_ARCH_K3)
+	{
+		.compatible = "ti,am654-uart",
+		.data = &omap_clk48m_drvdata,
+	},
+#endif
 #if IS_ENABLED(CONFIG_ARCH_OMAP)
 	{
 		.compatible = "ti,omap2-uart",
-- 
2.39.2



