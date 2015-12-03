Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4NwB-00085u-Os
 for barebox@lists.infradead.org; Thu, 03 Dec 2015 07:04:20 +0000
Received: by lfdl133 with SMTP id l133so79867984lfd.2
 for <barebox@lists.infradead.org>; Wed, 02 Dec 2015 23:03:56 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  3 Dec 2015 10:03:48 +0300
Message-Id: <1449126229-11256-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1449126229-11256-1-git-send-email-antonynpavlov@gmail.com>
References: <1449126229-11256-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] net: tap: make locally used functions static
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/tap.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index ca53f12..dfa9bc2 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -29,7 +29,7 @@ struct tap_priv {
 	char *name;
 };
 
-int tap_eth_send (struct eth_device *edev, void *packet, int length)
+static int tap_eth_send(struct eth_device *edev, void *packet, int length)
 {
 	struct tap_priv *priv = edev->priv;
 
@@ -37,7 +37,7 @@ int tap_eth_send (struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
-int tap_eth_rx (struct eth_device *edev)
+static int tap_eth_rx(struct eth_device *edev)
 {
 	struct tap_priv *priv = edev->priv;
 	int length;
@@ -50,12 +50,12 @@ int tap_eth_rx (struct eth_device *edev)
 	return 0;
 }
 
-int tap_eth_open(struct eth_device *edev)
+static int tap_eth_open(struct eth_device *edev)
 {
 	return 0;
 }
 
-void tap_eth_halt (struct eth_device *edev)
+static void tap_eth_halt(struct eth_device *edev)
 {
 	/* nothing to do here */
 }
@@ -70,7 +70,7 @@ static int tap_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 	return 0;
 }
 
-int tap_probe(struct device_d *dev)
+static int tap_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
 	struct tap_priv *priv;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
