Delivery-date: Tue, 12 Oct 2021 03:56:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma71M-0006LW-5K
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 03:56:00 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma71K-0002AT-Mh
	for lore@pengutronix.de; Tue, 12 Oct 2021 03:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KT50reYvDAB4dJp9WnGiuYvMOPVLNyFUeeqZQrVPeOk=; b=utGB4QM3B6mQJH
	i1eyIZE5lq/LouXDDnk3VfH+2krjGbmBi5ykROm6hgwZ2IRnE9ASvgnz8nb0tYRmij79q6fAnso+u
	evsKV/fNoiXTE4S7VsHEpz5ohuR+VzOP6IPIN+K56eRLoerVoYqsjV3nbp3rDTBAOBBPKrcLCI9Hm
	W+qh8P5+xywbrc5msg/uAy6HQ/njMsFmR0wowVGmpqjzxPSI1avVWPhRkIofF2Ev9HlauaZQJbm7B
	bKwas9E21KGnP5TMobjUC++z5j35STpBl5Q9fxhtTgC1uP0ZW3r+VFQrykkukMnmrVA64GolT1ObS
	vPqHuZKeIMlkZaZlABWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma6za-00BE2k-Ar; Tue, 12 Oct 2021 01:54:10 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma6zU-00BE22-Mf
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 01:54:06 +0000
Received: by mail-pg1-x535.google.com with SMTP id s75so12399331pgs.5
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 18:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NHsYZtjViiYqe6BN4bUee9RUS+C+p02R6s1nYEsFfUE=;
 b=AFNREgw09Rr5o3FsuthzBYVtRucKc9kiQnWRexFMxEfxqWsvkj4DNK+SxLA8mn/Jmp
 ySkBu159QqcUVPHLYNWP+JHQWhl9kyz1wa7n1/uWdRFRVGGW9kNUfp8A0k+1clB3D9TY
 B5RyJZpyYFyzOVzCa0kDkJBmV5ptXU/3eKzqMESuOJtYqbhydoEI/VFI7z/h+FLcjbDD
 H06mlwlfeKCDwXXqV0oT0hg5Hoy1+2Br92bJy39hMqFrUYQKMYLnpgjR3pU2PPaFJ3KF
 3H2G/pIhMGaYWKnmUpFcA4EyQVnHVCtO3qRIe9eIdboER2oEUO/faWE//1E+GxGK3RFZ
 A8CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NHsYZtjViiYqe6BN4bUee9RUS+C+p02R6s1nYEsFfUE=;
 b=GuiQb4ObmdznLtY0q/6qdDSBp16TiRCUcz8K6NpqBU9GoEmHwBB8vUpyo9t2cFbGTZ
 i3eYj2Cx+VT4vBLjJ3p3SrJuBFs0pPXkHyKdtHgyg/2AzLfzanh0sGmmdXJNjvgRpUK1
 pLZGUCQpCtR5DbE7yvvVRgj+8TzuSoMetBWbT21AzXHjgXHs1nupRVvrZAGVP6yXSekQ
 gWUREk17teaL28NFxdppdHbD1Mzi9+9PWkNSNxCDn2cuwI6urk9y+2wZ8vO00/p8OqwK
 5d7htmt+5Z+xBsiZkl9qu6OWqwuW3rTuw9CrGzMdzgjoPcOiwoabpzxSFZKWU0w/3qtQ
 YUIA==
X-Gm-Message-State: AOAM531EK5vPgVVSw1bSFAO8cwQQJ4VN27pbhIfG/6CNijAmB91ag2P3
 5+1tdJKun9Ab8AhMBj+xqeNjBZyzT09Vy7hV
X-Google-Smtp-Source: ABdhPJwGU/FQDO25uMjhztIpAHzYhfwtMDQZmHlTXIyTVPmTAOJ8xYBisDlTpXxJwU4yyVMwBNW0Sw==
X-Received: by 2002:a63:3c5c:: with SMTP id i28mr18134463pgn.442.1634003643168; 
 Mon, 11 Oct 2021 18:54:03 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id 17sm9042509pfh.216.2021.10.11.18.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 18:54:02 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: Barebox List <barebox@lists.infradead.org>
Cc: Yunus Bas <Y.Bas@phytec.de>, Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 18:53:57 -0700
Message-Id: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_185404_964339_17270769 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] imx-bbu-nand-fcb: Show additional information from
 decoded FCB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In additional to the raw FCB fields, show some useful values calculated
