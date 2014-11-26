Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtfTx-0002cv-TP
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:50 +0100
Message-Id: <1417019394-23683-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] ARM: i.MX: ocotp: Fix MAC address provider for
 unaligned addresses
To: barebox@lists.infradead.org

The current algorithm assumes the MAC address starts at a 4 byte
aligned address. Unfortunately this is not always the case. On the
i.MX6sx the MAC Address for the second FEC starts at offset 0x632.
The register space for the fuse map has holes, only the 16 byte
aligned words contain data. This means we have to skip the holes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ocotp.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 837500f..419821b 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -320,6 +320,14 @@ static struct file_operations imx6_ocotp_ops = {
 	.lseek	= dev_lseek_default,
 };
 
+static uint32_t inc_offset(uint32_t offset)
+{
+	if ((offset & 0x3) == 0x3)
+		return offset + 0xd;
+	else
+		return offset + 1;
+}
+
 static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 {
 	char mac[6];
@@ -336,21 +344,24 @@ static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 
 	while (len >= MAC_ADDRESS_PROPLEN) {
 		struct device_node *rnode;
-		uint32_t phandle, offset, value;
+		uint32_t phandle, offset;
 
 		phandle = be32_to_cpup(prop++);
 
 		rnode = of_find_node_by_phandle(phandle);
 		offset = be32_to_cpup(prop++);
 
-		value = readl(base + offset + 0x10);
-		mac[0] = (value >> 8);
-		mac[1] = value;
-		value = readl(base + offset);
-		mac[2] = value >> 24;
-		mac[3] = value >> 16;
-		mac[4] = value >> 8;
-		mac[5] = value;
+		mac[5] = readb(base + offset);
+		offset = inc_offset(offset);
+		mac[4] = readb(base + offset);
+		offset = inc_offset(offset);
+		mac[3] = readb(base + offset);
+		offset = inc_offset(offset);
+		mac[2] = readb(base + offset);
+		offset = inc_offset(offset);
+		mac[1] = readb(base + offset);
+		offset = inc_offset(offset);
+		mac[0] = readb(base + offset);
 
 		of_eth_register_ethaddr(rnode, mac);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
