Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDueZ-0003Pj-Q6
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 10:36:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 11:35:51 +0100
Message-Id: <1362738951-25614-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
References: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ata: ahci: refactor init functions
To: barebox@lists.infradead.org

Fold ahci_host_init and __ahci_host_init into ahci_add_host

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ahci.c | 136 +++++++++++++++++++++++------------------------------
 1 file changed, 58 insertions(+), 78 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 46abbc2..37419f2 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -457,83 +457,6 @@ static struct ata_port_operations ahci_ops = {
 	.write = ahci_write,
 };
 
-static int ahci_host_init(struct ahci_device *ahci)
-{
-	u8 *mmio = (u8 *)ahci->mmio_base;
-	u32 tmp, cap_save;
-	int i, ret;
-
-	ahci_debug(ahci, "ahci_host_init: start\n");
-
-	cap_save = readl(mmio + HOST_CAP);
-	cap_save &= ((1 << 28) | (1 << 17));
-	cap_save |= (1 << 27);  /* Staggered Spin-up. Not needed. */
-
-	/* global controller reset */
-	tmp = ahci_ioread(ahci, HOST_CTL);
-	if ((tmp & HOST_RESET) == 0)
-		ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
-
-	/*
-	 * reset must complete within 1 second, or
-	 * the hardware should be considered fried.
-	 */
-	ret = wait_on_timeout(SECOND, (readl(mmio + HOST_CTL) & HOST_RESET) == 0);
-	if (ret) {
-		ahci_debug(ahci,"controller reset failed (0x%x)\n", tmp);
-		return -ENODEV;
-	}
-
-	ahci_iowrite_f(ahci, HOST_CTL, HOST_AHCI_EN);
-	ahci_iowrite(ahci, HOST_CAP, cap_save);
-	ahci_iowrite_f(ahci, HOST_PORTS_IMPL, 0xf);
-
-	ahci->cap = ahci_ioread(ahci, HOST_CAP);
-	ahci->port_map = ahci_ioread(ahci, HOST_PORTS_IMPL);
-	ahci->n_ports = (ahci->cap & 0x1f) + 1;
-
-	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
-	      ahci->cap, ahci->port_map, ahci->n_ports);
-
-	for (i = 0; i < ahci->n_ports; i++) {
-		struct ahci_port *ahci_port = &ahci->ports[i];
-
-		ahci_port->num = i;
-		ahci_port->ahci = ahci;
-		ahci_port->ata.dev = ahci->dev;
-		ahci_port->port_mmio = ahci_port_base(mmio, i);
-		ahci_port->ata.ops = &ahci_ops;
-		ata_port_register(&ahci_port->ata);
-	}
-
-	tmp = ahci_ioread(ahci, HOST_CTL);
-	ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
-	tmp = ahci_ioread(ahci, HOST_CTL);
-
-	return 0;
-}
-
-static int __ahci_host_init(struct ahci_device *ahci)
-{
-	int rc = 0;
-
-	ahci->host_flags = ATA_FLAG_SATA
-				| ATA_FLAG_NO_LEGACY
-				| ATA_FLAG_MMIO
-				| ATA_FLAG_PIO_DMA
-				| ATA_FLAG_NO_ATAPI;
-	ahci->pio_mask = 0x1f;
-	ahci->udma_mask = 0x7f;	/* FIXME: assume to support UDMA6 */
-
-	/* initialize adapter */
-	rc = ahci_host_init(ahci);
-	if (rc)
-		goto err_out;
-
-err_out:
-	return rc;
-}
-
 #if 0
 /*
  * In the general case of generic rotating media it makes sense to have a
@@ -637,7 +560,64 @@ void ahci_info(struct device_d *dev)
 
 int ahci_add_host(struct ahci_device *ahci)
 {
-	__ahci_host_init(ahci);
+	u8 *mmio = (u8 *)ahci->mmio_base;
+	u32 tmp, cap_save;
+	int i, ret;
+
+	ahci->host_flags = ATA_FLAG_SATA
+				| ATA_FLAG_NO_LEGACY
+				| ATA_FLAG_MMIO
+				| ATA_FLAG_PIO_DMA
+				| ATA_FLAG_NO_ATAPI;
+	ahci->pio_mask = 0x1f;
+	ahci->udma_mask = 0x7f;	/* FIXME: assume to support UDMA6 */
+
+	ahci_debug(ahci, "ahci_host_init: start\n");
+
+	cap_save = readl(mmio + HOST_CAP);
+	cap_save &= ((1 << 28) | (1 << 17));
+	cap_save |= (1 << 27);  /* Staggered Spin-up. Not needed. */
+
+	/* global controller reset */
+	tmp = ahci_ioread(ahci, HOST_CTL);
+	if ((tmp & HOST_RESET) == 0)
+		ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
+
+	/*
+	 * reset must complete within 1 second, or
+	 * the hardware should be considered fried.
+	 */
+	ret = wait_on_timeout(SECOND, (readl(mmio + HOST_CTL) & HOST_RESET) == 0);
+	if (ret) {
+		ahci_debug(ahci,"controller reset failed (0x%x)\n", tmp);
+		return -ENODEV;
+	}
+
+	ahci_iowrite_f(ahci, HOST_CTL, HOST_AHCI_EN);
+	ahci_iowrite(ahci, HOST_CAP, cap_save);
+	ahci_iowrite_f(ahci, HOST_PORTS_IMPL, 0xf);
+
+	ahci->cap = ahci_ioread(ahci, HOST_CAP);
+	ahci->port_map = ahci_ioread(ahci, HOST_PORTS_IMPL);
+	ahci->n_ports = (ahci->cap & 0x1f) + 1;
+
+	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
+	      ahci->cap, ahci->port_map, ahci->n_ports);
+
+	for (i = 0; i < ahci->n_ports; i++) {
+		struct ahci_port *ahci_port = &ahci->ports[i];
+
+		ahci_port->num = i;
+		ahci_port->ahci = ahci;
+		ahci_port->ata.dev = ahci->dev;
+		ahci_port->port_mmio = ahci_port_base(mmio, i);
+		ahci_port->ata.ops = &ahci_ops;
+		ata_port_register(&ahci_port->ata);
+	}
+
+	tmp = ahci_ioread(ahci, HOST_CTL);
+	ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
+	tmp = ahci_ioread(ahci, HOST_CTL);
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
