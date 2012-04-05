Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFidc-0008Cc-Fb
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:05:53 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu,  5 Apr 2012 11:05:41 +0200
Message-Id: <1333616741-14273-4-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
References: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 3/3] net: eth: don't say that MAC comes from EEPROM
To: barebox@lists.infradead.org

Because it can also come in via other means.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/eth.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 00b8836..f62d24a 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -228,7 +228,7 @@ int eth_register(struct eth_device *edev)
 	if (found) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
 		if (is_valid_ether_addr(ethaddr)) {
-			dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
+			dev_info(dev, "got preset MAC address: %s\n", ethaddr_str);
 			dev_set_param(dev, "ethaddr", ethaddr_str);
 		}
 	}
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
