Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkmeY-0007vY-R0
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 08:38:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fkmeN-0008Bs-8u
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 10:38:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Aug 2018 10:38:31 +0200
Message-Id: <20180801083831.12983-4-l.stach@pengutronix.de>
In-Reply-To: <20180801083831.12983-1-l.stach@pengutronix.de>
References: <20180801083831.12983-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: imx6: gw54xx: add fixup for PCIe switch
To: barebox@lists.infradead.org

After the PCIe switch has been scanned its GPIOs need to be
configured as output-high to release the devices behind the
switch from their reset state and make them discoverable to
the bus scan.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/gateworks-ventana/board.c | 29 +++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
index 3ff142ee4298..6f9e0343bed5 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -17,6 +17,7 @@
 #include <i2c/i2c.h>
 #include <init.h>
 #include <linux/marvell_phy.h>
+#include <linux/pci.h>
 #include <linux/phy.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
@@ -111,3 +112,31 @@ static int gw54xx_coredevices_init(void)
 	return 0;
 }
 coredevice_initcall(gw54xx_coredevices_init);
+
+/*
+ * fixup for PLX PEX8909 bridge to configure GPIO1-7 as output High
+ * as they are used for slots1-7 PERST#
+ */
+static void ventana_pciesw_early_fixup(struct pci_dev *dev)
+{
+	u32 dw;
+
+	if (!of_machine_is_compatible("gw,ventana"))
+		return;
+
+	if (dev->devfn != 0)
+		return;
+
+	pci_read_config_dword(dev, 0x62c, &dw);
+	dw |= 0xaaa8; // GPIO1-7 outputs
+	pci_write_config_dword(dev, 0x62c, dw);
+
+	pci_read_config_dword(dev, 0x644, &dw);
+	dw |= 0xfe;   // GPIO1-7 output high
+	pci_write_config_dword(dev, 0x644, dw);
+
+	mdelay(100);
+}
+DECLARE_PCI_FIXUP_EARLY(0x10b5, 0x8609, ventana_pciesw_early_fixup);
+DECLARE_PCI_FIXUP_EARLY(0x10b5, 0x8606, ventana_pciesw_early_fixup);
+DECLARE_PCI_FIXUP_EARLY(0x10b5, 0x8604, ventana_pciesw_early_fixup);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
