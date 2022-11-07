Delivery-date: Mon, 07 Nov 2022 12:18:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os09D-000NC4-6j
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 12:18:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os09B-0005y6-KL
	for lore@pengutronix.de; Mon, 07 Nov 2022 12:18:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AJHNgxl1eNLEf52jY3y7xg5JEZMagJzNOQYqGAfpI0U=; b=LyWrb8tnaMEGc5DsIXijXWkXq2
	or6IOkCYptkKrOSGzo5dnDtUY9eUV8n5Ee/HIt0yQ3Q24O4A/X3RilrfZiD+SO1QxvlAJc6dG/RWX
	e9Q4Qh10uLT9SJpCzompbxyJbxtBTO+1VJqfr2/ssKhRG3Hpd1E1BFC9F24JcLJKKzioRIQCrktxU
	MmrTwcIMvWZbQyFIORNWVGmy6aHs2SIQyXMWMUNxAyEz3V8Y4HZS5Yvt3G+Bjqs5qTpjt4lKx5UzU
	5gpiltQJT+exTGWGt1bEXxvian7q2MPbu/jJswl0wKo2LYFV5OEECahds41R5cNeQRF7UNMIElKAJ
	8val9o8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os07w-00E51l-VW; Mon, 07 Nov 2022 11:17:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os07n-00E4xa-RC
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 11:17:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1os07l-0005aQ-0d; Mon, 07 Nov 2022 12:17:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1os07j-002qI9-Eq; Mon, 07 Nov 2022 12:17:04 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1os07i-00AmfW-Uy; Mon, 07 Nov 2022 12:17:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  7 Nov 2022 12:16:54 +0100
Message-Id: <20221107111701.2570303-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_031707_931864_627233DA 
X-CRM114-Status: GOOD (  11.82  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/8] net: add promiscuous mode configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This configuration is mostly needed for controllers attached to switches
with different MAC address configurations or for debugging networking
issues.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/net.h | 3 +++
 net/eth.c     | 8 ++++++++
 2 files changed, 11 insertions(+)

diff --git a/include/net.h b/include/net.h
index 338033d698..f9d1fbfc18 100644
--- a/include/net.h
+++ b/include/net.h
@@ -49,6 +49,8 @@ struct eth_device {
 				 int *length);
 	void (*rx_monitor) (struct eth_device*, void *packet, int length);
 	void (*tx_monitor) (struct eth_device*, void *packet, int length);
+	/* Set promiscuous mode */
+	int  (*set_promisc) (struct eth_device*, bool enable);
 
 	struct eth_device *next;
 	void *priv;
@@ -113,6 +115,7 @@ int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a pa
 int eth_rx(void);			/* Check for received packets	*/
 void eth_open_all(void);
 struct eth_device *of_find_eth_device_by_node(struct device_node *np);
+int eth_set_promisc(struct eth_device *edev, bool enable);
 
 /* associate a MAC address to a ethernet device. Should be called by
  * board code for boards which store their MAC address at some unusual
diff --git a/net/eth.c b/net/eth.c
index 8f6ff7db3a..19654cdd51 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -31,6 +31,14 @@ struct eth_ethaddr {
 
 static LIST_HEAD(ethaddr_list);
 
+int eth_set_promisc(struct eth_device *edev, bool enable)
+{
+	if (!edev->set_promisc)
+		return -EOPNOTSUPP;
+
+	return edev->set_promisc(edev, enable);
+}
+
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
 {
 	int ret;
-- 
2.30.2



