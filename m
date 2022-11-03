Delivery-date: Thu, 03 Nov 2022 14:15:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqa4V-00Deeu-8Q
	for lore@lore.pengutronix.de; Thu, 03 Nov 2022 14:15:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqa4T-0004MW-9O
	for lore@pengutronix.de; Thu, 03 Nov 2022 14:15:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ed0ywzy0CBUWOICaJaoOXsJm6g0/8Qe70GrBTpEEntw=; b=FV1xos82VEFiB+50fBwZfCpVHa
	QA40a8m+kp1u/4FaiyLJlMz86OPA90TTcrTuG/0I/uopy1WUBaqf2XxEVEsRcBHx7zs5ajvVXiD3Q
	iiVlBLzreHwLFwUCa5LiMyljJOemO0NxFQZpQkUCwjZw6//Gkjfs6yU8q/8zv49Ku7iq6ersSSMON
	gfp1N8gzQOnhSGYvgubUPH4tZ+XeIV63TRVCyu7EYZwHNz//LZki2nWKPS08Kl7c9JkZpogV65lrO
	Ia2s9Fy94toGT2MUHVSxwlOcawLv0xAlm8DXIMGOB/p3aPSiKMZw2JYLELZAIg5huPq0KsexR8+5r
	HvxTuEeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqa2q-00HScR-OB; Thu, 03 Nov 2022 13:14:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqa2i-00HSYV-4z
	for barebox@lists.infradead.org; Thu, 03 Nov 2022 13:14:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2d-0003oV-0H; Thu, 03 Nov 2022 14:13:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2d-00250l-74; Thu, 03 Nov 2022 14:13:54 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2b-008dpf-A5; Thu, 03 Nov 2022 14:13:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  3 Nov 2022 14:13:46 +0100
Message-Id: <20221103131351.2059683-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_061400_213931_E9714544 
X-CRM114-Status: GOOD (  11.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] net: add promiscuous mode configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This configuration is mostly needed for controllers attached to switches
with different MAC address configurations.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h |  3 +++
 net/eth.c     | 10 ++++++++++
 2 files changed, 13 insertions(+)

diff --git a/include/net.h b/include/net.h
index 338033d698..96c2ed1d11 100644
--- a/include/net.h
+++ b/include/net.h
@@ -49,6 +49,8 @@ struct eth_device {
 				 int *length);
 	void (*rx_monitor) (struct eth_device*, void *packet, int length);
 	void (*tx_monitor) (struct eth_device*, void *packet, int length);
+	/* Set promiscuous mode */
+	int  (*set_promiscuous_mode) (struct eth_device*, bool enable);
 
 	struct eth_device *next;
 	void *priv;
@@ -113,6 +115,7 @@ int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a pa
 int eth_rx(void);			/* Check for received packets	*/
 void eth_open_all(void);
 struct eth_device *of_find_eth_device_by_node(struct device_node *np);
+int eth_set_promiscuous_mode(struct eth_device *edev, bool enable);
 
 /* associate a MAC address to a ethernet device. Should be called by
  * board code for boards which store their MAC address at some unusual
diff --git a/net/eth.c b/net/eth.c
index 8f6ff7db3a..ad4b9d5987 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -31,6 +31,16 @@ struct eth_ethaddr {
 
 static LIST_HEAD(ethaddr_list);
 
+int eth_set_promiscuous_mode(struct eth_device *edev, bool enable)
+{
+	int ret = 0;
+
+	if (edev->set_promiscuous_mode)
+		ret = edev->set_promiscuous_mode(edev, enable);
+
+	return ret;
+}
+
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
 {
 	int ret;
-- 
2.30.2



