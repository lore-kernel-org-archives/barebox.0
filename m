Delivery-date: Sat, 13 Jun 2026 22:52:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wYVLO-005XT7-0H
	for lore@lore.pengutronix.de;
	Sat, 13 Jun 2026 22:52:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wYVLM-0005Et-Ns
	for lore@pengutronix.de; Sat, 13 Jun 2026 22:52:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mJ8JvcwZTrFMyFg2eNLcVnHORYcP3E+rByGDRc2gG98=; b=X1uUx6ud/60S1gej6xA+NnsIg/
	8CHkW2v+hTOHOjPNCftegQYF4f+CMfaLngzv7aZ1zUb8fDW0y2TKLCattXliqlZbpBUuUZHIfDkYl
	8Pi2NeJvln7gYtcxA+e9OIRpRIbHa555+pheHE0BbLC1maBvp6qlafL867nYoRkUldDc9Rdjc2R1U
	I7n2+2IypDHc+F0OP5gQHkN83q+D68qHgR7o+bX4bsgAT4gkNpO8oeAc3zeBLwycA6M+PO1s2d6GA
	1fz2ZQmYAXxWxOqOIfJY3OisVL+59kzbTynqipwa1IzwjRpWfj8jVJxC8tNyFp0sme11TBg/I2djf
	/ZizcQOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYUTA-0000000CWUF-1w2W;
	Sat, 13 Jun 2026 19:56:40 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYUT6-0000000CWTr-2nLM
	for barebox@lists.infradead.org;
	Sat, 13 Jun 2026 19:56:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TLZ/IF6vZkNFxZbGgzJvKotIfxze+vawHeXl7Xq+JUatqf3j1Ht6ZZVOiJMdZix7v+HOlMRyS1rox4b/jJKTi3dK3xxU/9NZtLVXgrTDN0QQBDcBWJ6PdNqFy7Q4Gn+i4mxt3aVpm2yYuS0mvLVvWvQpXdUHADzpQRDXMKKWNetiaomAGinKkDXiCru51deipzVSYTI9N2my4DyqDGrUZcR1x3EMk8Phz0cPI69Jg286Z6Yyzk9iO4tCVoEbgk2AhW+lPpVvl+WQjXgstaMnckWEjx2tyuO/McVsGN3lWS4OBvxXF7K0xomoXJtlnh33VblyLqzz2qvMlUMSc3+YyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJ8JvcwZTrFMyFg2eNLcVnHORYcP3E+rByGDRc2gG98=;
 b=H/JUm54FdkiZgPe9zdR4bNf0ySHCjbX0LhnWuB9oQaJ3Qp6z1tUDifLF/CulhD+6MfVoEry3up2AkI3ihG4PUuDXgPv53gare5yU3H79cnlGOgGzHm0acF87dmR68cnGj++r3lv01GSYm1OmUkOSFASkGjQL9psOfRRYiu+Q2mHd4a8NAjrcYUdLN4cFIFzZ4VqpUUFKVZICbiCB4D+t/JkZMnwNMjXTV5tdgIYPPQpaDCBzTZ6HQhALCbng5kJgaHakM1GLfuf4zcS1lQRd7yuntWQnC8YIANLNevsBDxkOdet49d3y73CafhkFsdzOWT5UnVuA06hWwI2UoAFqeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mJ8JvcwZTrFMyFg2eNLcVnHORYcP3E+rByGDRc2gG98=;
 b=FF8D73wXukAYnvbGufc7W97ZKDYHni+PuQFfypR6ECoymZ3GDFd4F14OXCNsL3dGTslAuBK8OOfcIEDhMAZdCUXzqliB04B3RxKgw3xo0vr6uJdNTd+1zQSwwoiJ9t+zzIdSQuFxBi2sC4E+2wLd+VvvJ4zEaiVstvY/GxiAiHE=
