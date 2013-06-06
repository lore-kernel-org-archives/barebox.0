Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5j-00028e-Iv
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:37 +0200
Message-Id: <1370528559-15694-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
References: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ata: ahci: Allow 'detect' on hardware device
To: barebox@lists.infradead.org

Hook the detect callback to the hardware device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ahci.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 19d445a..f9cf2d1 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -569,6 +569,20 @@ void ahci_info(struct device_d *dev)
 	ahci_print_info(ahci);
 }
 
+static int ahci_detect(struct device_d *dev)
+{
+	struct ahci_device *ahci = dev->priv;
+	int i;
+
+	for (i = 0; i < ahci->n_ports; i++) {
+		struct ahci_port *ahci_port = &ahci->ports[i];
+
+		ata_port_detect(&ahci_port->ata);
+	}
+
+	return 0;
+}
+
 int ahci_add_host(struct ahci_device *ahci)
 {
 	u8 *mmio = (u8 *)ahci->mmio_base;
@@ -630,6 +644,8 @@ int ahci_add_host(struct ahci_device *ahci)
 	ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
 	tmp = ahci_ioread(ahci, HOST_CTL);
 
+	ahci->dev->detect = ahci_detect;
+
 	return 0;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
