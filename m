Delivery-date: Tue, 01 Nov 2022 16:33:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optH3-00B069-Kr
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optH1-0005Yj-GF
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGB6K/DEYg44xpsAKIj1T1HLz/obk3cy4qB0mTZHqQ0=; b=IvVVxsDX11s2IFPHUQfEQRpWo2
	fVUQ7aaR34cDqbQDD3s28tyUDTPzgE7qdWfQTbj3m/y/iRwfhlIakPbAUsVDXJtJxZIhQHtQ49Vlk
	t87fzbXByebW2N7BBn6Tjz0JfGlXQqEbRJ3Fx+qa7omjNh+SUvUIwWvzI0ztOiQtKjCr3Iafdn/2T
	gx8CWE2J9CiKaWtm2ho06VUFQRAVrxs/10BBUU/5Cib2DzorXWo8Pgr0tPOMDPg14jdPJhcRp8gF0
	sFoj2PVjeOnFOPSLyo3tdoYBRAOBi7/hwwEVVaGK21RuePygO/HtDrEhV9Ac/v21DDxCamEod9yUq
	u+RJUCkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFX-005p9W-CA; Tue, 01 Nov 2022 15:32:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXU-4G
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-0004gu-Am; Tue, 01 Nov 2022 16:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001he2-L3; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003EyL-I8; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:48 +0100
Message-Id: <20221101153048.772146-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_537916_6065BD2D 
X-CRM114-Status: GOOD (  21.14  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/14] imx-bbu-nand-fcb: Add fcb command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The FCB on NAND has a special page layout and thus can't be read with
the normal MTD driver. Add a fcb command for printing information about
the installed FCB on the console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig          |   9 ++
 common/imx-bbu-nand-fcb.c | 195 ++++++++++++++++++++++++++++----------
 2 files changed, 153 insertions(+), 51 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 9894ecb9aa..cab72b9226 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -326,6 +326,15 @@ config CMD_SLICE
 	  command can be used to print informations about slices and also to manipulate
 	  them on the command line for debugging purposes.
 
+config CMD_FCB
+	depends on BAREBOX_UPDATE_IMX_NAND_FCB
+	tristate
+	prompt "fcb"
+	help
+	  Several i.MX SoCs booting from NAND flash need a so called Flash Control Block
+	  at the beginning of the NAND device. The fcb command prints information about
+	  the FCB.
+
 # end Information commands
 endmenu
 
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 05bee912e4..39425c7fc3 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -14,6 +14,8 @@
 #include <linux/sizes.h>
 #include <bbu.h>
 #include <fs.h>
+#include <command.h>
+#include <complete.h>
 #include <linux/mtd/mtd-abi.h>
 #include <linux/mtd/nand_mxs.h>
 #include <linux/mtd/mtd.h>
