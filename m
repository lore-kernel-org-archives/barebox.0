Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSmM5-0004gO-AF
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 08:04:58 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed, 15 Dec 2010 10:04:36 +0200
Message-Id: <ddb18a8573b9f5daac2cc3d8ef53da7ee41dbbc0.1292400209.git.baruch@tkos.co.il>
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
Subject: [PATCH] eth: fix 'warning: No MAC address set' when using EEPROM MAC
To: barebox@lists.infradead.org

When retrieving the MAC address from EEPROM, we must notify the networking core
at eth registration time. Otherwise we get the 'No MAC address set' warning on
the first network access, and the MAC address is set to a random value instead
of the real one.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 net/eth.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 4d58191..dafd392 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -168,8 +168,10 @@ int eth_register(struct eth_device *edev)
 		dev_set_param(dev, "ethaddr", ethaddr_str);
 	}
 
-	if (!eth_current)
+	if (!eth_current) {
 		eth_current = edev;
+		net_update_env();
+	}
 
 	return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
