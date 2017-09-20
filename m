Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dujON-0001vg-S8
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 18:06:37 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 20 Sep 2017 20:05:57 +0200
Message-Id: <20170920180557.22857-3-linux@rempel-privat.de>
In-Reply-To: <20170920180557.22857-1-linux@rempel-privat.de>
References: <20170920180557.22857-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/3] MIPS: ath79: provide driver for Atheros ART partition
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

this partition contains calibration data for WiFi and
some board specific data, like MAC address.

For now we care only about MAC.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/Makefile |   1 +
 arch/mips/mach-ath79/art.c    | 126 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 127 insertions(+)
 create mode 100644 arch/mips/mach-ath79/art.c

diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
index 3772daeba..b827b363c 100644
--- a/arch/mips/mach-ath79/Makefile
+++ b/arch/mips/mach-ath79/Makefile
@@ -1,2 +1,3 @@
 obj-y += reset.o
 obj-y += bbu.o
+obj-y += art.o
diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
new file mode 100644
index 000000000..78f9f1382
--- /dev/null
+++ b/arch/mips/mach-ath79/art.c
@@ -0,0 +1,126 @@
+/*
+ * Copyright (c) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <malloc.h>
+#include <partition.h>
+#include <libfile.h>
+#include <fcntl.h>
+#include <unistd.h>
+#include <net.h>
+
+struct ar9300_eeprom {
+	u8 eeprom_version;
+	u8 template_version;
+	u8 mac_addr[6];
+};
+
+static int art_set_mac(struct device_d *dev, struct ar9300_eeprom *eeprom)
+{
+	struct device_node *node = dev->device_node;
+	struct device_node *rnode;
+
+	if (!node)
+		return -ENOENT;
+
+	rnode = of_parse_phandle_from(node, NULL,
+				     "barebox,provide-mac-address", 0);
+	if (!rnode)
+		return -ENOENT;
+
+	of_eth_register_ethaddr(rnode, &eeprom->mac_addr[0]);
+
+	return 0;
+}
+
+static int art_read_mac(struct device_d *dev, const char *file)
+{
+	int fd, rbytes;
+	struct ar9300_eeprom eeprom;
+
+	fd = open_and_lseek(file, O_RDONLY, 0x1000);
+	if (fd < 0) {
+		dev_err(dev, "Failed to open eeprom path %s %d\n",
+		       file, -errno);
+		return -errno;
+	}
+
+	rbytes = read_full(fd, &eeprom, sizeof(eeprom));
+	close(fd);
+	if (rbytes <= 0 || rbytes < sizeof(eeprom)) {
+		dev_err(dev, "Failed to read %s\n", file);
+		return -EIO;
+	}
+
+	dev_dbg(dev, "ART version: %x.%x\n",
+		 eeprom.eeprom_version, eeprom.template_version);
+	dev_dbg(dev, "mac: %02x:%02x:%02x:%02x:%02x:%02x\n",
+	       eeprom.mac_addr[0],
+	       eeprom.mac_addr[1],
+	       eeprom.mac_addr[2],
+	       eeprom.mac_addr[3],
+	       eeprom.mac_addr[4],
+	       eeprom.mac_addr[5]);
+
+	if (!is_valid_ether_addr(&eeprom.mac_addr[0])) {
+		dev_err(dev, "bad MAC addr\n");
+		return -EILSEQ;
+	}
+
+	return art_set_mac(dev, &eeprom);
+}
+
+static int art_probe(struct device_d *dev)
+{
+	char *path;
+	int ret;
+
+	dev_dbg(dev, "found ART partition\n");
+
+	ret = of_find_path(dev->device_node, "device-path", &path, 0);
+	if (ret) {
+		dev_err(dev, "can't find path\n");
+		return ret;
+	}
+
+	return art_read_mac(dev, path);
+}
+
+static struct of_device_id art_dt_ids[] = {
+	{
+		.compatible = "qca,art",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d art_driver = {
+	.name		= "qca-art",
+	.probe		= art_probe,
+	.of_compatible	= art_dt_ids,
+};
+
+static int art_of_driver_init(void)
+{
+	platform_driver_register(&art_driver);
+
+	return 0;
+}
+late_initcall(art_of_driver_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
