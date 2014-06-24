Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzNoM-0006XR-2A
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 10:18:46 +0000
Received: by mail-we0-f171.google.com with SMTP id q58so90171wes.30
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 03:18:23 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 12:18:10 +0200
Message-Id: <1403605091-26174-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/4] net: orion-gbe: extend RGMII detection to delayed modes
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

RGMII PHY modes include delayed interface modes RGMII_ID, RGMII_TXID,
and RGMII_RXID. Also check for those modes when setup RGMII mode in
port serial ctrl register.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/net/orion-gbe.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 23c8346ec58f..991c8a80de31 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -447,7 +447,10 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 
 	reg = SC1_RESERVED;
 	reg |= DEFAULT_COL_LIMIT | COL_ON_BACKPRESS | INBAND_ANEG_BYPASS;
-	if (port->intf == PHY_INTERFACE_MODE_RGMII)
+	if (port->intf == PHY_INTERFACE_MODE_RGMII ||
+	    port->intf == PHY_INTERFACE_MODE_RGMII_ID ||
+	    port->intf == PHY_INTERFACE_MODE_RGMII_RXID ||
+	    port->intf == PHY_INTERFACE_MODE_RGMII_TXID)
 		reg |= RGMII_ENABLE;
 	writel(reg, port->regs + PORT_SC1);
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
