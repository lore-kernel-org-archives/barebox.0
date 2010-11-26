Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PX-0002v1-AF
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:51 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:41 +0100
Message-Id: <1290801161-2417-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101126194353.GH26540@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/12] cfi_flash_amd: Add manufacturer-specific fixups
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>, Haavard Skinnemoen <hskinnemoen@atmel.com>

Run fixups based on the JEDEC manufacturer ID independent of the
command set ID.

This changes current behaviour: Previously, geometry reversal for AMD
chips were done based on the command set ID, while they are now done
based on the JEDEC manufacturer and device ID.

Also add fixup for top-boot Atmel chips.

based on U-Boot

Signed-off-by: Haavard Skinnemoen <hskinnemoen@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash_amd.c |   39 ++++++++++++++++++++++++++++++++++++++-
 1 files changed, 38 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index b50de22..b1d7070 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -201,7 +201,11 @@ static int amd_flash_real_protect (struct flash_info *info, long sector, int pro
 	return 0;
 }
 
-static void amd_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
+/*
+ * Manufacturer-specific quirks. Add workarounds for geometry
+ * reversal, etc. here.
+ */
+static void flash_fixup_amd (struct flash_info *info, struct cfi_qry *qry)
 {
 	/* check if flash geometry needs reversal */
 	if (qry->num_erase_regions > 1) {
@@ -218,6 +222,39 @@ static void amd_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
 	}
 }
 
+static void flash_fixup_atmel(struct flash_info *info, struct cfi_qry *qry)
+{
+	int reverse_geometry = 0;
+
+	/* Check the "top boot" bit in the PRI */
+	if (info->ext_addr && !(flash_read_uchar(info, info->ext_addr + 6) & 1))
+		reverse_geometry = 1;
+
+	/* AT49BV6416(T) list the erase regions in the wrong order.
+	 * However, the device ID is identical with the non-broken
+	 * AT49BV642D since u-boot only reads the low byte (they
+	 * differ in the high byte.) So leave out this fixup for now.
+	 */
+	if (info->device_id == 0xd6 || info->device_id == 0xd2)
+		reverse_geometry = !reverse_geometry;
+
+	if (reverse_geometry)
+		cfi_reverse_geometry(qry);
+}
+
+static void amd_flash_fixup(struct flash_info *info, struct cfi_qry *qry)
+{
+	/* Do manufacturer-specific fixups */
+	switch (info->manufacturer_id) {
+	case 0x0001:
+		flash_fixup_amd(info, qry);
+		break;
+	case 0x001f:
+		flash_fixup_atmel(info, qry);
+		break;
+        }
+}
+
 struct cfi_cmd_set cfi_cmd_set_amd = {
 	.flash_write_cfibuffer = amd_flash_write_cfibuffer,
 	.flash_erase_one = amd_flash_erase_one,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
