Delivery-date: Mon, 14 Aug 2023 07:34:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDQ-003Msv-Vc
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 07:34:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDP-0006nH-4v
	for lore@pengutronix.de; Mon, 14 Aug 2023 07:34:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NC7y/wa6YWV6YrYzyi0A7Il1xHjLt3kIsc5dtwlmcxQ=; b=twW3IdpRALulWCAoF0JIcmpx+h
	mN8N7IedwSHKuvp56WESnI3a+ApJ1HoYPp1AGqmE6F7PI7ca0qiCXIJVPzdEUgXlpopOB1thu393J
	HU7+0gc8ZgB54QIvM8TVBjQpYIBD4UkrKPexhVSLuDSbLhVf+xbAnsQfH0tBVOh10vqErsJA83TNA
	9RFK+BDPsQR46EsFGFOEUBULnS8LCyLz1mhV/9NOgmOgNX66Ndxl5gJsovrJrLFe8KFHoIm8QnFFF
	k/X9gmU13e372nirke1SNqEC+FNiQ67qVCNrEr0U08+WjWUVH/ULfsS/jy0nSaSJ41qkTcFCGeeM6
	bE9pE9VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQC2-00GCQ5-06;
	Mon, 14 Aug 2023 05:32:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQBx-00GCNt-2R
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 05:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-0006XS-P6; Mon, 14 Aug 2023 07:32:31 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-000VUD-2n; Mon, 14 Aug 2023 07:32:31 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBq-009hEF-2C;
	Mon, 14 Aug 2023 07:32:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 14 Aug 2023 07:32:26 +0200
Message-Id: <20230814053229.2311097-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230814053229.2311097-1-o.rempel@pengutronix.de>
References: <20230814053229.2311097-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_223237_818393_38FC82A2 
X-CRM114-Status: GOOD (  16.07  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] net: designware: eqos: fix non-working promisc mode when set before interface start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Promisc mode is not working if set before starting interface. This seen
more with DSA switch driver when having many interfaces and different
MACs.

Make promisc mode work by saving configs before soft reset, then use
them after reset.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 12 +++++++++++-
 drivers/net/designware_eqos.h |  3 +++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 845f9f51ef..6caf3a436f 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -351,6 +351,9 @@ int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
 
 	memcpy(eqos->macaddr, mac, ETH_ALEN);
 
+	if (!eqos->is_started)
+		return 0;
+
 	/* mac_hi is only partially overwritten by the following code. Part of
 	 * this variable is DCS (DMA Channel Select). If this variable is not
 	 * zeroed, we may get some random DMA RX channel.
@@ -371,6 +374,11 @@ static int eqos_set_promisc(struct eth_device *edev, bool enable)
 	struct eqos *eqos = edev->priv;
 	u32 mask;
 
+	eqos->promisc_enabled = enable;
+
+	if (!eqos->is_started)
+		return 0;
+
 	mask = EQOS_MAC_PACKET_FILTER_PR | EQOS_MAC_PACKET_FILTER_PCF;
 
 	if (enable)
@@ -429,8 +437,10 @@ static int eqos_start(struct eth_device *edev)
 		return ret;
 	}
 
-	/* Reset above clears MAC address */
+	/* Reset above clears any previously made configuration */
+	eqos->is_started = true;
 	eqos_set_ethaddr(edev, eqos->macaddr);
+	eqos_set_promisc(edev, eqos->promisc_enabled);
 
 	/* Required for accurate time keeping with EEE counters */
 	rate = eqos->ops->get_csr_clk_rate(eqos);
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index 31d0dc8632..58ba912cd0 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -60,6 +60,9 @@ struct eqos {
 
 	const struct eqos_ops *ops;
 	void *priv;
+
+	bool is_started;
+	bool promisc_enabled;
 };
 
 struct device;
-- 
2.39.2



