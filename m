Delivery-date: Mon, 16 Jan 2023 14:47:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpH-00DbtJ-Ma
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:47:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpE-00007e-25
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:47:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S3KJQeb51Qvc11d3xUp3xRnTDUBAhonK3lDKvNVIXns=; b=h9y7L84hMqoAkAGfTbHeTC9+IH
	s/orBaEF9x+5drG+TwwgZBxionbPbDdxCvUUezjlIqcNak5uve1d6YYlXYs4032S5pgFHvHtW3tYn
	heKdRz422CTYij3kYxwLVDw3bY1VyFa7PbI/eP2TxhpBpBgfFKVnzpdEeGUlCZ5+ybZ2eN+tjPCr1
	XVEgzyOu5AJ2/D/g0Qsno31znP0vYu8VR4cmGeOdsY4PhKP3zWvuwXRuZ/sgrud3gPO1ixT8Sv2Gg
	ki+vdz2/AVjr2b8/TlGgDKy1M8vj0R43PLWq5UQKVzumWVBh2EtK797N7b3ugBk2qpwDRxkeVPxPf
	C5elgDgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnq-00AYFt-FS; Mon, 16 Jan 2023 13:45:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8N-6E
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-0007zb-4d; Mon, 16 Jan 2023 14:45:08 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKM-Fl; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyE-Pv; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:44:55 +0100
Message-Id: <20230116134501.2006391-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_054517_320363_396E62A8 
X-CRM114-Status: GOOD (  13.19  )
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
Subject: [PATCH 3/9] net: dsa: rename dsa_ops to dsa_switch_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux calls the ops dsa_switch_ops and we have some members, which are
the same in both, so adopt the Linux naming.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/dsa.c     | 10 +++++-----
 drivers/net/ksz8873.c |  2 +-
 drivers/net/ksz9477.c |  2 +-
 drivers/net/sja1105.c |  2 +-
 include/dsa.h         |  4 ++--
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index d633bdf15d5c..d51e9c861114 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -54,7 +54,7 @@ static int dsa_port_probe(struct eth_device *edev)
 {
 	struct dsa_port *dp = edev->priv;
 	struct dsa_switch *ds = dp->ds;
-	const struct dsa_ops *ops = ds->ops;
+	const struct dsa_switch_ops *ops = ds->ops;
 	phy_interface_t interface;
 	int ret;
 
@@ -86,7 +86,7 @@ static int dsa_port_start(struct eth_device *edev)
 {
 	struct dsa_port *dp = edev->priv;
 	struct dsa_switch *ds = dp->ds;
-	const struct dsa_ops *ops = ds->ops;
+	const struct dsa_switch_ops *ops = ds->ops;
 	phy_interface_t interface;
 	int ret;
 
@@ -147,7 +147,7 @@ static void dsa_port_stop(struct eth_device *edev)
 {
 	struct dsa_port *dp = edev->priv;
 	struct dsa_switch *ds = dp->ds;
-	const struct dsa_ops *ops = ds->ops;
+	const struct dsa_switch_ops *ops = ds->ops;
 
 	if (!dp->enabled)
 		return;
@@ -174,7 +174,7 @@ static int dsa_port_send(struct eth_device *edev, void *packet, int length)
 {
 	struct dsa_port *dp = edev->priv;
 	struct dsa_switch *ds = dp->ds;
-	const struct dsa_ops *ops = ds->ops;
+	const struct dsa_switch_ops *ops = ds->ops;
 	void *tx_buf = ds->tx_buf;
 	size_t full_length, stuff = 0;
 	int ret;
@@ -271,7 +271,7 @@ static int dsa_rx_preprocessor(struct eth_device *edev, unsigned char **packet,
 			       int *length)
 {
 	struct dsa_switch *ds = edev->rx_preprocessor_priv;
-	const struct dsa_ops *ops = ds->ops;
+	const struct dsa_switch_ops *ops = ds->ops;
 	struct dsa_port *dp;
 	int ret, port;
 
diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index eb0a2a575962..3e3ad2413e9a 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -335,7 +335,7 @@ static int ksz8873_recv(struct dsa_switch *ds, int *port, void *packet,
 	return 0;
 };
 
-static const struct dsa_ops ksz8873_dsa_ops = {
+static const struct dsa_switch_ops ksz8873_dsa_ops = {
 	.port_enable = ksz8873_port_enable,
 	.xmit = ksz8873_xmit,
 	.rcv = ksz8873_recv,
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index af394554056c..0ca9dcc204ea 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -361,7 +361,7 @@ static int ksz_recv(struct dsa_switch *ds, int *port, void *packet, int length)
 	return 0;
 };
 
-static const struct dsa_ops ksz_dsa_ops = {
+static const struct dsa_switch_ops ksz_dsa_ops = {
 	.port_enable = ksz_port_enable,
 	.xmit = ksz_xmit,
 	.rcv = ksz_recv,
diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index 595a002ff145..b85184ed92f4 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -2814,7 +2814,7 @@ static int sja1105_rcv(struct dsa_switch *ds, int *port, void *packet,
 	return 0;
 }
 
-static const struct dsa_ops sja1105_dsa_ops = {
+static const struct dsa_switch_ops sja1105_dsa_ops = {
 	.port_pre_enable	= sja1105_port_pre_enable,
 	.port_enable		= sja1105_port_enable,
 	.xmit			= sja1105_xmit,
diff --git a/include/dsa.h b/include/dsa.h
index 25821e114a51..3a170475cbb8 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -41,7 +41,7 @@
 struct dsa_port;
 struct dsa_switch;
 
-struct dsa_ops {
+struct dsa_switch_ops {
 	int (*port_probe)(struct dsa_port *dp, int port,
 			  phy_interface_t phy_mode);
 	int (*port_pre_enable)(struct dsa_port *dp, int port,
@@ -69,7 +69,7 @@ struct dsa_port {
 
 struct dsa_switch {
 	struct device *dev;
-	const struct dsa_ops *ops;
+	const struct dsa_switch_ops *ops;
 	size_t num_ports;
 	u32 cpu_port;
 	int cpu_port_users;
-- 
2.30.2



