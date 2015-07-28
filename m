Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJxxG-0006tk-6D
 for barebox@lists.infradead.org; Tue, 28 Jul 2015 06:01:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Jul 2015 08:01:09 +0200
Message-Id: <1438063269-29059-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: make eth_register_ethaddr work on registered network
 devices
To: Barebox List <barebox@lists.infradead.org>

When eth_register_ethaddr is called after the device has been registered
it should work aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/net/eth.c b/net/eth.c
index a090961..c381ebd 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -100,9 +100,17 @@ static void eth_drop_ethaddr(int ethid)
 void eth_register_ethaddr(int ethid, const char *ethaddr)
 {
 	struct eth_ethaddr *addr;
+	struct eth_device *edev;
 
 	eth_drop_ethaddr(ethid);
 
+	list_for_each_entry(edev, &netdev_list, list) {
+		if (edev->dev.id == ethid) {
+			register_preset_mac_address(edev, ethaddr);
+			return;
+		}
+	}
+
 	addr = xzalloc(sizeof(*addr));
 	addr->ethid = ethid;
 	memcpy(addr->ethaddr, ethaddr, 6);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
