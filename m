Delivery-date: Mon, 17 Mar 2025 12:33:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8io-000b0b-2L
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 12:33:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu8in-0003si-II
	for lore@pengutronix.de; Mon, 17 Mar 2025 12:33:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N2od3XKcFY33sTIwmirmdj9c6ard1yhWVNeds8RUldY=; b=nqYpt27yAfkdPStN+BH0GuPU9m
	mXvhVhxYud5kDVWeJyJlvrD/QEf1mugSLF8czcMbkI90LQOEwek58l9Byfp0e+bE39j0KqT471Iir
	r4AHw3JcGVGYnMuwRGhU0R8BU1nDl3H8AT+ZIX53458wc5JzTV21ALuYBgDpW6tC/PpDzR9Eby1Kj
	BO8P9YL0zIg7qwgNAK1W2BGOX2aBKk2mOMi1B8AHj2OWWuosoJCFcea5Z9HS0ZEzgFDYPsgAbTKAb
	O+YZ9rF6bOYOWibJpUvzYz3CVTD5Xs0H37L1ag1kTHbLaYvWGr4sxgi48EFJkKD7NpUwtom5Y8Oyz
	JLFYNGpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8iI-00000002PTz-3PhB;
	Mon, 17 Mar 2025 11:32:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8h8-00000002PIs-3uQa
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 11:31:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8h7-0002zC-D7; Mon, 17 Mar 2025 12:31:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8h6-000Eiw-2Z;
	Mon, 17 Mar 2025 12:31:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu8h7-007oaP-0Q;
	Mon, 17 Mar 2025 12:31:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Mar 2025 12:31:42 +0100
Message-Id: <20250317113142.1862481-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_043146_969163_94717664 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: am65-cpsw-nuss: fix out-of-bounds access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GCC 12.2.0 complains about am65_cpsw_recv:

drivers/net/am65-cpsw-nuss.c: In function ‘am65_cpsw_recv’:
drivers/net/am65-cpsw-nuss.c:495:30: warning: array subscript 9 is
  above array bounds of ‘struct am65_cpsw_port[9]’ [-Warray-bounds]
  495 |         port = &common->ports[port_id];
      |                 ~~~~~~~~~~~~~^~~~~~~~~
drivers/net/am65-cpsw-nuss.c:115:33: note: while referencing ‘ports’
  115 |         struct am65_cpsw_port  ports[AM65_CPSW_CPSWNU_MAX_PORTS];
      |                                 ^~~~~

port_id is read from the hardware and used unsanitized to index into an
array. Rework the code, so out-of-bound access leads to an error, but
no out of bound access.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/am65-cpsw-nuss.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/am65-cpsw-nuss.c b/drivers/net/am65-cpsw-nuss.c
index f6dc811bd982..6b9432e2d4e7 100644
--- a/drivers/net/am65-cpsw-nuss.c
+++ b/drivers/net/am65-cpsw-nuss.c
@@ -466,7 +466,6 @@ static void am65_cpsw_recv(struct eth_device *edev)
 	dma_addr_t pkt;
 	int ret;
 	u32 num, port_id;
-	bool valid = true;
 
 	if (!common->started)
 		return;
@@ -489,18 +488,17 @@ static void am65_cpsw_recv(struct eth_device *edev)
 	port_id = packet_data.src_tag;
 	if (port_id >= AM65_CPSW_CPSWNU_MAX_PORTS) {
 		dev_err(common->dev, "received pkt on invalid port_id %d\n", port_id);
-		valid = false;
+		goto out;
 	}
 
 	port = &common->ports[port_id];
 	if (!port->enabled) {
 		dev_err(common->dev, "received pkt on disabled port_id %d\n", port_id);
-		valid = false;
+		goto out;
 	}
 
-	if (valid)
-		net_receive(&port->edev, (void *)pkt, ret);
-
+	net_receive(&port->edev, (void *)pkt, ret);
+out:
 	num = common->rx_next % UDMA_RX_DESC_NUM;
 
 	dma_sync_single_for_device(common->dev, pkt, ret, DMA_FROM_DEVICE);
-- 
2.39.5



