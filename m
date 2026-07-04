Delivery-date: Sat, 04 Jul 2026 15:39:38 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wg0ao-000D4K-0N
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 15:39:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9356A200286
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 15:39:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QrF7OaHV;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=eIlg+dFw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+fctCojBDEnrL3PSewAs+gflqyRLYR2ynXcWXMCSqyQ=; b=QrF7OaHVLrRvqqVsWu9s3O7Xf9
	YUSuMxZV8PBEAb/XQyiv5UfnP0nrF1eRrBGwgDial1Vn7Sywjig/M6pITeBCuSWcmPBVN0aLYv+VG
	cO4VVDCh28dU9/wMagymSEfFcmQh+z1/JOSX9ic/AZsMU5iZdEpg+bU49DWzTPteOO2Dwf9pqvqNw
	GtMRg5G++bAew+I4/rRfcnDuS7crVOlxUenoG5Jac4memW0kIYBqC6En+HjgSlv8JGiJwIk0lk+9K
	oyW/WoUg3i35nIObzFC1foB2kjTwaACPl3M/EW/VQm8dqfzO9ncMmQ8vfiodcm1GBLkT3Q9RWIcYJ
	W8Kbblvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSD-00000008Pxw-0il6;
	Sat, 04 Jul 2026 12:26:41 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSA-00000008Put-10kq
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zDN1EIgJknfv8MOrGfVgOp5VpEBlkAuP0ZpsJRBIbKCZPsv0xo0dZDr0hzwlGQlukeOFIp15aynffcJkib3SCZV7B2q9hKQRGnIAVDpbbTZSqSupV1tebhwQvN1m8bsVlT/AzMDw6sx+eimQ1PxjMCger5ZEeHsrRfJoWlVh5d2YpgM+AH8wF8tSPyVIrBfDTHTNhrnEL+NmjWwFHVL2U2NkyBSXg4wn4vbDtZazLBjOTMpB4dbwyR8zReUh4u1+2tZzVlhjMC2xm7GA76ufeZtSGtm9bNSjw1LWv4or9OdA7tiLwG7QDPzfHHV3f+Fb7qqTpO6TCl+uR/R6SUfhzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+fctCojBDEnrL3PSewAs+gflqyRLYR2ynXcWXMCSqyQ=;
 b=QJIarTDVw4c1jqQtbp9aUAmlulC5OTMV3fLQ+slWSsysphztEhQJ1NyQlNeX21lFXeGglxKGO2eJ/aV4tHCvjzDXvDvEy6ClSGwYBPwVKYuUY8xNNw+b3RCfvmtPP7jc/nd3V0RfXjO4EJ+fXh3Ak/L35AZYdWSOPrXMfYhCsS7htEVgAx54MAgalq+9WxqWZyaNZKKUvYaesZmc1gQJvyPM0U3qAHWeAMzeO3xt84cKt6FTK8c5nHxQUy1jC3Sc6Cos8AA+J4YutmscHOCEm2baZAyXQnHwoKsef4R62btDqWaDSXc/WI27MkgVS9GMDK8W9gKCbfkCbA170SKINA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+fctCojBDEnrL3PSewAs+gflqyRLYR2ynXcWXMCSqyQ=;
 b=eIlg+dFwGT9mGdZBmSl4RLncb7kdrxgWUzVLlN/q+MIC8fryTEZtdkqoZxj//D7a1DIwTmhfq+zPapH0arL7GH0kdKnPlZMhrwHJJReVEEV89Ktb+x7P6lCRlkAdNXalKh/LL+tNvw/VzvKnfCcttNOeJqdUL/ZyayHcvAXANrA=
Received: from DU2P250CA0014.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::19)
 by AM9PR06MB8145.eurprd06.prod.outlook.com (2603:10a6:20b:3ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Sat, 4 Jul
 2026 12:26:31 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::48) by DU2P250CA0014.outlook.office365.com
 (2603:10a6:10:231::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:30 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 00/11] i.MX8M: speed up the PBL boot path (MMU, SHA-256, eMMC)
