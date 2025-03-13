Delivery-date: Thu, 13 Mar 2025 10:56:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfJC-00DW8T-1n
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 10:56:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfJB-0003Lr-E3
	for lore@pengutronix.de; Thu, 13 Mar 2025 10:56:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yJ9/2JwGeihae34FG/YhvsfLe+EYcVMLQ86jdpDQTJQ=; b=w75O5fX0rqkuaOyvsaNDo+7/c8
	KcSG80h3Ro58DDTxCnjlOuktqXG08C4gv5M6iqPKIci3i/a9tVxxK+CkM9YXQk0sskMzd+b0OkQVO
	14t9HVHkD05oC19XZplMu8xvj3Xop2zvnSxmJQGeP9x1tklbvVhEy8sJWwjJM46MQQhADSudg9XOY
	u/P9T0HQbyZEHLNeuMei6tzq+hWP+ZbISJEwCHauhOR05GHhpaiojjqGH/5ERZuABdgFtuK+a0NfK
	Q4zO51u+ariBVH0+0QIgC/IBRIRhsTJKp06gMUT8q00EhYtNMQMwNFdKiDRr9HiDXBHaRxovUn2I0
	2ljdkMLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfIT-0000000Amje-0GTV;
	Thu, 13 Mar 2025 09:56:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfH6-0000000AmfV-3bWf
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 09:54:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsfH4-000328-Ty; Thu, 13 Mar 2025 10:54:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsfH4-005Vsj-2I;
	Thu, 13 Mar 2025 10:54:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsfH4-00BoSA-1x;
	Thu, 13 Mar 2025 10:54:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 13 Mar 2025 10:54:41 +0100
Message-Id: <20250313095442.2812937-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_025448_965660_881EE6F0 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: am65-cpsw-nuss: depends on DMA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The am65-cpsw-nuss needs DMA functions provided by CONFIG_DMADEVICES, so
we must depend on this option to avoid linker errors. As the am65-cpsw-nuss
is useless without the DMA hardware driver depend on CONFIG_TI_K3_UDMA
instead which implies CONFIG_DMADEVICES.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 5c436a05cc..0099845096 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -68,6 +68,7 @@ config DRIVER_NET_DAVINCI_EMAC
 config DRIVER_NET_TI_K3_AM65_CPSW_NUSS
 	bool "TI K3 AM654x/J721E CPSW Ethernet driver"
 	depends on ARCH_K3 || COMPILE_TEST
+	depends on TI_K3_UDMA
 	select DRIVER_NET_TI_DAVINCI_MDIO
 	select PHYLIB
 	help
-- 
2.39.5



