Delivery-date: Fri, 19 Jun 2026 18:10:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wabnx-007ePO-0q
	for lore@lore.pengutronix.de;
	Fri, 19 Jun 2026 18:10:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wabnv-0004Y0-Ji
	for lore@pengutronix.de; Fri, 19 Jun 2026 18:10:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zpo7EMZ3K+S5GBEff+LC4I2RxRx1WLSdismQA0Dx4H4=; b=Hsl7aSnolCnDD1tDvq66E3PYOY
	FcmR3ymdLf2LH0zmcf1Urc8kgYykDNehxw9uQQ2IDTqKKQaJ53u/lBs+QhhddiZ6kYRbYRdscpCW8
	GyFlaTkeq1unJimyE9GTA5pzxdlg2sMFejkkHoa2OXmLdXprR9BaatFPKJv8w3WQed0GGQAKynw+9
	v3q9qOs8vBThoqdw/WxJ3eqKPDE204fRy9Lasp2CJkFEtGVzCRU4WPnkIVySZgz2p3xG93juHerLQ
	r4IqcpCksnrJAoTOCVPwFHviCrxUaRRy4hef9kPxn0zR25ZetvD6xt7Y8crmsSGROdzMAwHC23CTK
	kO77tONA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabma-00000002l5T-0PlJ;
	Fri, 19 Jun 2026 16:09:28 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabmW-00000002l4D-4AiA
	for barebox@lists.infradead.org;
	Fri, 19 Jun 2026 16:09:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ChdviKgYAshtNx/2q/fQwaGOrw/u68eZG7aKxkqILCaBg/OQ+9mwYw4KjxYQJHzvtvh4psNLYN3WdCXUxiPbgPWc6I+YqT7sVd+jheTJSjHnWSf+3w2HfuX2zsUuewfayaFQpWZGj1vdYEWP+PpdYR/ewJZwTnJoxsk3HVHHfb8qjDvBCcgk0xuq+qQo2de/vAYaTv9si8d8nU69QSdln5D8RNtgBhB6UH8WdEMMBLfVAN4srDGXm7m0p2owVw0LaESZegB02h/GuxILt0BCDBh1paUAEazhNTgpJQxvt6QBLy6CNBB7iajeqHzDSiYu+01fr0h5aSdFfXtQxvEOow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zpo7EMZ3K+S5GBEff+LC4I2RxRx1WLSdismQA0Dx4H4=;
 b=yIlWmc8TrUxuSJnQKxTvDrcYc0I/Gq0qrKilG/xv1KcCW5bbNaw7I0L7yCTHejyjj9yacNFgszFv5K2xpzQGUyYkuXdlgvulvKC45Z4YvXqJ/GT3PrBxaBo+VaF6pJFpa6D9QVnrUA1N52pEu2pp+JH8+ZdALtgkHSdTPMVluwRhgOPrpSfGuGsqvVh1qolAw01EqQLU23MB3aYndE4F/fgNc6T+cC5c1YFUQAbXxUAuxm3/VBoXqVeGRYbl7okUz9Vuu75GYah9HovCnZZyLA6PO2/KRAXHPQJgSF5uqLJGkbYMZt1klrfkYLaHfyG7IdxCntmn42/D7y6xsk75Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpo7EMZ3K+S5GBEff+LC4I2RxRx1WLSdismQA0Dx4H4=;
 b=OqM56eowrA3gUTm4AkjgdImjSVyTJWUjlSBwdAcW+arZgTeYDYurAzIAoX1fUakuQ5uMABKEBUEXW51uWqfmoBbvYPQcI1MGyvdcZCdnmE01O9gYQwE3n2qbm3WVt5VoGVKdnjFL+D5dvrXxxkRR0Kop9MH1hOVWXB8mhWyuD88=