from them.  E.g., display the size of the bootloader image in kB based
on the configured NAND page size and number of pages in the bootloader
image.  Example (all values in "()" are added):

Checksum:                   0xfffffa78
FingerPrint:                0x20424346
Version:                    0x01000000
DataSetup:                  0x50
DataHold:                   0x3c
AddressSetup:               0x19
DSAMPLE_TIME:               0x06
NandTimingState:            0x00
REA:                        0x00
RLOH:                       0x00
RHOH:                       0x00
PageDataSize:               0x00000800 (2 kB)
TotalPageSize:              0x00000840
SectorsPerBlock:            0x00000040 (128 kB eraseblocks)
NumberOfNANDs:              0x00000000
TotalInternalDie:           0x00000000
CellType:                   0x00000000
EccBlockNEccType:           0x00000004 (8 bits ECC)
EccBlock0Size:              0x00000200
EccBlockNSize:              0x00000200
EccBlock0EccType:           0x00000004 (8 bits ECC)
MetadataBytes:              0x0000000a
NumEccBlocksPerPage:        0x00000003 (total 4 blocks/page)
EccBlockNEccLevelSDK:       0x00000000
EccBlock0SizeSDK:           0x00000000
EccBlockNSizeSDK:           0x00000000
EccBlock0EccLevelSDK:       0x00000000
NumEccBlocksPerPageSDK:     0x00000000
MetadataBytesSDK:           0x00000000
EraseThreshold:             0x00000000
BootPatch:                  0x00000000
PatchSectors:               0x00000000
Firmware1_startingPage:     0x00000100 (address 0x080000)
Firmware2_startingPage:     0x00000380 (address 0x1c0000)
PagesInFirmware1:           0x000000f2 (484 kB)
PagesInFirmware2:           0x000000f2 (484 kB)
DBBTSearchAreaStartAddress: 0x00000001 (address 0x000800)
BadBlockMarkerByte:         0x000007cf
BadBlockMarkerStartBit:     0x00000000
BBMarkerPhysicalOffset:     0x00000800
BCHType:                    0x00000000
TMTiming2_ReadLatency:      0x00000000
TMTiming2_PreambleDelay:    0x00000000
TMTiming2_CEDelay:          0x00000000
TMTiming2_PostambleDelay:   0x00000000
TMTiming2_CmdAddPause:      0x00000000
TMTiming2_DataPause:        0x00000000
TMSpeed:                    0x00000000
TMTiming1_BusyTimeout:      0x00000000
DISBBM:                     0x00000000 (BBM swap enabled)
BBMarkerPhysOfsInSpareData: 0x00000000

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 common/imx-bbu-nand-fcb.c | 33 ++++++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 3b07d539e..7108a327a 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -293,18 +293,23 @@ static __maybe_unused void dump_fcb(void *buf)
 	pr_debug("REA:                        0x%02x\n", fcb->REA);
 	pr_debug("RLOH:                       0x%02x\n", fcb->RLOH);
 	pr_debug("RHOH:                       0x%02x\n", fcb->RHOH);
-	pr_debug("PageDataSize:               0x%08x\n", fcb->PageDataSize);
+	pr_debug("PageDataSize:               0x%08x (%d kB)\n",
+		 fcb->PageDataSize, fcb->PageDataSize / 1024);
 	pr_debug("TotalPageSize:              0x%08x\n", fcb->TotalPageSize);
-	pr_debug("SectorsPerBlock:            0x%08x\n", fcb->SectorsPerBlock);
+	pr_debug("SectorsPerBlock:            0x%08x (%u kB eraseblocks)\n",
+		 fcb->SectorsPerBlock, fcb->PageDataSize * fcb->SectorsPerBlock / 1024);
 	pr_debug("NumberOfNANDs:              0x%08x\n", fcb->NumberOfNANDs);
 	pr_debug("TotalInternalDie:           0x%08x\n", fcb->TotalInternalDie);
 	pr_debug("CellType:                   0x%08x\n", fcb->CellType);
-	pr_debug("EccBlockNEccType:           0x%08x\n", fcb->EccBlockNEccType);
+	pr_debug("EccBlockNEccType:           0x%08x (%d bits ECC)\n",
+		 fcb->EccBlockNEccType, fcb->EccBlockNEccType * 2);
 	pr_debug("EccBlock0Size:              0x%08x\n", fcb->EccBlock0Size);
 	pr_debug("EccBlockNSize:              0x%08x\n", fcb->EccBlockNSize);
