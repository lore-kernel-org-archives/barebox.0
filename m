Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Cxs-00031W-Sk
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 12:52:02 +0000
Received: from 2e130e83.rdns.siel.si ([46.19.14.131]:24969
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <andrej.picej@norik.com>) id 1l2Cx6-008Cx0-7z
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 13:51:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
Date: Wed, 20 Jan 2021 13:51:05 +0100
Message-Id: <20210120125107.736121-2-andrej.picej@norik.com>
In-Reply-To: <20210120125107.736121-1-andrej.picej@norik.com>
References: <20210120125107.736121-1-andrej.picej@norik.com>
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
Subject: [PATCH 1/3] ARM: i.MX: move BCB structures to header file
To: barebox@lists.infradead.org

From: Primoz Fiser <primoz.fiser@norik.com>

Move i.MX BCB related structures to header file so they can be used by
others.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/mach-imx/include/mach/imx-nand-bcb.h | 80 +++++++++++++++++++
 common/imx-bbu-nand-fcb.c                     | 69 +---------------
 2 files changed, 81 insertions(+), 68 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx-nand-bcb.h

diff --git a/arch/arm/mach-imx/include/mach/imx-nand-bcb.h b/arch/arm/mach-imx/include/mach/imx-nand-bcb.h
new file mode 100644
index 000000000..b60205bd5
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx-nand-bcb.h
@@ -0,0 +1,80 @@
+#ifndef __MACH_IMX_NAND_BCB_H
+#define __MACH_IMX_NAND_BCB_H
+
+#define	FCB_FINGERPRINT		0x20424346	/* 'FCB' */
+#define	FCB_VERSION_1		0x01000000
+#define	FCB_FINGERPRINT_OFF	0x4		/* FCB fingerprint offset*/
+
+#define	DBBT_FINGERPRINT	0x54424244	/* 'DBBT' */
+#define	DBBT_VERSION_1		0x01000000
+#define	DBBT_FINGERPRINT_OFF	0x4		/* DBBT fingerprint offset*/
+
+struct dbbt_block {
+	uint32_t Checksum;
+	uint32_t FingerPrint;
+	uint32_t Version;
+	uint32_t numberBB; /* reserved on i.MX6 */
+	uint32_t DBBTNumOfPages;
+};
+
+struct fcb_block {
+	uint32_t Checksum;		/* First fingerprint in first byte */
+	uint32_t FingerPrint;		/* 2nd fingerprint at byte 4 */
+	uint32_t Version;		/* 3rd fingerprint at byte 8 */
+	uint8_t DataSetup;
+	uint8_t DataHold;
+	uint8_t AddressSetup;
+	uint8_t DSAMPLE_TIME;
+	/* These are for application use only and not for ROM. */
+	uint8_t NandTimingState;
+	uint8_t REA;
+	uint8_t RLOH;
+	uint8_t RHOH;
+	uint32_t PageDataSize;		/* 2048 for 2K pages, 4096 for 4K pages */
+	uint32_t TotalPageSize;		/* 2112 for 2K pages, 4314 for 4K pages */
+	uint32_t SectorsPerBlock;	/* Number of 2K sections per block */
+	uint32_t NumberOfNANDs;		/* Total Number of NANDs - not used by ROM */
+	uint32_t TotalInternalDie;	/* Number of separate chips in this NAND */
+	uint32_t CellType;		/* MLC or SLC */
+	uint32_t EccBlockNEccType;	/* Type of ECC, can be one of BCH-0-20 */
+	uint32_t EccBlock0Size;		/* Number of bytes for Block0 - BCH */
+	uint32_t EccBlockNSize;		/* Block size in bytes for all blocks other than Block0 - BCH */
+	uint32_t EccBlock0EccType;	/* Ecc level for Block 0 - BCH */
+	uint32_t MetadataBytes;		/* Metadata size - BCH */
+	uint32_t NumEccBlocksPerPage;	/* Number of blocks per page for ROM use - BCH */
+	uint32_t EccBlockNEccLevelSDK;	/* Type of ECC, can be one of BCH-0-20 */
+	uint32_t EccBlock0SizeSDK;	/* Number of bytes for Block0 - BCH */
+	uint32_t EccBlockNSizeSDK;	/* Block size in bytes for all blocks other than Block0 - BCH */
+	uint32_t EccBlock0EccLevelSDK;	/* Ecc level for Block 0 - BCH */
+	uint32_t NumEccBlocksPerPageSDK;/* Number of blocks per page for SDK use - BCH */
+	uint32_t MetadataBytesSDK;	/* Metadata size - BCH */
+	uint32_t EraseThreshold;	/* To set into BCH_MODE register */
+	uint32_t BootPatch;		/* 0 for normal boot and 1 to load patch starting next to FCB */
+	uint32_t PatchSectors;		/* Size of patch in sectors */
+	uint32_t Firmware1_startingPage;/* Firmware image starts on this sector */
+	uint32_t Firmware2_startingPage;/* Secondary FW Image starting Sector */
+	uint32_t PagesInFirmware1;	/* Number of sectors in firmware image */
+	uint32_t PagesInFirmware2;	/* Number of sector in secondary FW image */
+	uint32_t DBBTSearchAreaStartAddress; /* Page address where dbbt search area begins */
+	uint32_t BadBlockMarkerByte;	/* Byte in page data that have manufacturer marked bad block marker, */
+					/* this will be swapped with metadata[0] to complete page data. */
+	uint32_t BadBlockMarkerStartBit;/* For BCH ECC sizes other than 8 and 16 the bad block marker does not */
+					/* start at 0th bit of BadBlockMarkerByte. This field is used to get to */
+					/* the start bit of bad block marker byte with in BadBlockMarkerByte */
+	uint32_t BBMarkerPhysicalOffset;/* FCB value that gives byte offset for bad block marker on physical NAND page */
+	uint32_t BCHType;
+
+	uint32_t TMTiming2_ReadLatency;
+	uint32_t TMTiming2_PreambleDelay;
+	uint32_t TMTiming2_CEDelay;
+	uint32_t TMTiming2_PostambleDelay;
+	uint32_t TMTiming2_CmdAddPause;
+	uint32_t TMTiming2_DataPause;
+	uint32_t TMSpeed;
+	uint32_t TMTiming1_BusyTimeout;
+
+	uint32_t DISBBM;	/* the flag to enable (1)/disable(0) bi swap */
+	uint32_t BBMarkerPhysicalOffsetInSpareData; /* The swap position of main area in spare area */
+};
+
+#endif /* __MACH_IMX_NAND_BCB_H */
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index f8c457805..a08a1d834 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -25,6 +25,7 @@
 #include <crc.h>
 #include <mach/generic.h>
 #include <mtd/mtd-peb.h>
