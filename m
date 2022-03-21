Delivery-date: Mon, 21 Mar 2022 10:27:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKQ-001Es1-5w
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:27:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKS-0004wf-Gb
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:27:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjsazRPYkYpmz21txiWEIGU0iiOD2MJrQkPxDRYufBs=; b=S3SdSBT+Y8fB6U
	pUHLNgDRJhYvplGPazpQ2KxEBhZLyWFfN+hZk0acf+dXfHNvTLq+njsNnRvzTNlrcyKJPgkXksxHc
	L4TXTySZqtKSVUe/qtBZyQpE0MmgAjDtXrIt3hjPDRYXSiq4zKLuCEM0R+sn54eeTS/CO4H5XjQf0
	ipA7FQRi5+34mnPw0+ZtCoFTG2fYpqzVKBMin06/EgAkV1cQs80GqTYE7x7B/KU9UuGO6GHYwaLXB
	2dt23Og41gblAQo5pkmOX0uKblC6Oozlj0pZtDHFQMAoTAC3Qxr2T/D1PhcyDTyzTODxZqZYAl0s3
	mn5CDo/fKfhQuaPtamHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEJD-0079WN-O5; Mon, 21 Mar 2022 09:26:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEIk-0079JV-2j
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:26:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIi-0004CU-FU; Mon, 21 Mar 2022 10:26:08 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIh-0067nG-Q0; Mon, 21 Mar 2022 10:26:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Mar 2022 10:25:59 +0100
Message-Id: <20220321092606.1459834-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321092606.1459834-1-o.rempel@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_022610_239077_4E0BF309 
X-CRM114-Status: GOOD (  11.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/9] net: add of_find_eth_device_by_node() function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For DSA support we need to find MAC node by phandle from the switch port
node. So, provide of_find_eth_device_by_node() to solve this task.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h |  1 +
 net/eth.c     | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/include/net.h b/include/net.h
index ca9b6cd61e..8013f79c2e 100644
--- a/include/net.h
+++ b/include/net.h
@@ -97,6 +97,7 @@ int eth_open(struct eth_device *edev);
 void eth_close(struct eth_device *edev);
 int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
+struct eth_device *of_find_eth_device_by_node(struct device_node *np);
 
 /* associate a MAC address to a ethernet device. Should be called by
  * board code for boards which store their MAC address at some unusual
diff --git a/net/eth.c b/net/eth.c
index 762c5dfb8a..06bf5fbe65 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -506,6 +506,22 @@ void led_trigger_network(enum led_trigger trigger)
 	led_trigger(LED_TRIGGER_NET_TXRX, TRIGGER_FLASH);
 }
 
+struct eth_device *of_find_eth_device_by_node(struct device_node *np)
+{
+	struct eth_device *edev;
+	int ret;
+
+	ret = of_device_ensure_probed(np);
+	if (ret)
+		return NULL;
+
+	list_for_each_entry(edev, &netdev_list, list)
+		if (edev->parent->device_node == np)
+			return edev;
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_device_by_node);
+
 static int of_populate_ethaddr(void)
 {
 	char str[sizeof("xx:xx:xx:xx:xx:xx")];
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