-	pr_debug("EccBlock0EccType:           0x%08x\n", fcb->EccBlock0EccType);
+	pr_debug("EccBlock0EccType:           0x%08x (%d bits ECC)\n",
+		 fcb->EccBlock0EccType, fcb->EccBlock0EccType * 2);
 	pr_debug("MetadataBytes:              0x%08x\n", fcb->MetadataBytes);
-	pr_debug("NumEccBlocksPerPage:        0x%08x\n", fcb->NumEccBlocksPerPage);
+	pr_debug("NumEccBlocksPerPage:        0x%08x (total %d blocks/page)\n",
+		 fcb->NumEccBlocksPerPage, fcb->NumEccBlocksPerPage + 1);
 	pr_debug("EccBlockNEccLevelSDK:       0x%08x\n", fcb->EccBlockNEccLevelSDK);
 	pr_debug("EccBlock0SizeSDK:           0x%08x\n", fcb->EccBlock0SizeSDK);
 	pr_debug("EccBlockNSizeSDK:           0x%08x\n", fcb->EccBlockNSizeSDK);
@@ -314,11 +319,16 @@ static __maybe_unused void dump_fcb(void *buf)
 	pr_debug("EraseThreshold:             0x%08x\n", fcb->EraseThreshold);
 	pr_debug("BootPatch:                  0x%08x\n", fcb->BootPatch);
 	pr_debug("PatchSectors:               0x%08x\n", fcb->PatchSectors);
-	pr_debug("Firmware1_startingPage:     0x%08x\n", fcb->Firmware1_startingPage);
-	pr_debug("Firmware2_startingPage:     0x%08x\n", fcb->Firmware2_startingPage);
-	pr_debug("PagesInFirmware1:           0x%08x\n", fcb->PagesInFirmware1);
-	pr_debug("PagesInFirmware2:           0x%08x\n", fcb->PagesInFirmware2);
-	pr_debug("DBBTSearchAreaStartAddress: 0x%08x\n", fcb->DBBTSearchAreaStartAddress);
+	pr_debug("Firmware1_startingPage:     0x%08x (address 0x%06x)\n",
+		 fcb->Firmware1_startingPage, fcb->Firmware1_startingPage * fcb->PageDataSize);
+	pr_debug("Firmware2_startingPage:     0x%08x (address 0x%06x)\n",
+		 fcb->Firmware2_startingPage, fcb->Firmware2_startingPage * fcb->PageDataSize);
+	pr_debug("PagesInFirmware1:           0x%08x (%d kB)\n",
+		 fcb->PagesInFirmware1, fcb->PagesInFirmware1 * fcb->PageDataSize / 1024);
+	pr_debug("PagesInFirmware2:           0x%08x (%d kB)\n",
+		 fcb->PagesInFirmware2, fcb->PagesInFirmware2 * fcb->PageDataSize / 1024);
+	pr_debug("DBBTSearchAreaStartAddress: 0x%08x (address 0x%06x)\n",
+		 fcb->DBBTSearchAreaStartAddress, fcb->DBBTSearchAreaStartAddress * fcb->PageDataSize);
 	pr_debug("BadBlockMarkerByte:         0x%08x\n", fcb->BadBlockMarkerByte);
 	pr_debug("BadBlockMarkerStartBit:     0x%08x\n", fcb->BadBlockMarkerStartBit);
 	pr_debug("BBMarkerPhysicalOffset:     0x%08x\n", fcb->BBMarkerPhysicalOffset);
@@ -331,7 +341,8 @@ static __maybe_unused void dump_fcb(void *buf)
 	pr_debug("TMTiming2_DataPause:        0x%08x\n", fcb->TMTiming2_DataPause);
 	pr_debug("TMSpeed:                    0x%08x\n", fcb->TMSpeed);
 	pr_debug("TMTiming1_BusyTimeout:      0x%08x\n", fcb->TMTiming1_BusyTimeout);
-	pr_debug("DISBBM:                     0x%08x\n", fcb->DISBBM);
+	pr_debug("DISBBM:                     0x%08x (BBM swap %sabled)\n",
+		 fcb->DISBBM, fcb->DISBBM ? "dis" : "en");
 	pr_debug("BBMarkerPhysOfsInSpareData: 0x%08x\n", fcb->BBMarkerPhysicalOffsetInSpareData);
 }
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

