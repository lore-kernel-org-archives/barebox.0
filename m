Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YG60G-0002fi-AM
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 13:16:24 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C60E9A0024C
 for <barebox@lists.infradead.org>; Tue, 27 Jan 2015 14:16:42 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Tue, 27 Jan 2015 14:14:59 +0100
Message-Id: <1422364499-31437-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] ARM: i.MX6: Fix bad block marker in imx6-bbu-nand handler
To: barebox@lists.infradead.org

The i.MX6 NAND update handler sets all bytes of OOB data to 0x00 in pages that
contain the FCB structure currently.  So the first and second byte which is
used as the manufacturers bad block marker is in the 'bad block' state. A scan
for factory bad blocks will detect these blocks as bad while they are still ok.

The barebox issues a scan for factory bad blocks to rebuild the bad block table
if the NAND is brand new or the last four blocks of flash are erased.

To fix this problem set the first two bytes of OOB data to 0xFF explicitly.

There is a potential chance that the bbu handler will mark a real bad block as
factory good. That's not a problem for the ROM Loader, because the FCB is
protected by a checksum and the hamming_13_8 encoding. Additionally the current
implementation of the bbu handler does not check the bad block table or the
factory bad block marker before writing the FCB at the first page of the first
and second block.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/mach-imx/imx6-bbu-nand.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-imx/imx6-bbu-nand.c b/arch/arm/mach-imx/imx6-bbu-nand.c
index fb7224c..063558b 100644
--- a/arch/arm/mach-imx/imx6-bbu-nand.c
+++ b/arch/arm/mach-imx/imx6-bbu-nand.c
@@ -421,6 +421,16 @@ static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *da
 
 	fcb_create(fcb, mtd);
 	encode_hamming_13_8(fcb, ecc, 512);
+
+	/*
+	 * Set the first and second byte of OOB data to 0xFF, not 0x00. These
+	 * bytes are used as the Manufacturers Bad Block Marker (MBBM). Since
+	 * the FCB is mostly written to the first page in a block, a scan for
+	 * factory bad blocks will detect these blocks as bad, e.g. when
+	 * function nand_scan_bbt() is executed to build a new bad block table.
+	 */
+	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
+
 	ret = raw_write_page(mtd, fcb_raw_page, 0);
 	if (ret)
 		goto out;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
