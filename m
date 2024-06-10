Delivery-date: Mon, 10 Jun 2024 09:52:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZov-003ZtF-04
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 09:52:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZou-0003cp-Ca
	for lore@pengutronix.de; Mon, 10 Jun 2024 09:52:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+5sWKNsmA+x2CW8LE/4lURU4JIELJZdi4O2nGw+cs4=; b=vcTDxkVhBW8VU/M9OjEmusRgat
	2n2qeI9ky1B45Qm7TqN5Fu5rISOdSKduvmaBDHXdha7jjYUs9EwlFjXlcBcRM4Y7l+KZOEcDDDpQn
	iMTVkw87qE/lNpSgpzZGMpXsiSq8LpsAJ249G09b3cXh6VzBtc48YhOWZ7WZM4atehJgeA6+9HIEq
	xzFOaT5O5fJJK46yqNpYmh5fErGdkmzoDMqb5QKhuvJ4X3nM9RMs71Zoez8IMCVm87TlNSazoP8UM
	Wo7LLecTyzIzgs/zJTqU1zUuJN0I8DaJAvp/5m8ytUiABKQ5p+wV02WOE8v+0JSnxMQ2bP31NyJvS
	CS/j/9/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZoE-0000000482a-0Onu;
	Mon, 10 Jun 2024 07:51:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZo6-0000000480D-2wF4
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 07:51:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo3-0003Jm-1F; Mon, 10 Jun 2024 09:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-001Fer-KV; Mon, 10 Jun 2024 09:51:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-003PNM-1j;
	Mon, 10 Jun 2024 09:51:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 09:51:04 +0200
Message-Id: <20240610075105.812496-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610075105.812496-1-s.hauer@pengutronix.de>
References: <20240610075105.812496-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_005110_791775_58D31C1F 
X-CRM114-Status: GOOD (  12.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] net: establish single code path for setting edev parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have net_set_ip(), net_set_gateway() and net_set_netmask() to set the
IP parameters of a network device. Most code pathes go through these
functions with the exception of setting the parameters through
globalvars on the command line. Explicitly call the accessors for this
code path as well so that all IP parameter settings go through them.
This is done in preparation to integrate a real network stack later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 98567d8d3f..e81018c69b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -393,6 +393,33 @@ static const char * const eth_mode_names[] = {
 	[ETH_MODE_DISABLED] = "disabled",
 };
 
+static int eth_param_set_ip(struct param_d *p, void *priv)
+{
+	struct eth_device *edev = priv;
+
+	net_set_ip(edev, edev->ipaddr);
+
+	return 0;
+}
+
+static int eth_param_set_gw(struct param_d *p, void *priv)
+{
+	struct eth_device *edev = priv;
+
+	net_set_gateway(edev, net_get_gateway());
+
+	return 0;
+}
+
+static int eth_param_set_nm(struct param_d *p, void *priv)
+{
+	struct eth_device *edev = priv;
+
+	net_set_netmask(edev, edev->netmask);
+
+	return 0;
+}
+
 int eth_register(struct eth_device *edev)
 {
 	struct device *dev = &edev->dev;
@@ -428,10 +455,10 @@ int eth_register(struct eth_device *edev)
 
 	edev->devname = xstrdup(dev_name(&edev->dev));
 
-	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
+	dev_add_param_ip(dev, "ipaddr", eth_param_set_ip, NULL, &edev->ipaddr, edev);
 	dev_add_param_string(dev, "serverip", NULL, NULL, &net_server, edev);
-	dev_add_param_ip(dev, "gateway", NULL, NULL, &net_gateway, edev);
-	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
+	dev_add_param_ip(dev, "gateway", eth_param_set_gw, NULL, &net_gateway, edev);
+	dev_add_param_ip(dev, "netmask", eth_param_set_nm, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
 			edev->ethaddr, edev);
 	edev->bootarg = xstrdup("");
-- 
2.39.2



