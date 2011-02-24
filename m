Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsdX5-00044x-13
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 15:55:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Feb 2011 16:55:06 +0100
Message-Id: <1298562907-9870-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298562907-9870-1-git-send-email-s.hauer@pengutronix.de>
References: <1298562907-9870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net: use dev_* for printing network related stuff
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 9eae17c..0251e59 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -146,7 +146,7 @@ int eth_register(struct eth_device *edev)
 	unsigned char ethaddr[6];
 
 	if (!edev->get_ethaddr) {
-		printf("no get_mac_address found for current eth device\n");
+		dev_err(dev, "no get_mac_address found for current eth device\n");
 		return -1;
 	}
 
@@ -167,7 +167,7 @@ int eth_register(struct eth_device *edev)
 
 	if (edev->get_ethaddr(edev, ethaddr) == 0) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
-		printf("got MAC address from EEPROM: %s\n", ethaddr_str);
+		dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
 		dev_set_param(dev, "ethaddr", ethaddr_str);
 	}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