Received: from DB9PR05CA0005.eurprd05.prod.outlook.com (2603:10a6:10:1da::10)
 by VI1PR06MB8851.eurprd06.prod.outlook.com (2603:10a6:800:1d5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Sat, 13 Jun
 2026 19:56:28 +0000
Received: from DB1PEPF00039231.eurprd03.prod.outlook.com
 (2603:10a6:10:1da:cafe::40) by DB9PR05CA0005.outlook.office365.com
 (2603:10a6:10:1da::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.16 via Frontend Transport; Sat,
 13 Jun 2026 19:56:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF00039231.mail.protection.outlook.com (10.167.8.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.7 via Frontend Transport; Sat, 13 Jun 2026 19:56:27 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 13 Jun 2026 21:56:27 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 13 Jun 2026 19:56:25 +0000
Message-ID: <20260613195626.1650288-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 13 Jun 2026 19:56:27.0472 (UTC) FILETIME=[B8812D00:01DCFB6E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF00039231:EE_|VI1PR06MB8851:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 383431d1-f568-4e7b-e475-08dec985db37
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|82310400026|376014|1800799024|56012099006|11063799006|5023799004|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info: KZD1L1NgmvUeny/aElasjTfdZ5B7sgwmm81yIHDGZJ9h5vwGJBn9+xG7FmhQj+VihOjx8P4+MeWnX2Eu3POr2Sdhq3g3ySs53xKWn5G4ixgELJOlMZveVxdAsMeQXp1QF90e4aApFYo8aHvMgYcUzGLMDiluohysuJ2CnP2uObT6mP7OW/4ySYKXFASCyhKvhT4XNFOUhZ6vR85NaQiWL7q1UwvV2tb+OM9tsddleWFJJEf6z9TRiRJSjTH7AswxDPPW7ZIWU3GV7FBwvJZWwMRLyuE36uecPHLN/boYol083ieDvWwH95utm105mUGYCWrFejc3YQEh9EnvwDiAWsXTf3IWVjZpgo4RooPk0PlBTq5IBmIGgPGhf7FM7b8SKj/P70dQ9G4NNLBtr7c+NW3gUS1KsVWNd3cPuViubWfnH1jlrrvAL+ux5rtFPZCAhHOYmy6eE0QVgN05LuCrg1klJQHbfoeQgy9dfKdnOJxrLZvOVGdNyObPZo7PYVZS8A4ruhTeZ2feNwaBG4RJbLN5kMrs+0SXLdyROyxNo2RyfEzkv0FFZFaIw5MPtM0z0sXKtEs53MqKcFz1XEXUuHhLnHO3UbowvgNZskJGLoCExGKS4uTzr6jKBYsjnydFYBuz43ofhzkTE2M4VhAmBtozs5D7ZG6Y3cmeNtcOF2Mfg+1FqMHVrdrFsWfBY7tOy+urobBy9YZ4pyelb8Q26GaNOSc/hnMb0TxPEFPAs40=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(82310400026)(376014)(1800799024)(56012099006)(11063799006)(5023799004)(18002099003)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: dnkhd1FLiu5VxqNKmnlrOxlud3MkCvf0M/Rm9dTAbxO7xEr60RYBbIKJaRItcHXiFcNr2se+tBWSTdDK/WA8ItA7l+Tz9pRwgc+c9qkAWwL+w1PPggwbgy23kcYMAytDLQcJUg8zFNJw7uqfEUdwSQAN7OIOr8F/DZ8CjTKiB9MqC5owJBTgOpegg10UfjwuQBPaZnBCRDRFcu/DrgiTdRBMTGPE+Kj1Cjqz4Mkzd1+eDhjd8wHKwGOyoyE5UlUD79WbkZynfFDRVsmNUr4bsdEgeoEeh8YzEtaTZjH7nLQcCNDZY+JSAnrtnJLk/qbeAeCY1v66G7nx/6foGShk6Aa2CeeYTqDRQ2/77dxlhd9POogeYAJm/8GXRDSPLR4iuwyr+8GoIKYg4BBUTRbyLYJmVjlGommovxAUUIklBGday92ixBTBrsiyI9PhjQcH
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2026 19:56:27.8257
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 383431d1-f568-4e7b-e475-08dec985db37
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF00039231.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB8851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260613_125636_894431_B17EBA14 
X-CRM114-Status: GOOD (  18.23  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] firmware: choose PBL fw-external verify algorithm via Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL verifies fw-external blobs by hashing them in DRAM after the
BootROM-supplied load, before handing off to TF-A. SHA-256 is the
only choice today, and it runs with the MMU off and DRAM reads
uncached -- no D-cache, no hardware crypto, plain software hash
walking DRAM through the slowest available access path. The cost is
non-trivial.

Measured on Cortex-A53, MMU off, uncached DRAM:

  SHA-256, ~720 KiB blob:  ~2 s
  CRC32,   ~720 KiB blob:  ~10 ms

That ~2 s sits in PBL phase 1, before BL31 entry, and is paid every
boot. When the SoC's secure boot (HABv4 on i.MX8M, AHAB on i.MX9, or
an upstream-signed FIT / bundle) already authenticates the blob
before the PBL ever sees it, the in-PBL SHA-256 is redundant: it
only re-checks the BootROM->DRAM copy against a value baked into the
PBL itself, not against an external trust anchor. A 32-bit CRC over
the same window catches the realistic failure mode (a corrupted copy
into DRAM) at ~200x lower wall-clock cost.

Make the verify algorithm a Kconfig choice:

  PBL_FIRMWARE_EXT_VERIFY_NONE    no verify
  PBL_FIRMWARE_EXT_VERIFY_CRC32   4-byte CRC, cheap corruption check
  PBL_FIRMWARE_EXT_VERIFY_SHA256  current behaviour, default

firmware/Makefile selects an algorithm and passes it to gen-fw-s,
which emits nothing for NONE, a 4-byte .long for CRC32, or 32 bytes
for SHA-256 in the per-blob .rodata.<fwstr>.sha section. The macro
in include/firmware.h declares the verify symbols only when actually
used (offset != 0, i.e. fw-external blobs), so NONE is a true no-op
and in-tree firmware never grew a section dependency.
firmware_ext_verify() dispatches via IS_ENABLED() at compile time.

The verify-section symbol names (_fw_*_sha_*) are kept as-is rather
than renamed, since firmware_next_image_verify() also references
them for the FIRMWARE_VERIFY_NEXT_IMAGE path; under CRC32 the name
no longer describes the contents, but renaming would expand the
patch scope unnecessarily.

Default stays at SHA-256 so existing defconfigs keep their current
semantics.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 firmware/Kconfig   | 33 +++++++++++++++++++++++++++
 firmware/Makefile  | 15 ++++++++++--
 include/firmware.h | 41 +++++++++++++++++++++++----------
 include/pbl.h      |  2 ++
 pbl/decomp.c       | 35 ++++++++++++++++++++++++++++
 scripts/gen-fw-s   | 57 +++++++++++++++++++++++++++++++++-------------
 6 files changed, 153 insertions(+), 30 deletions(-)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index b9b4556dbd..f745819a67 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -151,4 +151,37 @@ config FIRMWARE_VERIFY_NEXT_IMAGE
 	  verified images. The function to check the next stage image hash is
 	  firmware_next_image_verify(), make sure your SoC code uses it.
 
+choice
+	prompt "PBL fw-external blob verification"
+	default PBL_FIRMWARE_EXT_VERIFY_SHA256
+	help
+	  Algorithm used by the PBL to verify an fw-external blob against a
+	  value embedded at build time, before handoff to TF-A. Runs with
+	  the MMU off and DRAM reads uncached, so cost scales sharply with
+	  blob size and algorithm. This checks integrity vs the build-time
+	  value; it is not authentication against an external trust anchor.
+
+config PBL_FIRMWARE_EXT_VERIFY_NONE
+	bool "none"
+	help
+	  Skip the verify. Appropriate when the boot chain authenticates the
+	  blob upstream of the PBL (HAB, AHAB, signed FIT, ...) -- the
+	  in-PBL check is then redundant.
+
+config PBL_FIRMWARE_EXT_VERIFY_CRC32
+	bool "CRC32"
+	select CRC32
+	help
+	  4-byte CRC32 (zlib polynomial). Catches accidental corruption
+	  of the BootROM->DRAM copy; not cryptographic.
+
+config PBL_FIRMWARE_EXT_VERIFY_SHA256
+	bool "SHA-256"
+	help
+	  Cryptographic hash, software-computed with MMU off. Strongest
+	  option but by far the slowest -- prefer NONE or CRC32 when the
+	  blob is already authenticated upstream of the PBL.
+
+endchoice
+
 endmenu
diff --git a/firmware/Makefile b/firmware/Makefile
index 7e433a1824..1590bed9f1 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -61,8 +61,19 @@ pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 
-filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata '' $(fwobjdir)
-filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a $(fwobjdir)
+# Verify algorithm passed to gen-fw-s for fw-external blobs. Drives the
+# verify metadata section emitted into .extgen.S and matched by
+# firmware_ext_verify() in include/firmware.h.
+ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE
+fw_verify_algo := none
+else ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
+fw_verify_algo := crc32
+else
+fw_verify_algo := sha256
+endif
+
+filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata '' $(fwobjdir) sha256
+filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a $(fwobjdir) $(fw_verify_algo)
 
 $(obj)/%.gen.S: FORCE
 	$(call filechk,fwbin)
diff --git a/include/firmware.h b/include/firmware.h
index 6511d56b2e..72a47f24e3 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -80,13 +80,21 @@ static inline void release_firmware(const struct firmware *fw)
 
 void firmwaremgr_list_handlers(void);
 
-static inline void firmware_ext_verify(const void *data_start, size_t data_size,
-				       const void *hash_start, size_t hash_size)
+static inline void firmware_ext_verify(const void *data, size_t data_size,
+				       const void *verify, size_t verify_size)
 {
-	if (pbl_barebox_verify(data_start, data_size,
-			       hash_start, hash_size) != 0) {
+	int ret;
+
+	if (IS_ENABLED(CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32))
+		ret = pbl_barebox_verify_crc32(data, data_size,
+					       verify, verify_size);
+	else
+		ret = pbl_barebox_verify(data, data_size,
+					 verify, verify_size);
+
+	if (ret != 0) {
 		putc_ll('!');
-		panic("hash mismatch, refusing to decompress");
+		panic("firmware verify mismatch, refusing to decompress");
 	}
 }
 
@@ -96,22 +104,31 @@ struct fwobj {
 	void *data;
 };
 
+#if defined(CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE)
+# define __fw_ext_verify(name, fwobj)	do { } while (0)
+#else
+# define __fw_ext_verify(name, fwobj)					\
+	do {								\
+		extern char _fw_##name##_sha_start[];		\
+		extern char _fw_##name##_sha_end[];			\
+		firmware_ext_verify(					\
+			(fwobj)->data, (fwobj)->size,			\
+			_fw_##name##_sha_start,			\
+			_fw_##name##_sha_end -			\
+			_fw_##name##_sha_start);			\
+	} while (0)
+#endif
+
 #define __get_builtin_firmware(name, offset, fwobj)			\
 	do {								\
 		extern char _fw_##name##_start[];			\
 		extern char _fw_##name##_end[];				\
-		extern char _fw_##name##_sha_start[];			\
-		extern char _fw_##name##_sha_end[];			\
 		(fwobj)->data = _fw_##name##_start;			\
 		(fwobj)->size = _fw_##name##_end - _fw_##name##_start;	\
 		if (!(offset))						\
 			break;						\
 		(fwobj)->data += (offset);				\
-		firmware_ext_verify(					\
-			(fwobj)->data, (fwobj)->size,			\
-			_fw_##name##_sha_start,				\
-			_fw_##name##_sha_end - _fw_##name##_sha_start	\
-		);							\
+		__fw_ext_verify(name, fwobj);				\
 	} while (0)
 
 
diff --git a/include/pbl.h b/include/pbl.h
index fe4367825c..57ca8b4eb3 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -29,6 +29,8 @@ fdt_device_get_match_data(const void *fdt, const char *nodepath,
 
 int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len);
+int pbl_barebox_verify_crc32(const void *data_start, unsigned int len,
+			     const void *crc, unsigned int crc_len);
 int pbl_load_fdt(const void *fdt, void *dest, int destsize);
 
 #define PBL_MALLOC_SIZE SZ_128K
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 1539a6b67e..ace121eac6 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -13,6 +13,10 @@
 #include <asm/sections.h>
 #include <pbl.h>
 #include <debug_ll.h>
+#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
+#include <crc.h>
+#include <asm/unaligned.h>
+#endif
 
 #define STATIC static
 
@@ -90,6 +94,37 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 	return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
 }
 
+#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
+int pbl_barebox_verify_crc32(const void *data_start, unsigned int len,
+			     const void *crc, unsigned int crc_len)
+{
+	uint32_t expected, computed;
+
+	if (crc_len != sizeof(uint32_t))
+		return -1;
+
+	/* Stored little-endian by .long in the .rodata.*.sha section. */
+	expected = get_unaligned_le32(crc);
+	computed = crc32(0, data_start, len);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		puts_ll("CRC ");
+		puthexc_ll((computed >> 24) & 0xff);
+		puthexc_ll((computed >> 16) & 0xff);
+		puthexc_ll((computed >> 8)  & 0xff);
+		puthexc_ll(computed & 0xff);
+		puts_ll(" vs ");
+		puthexc_ll((expected >> 24) & 0xff);
+		puthexc_ll((expected >> 16) & 0xff);
+		puthexc_ll((expected >> 8)  & 0xff);
+		puthexc_ll(expected & 0xff);
+		putc_ll('\n');
+	}
+
+	return computed == expected ? 0 : -1;
+}
+#endif
+
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len)
 {
 	uint32_t pbl_hash_len;
diff --git a/scripts/gen-fw-s b/scripts/gen-fw-s
index 78c3193479..d7d7d15824 100755
--- a/scripts/gen-fw-s
+++ b/scripts/gen-fw-s
@@ -3,13 +3,20 @@
 #
 # Generate assembly source to embed firmware binary
 #
-# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir]
+# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir] [verify-algo]
+#
+# verify-algo selects the metadata emitted in the .rodata.<fwstr>.sha
+# section, matched by firmware_ext_verify() in include/firmware.h:
+#   sha256 (default) -- 32-byte SHA-256
+#   crc32            -- 4-byte CRC32 (zlib polynomial)
+#   none             -- no section, no symbols
 
 fwname=$1
 fwdir=$2
 secprefix=$3
 secflags=$4
 fwobjdir=$5
+verify_algo=${6:-sha256}
 
 fwstr=$(echo "$fwname" | tr '/.-' '___')
 fwpath="$fwdir/$fwname"
@@ -19,8 +26,6 @@ if [ -f "$fwpath" ]; then
 	fw_uncompressed=$(stat -c %s "$fwpath")
 fi
 
-sha=$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s/, $//')
-
 echo "/* Generated by scripts/gen-fw-s */"
 echo "#include <asm-generic/pointer.h>"
 echo ".section .note.GNU-stack,\"\",%progbits"
@@ -59,19 +64,39 @@ echo ".global _fw_z_${fwstr}_end"
 echo "_fw_z_${fwstr}_end:"
 echo "#endif"
 
-# include sha256, needed for external firmware
-echo "    .section .rodata.${fwstr}.sha"
-echo "    .p2align ASM_LGPTR"
-echo ".global _fw_${fwstr}_sha_start"
-echo "_fw_${fwstr}_sha_start:"
-echo "    .byte ${sha}"
-echo ".global _fw_${fwstr}_sha_end"
-echo "_fw_${fwstr}_sha_end:"
-if [ -f "$fwpath" ]; then
-	echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
-	echo ".error \"sha256sum invalid\""
-	echo ".endif"
-fi
+# verify metadata for fw-external blobs, consumed by firmware_ext_verify()
+# in include/firmware.h. Driven by the PBL_FIRMWARE_EXT_VERIFY Kconfig
+# choice (passed in from firmware/Makefile).
+case "$verify_algo" in
+none)
+	;;
+crc32)
+	crc=$(python3 -c 'import sys,zlib; sys.stdout.write("0x%08x" % zlib.crc32(open(sys.argv[1],"rb").read()))' \
+		"$fwpath" 2>/dev/null || echo "0x00000000")
+	echo "    .section .rodata.${fwstr}.sha"
+	echo "    .p2align 2"
+	echo ".global _fw_${fwstr}_sha_start"
+	echo "_fw_${fwstr}_sha_start:"
+	echo "    .long ${crc}"
+	echo ".global _fw_${fwstr}_sha_end"
+	echo "_fw_${fwstr}_sha_end:"
+	;;
+sha256|*)
+	sha=$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s/, $//')
+	echo "    .section .rodata.${fwstr}.sha"
+	echo "    .p2align ASM_LGPTR"
+	echo ".global _fw_${fwstr}_sha_start"
+	echo "_fw_${fwstr}_sha_start:"
+	echo "    .byte ${sha}"
+	echo ".global _fw_${fwstr}_sha_end"
+	echo "_fw_${fwstr}_sha_end:"
+	if [ -f "$fwpath" ]; then
+		echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
+		echo ".error \"sha256sum invalid\""
+		echo ".endif"
+	fi
+	;;
+esac
 
 # include a string containing the firmware name. When a non existing
 # firmware is referenced in the PBL then _fwname_${fwstr} is referenced

base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
-- 
2.43.0



