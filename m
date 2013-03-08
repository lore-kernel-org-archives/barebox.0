Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDueZ-0003Pi-QB
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 10:36:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 11:35:50 +0100
Message-Id: <1362738951-25614-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ata: ahci: implement init callback
To: barebox@lists.infradead.org

Now that we have framework support for delayed probing of
ata devices implement it in the ahci driver to actually make use
of it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ahci.c | 68 ++++++++++++++++++++++++------------------------------
 drivers/ata/ahci.h |  1 -
 2 files changed, 30 insertions(+), 39 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 1712006..46abbc2 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -275,12 +275,6 @@ static int ahci_write(struct ata_port *ata, const void *buf, unsigned int block,
 	return ahci_rw(ata, NULL, buf, block, num_blocks);
 }
 
-static struct ata_port_operations ahci_ops = {
-	.read_id = ahci_read_id,
-	.read = ahci_read,
-	.write = ahci_write,
-};
-
 static int ahci_init_port(struct ahci_port *ahci_port)
 {
 	void __iomem *port_mmio;
@@ -421,8 +415,6 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 
 	ahci_port_debug(ahci_port, "status: 0x%08x\n", val);
 
-	ahci_port->ata.ops = &ahci_ops;
-
 	if ((val & 0xf) == 0x03)
 		return 0;
 
@@ -438,6 +430,33 @@ err_alloc:
 	return ret;
 }
 
+static int ahci_port_start(struct ata_port *ata_port)
+{
+	struct ahci_port *ahci_port = container_of(ata_port, struct ahci_port, ata);
+	int ret;
+
+	ret = ahci_init_port(ahci_port);
+	if (ret)
+		return ret;
+
+	if (!ahci_link_ok(ahci_port, 1))
+		return -EIO;
+
+	ahci_port_write_f(ahci_port, PORT_CMD,
+			PORT_CMD_ICC_ACTIVE | PORT_CMD_FIS_RX |
+			PORT_CMD_POWER_ON | PORT_CMD_SPIN_UP |
+			PORT_CMD_START);
+
+	return 0;
+}
+
+static struct ata_port_operations ahci_ops = {
+	.init = ahci_port_start,
+	.read_id = ahci_read_id,
+	.read = ahci_read,
+	.write = ahci_write,
+};
+
 static int ahci_host_init(struct ahci_device *ahci)
 {
 	u8 *mmio = (u8 *)ahci->mmio_base;
@@ -483,9 +502,8 @@ static int ahci_host_init(struct ahci_device *ahci)
 		ahci_port->ahci = ahci;
 		ahci_port->ata.dev = ahci->dev;
 		ahci_port->port_mmio = ahci_port_base(mmio, i);
-		ret = ahci_init_port(ahci_port);
-		if (!ret)
-			ahci->link_port_map |= 1 << i;
+		ahci_port->ata.ops = &ahci_ops;
+		ata_port_register(&ahci_port->ata);
 	}
 
 	tmp = ahci_ioread(ahci, HOST_CTL);
@@ -495,25 +513,9 @@ static int ahci_host_init(struct ahci_device *ahci)
 	return 0;
 }
 
-static int ahci_port_start(struct ahci_port *ahci_port, u8 port)
-{
-	if (!ahci_link_ok(ahci_port, 1))
-		return -EIO;
-
-	ahci_port_write_f(ahci_port, PORT_CMD,
-			PORT_CMD_ICC_ACTIVE | PORT_CMD_FIS_RX |
-			PORT_CMD_POWER_ON | PORT_CMD_SPIN_UP |
-			PORT_CMD_START);
-
-	ata_port_register(&ahci_port->ata);
-
-	return 0;
-}
-
 static int __ahci_host_init(struct ahci_device *ahci)
 {
-	int i, rc = 0;
-	u32 linkmap;
+	int rc = 0;
 
 	ahci->host_flags = ATA_FLAG_SATA
 				| ATA_FLAG_NO_LEGACY
@@ -528,16 +530,6 @@ static int __ahci_host_init(struct ahci_device *ahci)
 	if (rc)
 		goto err_out;
 
-	linkmap = ahci->link_port_map;
-
-	for (i = 0; i < 32; i++) {
-		if (((linkmap >> i) & 0x01)) {
-			if (ahci_port_start(&ahci->ports[i], i)) {
-				printf("Can not start port %d\n", i);
-				continue;
-			}
-		}
-	}
 err_out:
 	return rc;
 }
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 72e5c1a..6324bf5 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -169,7 +169,6 @@ struct ahci_device {
 	void __iomem		*mmio_base;
 	u32			cap;		/* cache of HOST_CAP register */
 	u32			port_map;	/* cache of HOST_PORTS_IMPL reg */
-	u32			link_port_map;	/* linkup port map */
 	u32			pio_mask;
 	u32			udma_mask;
 	u32			host_flags;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
