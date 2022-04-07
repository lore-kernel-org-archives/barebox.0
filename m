Delivery-date: Thu, 07 Apr 2022 11:19:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOIu-00AI8u-2n
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:19:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOIq-0002R4-9w
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjsazRPYkYpmz21txiWEIGU0iiOD2MJrQkPxDRYufBs=; b=IrKQssI0Wyr0rz
	DdDvc7zwi8nMAV92+7UK5hVNM7xUVnvQpkIygeIeEW5bpqfRRGoLgHbLuaoQsFhiFEuWeWvWxcSYk
	ePKL9fG3r9tMZIMWU68UaGuNmycG6ydz1P4Frw/Oo9FjBV71ZZLlZ5Hccadocm4Ti/VD10A8mt7xq
	4NJ5otpVCjJJNpjBEeERL9ymncvzieiBrwaLh9S4M0WAu6XDxiRD0uDdizxHli89m/UnutVcQcxio
	3pTWtMiu3njc6UumiYprjBewytnVLCJ1uLpT/m0nhmlZozjuZHxDNokhptrYWZyEHmiWZPKKzC8yp
	36CIeYxsxp8JF8hnPd2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOHM-00AmFG-TP; Thu, 07 Apr 2022 09:18:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNx3-00AcwM-Md
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:57:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNx0-0005qs-Ix; Thu, 07 Apr 2022 10:57:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNx1-001Ztl-9x; Thu, 07 Apr 2022 10:57:09 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNww-003zUN-JG; Thu, 07 Apr 2022 10:57:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:56:55 +0200
Message-Id: <20220407085705.951285-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407085705.951285-1-o.rempel@pengutronix.de>
References: <20220407085705.951285-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015713_797113_66B6931E 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/12] net: add of_find_eth_device_by_node() function
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

