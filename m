Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2Dbc-0000v1-5i
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 07:05:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 63992A0041E
 for <barebox@lists.infradead.org>; Tue,  9 Jun 2015 09:06:58 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 9 Jun 2015 09:04:25 +0200
Message-Id: <1433833465-6569-1-git-send-email-w.egorov@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: Set the actual ethaddr in register_preset_mac_address()
To: barebox@lists.infradead.org

Set the ethaddr for the current edev.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 net/eth.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/eth.c b/net/eth.c
index 89bddba..03e0a2e 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -49,6 +49,7 @@ static void register_preset_mac_address(struct eth_device *edev, const char *eth
 	ethaddr_to_string(ethaddr, ethaddr_str);
 
 	if (is_valid_ether_addr(ethaddr)) {
+		memcpy(edev->ethaddr, ethaddr, 6);
 		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
 		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