@@ -284,57 +286,57 @@ static __maybe_unused void dump_fcb(void *buf)
 {
 	struct fcb_block *fcb = buf;
 
-	pr_debug("Checksum:                   0x%08x\n", fcb->Checksum);
-	pr_debug("FingerPrint:                0x%08x\n", fcb->FingerPrint);
-	pr_debug("Version:                    0x%08x\n", fcb->Version);
-	pr_debug("DataSetup:                  0x%02x\n", fcb->DataSetup);
-	pr_debug("DataHold:                   0x%02x\n", fcb->DataHold);
-	pr_debug("AddressSetup:               0x%02x\n", fcb->AddressSetup);
-	pr_debug("DSAMPLE_TIME:               0x%02x\n", fcb->DSAMPLE_TIME);
-	pr_debug("NandTimingState:            0x%02x\n", fcb->NandTimingState);
-	pr_debug("REA:                        0x%02x\n", fcb->REA);
-	pr_debug("RLOH:                       0x%02x\n", fcb->RLOH);
-	pr_debug("RHOH:                       0x%02x\n", fcb->RHOH);
-	pr_debug("PageDataSize:               0x%08x\n", fcb->PageDataSize);
-	pr_debug("TotalPageSize:              0x%08x\n", fcb->TotalPageSize);
-	pr_debug("SectorsPerBlock:            0x%08x\n", fcb->SectorsPerBlock);
-	pr_debug("NumberOfNANDs:              0x%08x\n", fcb->NumberOfNANDs);
-	pr_debug("TotalInternalDie:           0x%08x\n", fcb->TotalInternalDie);
-	pr_debug("CellType:                   0x%08x\n", fcb->CellType);
-	pr_debug("EccBlockNEccType:           0x%08x\n", fcb->EccBlockNEccType);
-	pr_debug("EccBlock0Size:              0x%08x\n", fcb->EccBlock0Size);
-	pr_debug("EccBlockNSize:              0x%08x\n", fcb->EccBlockNSize);
-	pr_debug("EccBlock0EccType:           0x%08x\n", fcb->EccBlock0EccType);
-	pr_debug("MetadataBytes:              0x%08x\n", fcb->MetadataBytes);
-	pr_debug("NumEccBlocksPerPage:        0x%08x\n", fcb->NumEccBlocksPerPage);
-	pr_debug("EccBlockNEccLevelSDK:       0x%08x\n", fcb->EccBlockNEccLevelSDK);
-	pr_debug("EccBlock0SizeSDK:           0x%08x\n", fcb->EccBlock0SizeSDK);
-	pr_debug("EccBlockNSizeSDK:           0x%08x\n", fcb->EccBlockNSizeSDK);
-	pr_debug("EccBlock0EccLevelSDK:       0x%08x\n", fcb->EccBlock0EccLevelSDK);
-	pr_debug("NumEccBlocksPerPageSDK:     0x%08x\n", fcb->NumEccBlocksPerPageSDK);
-	pr_debug("MetadataBytesSDK:           0x%08x\n", fcb->MetadataBytesSDK);
-	pr_debug("EraseThreshold:             0x%08x\n", fcb->EraseThreshold);
-	pr_debug("BootPatch:                  0x%08x\n", fcb->BootPatch);
-	pr_debug("PatchSectors:               0x%08x\n", fcb->PatchSectors);
-	pr_debug("Firmware1_startingPage:     0x%08x\n", fcb->Firmware1_startingPage);
-	pr_debug("Firmware2_startingPage:     0x%08x\n", fcb->Firmware2_startingPage);
-	pr_debug("PagesInFirmware1:           0x%08x\n", fcb->PagesInFirmware1);
-	pr_debug("PagesInFirmware2:           0x%08x\n", fcb->PagesInFirmware2);
-	pr_debug("DBBTSearchAreaStartAddress: 0x%08x\n", fcb->DBBTSearchAreaStartAddress);
-	pr_debug("BadBlockMarkerByte:         0x%08x\n", fcb->BadBlockMarkerByte);
-	pr_debug("BadBlockMarkerStartBit:     0x%08x\n", fcb->BadBlockMarkerStartBit);
-	pr_debug("BBMarkerPhysicalOffset:     0x%08x\n", fcb->BBMarkerPhysicalOffset);
-	pr_debug("BCHType:                    0x%08x\n", fcb->BCHType);
-	pr_debug("TMTiming2_ReadLatency:      0x%08x\n", fcb->TMTiming2_ReadLatency);
-	pr_debug("TMTiming2_PreambleDelay:    0x%08x\n", fcb->TMTiming2_PreambleDelay);
-	pr_debug("TMTiming2_CEDelay:          0x%08x\n", fcb->TMTiming2_CEDelay);
-	pr_debug("TMTiming2_PostambleDelay:   0x%08x\n", fcb->TMTiming2_PostambleDelay);
-	pr_debug("TMTiming2_CmdAddPause:      0x%08x\n", fcb->TMTiming2_CmdAddPause);
-	pr_debug("TMTiming2_DataPause:        0x%08x\n", fcb->TMTiming2_DataPause);
-	pr_debug("TMSpeed:                    0x%08x\n", fcb->TMSpeed);
-	pr_debug("TMTiming1_BusyTimeout:      0x%08x\n", fcb->TMTiming1_BusyTimeout);
-	pr_debug("DISBBM:                     0x%08x\n", fcb->DISBBM);
-	pr_debug("BBMarkerPhysOfsInSpareData: 0x%08x\n", fcb->BBMarkerPhysicalOffsetInSpareData);
+	printf("Checksum:                   0x%08x\n", fcb->Checksum);
+	printf("FingerPrint:                0x%08x\n", fcb->FingerPrint);
+	printf("Version:                    0x%08x\n", fcb->Version);
+	printf("DataSetup:                  0x%02x\n", fcb->DataSetup);
+	printf("DataHold:                   0x%02x\n", fcb->DataHold);
+	printf("AddressSetup:               0x%02x\n", fcb->AddressSetup);
+	printf("DSAMPLE_TIME:               0x%02x\n", fcb->DSAMPLE_TIME);
+	printf("NandTimingState:            0x%02x\n", fcb->NandTimingState);
+	printf("REA:                        0x%02x\n", fcb->REA);
+	printf("RLOH:                       0x%02x\n", fcb->RLOH);
+	printf("RHOH:                       0x%02x\n", fcb->RHOH);
+	printf("PageDataSize:               0x%08x\n", fcb->PageDataSize);
+	printf("TotalPageSize:              0x%08x\n", fcb->TotalPageSize);
+	printf("SectorsPerBlock:            0x%08x\n", fcb->SectorsPerBlock);
+	printf("NumberOfNANDs:              0x%08x\n", fcb->NumberOfNANDs);
+	printf("TotalInternalDie:           0x%08x\n", fcb->TotalInternalDie);
+	printf("CellType:                   0x%08x\n", fcb->CellType);
+	printf("EccBlockNEccType:           0x%08x\n", fcb->EccBlockNEccType);
+	printf("EccBlock0Size:              0x%08x\n", fcb->EccBlock0Size);
+	printf("EccBlockNSize:              0x%08x\n", fcb->EccBlockNSize);
+	printf("EccBlock0EccType:           0x%08x\n", fcb->EccBlock0EccType);
+	printf("MetadataBytes:              0x%08x\n", fcb->MetadataBytes);
+	printf("NumEccBlocksPerPage:        0x%08x\n", fcb->NumEccBlocksPerPage);
+	printf("EccBlockNEccLevelSDK:       0x%08x\n", fcb->EccBlockNEccLevelSDK);
+	printf("EccBlock0SizeSDK:           0x%08x\n", fcb->EccBlock0SizeSDK);
+	printf("EccBlockNSizeSDK:           0x%08x\n", fcb->EccBlockNSizeSDK);
+	printf("EccBlock0EccLevelSDK:       0x%08x\n", fcb->EccBlock0EccLevelSDK);
+	printf("NumEccBlocksPerPageSDK:     0x%08x\n", fcb->NumEccBlocksPerPageSDK);
+	printf("MetadataBytesSDK:           0x%08x\n", fcb->MetadataBytesSDK);
+	printf("EraseThreshold:             0x%08x\n", fcb->EraseThreshold);
+	printf("BootPatch:                  0x%08x\n", fcb->BootPatch);
+	printf("PatchSectors:               0x%08x\n", fcb->PatchSectors);
+	printf("Firmware1_startingPage:     0x%08x\n", fcb->Firmware1_startingPage);
+	printf("Firmware2_startingPage:     0x%08x\n", fcb->Firmware2_startingPage);
+	printf("PagesInFirmware1:           0x%08x\n", fcb->PagesInFirmware1);
+	printf("PagesInFirmware2:           0x%08x\n", fcb->PagesInFirmware2);
+	printf("DBBTSearchAreaStartAddress: 0x%08x\n", fcb->DBBTSearchAreaStartAddress);
+	printf("BadBlockMarkerByte:         0x%08x\n", fcb->BadBlockMarkerByte);
+	printf("BadBlockMarkerStartBit:     0x%08x\n", fcb->BadBlockMarkerStartBit);
+	printf("BBMarkerPhysicalOffset:     0x%08x\n", fcb->BBMarkerPhysicalOffset);
+	printf("BCHType:                    0x%08x\n", fcb->BCHType);
+	printf("TMTiming2_ReadLatency:      0x%08x\n", fcb->TMTiming2_ReadLatency);
+	printf("TMTiming2_PreambleDelay:    0x%08x\n", fcb->TMTiming2_PreambleDelay);
+	printf("TMTiming2_CEDelay:          0x%08x\n", fcb->TMTiming2_CEDelay);
+	printf("TMTiming2_PostambleDelay:   0x%08x\n", fcb->TMTiming2_PostambleDelay);
+	printf("TMTiming2_CmdAddPause:      0x%08x\n", fcb->TMTiming2_CmdAddPause);
+	printf("TMTiming2_DataPause:        0x%08x\n", fcb->TMTiming2_DataPause);
+	printf("TMSpeed:                    0x%08x\n", fcb->TMSpeed);
+	printf("TMTiming1_BusyTimeout:      0x%08x\n", fcb->TMTiming1_BusyTimeout);
+	printf("DISBBM:                     0x%08x\n", fcb->DISBBM);
+	printf("BBMarkerPhysOfsInSpareData: 0x%08x\n", fcb->BBMarkerPhysicalOffsetInSpareData);
 }
 
 static __maybe_unused ssize_t raw_read_page(struct mtd_info *mtd, void *dst, loff_t offset)