Received: from AS9PR06CA0123.eurprd06.prod.outlook.com (2603:10a6:20b:467::14)
 by PR3PR06MB6604.eurprd06.prod.outlook.com (2603:10a6:102:2e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Fri, 19 Jun
 2026 16:09:17 +0000
Received: from AMS1EPF00000092.eurprd05.prod.outlook.com
 (2603:10a6:20b:467:cafe::67) by AS9PR06CA0123.outlook.office365.com
 (2603:10a6:20b:467::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.16 via Frontend Transport; Fri,
 19 Jun 2026 16:09:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS1EPF00000092.mail.protection.outlook.com (10.167.242.89) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Fri, 19 Jun 2026 16:09:16 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Fri, 19 Jun 2026 18:09:16 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Fri, 19 Jun 2026 16:09:15 +0000
Message-ID: <20260619160915.88090-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 19 Jun 2026 16:09:16.0677 (UTC) FILETIME=[FA656B50:01DD0005]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF00000092:EE_|PR3PR06MB6604:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f78c2e38-c0b7-4fcb-e84b-08dece1d1cff
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|1800799024|23010399003|376014|36860700016|56012099006|18002099003|6133799003|5023799004|11063799006;
X-Microsoft-Antispam-Message-Info: /01dxd8fJFIeRSeB1xW7Z/EustuRUtDsngaqq1XJrZpL59Va80773g4rA30hFcnq9h9SqIppvZmRW69Z2Q5G4Ycdd6VZjvkuBNwsdvjpaGKGemYuPwNUb+G1zsvgC8B4E2r6fL2oqom3vVtT/SlL99LLqWAOYRkKib3oKprBoEBQ/6LNkIexZKzjwGsecMc3KbW2VY980WiSnqMRVjAVHVXRBdQSljYYRNmdL98eDQe80gO3VgQGqgS8SRfLhZRznfjhj7S41RfBfSNH/fJCYzXXzBGFYVD1qOIwbcpMUmpdeGqUnyIdK6ibUy0Tg4K4tLe+N6H3dna8+RjgVqQWp9Z2IqwWOGKDypxRiRaRjuSJcS7mUglOjQpQKPv0C7+ZBTVU/OGHOCrSx1shRTEibHQbHNybUb81Q02vikhOf/TjmOMqJWB+AcffJr5MvvftV/0ASvo2sDMTWy0U+uSWW7YD2YkOmJItjeHwCS1r4+QnuCc/m/+fVSlrKcWBNSNU/fFlagdY0gyW1RFUTIxfBZ9QdxpHoF2YzBryNA8FLrCjskkLwQeEP5Iur8935/D81HTyRayC7pSPx0MkXwCyuTJrMK+89mDQMNBOFHahhfGZoHokbr0FZ4LYhXZd8zt7YBu6SbZdj4ZIhClEMRCkr1GzXuE756FmwddFcB/6II+M8OBLay04vOuv116RSJO5i33U7I7tf+Rg5O6lljDZSw==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(23010399003)(376014)(36860700016)(56012099006)(18002099003)(6133799003)(5023799004)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: aA0uUwZSvq6xfTbKKc9EHPjaEeEjz/3HTe2YBrUHY0md3mBiBhb9r9jyXkAtYdtJ86v+qx33rxIEhaKT8yODvqXza3cZLhiBnI/65clQ+nVyv0oawr8QFL2y6r9zLhoY6MWeoOw9Nf/xDHG6U0LB0iQ7sRJh2lSp6OHNFOSsAGfRU39fmkMV+MNi4AOd06xqqlEf0kBjsSO/4eu7ndpaD2/3nWPLQHExxQLTzL7FWpahqAE9JEiaTacqIIFbWFpjEZyRhX8fnSkVt5QL+ygcVIEe/dmM2ErO/n6WgVgS/r0JcqLLUISwbztAklIyokz/NetN7SlASKWKYwI/5k5zxkO7uumYhjcpRbeKwPOBlj3zTtv265aDvUeAGm+JxNMgm9exKRlNMxOCCulc2rvqUtRk1jav6xU03/6sgxPVD7dTTPnOPS/YE4DDewc8N4WH
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 16:09:16.8557
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f78c2e38-c0b7-4fcb-e84b-08dece1d1cff
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF00000092.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB6604
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_090925_227471_FF3E7E27 
X-CRM114-Status: GOOD (  22.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC] mci: imx-esdhc-pbl: enable ADMA2 for i.MX8M BL33 loads -- help needed: ADMA stalls in ST_TFR despite every visible register matching the Linux runtime driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a generic sdhci_enable_adma() helper that lets drivers provide their own
descriptor table (so PBL builds can use a static buffer without dma_alloc),
gate the SDMA boundary-restart loop in sdhci_transfer_data_dma() behind
!SDHCI_USE_ADMA, and switch the i.MX8M PBL BL33 load path to call into the
new helper. On a working i.MX8MM board this should cut load_bl33 from
~645 ms (SDMA polled, restart-per-DMA-boundary) to ~140 ms (single ADMA2
descriptor, one interrupt at completion).

The patch builds and applies cleanly on barebox/next. On our test
hardware (custom i.MX8MM board, USDHC3 -> eMMC) the ADMA engine fetches
the descriptor, programs the data path, then stalls in ST_TFR
(ADMA_ERR=0x3) with no progress. Looking for input from anyone who has
either (a) shipped ADMA2 in i.MX PBL successfully, or (b) can point at
what infrastructure the full runtime driver does on probe that PBL would
need to replicate.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
RFC writeup
===========

Motivation
----------
Current PBL i.MX8M BL33 load is SDMA-based with the SDHCI boundary-restart
loop in sdhci_transfer_data_dma(). For a 32 KiB BL33 transfer at the default
4 KiB SDMA boundary that's eight kicks-and-restarts. Measured on a custom
i.MX8MM board:

 Boot timeline (from power-on):
	 BootROM:          1 ms
	 PBL-init:         3 ms
	 DDR-training:   262 ms
	 PBL-load:       819 ms
		 PBL-pre-load:    168 ms
		 load_bl33:       645 ms   <--  (SDMA, ~5 MiB/s effective)
		 PBL-post-load:     5 ms
		 BL31-early:      114 ms
		 BL31-platform:    15 ms
		 BL31-runtime:     98 ms
			 thru-OPTEE:       98 ms
			 post-OPTEE:        0 ms
	 barebox:       5654 ms
	 kernel-init:    111 ms

barebox's own runtime imx-esdhc.c driver uses ADMA2 for the same controller
and gets the FIT image off the same eMMC at expected speed. ADMA2 in PBL
should match.

Reference points: U-Boot and Linux
----------------------------------
Before submitting we cross-checked both other open-source drivers for the
same controller:

	* U-Boot (drivers/mmc/fsl_esdhc_imx.c) only does SDMA on i.MX USDHC:
		XFERTYP_DMAEN with default DMA_SEL=0. The ADSADDR / ADMA error
		registers are defined in the layout but no code path enables ADMA.
		So U-Boot avoided this question entirely.

	* Linux (drivers/mmc/host/sdhci-esdhc-imx.c) does enable ADMA2 and
		works. The Linux driver provides custom register accessors -- in
		particular esdhc_writeb_le() translates standard SDHCI HOST_CONTROL
		writes to i.MX PROCTL (DMA_SEL bits shift from 3:4 to 8:9, ENDIAN
		bit gets forced LE) and esdhc_clrset_le() forces SYSCTL bits 0..2
		back on after SDHCI_RESET_ALL.

barebox-PBL's drivers/mci/imx-esdhc-common.c already installs the same
write8 / write16 translators via esdhc_populate_sdhci() called from
imx8m_esdhc_init() -- the per-transfer writes from generic sdhci.c
arrive at the right vendor register positions. So we are using the same
register-access plumbing as the working runtime driver.

What this patch does
--------------------
1. New helper sdhci_enable_adma() in drivers/mci/sdhci.c: split out of
	 sdhci_setup_adma() so callers without a struct device / dma allocator
	 can hand in their own pre-aligned descriptor buffer + DMA address.
	 Sets host->adma_table, ->adma_addr, ->adma_table_cnt, ->adma_table_sz,
	 and host->flags |= SDHCI_USE_ADMA.

2. Gate the SDMA-boundary-restart in sdhci_transfer_data_dma() behind
	 !(sdhci->flags & SDHCI_USE_ADMA) -- ADMA transfers must not get the
	 per-boundary DMA-address rewrite that SDMA needs.

3. drivers/mci/imx-esdhc-pbl.c gets imx8m_esdhc_enable_pbl_adma() that
	 allocates a static, aligned 8-byte-per-descriptor table for
	 SDHCI_DEFAULT_ADMA_DESCS entries, translates i.MX USDHC's ADMA1
	 cap-bit-position quirk (the chip advertises ADMA2 in
	 SDHCI_CAN_DO_ADMA1), calls sdhci_enable_adma() and is invoked at the
	 end of imx8m_esdhc_init().

Symptom
-------
The patch loads, the table address is programmed, the descriptors are
built correctly (CMD18 multi-block read to the DRAM dest), but the ADMA
engine stalls. From the SDHCI timeout path (after 10 s):

		INT_STATUS    = 0x00000001  (CMD_COMPLETE only -- never XFER_COMPLETE)
		PRESENT_STATE = 0x00888a8e  (CMD/DAT line busy)
		PROCTL        = 0x08800224
		ADMA_ADDRESS  = 0x40f00004  (advanced 4 bytes into our table)
		ADMA_ERR      = 0x00000003  (state = ST_TFR, "transferring data")
		DESC[0]       = 0x00000021 0x41ff6000  (TRAN|VALID, 64 KiB at DRAM)

Side-by-side comparison with Linux's sdhci-esdhc-imx running on the same
hardware (we added pr_info() in esdhc_writeb_le() / esdhc_writel_le() /
esdhc_reset() and watched dmesg while it did its own ADMA2 reads) shows
IDENTICAL register state at the moment the engine runs:

	PROCTL = 0x08800224 (both)        DMA_SEL=ADMA2, EMODE=LE, BIT23, BURST_LEN_EN_INCR, DTW=8b
	MIX_CTRL = 0x0000003b (both)      DMAEN|BCEN|DDREN|DTDSEL|MSBSEL
	XFERTYP = 0x123a0000 (both)       CMD18 with proper flags
	ADMA_ADDR = DRAM addr (both)
	ADMA_ADDR_HI = 0 (both)
	SYSCTL = 0x000e000f (both)        IPGEN|HCKEN|PEREN|CKEN, DVS=14
	CCGR94 (USDHC3) = 0x3 (both)      NEEDED
	NoC@0x8d00 = enabled (both)
	MAIN_AXI@0x8800 = enabled (both)

Access controls verified open: TZASC region 0 disabled, RDC PDAP for USDHC3
shows 0xff (all four domains have full RW). So it's not a permission issue
at the AXI master.

What we tried that didn't help
------------------------------
- Toggle ESDHC_BURST_LEN_EN_INCR (PROCTL bit 27) on/off: engine still hangs
- Manually program PROCTL DMA_SEL=ADMA2 ahead of per-transfer config: no-op
	since the esdhc_writeb_le translator already does that
- Put descriptor table in DRAM at a fixed offset vs OCRAM .bss: same hang
- Zero ADMA_ADDRESS_HI defensively: BootROM doesn't leave it dirty
- Force CCGR94 (USDHC3 gate) to NEEDED via the SET register at +0x4: was
	already at NEEDED (0x3) -- BootROM leaves it correct
- SDHCI_RESET_ALL at PBL esdhc init entry, with subsequent SYSCTL re-arm
	of bits 0..3 (IPGEN/HCKEN/PEREN/CKEN) -- matches what Linux's
	esdhc_writeb_le does in the SDHCI_SOFTWARE_RESET case. Made an SDMA
	fallback path recover cleanly, didn't change ADMA behaviour
- ADMA -> SDMA fallback (clear SDHCI_USE_ADMA, clear DMA_SEL, retry,
	with explicit CMD12 to bring the card back to TRAN): works as recovery,
	doesn't tell us why ADMA fails

What we couldn't try / are stuck on
-----------------------------------
- Replicating fsl_esdhc_probe()'s clk_enable(host->clk) in PBL: that
	walks the imx8mm clk tree (per -> usdhc3_root -> sys_pll1_400m ->
	ahb/noc/main_axi). All the leaf gates we can read are already on, but
	maybe the full clk-imx8mm probe does something the gates don't expose
- Replicating mci_register() -> mmc_init() in PBL: CMD0/CMD1/CMD2/CMD3/
	CMD7, set bus width via CMD6, EXT_CSD read. PBL inherits whatever the
	BootROM left the card in -- maybe ADMA's burst pattern is sensitive
	to the eMMC card state in a way SDMA isn't
- Logic analyzer on the AHB->AXI bridge: would show whether the AXI
	transactions are even getting issued. We don't have one

Ask
---
1. Has anyone shipped i.MX PBL ADMA2 successfully? If yes -- what bit /
	 sequence / clock did you have to set that's not in this patch?

2. Is there a known reason ADMA stalls in ST_TFR on i.MX USDHC when SDMA
	 succeeds on the exact same data path with the exact same buffer
	 addresses? Some vendor-specific MIX_CTRL bit we're missing?

3. Worth taking even with PBL ADMA disabled? sdhci_enable_adma() is
	 genuinely useful for drivers that want to plug in their own descriptor
	 buffer (PBL or otherwise). The transfer_data_dma() gate is a small
	 correctness improvement either way.

4. A separate dma_mapping_error() NULL-deref fix dropped out of this
	 debugging -- in PBL the SDHCI host has no struct device, so
	 dma_mapping_error(NULL, addr) NULL-dereferences dev->dma_mask, reads
	 boot ROM and returns a false positive. I'll send that as its own
	 patch; mentioning it here because it's the bug that initially hid
	 this whole ADMA-attempt behind a "descriptor table never got built"
	 symptom.

The diagnostic measurement patches we used to find all of the above
(puts_ll markers, register dumps at the SDHCI timeout, kernel-side
esdhc-imx writeb_le tracing) are not part of this submission; happy to
share them off-list if anyone wants to reproduce.

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2402b9aeaf..f5de489382 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -32,6 +32,63 @@
 #define esdhc_send_cmd	__esdhc_send_cmd
 
 static u8 ext_csd[512] __aligned(64);
+static u8 imx8m_pbl_adma_table[SDHCI_DEFAULT_ADMA_DESCS * SDHCI_ADMA2_32_DESC_SZ]
+	__aligned(SDHCI_ADMA2_DESC_ALIGN);
+
+static u32 imx8m_pbl_caps(struct fsl_esdhc_host *host)
+{
+	u32 caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
+
+	/*
+	 * i.MX USDHC advertises ADMA2 in the bit position SDHCI names ADMA1.
+	 * Translate it before handing the capability word to generic SDHCI code.
+	 */
+	if (caps & SDHCI_CAN_DO_ADMA1) {
+		caps &= ~SDHCI_CAN_DO_ADMA1;
+		caps |= SDHCI_CAN_DO_ADMA2;
+	}
+
+	return caps;
+}
+
+/*
+ * i.MX USDHC PROCTL bits we need to program directly. The generic
+ * sdhci_config_dma() uses standard SDHCI HOST_CONTROL bit positions
+ * (DMA_SEL at bits 3:4), but on i.MX USDHC DMA_SEL lives at bits 8:9
+ * (a "shift left by 5" from the standard SDHCI layout). Linux's
+ * esdhc_writeb_le() does that translation; barebox doesn't, so the
+ * per-transfer sdhci_config_dma() call only touches the lowest byte
+ * of PROCTL and the DMA_SEL field stays at 00 (SDMA). The descriptor
+ * pointer we program into SDHCI_ADMA_ADDRESS is then ignored and the
+ * engine runs SDMA from address 0 -- "DMA wait timed out".
+ *
+ * Set DMA_SEL=ADMA2 and BURST_LEN_EN_INCR once at enable time so the
+ * PROCTL byte that sdhci_config_dma() doesn't touch carries the right
+ * value through every transfer.
+ */
+#define ESDHC_PROCTL_DMASEL_ADMA2	(0x2 << 8)
+#define ESDHC_PROCTL_DMASEL_MASK	(0x3 << 8)
+#define ESDHC_BURST_LEN_EN_INCR		(1 << 27)
+
+static void imx8m_esdhc_enable_pbl_adma(struct fsl_esdhc_host *host)
+{
+	u32 hc;
+	int ret;
+
+	host->sdhci.version = sdhci_read16(&host->sdhci, SDHCI_HOST_VERSION);
+	host->sdhci.caps = imx8m_pbl_caps(host);
+
+	hc = sdhci_read32(&host->sdhci, SDHCI_HOST_CONTROL);
+	hc &= ~ESDHC_PROCTL_DMASEL_MASK;
+	hc |= ESDHC_PROCTL_DMASEL_ADMA2 | ESDHC_BURST_LEN_EN_INCR;
+	sdhci_write32(&host->sdhci, SDHCI_HOST_CONTROL, hc);
+
+	ret = sdhci_enable_adma(&host->sdhci, imx8m_pbl_adma_table,
+				virt_to_phys(imx8m_pbl_adma_table),
+				SDHCI_DEFAULT_ADMA_DESCS);
+	if (ret)
+		pr_debug("ADMA2 unavailable, falling back to PIO (%d)\n", ret);
+}
 
 static int esdhc_send_ext_csd(struct fsl_esdhc_host *host)
 {
@@ -163,6 +220,7 @@ static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
 	}
 
 	imx_esdhc_init(host, data);
+	imx8m_esdhc_enable_pbl_adma(host);
 
 	return 0;
 }
@@ -265,9 +323,41 @@ int imx8m_esdhc_load_image(int instance, void *bl33)
 	if (ret)
 		return ret;
 
-	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				(ptrdiff_t)bl33, SZ_32K, SZ_1K,
-				false);
+	ret = esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
+			       (ptrdiff_t)bl33, SZ_32K, SZ_1K, false);
+
+	/*
+	 * If ADMA hit the 10 s DMA-wait timeout (-ETIMEDOUT), tear it back
+	 * down to SDMA and retry once. Keeps the board bootable when ADMA
+	 * misbehaves on the specific PROCTL/ROM-handover state we hit.
+	 */
+	if (ret == -ETIMEDOUT && (host.sdhci.flags & SDHCI_USE_ADMA)) {
+		u32 hc;
+
+		pr_warn("PBL ADMA2 transfer timed out -- falling back to SDMA\n");
+		sdhci_reset(&host.sdhci, SDHCI_RESET_ALL);
+		host.sdhci.flags &= ~SDHCI_USE_ADMA;
+		hc = sdhci_read32(&host.sdhci, SDHCI_HOST_CONTROL);
+		hc &= ~(ESDHC_PROCTL_DMASEL_MASK | ESDHC_BURST_LEN_EN_INCR);
+		sdhci_write32(&host.sdhci, SDHCI_HOST_CONTROL, hc);
+
+		/* Re-init the controller; the eMMC card itself stays in TRAN. */
+		ret = imx8m_esdhc_init(&host, &data, instance);
+		if (ret)
+			return ret;
+		/* enable_pbl_adma already ran inside imx8m_esdhc_init -- redo
+		 * tear-down because it just turned ADMA back on. */
+		sdhci_reset(&host.sdhci, SDHCI_RESET_ALL);
+		host.sdhci.flags &= ~SDHCI_USE_ADMA;
+		hc = sdhci_read32(&host.sdhci, SDHCI_HOST_CONTROL);
+		hc &= ~(ESDHC_PROCTL_DMASEL_MASK | ESDHC_BURST_LEN_EN_INCR);
+		sdhci_write32(&host.sdhci, SDHCI_HOST_CONTROL, hc);
+
+		ret = esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
+				       (ptrdiff_t)bl33, SZ_32K, SZ_1K, false);
+	}
+
+	return ret;
 }
 
 /**
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 3474ef129b..b959e22865 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -788,7 +788,8 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 		 * should return a valid address to continue from, but as
 		 * some controllers are faulty, don't trust them.
 		 */