Date: Sat,  4 Jul 2026 12:26:17 +0000
Message-ID: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0167 (UTC) FILETIME=[57881A70:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AM9PR06MB8145:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 65af7a8b-a08c-4191-90d8-08ded9c77a32
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700016|23010399003|1800799024|82310400026|11063799006|56012099006|13003099007|18002099003;
X-Microsoft-Antispam-Message-Info: zpQwKsnDSRQTEMaXLMr/E5eIEF2QzsUYhpML/NEGJiDhyOu9Dy5/wLI99dpIQGT87yufp0QeRoaNBktnxmD/YnR0hSLHbU6Xs0dNBcwGH6k8XpwyaQp4zR2Zw54OyIWld48A9EgGC8kTYmkVfGYre+1sF8FtfhRzB+7iAJ0I+t7AMiiK0JfKqEdhsyJfDr5dC0VroHc17OO2k+CCDVtbE814vT5li1DAM2uN7Wd3tlTld1WvAZKLxxL7PawZPxQxPAlXHc4FUeMoHTzMT2wKLGrc7OdCvWea3jUM+RROVIyc6Id1X2w3XX5Hc9ui/5jfRDpsaw17dvZevHxurhSUrlV5XV1pzkEBWWhEcTPWNIvejGpEQHOAYujlm1+kyiIK4MpP6E/hOZAOr+mVV6AV/YbujCVxLQ1wSGQYYBPHUq2LjL/RbWgxMvH14lxQU8M2nAKV+bHICQFUGlTWBJnpfgi/Q0GaH3p3oPk3gg3mzLfBeSLTXCaXvyjxuuxKFw/F2WYJUZo/hXp90aBHANpiL78kGt6rntgrbjlvWcl7LHPVmOLNiuxzYXoc7d/XviEkmV1jOqOp8XJ+yW0sw2izKPogBmv/QB2+wjAxYe7qTslT5+4521kuZNQxmXqjSk8AS2FAMB4l4q0MlLDBG18Ry11Qkqh3pVoE4rjWu340OZYF4rnp8FXgBx0ZxGl72iwWFM9VbPcNXKnwZiHdg6eKow==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(36860700016)(23010399003)(1800799024)(82310400026)(11063799006)(56012099006)(13003099007)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: uV7FrIvcz2ux7OS7QkfcLVshd9KlJixaXZAJaQKyy4jCukTq5cIfoVlAxnwPkRB1PgosHRtSPnqD3JwnQcm8wsHAGGEFQsuA2T4GSQfmwEiAx7JLBCB3q6ZmG9VXohsuHAh+BslBhK+jllEb0ZQiwzS3GUnow6ytEZ2bfKvrr7xDVJyEzLw/yJCkajBJLwY0L+KFu2+bHjAU5J3CnCVPZkVUAn/8eChbQ6xA5Waffr36penIamXskmiMVU2sOcoINUYG2R3obndjszaxZKeia8rx+ZoF6kMWQis2cJCr+5DKGIxcEG1/mDWIsHlxy0JDrhE6sDDPRvYEK9M+Su6HkIKmG7UBLOBkSxBSQ+CB+fFyb9Cg+Aho2EmksCqk0i6OyBj4qxIS5g6wiO9bO55UqJNiKAwcYSnqMeniJqCJDraNXGgaGPzT3sqG4QovTdaQ
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:30.4372
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 65af7a8b-a08c-4191-90d8-08ded9c77a32
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR06MB8145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052638_327594_EB0F5C3F 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This merges two v1 threads that review showed depend on the
    same first step -- turning the MMU on in the PBL: - "crypto: sha256: PBL
   multi-block transform via ARMv8 Crypto Extensions" [1], where the ask was
   to keep the dispatch out of crypto/sha2.c [2]; and - "mci: imx-esdhc: speed
    up eMMC with ADMA2 + HS400 [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c200:0:0:0:3 listed in]
                             [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9356A200286
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::3:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: f5nchgpwuogf6am8t5bt4i9pktratgcp

This merges two v1 threads that review showed depend on the same first
step -- turning the MMU on in the PBL:

  - "crypto: sha256: PBL multi-block transform via ARMv8 Crypto
    Extensions" [1], where the ask was to keep the dispatch out of
    crypto/sha2.c [2]; and
  - "mci: imx-esdhc: speed up eMMC with ADMA2 + HS400 on i.MX8M" [3],
    where the ask was that PBL DMA needs the memory-synchronization
    (dma_map_*/dma_sync_*) the PBL lacks, and to concentrate on the MMU
    first since it is wanted anyway for a faster SHA-256 [4][5].

Ordered so it can be cut where it suits; each stage builds on the last:

  MMU
   1  enable the MMU + D-cache around the fw-external BL32 verify, via a
      new imx8m_mmu_early_enable() that derives the early-DRAM size from
      the DDR bus width [6]. ~720 KiB verify: ~2 s -> ~300 ms.

  SHA-256
   2  add the crypto-ext transform in a dedicated pbl/sha256.c, gated at
      runtime on ID_AA64ISAR0_EL1.SHA2 with a generic-C fallback.
      verify ~300 ms -> 3-5 ms.

  eMMC / PBL load
   3-7  barebox-proper eMMC speedups: SDHCI error-bail + i.MX ADMA2
        descriptor quirks, HS400/HS400ES, selectable transfer mode.
   8    enable the MMU before the PBL eMMC load so PIO runs warm-cached
        (load_bl33 713 ms -> 241 ms on i.MX8MM).
   *** DMA-free cut point. ***
   9-11 the PBL DMA path, now *with* the missing infrastructure: an opt-in
        CONFIG_PBL_HAS_DMA that gives the PBL real dma_map/dma_sync cache
        maintenance, SDHCI wired to it, and the i.MX8M PBL loader gaining
        SDMA/ADMA2 that select PBL_HAS_DMA and stay coherent with the
        D-cache on (load_bl33 241 ms -> 28 ms on i.MX8MM).

v1's "dma: make dma_mapping_error() NULL-safe" already landed in next and
is dropped. Based on next (261d2f8db0). Measured on i.MX8MM (GS05); both
the PIO+MMU and ADMA2 paths boot correctly (the BL32 SHA-256 verify
passing is the proof the PBL dma_sync is right).

[1] https://lists.infradead.org/pipermail/barebox/2026-June/056744.html
[2] https://lists.infradead.org/pipermail/barebox/2026-July/056890.html
[3] https://lists.infradead.org/pipermail/barebox/2026-June/056837.html
[4] https://lists.infradead.org/pipermail/barebox/2026-June/056842.html
[5] https://lists.infradead.org/pipermail/barebox/2026-July/056891.html
[6] https://lists.infradead.org/pipermail/barebox/2026-July/056889.html

Johannes Schneider (11):
  ARM: i.MX8M: enable MMU in PBL around fw-external BL32 verify
  crypto: sha256: PBL SHA-256 fast path via pbl/sha256.c
  mci: sdhci: bail out on ADMA/transfer errors instead of hanging
  mci: sdhci: honor BROKEN_ADMA_ZEROLEN_DESC / NO_ENDATTR_IN_NOPDESC
    quirks
  mci: imx-esdhc: mark the uSDHC ADMA2 descriptor quirks
  mci: imx-esdhc: support HS400 and HS400ES on i.MX8M
  mci: imx-esdhc: make the transfer mode selectable (PIO/SDMA/ADMA2)
  ARM: i.MX8M: enable the MMU before the PBL eMMC load
  dma: provide the streaming DMA API in the PBL (opt-in via PBL_HAS_DMA)
  mci: sdhci: honour dma_map/dma_sync in the PBL
  mci: imx-esdhc: DMA in the i.MX8M PBL eMMC loader

 arch/arm/cpu/Makefile          |  1 +
 arch/arm/crypto/Makefile       |  3 ++
 arch/arm/mach-imx/atf.c        | 30 +++++++++++
 common/Kconfig                 | 12 +++++
 crypto/Kconfig                 | 12 +++++
 drivers/dma/Makefile           |  1 +
 drivers/mci/Kconfig            | 46 ++++++++++++++--
 drivers/mci/imx-esdhc-common.c | 33 +++++++++---
 drivers/mci/imx-esdhc-pbl.c    | 91 ++++++++++++++++++++++++++++---
 drivers/mci/imx-esdhc.c        | 98 ++++++++++++++++++++++++++++++++--
 drivers/mci/imx-esdhc.h        | 14 +++++
 drivers/mci/sdhci.c            | 51 +++++++++++++-----
 drivers/mci/sdhci.h            |  4 ++
 include/crypto/pbl-sha.h       |  4 ++
 include/dma.h                  |  7 +--
 pbl/Makefile                   |  1 +
 pbl/decomp.c                   |  6 +--
 pbl/sha256.c                   | 85 +++++++++++++++++++++++++++++
 18 files changed, 459 insertions(+), 40 deletions(-)
 create mode 100644 pbl/sha256.c

-- 
2.43.0



