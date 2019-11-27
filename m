Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQC-00077e-KR
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:37 +0100
Message-Id: <20191127112337.18719-7-s.hauer@pengutronix.de>
In-Reply-To: <20191127112337.18719-1-s.hauer@pengutronix.de>
References: <20191127112337.18719-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] ARM Layerscape: ls1046ardb: read nxid eeprom
To: Barebox List <barebox@lists.infradead.org>

This adds support for reading the EEPROM which has a "NXID" data
structure on it. The MAC addresses for the ethernet devices are
found here which are registered with this patch.

The NXID data structure is also found on other NXP Layerscape boards,
so once we support other boards the code should be moved somewhere
where it can be shared between boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/board.c | 102 +++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index 606f65ce9d..d744737773 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -3,7 +3,11 @@
 #include <common.h>
 #include <init.h>
 #include <bbu.h>
+#include <net.h>
+#include <crc.h>
+#include <fs.h>
 #include <envfs.h>
+#include <libfile.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
 #include <linux/clk.h>
@@ -12,6 +16,104 @@
 #include <mach/layerscape.h>
 #include <mach/bbu.h>
 
+#define MAX_NUM_PORTS 16
+struct nxid {
+	u8 id[4];         /* 0x00 - 0x03 EEPROM Tag 'NXID' */
+	u8 sn[12];        /* 0x04 - 0x0F Serial Number */
+	u8 errata[5];     /* 0x10 - 0x14 Errata Level */
+	u8 date[6];       /* 0x15 - 0x1a Build Date */
+	u8 res_0;         /* 0x1b        Reserved */
+	u32 version;      /* 0x1c - 0x1f NXID Version */
+	u8 tempcal[8];    /* 0x20 - 0x27 Temperature Calibration Factors */
+	u8 tempcalsys[2]; /* 0x28 - 0x29 System Temperature Calibration Factors */
+	u8 tempcalflags;  /* 0x2a        Temperature Calibration Flags */
+	u8 res_1[21];     /* 0x2b - 0x3f Reserved */
+	u8 mac_count;     /* 0x40        Number of MAC addresses */
+	u8 mac_flag;      /* 0x41        MAC table flags */
+	u8 mac[MAX_NUM_PORTS][6];     /* 0x42 - 0xa1 MAC addresses */
+	u8 res_2[90];     /* 0xa2 - 0xfb Reserved */	
+	u32 crc;          /* 0xfc - 0xff CRC32 checksum */
+} __packed;
+
+static int nxid_is_valid(struct nxid *nxid)
+{
+	unsigned char id[] = { 'N', 'X', 'I', 'D' };
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(id); i++)
+		if (nxid->id[i] != id[i])
+			return false;
+	return true;
+}
+
+static struct nxid *nxp_nxid_read(const char *filename, unsigned int offset)
+{
+	struct nxid *nxid;
+	int fd, ret, i;
+	struct device_node *root;
+	u32 crc, crc_expected;
+
+	nxid = xzalloc(sizeof(*nxid));
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		ret = -errno;
+		goto out;
+	}
+
+	ret = pread(fd, nxid, sizeof(*nxid), offset);
+	if (ret < 0) {
+		close(fd);
+		goto out;
+	}
+
+	if (!nxid_is_valid(nxid)) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	crc = crc32(0, nxid, 256 - 4);
+	crc_expected = be32_to_cpu(nxid->crc);
+	if (crc != crc_expected) {
+		pr_err("CRC mismatch (%08x != %08x)\n", crc, crc_expected);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	root = of_get_root_node();
+
+	for (i = 0; i < nxid->mac_count; i++) {
+		struct device_node *np;
+		char alias[sizeof("ethernetxxx")];
+		const char *ethaddr = nxid->mac[i];
+
+		sprintf(alias, "ethernet%d", i);
+
+		np = of_find_node_by_alias(root, alias);
+		if (!np)
+			continue;
+		
+		of_eth_register_ethaddr(np, ethaddr);
+	}
+
+	ret = 0;
+out:
+	if (ret) {
+		free(nxid);
+		nxid = ERR_PTR(ret);
+	}
+
+	return nxid;
+}
+
+static int rdb_late_init(void)
+{
+	nxp_nxid_read("/dev/eeprom", 256);
+
+	return 0;
+}
+late_initcall(rdb_late_init);
+
 static int rdb_mem_init(void)
 {
 	int ret;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