-		if (irqstat & SDHCI_INT_DMA) {
+		if (!(sdhci->flags & SDHCI_USE_ADMA) &&
+		    (irqstat & SDHCI_INT_DMA)) {
 			/*
 			 * DMA engine has stopped on buffer boundary. Acknowledge
 			 * the interrupt and kick the DMA engine again.
@@ -1305,20 +1306,9 @@ int sdhci_setup_host(struct sdhci *host)
	* Returns 0 on success or a negative error code on failure. On failure
	* the host falls back to SDMA.
	*/
-int sdhci_setup_adma(struct sdhci *host)
+static int sdhci_prepare_adma(struct sdhci *host, unsigned int *adma_table_cnt,
+			      unsigned int *adma_table_sz)
 {
-	struct device *dev = sdhci_dev(host);
-	struct mci_host *mci = host->mci;
-	dma_addr_t dma;
-	void *buf;
-
-	BUG_ON(!mci);
-
-	/*
-	 * Without a controller capability bit ADMA2 cannot be used. Don't
-	 * fail loudly: the driver may have called us speculatively, just
-	 * leave SDMA as the fallback.
-	 */
 	if (!(host->caps & SDHCI_CAN_DO_ADMA2))
 		return -ENOTSUPP;
 
@@ -1327,24 +1317,72 @@ int sdhci_setup_adma(struct sdhci *host)
 	else
 		host->desc_sz = SDHCI_ADMA2_32_DESC_SZ;
 
-	if (!host->adma_table_cnt)
-		host->adma_table_cnt = SDHCI_DEFAULT_ADMA_DESCS;
+	if (!*adma_table_cnt)
+		*adma_table_cnt = SDHCI_DEFAULT_ADMA_DESCS;
 
-	host->adma_table_sz = host->adma_table_cnt * host->desc_sz;
+	*adma_table_sz = *adma_table_cnt * host->desc_sz;
 
-	buf = dma_alloc_coherent(dev, host->adma_table_sz, &dma);
-	if (!buf)
-		return -ENOMEM;
+	return 0;
+}
+
+int sdhci_enable_adma(struct sdhci *host, void *buf, dma_addr_t dma,
+		      unsigned int adma_table_cnt)
+{
+	struct mci_host *mci = host->mci;
+	unsigned int adma_table_sz;
+	int ret;
+
+	ret = sdhci_prepare_adma(host, &adma_table_cnt, &adma_table_sz);
+	if (ret)
+		return ret;
+
+	if (!buf ||
+	    !IS_ALIGNED((unsigned long)buf, SDHCI_ADMA2_DESC_ALIGN) ||
+	    !IS_ALIGNED(dma, SDHCI_ADMA2_DESC_ALIGN))
+		return -EINVAL;
 
 	host->adma_table = buf;
 	host->adma_addr = dma;
+	host->adma_table_cnt = adma_table_cnt;
+	host->adma_table_sz = adma_table_sz;
 	host->flags |= SDHCI_USE_ADMA;
+	host->flags &= ~SDHCI_OWNS_ADMA_TABLE;
 
 	/*
 	 * One descriptor handles up to SDHCI_ADMA2_MAX_LEN bytes; the last
 	 * one is reserved for the terminating entry.
 	 */
-	mci->max_req_size = (host->adma_table_cnt - 1) * SDHCI_ADMA2_MAX_LEN;
+	if (mci)
+		mci->max_req_size = (host->adma_table_cnt - 1) * SDHCI_ADMA2_MAX_LEN;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(sdhci_enable_adma);
+
+int sdhci_setup_adma(struct sdhci *host)
+{
+	struct device *dev = sdhci_dev(host);
+	dma_addr_t dma;
+	unsigned int adma_table_cnt = host->adma_table_cnt;
+	unsigned int adma_table_sz;
+	void *buf;
+	int ret;
+
+	ret = sdhci_prepare_adma(host, &adma_table_cnt, &adma_table_sz);
+	if (ret)
+		return ret;
+
+	buf = dma_alloc_coherent(dev, adma_table_sz, &dma);
+	if (!buf)
+		return -ENOMEM;
+
+	ret = sdhci_enable_adma(host, buf, dma, adma_table_cnt);
+	if (ret) {
+		dma_free_coherent(dev, buf, dma, adma_table_sz);
+		return ret;
+	}
+
+	host->flags |= SDHCI_OWNS_ADMA_TABLE;
 
 	return 0;
 }
@@ -1355,10 +1393,14 @@ void sdhci_release_adma(struct sdhci *host)
 	if (!(host->flags & SDHCI_USE_ADMA))
 		return;
 
-	dma_free_coherent(sdhci_dev(host), host->adma_table, host->adma_addr,
-			  host->adma_table_sz);
+	if (host->flags & SDHCI_OWNS_ADMA_TABLE)
+		dma_free_coherent(sdhci_dev(host), host->adma_table, host->adma_addr,
+				  host->adma_table_sz);
+
 	host->adma_table = NULL;
 	host->adma_addr = 0;
-	host->flags &= ~SDHCI_USE_ADMA;
+	host->adma_table_sz = 0;
+	host->adma_table_cnt = 0;
+	host->flags &= ~(SDHCI_USE_ADMA | SDHCI_OWNS_ADMA_TABLE);
 }
 EXPORT_SYMBOL_GPL(sdhci_release_adma);
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index d1f05ac968..b95e1f0012 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -298,6 +298,7 @@ struct sdhci {
 #define SDHCI_REQ_USE_DMA	(1<<2)	/* Use DMA for this req. */
 #define SDHCI_DEVICE_DEAD	(1<<3)	/* Device unresponsive */
 #define SDHCI_SDR50_NEEDS_TUNING (1<<4)	/* SDR50 needs tuning */
+#define SDHCI_OWNS_ADMA_TABLE	(1<<5) /* Descriptor table was dynamically allocated */
 #define SDHCI_AUTO_CMD12	(1<<6)	/* Auto CMD12 support */
 #define SDHCI_AUTO_CMD23	(1<<7)	/* Auto CMD23 support */
 #define SDHCI_PV_ENABLED	(1<<8)	/* Preset value enabled */
@@ -413,6 +414,8 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_cmd *cmd,
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
 			    struct mci_data *data, dma_addr_t dma);
 int sdhci_reset(struct sdhci *sdhci, u8 mask);
+int sdhci_enable_adma(struct sdhci *host, void *buf, dma_addr_t dma,
+		      unsigned int adma_table_cnt);
 int sdhci_setup_adma(struct sdhci *host);
 void sdhci_release_adma(struct sdhci *host);
 u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,


