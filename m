Delivery-date: Sat, 27 Jun 2026 21:50:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdZ3I-00AX5a-2v
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:50:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdZ3H-0000lc-UV
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:50:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7gCW3jnV1N8RascJTJRi5HE8sZeETA6kxPE5aYGAFEk=; b=HiNTNZUpFGT+wChzQBXBZcYt9m
	ZgKt8OtMXVAiXXbS7r9K7++mc0blVZvNj9yyX5IWP5Pu/+Mvi0rvHJ5LqDvRWTnqMmYIRNJJLdZ5H
	WMS1tBNtkSxJl1TODvVIKq/etIRE7Qs/m+5zvbFU4zY4HxH4t2D4xgHRkuaDYTYkXpNzByCkjVQhb
	6mkm9ADssCTnKXjNto8u8SSaD+m1f7wvhzFHNhMbcZR6A3rQFx704jfD64c4AswtCJmD1pPMwsvlQ
	D7IvZfm4zbmDs6pNwkZILV2eTZBSVg4rcXCQ5wFieUftlzqexNFxi1gleiqG7/TfqTZO/Upy5UDNL
	qAeKEePg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYyW-0000000Cjh5-02U0;
	Sat, 27 Jun 2026 19:46:00 +0000
Received: from mail-northeuropeazon11012046.outbound.protection.outlook.com ([52.101.66.46] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYyT-0000000CjgS-31rA
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:45:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZW6vz8Yq3j5z3qFGzzELFxFz+1dZ+6v/ar0TmJ+5TRMPRmYvlIYCanSm70JJnTa3NOMx1o6DkRnLuTU9Ls+BP/2xrSZ0p8/SMGdVp3anGX/VY8997/FJoZVn4LbymICnwak+s/rNnP/HR3Iy2MK+xT1cmTVnirrOoWijwloIIrW53dZ8gpKi0SZg8k1uHrGI1fts/UJLEjEpGeNC42T8ZzBWVCDra4+K4fqAtLpAIWtEE6c2NPAhG3z7tqh3EiZIkoQX0Tr71aV/fHlHZA/FKuzlJw58qTNjfBK3NdismjOuPNpU3HHylpWvqgZmY+LXHo0OmhM0pCm0Ubh1ErMJ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7gCW3jnV1N8RascJTJRi5HE8sZeETA6kxPE5aYGAFEk=;
 b=XFmyIaMXGUz0PrR7ju3m0Ep9uDA64KkND0X9Du4PndZDbRWZaG1e26t4NUJVrZxbJAsPW6ypkYo6OSzeJWkU5I8eQW8+yPH649DA/UDUnKfRNoolAbUTqn5PZnNpwkHnxDM+BVR0HZ8MVOZ+cDo+2RM5hKj5EdSNYNfG3xhv4wYJJRPU7etr1swzP/H30Pgb8SQGk8KphPFtoUNJQ+ddv13OdurtSm0gLy/yd+UKsoUODGGLtFARMeb3hnNbFVchUzTI/LsHHdvfV5ThC2ZMT0J+NMacJnlbyKlOIDXyR4pmstPVD7n0eAI1nhzA4+UEHAMaBrkmeeVQ7DKfnLGGow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gCW3jnV1N8RascJTJRi5HE8sZeETA6kxPE5aYGAFEk=;
 b=PZOHr3gJ2KEvx6zYRnmNp6SUTec9q7pd1AO4NJLiT3UfESugh7oZDPIwFm0icLyr9e5Ezll4AFo7fXYcVcluxHfL09j/Mm3OIBphx4POLDes25gV5SbAmlKPFknk1jM3Z3W4opFFjDHCE1r9yPmw6lYfTjJilMf1z6KkCMC6HBk=
Received: from CWLP265CA0495.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:18b::7)
 by GV1PR06MB9667.eurprd06.prod.outlook.com (2603:10a6:150:1d2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 27 Jun
 2026 19:45:50 +0000
Received: from AM2PEPF0001C716.eurprd05.prod.outlook.com
 (2603:10a6:400:18b:cafe::f1) by CWLP265CA0495.outlook.office365.com
 (2603:10a6:400:18b::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.18 via Frontend Transport; Sat,
 27 Jun 2026 19:45:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AM2PEPF0001C716.mail.protection.outlook.com (10.167.16.186) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 27 Jun 2026 19:45:49 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 27 Jun 2026 21:45:50 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Sat, 27 Jun 2026 19:45:48 +0000
Message-ID: <20260627194548.2234557-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Jun 2026 19:45:50.0500 (UTC) FILETIME=[8E9F7640:01DD066D]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM2PEPF0001C716:EE_|GV1PR06MB9667:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d95520f1-4319-4c25-d5d1-08ded484b0c0
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|23010399003|376014|1800799024|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: NzjwN/tJD9Xru0HvMIXq3ZMystlUDakql2x8TbWCrizjl4CIM81L47am+ux1yxqZB/itcDHRJ+TmVF99mW+AwKWaw7gdHKxqUlxfWVEff7AxOnVLFBDl0kyNoVPRV3ydSzXwg+cyXbJI3AXPV+SrLPkvC4CsGHIPrO8KsJTYbo4lVbfNotBPQADNFFduEf1mZzsZxzlE/bWHD5hAdnAtVnK23E2htTYjPBfjGigGMxQNp4v0Bu9ZCCEjcDBdc2bYy0x+uHPNHciz1t+6RBIPJCabFasa5LYBc249DkAMoYswWg8JFOcW/BC+y6kf4LcH5N0hDn76GVZuKa+OoGHyRgrza6ZV6EL9LOq3moiaC4bZ+W0aGFHk3YjUxAk1BjFIsrRto2Ribl2zJqKObJGg6kd+Umz+DBd+kEORk6Bfx1jJHq8FD3UBRFtfkMRyKyXlxI8i6bBcaN7kZTMXsyypv8f+0BPC7SPy+J5+VFkqzp6nE1iwtm4P/jR0T5xiHcYwGKJYB8jpy06Sa/HJhZmAUFE1Cz6Tx56dBswdAV9P4JOZ8oSHW6O4a3JQ0RX8Wg2BOtHbwotXr0ckYI8szxbdHFKN2WawvHCW8Y79en1Masy96553U0TQL4awrQ6CtfjEhLI6gudQYgUFnPmFBcaJHVipIMrNEdeK8+7AnhlGkAZ9sQySurJGGuUujggVEx2XM628jpA9NZjiU0hgz83XPQ==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(23010399003)(376014)(1800799024)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: oKB/7R3O4iEO2HAqW8HRwadzGKGf8XQLgyse7Dl11IQaEmmtxkLbRAcvjLqkgEwTN1cI+wWLkek/2WfZTwqEIgyi1NAaPG7IgqVPzOCoD1oX1xbhr53LFs3sCtGdXic0vXW9DC/LbjVejkCFv/Fobz9Xh7+bjwKdC3KilPlYlM8qnyIY7pD40CI52ZbSruBM+f5lmmwACxL7ei5H9bL3Mt8LzpbrZmUD0/voE0b8vQCgKAf7wZxCDZepG7o9vK7+bG7CAiMmJZLhisHpQpen0n+ir0nGO1+70CZjk/uXqs9A8vx1z+vjmlci2gYgzatzyZTc5xVlNY9kIztn7dJkFmSmUwYrgYGRhNlXGQ6YEL6bM19olzUh4ewpDCpIMIshXZq6TC7O8YdM2QXyb+zcrGDBsV5sllHE9HcO6+GFaCcs3OtuuAi4RJ0xMLtT8Lik
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 19:45:49.9030
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d95520f1-4319-4c25-d5d1-08ded484b0c0
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AM2PEPF0001C716.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR06MB9667
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124557_767706_6C15ED0E 
X-CRM114-Status: GOOD (  10.98  )
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
Subject: [PATCH 0/7] mci: imx-esdhc: speed up eMMC with ADMA2 + HS400 on i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8M the eSDHC/uSDHC driver leaves a lot of eMMC throughput on the table:
barebox-proper transfers via SDMA and negotiates at most HS200, and the i.MX8M
PBL eMMC loader is hardwired to PIO. This series wires up the controller's
ADMA2 engine, adds HS400/HS400ES, and lets the PBL loader use DMA, with a
Kconfig choice (PIO/SDMA/ADMA2) for both barebox-proper and the PBL so the
existing behaviour stays the default.

The series is in three parts:

  - Three preparatory fixes (1-3), each independently useful and safe to apply
    on their own: a NULL-safe dma_mapping_error() (a 2-line guard in
    include/dma.h matching the existing cpu_to_dma()/dma_to_cpu() helpers --
    the PBL SDHCI path calls it with no struct device), aborting the SDHCI
    transfer wait on error instead of spinning to the timeout (affects all
    SDHCI controllers; strict improvement), and the
    SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC / NO_ENDATTR_IN_NOPDESC quirks for the
    shared ADMA2 table builder (no-op until a host opts in, mirroring Linux).
    Patch 1 is the only non-mci/ change; it is a prerequisite for the PBL DMA
    path but stands alone.

  - The i.MX opt-in + HS400 (4-5): the uSDHC marks the two ADMA2 descriptor
    quirks, and HS400/HS400ES is implemented (strobe DLL, timing path, caps).

  - ADMA2 enablement (6-7): a transfer-mode choice that wires sdhci_setup_adma()
    into probe, and DMA support in the i.MX8M/8MP PBL eMMC loader.

One non-obvious detail worth flagging: on i.MX8MP the PBL loader issues a PIO
EXT_CSD read (to pick the active boot partition) before the bulk transfer, and
a PIO transfer immediately preceding the first ADMA transfer wedges the uSDHC
ADMA engine (hard hang, no completion or error IRQ). The PBL loader therefore
sets up DMA before that read so it also goes through ADMA. i.MX8MM is not
affected -- its loader has no such pre-read, so ADMA is its first transfer.

Measurements
------------
Time to load the ~1.6 MiB next-stage barebox image in the PBL, and to read the
FIT in barebox-proper. "DMA" is ADMA2; SDMA is indistinguishable from ADMA2
(the transfer is bus-bound) -- on i.MX8MP the proper-stage FIT read is 387 ms
with SDMA vs 391 ms with ADMA2.

  i.MX8MM (gs05):
    PBL next-stage load:   PIO 559 ms  ->  DMA  21 ms
    proper FIT read:       PIO 738 ms  ->  DMA 321 ms   (HS400)

  i.MX8MP (ts20):
    PBL next-stage load:   PIO 278 ms  ->  DMA  85 ms
    proper FIT read:       SDMA 387 ms ~= ADMA2 391 ms  (HS400)

The PBL transfers the card at whatever speed the BootROM left it, so the
absolute PBL numbers differ between boards (same ~1.6 MiB payload); DMA beats
PIO on both. In barebox-proper SDMA and ADMA2 are equivalent, as the i.MX8MP
figures show -- so SDMA remains a fine default and ADMA2 is opt-in.

Testing
-------
Boot-tested with PBL=ADMA2 and proper=ADMA2 (and the SDMA/PIO fallbacks) on:
  - i.MX8MM eMMC board (HS400ES)
  - i.MX8MP eMMC board (HS400)
Large reads verified against known checksums; the PBL loader falls back to PIO
if a DMA attempt fails, so a misconfigured board still boots.

Johannes Schneider (7):
  dma: make dma_mapping_error() NULL-safe
  mci: sdhci: bail out on ADMA/transfer errors instead of hanging
  mci: sdhci: honor BROKEN_ADMA_ZEROLEN_DESC / NO_ENDATTR_IN_NOPDESC quirks
  mci: imx-esdhc: mark the uSDHC ADMA2 descriptor quirks
  mci: imx-esdhc: support HS400 and HS400ES on i.MX8M
  mci: imx-esdhc: make the transfer mode selectable (PIO/SDMA/ADMA2)
  mci: imx-esdhc: support DMA in the i.MX8M PBL eMMC loader

 drivers/mci/Kconfig            | 40 +++++++++++++++--
 drivers/mci/imx-esdhc-common.c | 28 +++++++++---
 drivers/mci/imx-esdhc-pbl.c    | 68 ++++++++++++++++++++++++++---
 drivers/mci/imx-esdhc.c        | 98 ++++++++++++++++++++++++++++++++++++++++--
 drivers/mci/imx-esdhc.h        | 14 ++++++
 drivers/mci/sdhci.c            | 43 +++++++++++++-----
 drivers/mci/sdhci.h            |  5 +++
 include/dma.h                  |  2 +-
 8 files changed, 268 insertions(+), 30 deletions(-)

--
2.43.0


