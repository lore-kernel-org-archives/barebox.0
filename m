Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfQQ-0007o0-18
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:01:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:00:53 +0200
Message-Id: <1371736854-7543-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371736854-7543-1-git-send-email-s.hauer@pengutronix.de>
References: <1371736854-7543-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ata: pata-imx: implement detect callback for hardware
 device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/pata-imx.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index aed6df1..93809c2 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -146,6 +146,13 @@ static void imx_pata_setup_port(void *reg_base, void *alt_base,
 	}
 }
 
+static int pata_imx_detect(struct device_d *dev)
+{
+	struct ide_port *ide = dev->priv;
+
+	return ata_port_detect(&ide->port);
+}
+
 static int imx_pata_probe(struct device_d *dev)
 {
 	struct ide_port *ide;
@@ -182,6 +189,9 @@ static int imx_pata_probe(struct device_d *dev)
 	ide->port.dev = dev;
 	ide->port.devname = devname;
 
+	dev->priv = ide;
+	dev->detect = pata_imx_detect;
+
 	ret = ide_port_register(ide);
 	if (ret) {
 		dev_err(dev, "Cannot register IDE interface: %s\n",
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
