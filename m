Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000662-Ke
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:35 +0200
Message-Id: <1302531521-7439-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/7] eth: check the result of edev->get_ethaddr
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 0251e59..c5b346c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -167,8 +167,10 @@ int eth_register(struct eth_device *edev)
 
 	if (edev->get_ethaddr(edev, ethaddr) == 0) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
-		dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
-		dev_set_param(dev, "ethaddr", ethaddr_str);
+		if (is_valid_ether_addr(ethaddr)) {
+			dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
+			dev_set_param(dev, "ethaddr", ethaddr_str);
+		}
 	}
 
 	if (!eth_current) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
