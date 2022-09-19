Delivery-date: Mon, 19 Sep 2022 10:03:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkW-009OGx-UJ
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkV-0000b0-4F
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pqYJtyadgnF+DhJul2QzxNCGLUNoZqOjLrX2sWWEB38=; b=LqhusMML+yhXL+07+U9rsH33Wy
	QWb4LyI7lW/XjobDGmJbqyeTmb7UkhKQlafKRdnrooEk9IkwsUX/0tdbD/V+hpgNjOKWuXftR1lZz
	+kJl76/oSrGfr9TLqyyD3CsTpL8VSSZ3UrTQfenvlvvt0G5GYh9QXQ8nnD07nWI9wFGUIIvxyl66R
	KmX3VApPlPtRzqsD4xn0y2tbkZXbulysrCY+wpBnO8sYv6a0oacY2WqKqozg/uzhOMTF3UUC1MCyA
	k84qZb3UEnmKlVffzh/sEUT6wlTSH/UI5LQLrQPmKKlc3CPnBgpID55bIdykW7yOm4lc2RP8iybX1
	xEPLHBcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBj9-009fzw-Le; Mon, 19 Sep 2022 08:02:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fP4-3w
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008LZ-Tu; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXg-I9; Mon, 19 Sep 2022 10:01:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gf7-Ga; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:30 +0200
Message-Id: <20220919080133.877651-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_209490_66327DCF 
X-CRM114-Status: GOOD (  14.72  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] net: smc91111: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc91111.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index d503535c25..3b23bfedfd 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -446,6 +446,7 @@ struct smc91c111_priv {
 	int revision;
 	unsigned int control_setup;
 	unsigned int config_setup;
+	void *rx_buf;
 };
 
 #if (SMC_DEBUG > 2 )
@@ -1302,14 +1303,14 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 		   to send the DWORDs or the bytes first, or some
 		   mixture.  A mixture might improve already slow PIO
 		   performance	*/
-		SMC_insl(priv, SMC91111_DATA_REG , NetRxPackets[0],
+		SMC_insl(priv, SMC91111_DATA_REG , priv->rx_buf,
 				packet_length >> 2);
 		/* read the left over bytes */
 		if (packet_length & 3) {
 			int i;
 
 			unsigned char *tail =
-					(unsigned char *)(NetRxPackets[0] +
+					(unsigned char *)(priv->rx_buf +
 					(packet_length & ~3));
 			unsigned long leftover = SMC_inl(priv,
 					SMC91111_DATA_REG);
@@ -1320,7 +1321,7 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 
 #if	SMC_DEBUG > 2
 		printf("Receiving Packet\n");
-		print_packet( NetRxPackets[0], packet_length );
+		print_packet(priv->rx_buf, packet_length );
 #endif
 	} else {
 		/* error ... */
@@ -1343,7 +1344,7 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 
 	if (!is_error) {
 		/* Pass the packet up to the protocol layers. */
-		net_receive(edev, NetRxPackets[0], packet_length);
+		net_receive(edev, priv->rx_buf, packet_length);
 		return 0;
 	}
 
@@ -1445,6 +1446,7 @@ static int smc91c111_probe(struct device_d *dev)
 
 	priv = edev->priv;
 	priv->a = access_via_32bit;
+	priv->rx_buf = xmalloc(PKTSIZE);
 
 	if (dev->platform_data) {
 		struct smc91c111_pdata *pdata = dev->platform_data;
-- 
2.30.2



