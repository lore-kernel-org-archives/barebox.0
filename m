Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nl-00026I-Ix
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:42 +0100
Message-Id: <1294397044-5008-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/24] net: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 7502e98..8333d80 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -166,7 +166,7 @@ int eth_register(struct eth_device *edev)
 
 	if (edev->get_ethaddr(edev, ethaddr) == 0) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
-		printf("got MAC address from EEPROM: %s\n",&ethaddr_str);
+		printf("got MAC address from EEPROM: %s\n", ethaddr_str);
 		dev_set_param(dev, "ethaddr", ethaddr_str);
 	}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
