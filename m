Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzNoM-0006XU-Kp
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 10:18:47 +0000
Received: by mail-wi0-f173.google.com with SMTP id cc10so5678609wib.0
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 03:18:24 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 12:18:09 +0200
Message-Id: <1403605091-26174-3-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/4] net: orion: generate unique port device names
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Marvell Orion ethernet IP originally is multi-port capable, but SoCs
using the IP usually have multiple single-port controllers built in.
Currently, orion-gbe driver registers each port device with a constant
name, which causes a name conflict with multiple controller instances.

This patch uniquifies port device name generation by prepending
controller's base register address to resolve the name conflict.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/net/orion-gbe.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 9315127ac7ff..23c8346ec58f 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -399,6 +399,7 @@ static int port_open(struct eth_device *edev)
 
 static int port_probe(struct device_d *parent, struct port_priv *port)
 {
+	struct orion_gbe *gbe = parent->priv;
 	struct device_d *dev = &port->dev;
 	u32 reg;
 	int ret;
@@ -450,7 +451,7 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 		reg |= RGMII_ENABLE;
 	writel(reg, port->regs + PORT_SC1);
 
-	sprintf(dev->name, "orion-gbe-port");
+	snprintf(dev->name, MAX_DRIVER_NAME, "%08x.ethernet-port", (u32)gbe->regs);
 	dev->id = port->portno;
 	dev->parent = parent;
 	dev->device_node = port->np;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