@@ -1625,3 +1627,94 @@ int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
 	return ret;
 }
 #endif
+
+static void dump_fcb_n(struct fcb_block **fcbs, int n)
+{
+	int i;
+
+	if (!n || !fcbs[n])
+		goto skip_compare;
+
+	for (i = 0; i < n; i++) {
+		if (!fcbs[i] || !fcbs[n])
+			continue;
+
+		if (!memcmp(fcbs[i], fcbs[n], sizeof(struct fcb_block))) {
+			printf("FCB block#%d: same as FCB block#%d\n", n, i);
+			return;
+		}
+	}
+
+skip_compare:
+	if (fcbs[n]) {
+		printf("FCB block#%d:\n", n);
+		dump_fcb(fcbs[n]);
+	} else {
+		printf("FCB block#%d: NULL\n", n);
+	}
+}
+
+#ifdef CONFIG_ARCH_IMX28
+static int fcb_read(struct mtd_info *mtd, int block, struct fcb_block **retfcb)
+{
+	return fcb_read_hamming_13_8(mtd, block, retfcb);
+}
+#else
+static int fcb_read(struct mtd_info *mtd, int block, struct fcb_block **retfcb)
+{
+	if (cpu_is_mx7())
+		return imx7_fcb_read(mtd, block, retfcb);
+	else if (fcb_is_bch_encoded())
+		return fcb_read_bch(mtd, block, retfcb);
+	else
+		return fcb_read_hamming_13_8(mtd, block, retfcb);
+}
+#endif
+
+static int cmd_fcb(int argc, char *argv[])
+{
+	struct cdev *cdev;
+	struct mtd_info *mtd;
+	struct fcb_block *fcb[4] = {};
+	int i, ret;
+
+	cdev = cdev_open_by_name("nand0", O_RDONLY);
+	if (!cdev) {
+		printf("Cannot open nand0\n");
+		return COMMAND_ERROR;
+	}
+
+	mtd = cdev->mtd;
+	if (!mtd) {
+		ret = COMMAND_ERROR;
+		goto out;
+	}
+
+	for (i = 0; i < 4; i++)
+		fcb_read(mtd, i, &fcb[i]);
+
+	for (i = 0; i < 4; i++)
+		dump_fcb_n(fcb, i);
+
+	for (i = 0; i < 4; i++)
+		free(fcb[i]);
+
+	ret = 0;
+
+out:
+	cdev_close(cdev);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(fcb)
+BAREBOX_CMD_HELP_TEXT("Dump FCB as found on /dev/nand0")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(fcb)
+	.cmd = cmd_fcb,
+	BAREBOX_CMD_DESC("Dump Flash Control Block (FCB)")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_fcb_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
2.30.2