+#include <mach/imx-nand-bcb.h>
 
 #ifdef CONFIG_ARCH_IMX6
 #include <mach/imx6.h>
@@ -39,74 +40,6 @@ static inline int fcb_is_bch_encoded(void)
 }
 #endif
 
-struct dbbt_block {
-	uint32_t Checksum;
-	uint32_t FingerPrint;
-	uint32_t Version;
-	uint32_t numberBB; /* reserved on i.MX6 */
-	uint32_t DBBTNumOfPages;
-};
-
-struct fcb_block {
-	uint32_t Checksum;		/* First fingerprint in first byte */
-	uint32_t FingerPrint;		/* 2nd fingerprint at byte 4 */
-	uint32_t Version;		/* 3rd fingerprint at byte 8 */
-	uint8_t DataSetup;
-	uint8_t DataHold;
-	uint8_t AddressSetup;
-	uint8_t DSAMPLE_TIME;
-	/* These are for application use only and not for ROM. */
-	uint8_t NandTimingState;
-	uint8_t REA;
-	uint8_t RLOH;
-	uint8_t RHOH;
-	uint32_t PageDataSize;		/* 2048 for 2K pages, 4096 for 4K pages */
-	uint32_t TotalPageSize;		/* 2112 for 2K pages, 4314 for 4K pages */
-	uint32_t SectorsPerBlock;	/* Number of 2K sections per block */
-	uint32_t NumberOfNANDs;		/* Total Number of NANDs - not used by ROM */
-	uint32_t TotalInternalDie;	/* Number of separate chips in this NAND */
-	uint32_t CellType;		/* MLC or SLC */
-	uint32_t EccBlockNEccType;	/* Type of ECC, can be one of BCH-0-20 */
-	uint32_t EccBlock0Size;		/* Number of bytes for Block0 - BCH */
-	uint32_t EccBlockNSize;		/* Block size in bytes for all blocks other than Block0 - BCH */
-	uint32_t EccBlock0EccType;	/* Ecc level for Block 0 - BCH */
-	uint32_t MetadataBytes;		/* Metadata size - BCH */
-	uint32_t NumEccBlocksPerPage;	/* Number of blocks per page for ROM use - BCH */
-	uint32_t EccBlockNEccLevelSDK;	/* Type of ECC, can be one of BCH-0-20 */
-	uint32_t EccBlock0SizeSDK;	/* Number of bytes for Block0 - BCH */
-	uint32_t EccBlockNSizeSDK;	/* Block size in bytes for all blocks other than Block0 - BCH */
-	uint32_t EccBlock0EccLevelSDK;	/* Ecc level for Block 0 - BCH */
-	uint32_t NumEccBlocksPerPageSDK;/* Number of blocks per page for SDK use - BCH */
-	uint32_t MetadataBytesSDK;	/* Metadata size - BCH */
-	uint32_t EraseThreshold;	/* To set into BCH_MODE register */
-	uint32_t BootPatch;		/* 0 for normal boot and 1 to load patch starting next to FCB */
-	uint32_t PatchSectors;		/* Size of patch in sectors */
-	uint32_t Firmware1_startingPage;/* Firmware image starts on this sector */
-	uint32_t Firmware2_startingPage;/* Secondary FW Image starting Sector */
-	uint32_t PagesInFirmware1;	/* Number of sectors in firmware image */
-	uint32_t PagesInFirmware2;	/* Number of sector in secondary FW image */
-	uint32_t DBBTSearchAreaStartAddress; /* Page address where dbbt search area begins */
-	uint32_t BadBlockMarkerByte;	/* Byte in page data that have manufacturer marked bad block marker, */
-					/* this will be swapped with metadata[0] to complete page data. */
-	uint32_t BadBlockMarkerStartBit;/* For BCH ECC sizes other than 8 and 16 the bad block marker does not */
-					/* start at 0th bit of BadBlockMarkerByte. This field is used to get to */
-					/* the start bit of bad block marker byte with in BadBlockMarkerByte */
-	uint32_t BBMarkerPhysicalOffset;/* FCB value that gives byte offset for bad block marker on physical NAND page */
-	uint32_t BCHType;
-
-	uint32_t TMTiming2_ReadLatency;
-	uint32_t TMTiming2_PreambleDelay;
-	uint32_t TMTiming2_CEDelay;
-	uint32_t TMTiming2_PostambleDelay;
-	uint32_t TMTiming2_CmdAddPause;
-	uint32_t TMTiming2_DataPause;
-	uint32_t TMSpeed;
-	uint32_t TMTiming1_BusyTimeout;
-
-	uint32_t DISBBM;	/* the flag to enable (1)/disable(0) bi swap */
-	uint32_t BBMarkerPhysicalOffsetInSpareData; /* The swap position of main area in spare area */
-};
-
 struct imx_nand_fcb_bbu_handler {
 	struct bbu_handler handler;
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
