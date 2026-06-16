Delivery-date: Tue, 16 Jun 2026 16:51:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZV80-006X6H-08
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 16:51:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZV7z-0004U8-4H
	for lore@pengutronix.de; Tue, 16 Jun 2026 16:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XMXisfmi3ZiWZjDf8p+3+xy4t0SDmA4P1+/8GicO1qc=; b=06btYNDbcCu+hKoEJV9e2tLNGr
	D36fSrInbjjaGvsLbVCMFzr+rjGK4HeoQ9a8dAJK39WucNBVHQ+K0lhZw7DsKXS3qsbSOqhQHlkB7
	O9bVUugNR4U2PR5JstPVcb/goUoBGQkoWpv/Ie124hsluabF4Q9CfzDeK37XvWtz3U5X/34bh6bJa
	2Yqs30DfVgOC4ZOtHOhjJztyVsQalq3XhKG69QoGKVU0XGncN/UQ4XHMQIVFeA4vB7HG2Sc7iumqD
	tPdf62xfDuGG/ykZpu9ofZhQmI7X9PYLrWEl3x32gu9KiRkNu/RP/RN4LJY86hMhmKRYKgTgMdsvi
	oaKtvAKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZV6c-0000000FwVe-1GWO;
	Tue, 16 Jun 2026 14:49:34 +0000
Received: from mail-northeuropeazon11012046.outbound.protection.outlook.com ([52.101.66.46] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZV6Z-0000000FwUn-3DNd
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 14:49:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O2oUDBQzT2e6TcF2CBAg7ZjiijTrLVP+gPoJ+YL710Fsb3hH2WYJ5FL7ZYSjCU9d8/u8dWyw5WgykgKhYcj4U0itj5QRtmQu+Vk2OF6B0gcXmi+Jg1ldkKbOQlZp3C9tqFVvnO7AJYrySvjTMu3i4QDKW+vTV4Tru31A4nsgu31p2c+fo91UgeM/KakPH6fwaLt4E2/L8O5eBwRz/fZeP2q7IJfQh/QPNTM+3oHZYIhxpCEXCjbt9V1+b5oFmCR4+Pr2cHI9Lv+GCOVg0HliEQ7ZFm4ucqERMxEHifp+GoFXGA4kfNHbNVCSub92PvJgCl2PkV5g0ktGqDAxiO/mQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMXisfmi3ZiWZjDf8p+3+xy4t0SDmA4P1+/8GicO1qc=;
 b=DQbsoO8NOYdJ+pf1E14CkNGxF+oqexmlsVpvppQ/AyGG21oSZ4BBfW7LlQ8AH5fPmF4IO8RkZ2xzQKLUQowNRkLfQcZlgYYTdOXD6bjWjlUvnquN2H6QpXPIQnOaGtS56x5i1iGDO6gfYHyzj8ixYlTdJI9FKQw5sOnmw8AqqQtil+665J2bTFpc/9Ajq4t1VVBIj/OeoGtRsSC4I7G+Pz8JGBpO0Lnw34tp4A1dXpJ8NBxpOtJ2UwkKL0eJGOl3zDXPiUMgrBTGoFxTNYTnrfizwKav2alZQ4XCyXNwmuJkHRD5rK4q4TBTcr6fAjgHrBOpICkqHQa/6xPnb+vehw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMXisfmi3ZiWZjDf8p+3+xy4t0SDmA4P1+/8GicO1qc=;
 b=qFJXlQuVAjdCrNMaGDT+6xuRNgSNSeKfrdN+02m3WCJ4dxr953MIhCPEcbC4uC5ScKHmb6yMTA4viRpQGKfA79ge/S5Uo/08GLNveCDoBtmYSodRf34g7OQKEeO0ooiu4YA0M3Mws+eafb/hxJqy9F4qH7n5Sx6dDB8Ar5S5kA8=
Received: from DU2PR04CA0303.eurprd04.prod.outlook.com (2603:10a6:10:2b5::8)
 by DB9PR06MB7545.eurprd06.prod.outlook.com (2603:10a6:10:23c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 14:49:25 +0000
Received: from DB5PEPF00014B92.eurprd02.prod.outlook.com
 (2603:10a6:10:2b5:cafe::6) by DU2PR04CA0303.outlook.office365.com
 (2603:10a6:10:2b5::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.18 via Frontend Transport; Tue,
 16 Jun 2026 14:49:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B92.mail.protection.outlook.com (10.167.8.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Tue, 16 Jun 2026 14:49:25 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 16 Jun 2026 16:49:25 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue, 16 Jun 2026 14:49:23 +0000
Message-ID: <20260616144924.1614561-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 16 Jun 2026 14:49:25.0345 (UTC) FILETIME=[534CED10:01DCFD9F]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B92:EE_|DB9PR06MB7545:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d3613306-81a8-4f6e-2634-08decbb675f3
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|376014|82310400026|23010399003|1800799024|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: /1IsV1Vpa0l/14ZnhuGcZb03Sp4W3z7ffIRlFEESwMEHSP7z+V5maNJVIVPVp/6UuGkkFWjr3Dwqg9LFnez1MN5pVjIb9lMSkHokP3ihG0IFuUxHkEtmQW4jcGEcQoiWkYrQ5dQ6JNnMtYMXW97wLOGs4Iv2SBH2wakpph498BzMPluALczu0eaVtCVeCJfAfp+9W0okoypFKPm3w9tBBRMwGhToMcDMSbEWEPtVQxbV51G5R81JgTh1O+bW1VMMCMU2roCmZecTLN9nAy/hL2/V2PB0HSk+MTgOKxa/lUdd+WXw2h++Sg1swsACN3dn5EIuITcTB7pAiRaRY2Ud+oxvsC0ooUFbbcFJdSp0MKeOumb3/Lh9ftlxur+QLwKVeG3Kx2p3vpoyi5yqBpdl+8fxgKGg/wDJt4bn3163+kV4UtXFlC8jwg1KDP6x9CFzLklLEgzs2MyZD8lmkw7qf4d06A3gz8DIqKLenoTcDM05rOHrWOAlvIO2TNAJR5gd8ZBiX80EzyiZDzNvZtMq2yZdLYLXokQ0r03vfoW8UpingzKwAU8bhIs1Cel6Bbi5bWpH6MDNQ1LGMwqDqRgLEYEPpsMBkVXljrPzJ9J/vMpSQCF9sRR5vGUyMKHNl/7WC83jlR3fbfXAnGIbFZOT9/H3hv+cGbk2BWKc2q5RelgyDXIf3mP1dcSl45DXlFu1bDb59TpxFvFeDDSZV7z0Xcr/7SI6rMdA+RclStXoPys=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(376014)(82310400026)(23010399003)(1800799024)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 72Xr1VYEl7BzsOtRiwr6b2T7czssnEyJFYcaBrfLFw5tpQM70UIkcrLkKDcX1xTWiDzz7k5GiFcEbdFBNXUsOYsLz2IxP+s7vRENBLvIFKjJ4cYfJUb8gJA4sd3NPNvFTc1dfZhvOZ6XifRLQITCilsgjQfxHHQbhH6mhJ2ScyRmFTJNgZ45maV6v6EqieD4QvAca+Tb/PYpT2MYL3h8qp9NquO2m1za4tLfYgMlLSQqY4qeah2xwcgawJyyv5Uc/aAme5LRcIYS2yNwMdv/6C/MqGMFZ39gbdL/ieVt4ysDMsrW6N09sgimyqX6fzCsXsjiySuJd7WZdY3sKQStB9+wAtOjrgvsUc+3ZKjYJXaLOO+QomWChCA5NiozlgfucJGOSI/8qVYq37hQ/Nb1bnWF62V3WDzXLaoRbvwvh7D8QHFZyWaXVqxhrm1TPhFN
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 14:49:25.5890
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d3613306-81a8-4f6e-2634-08decbb675f3
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB7545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_074931_851294_FAC6A62D 
X-CRM114-Status: UNSURE (   8.29  )
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
Subject: [PATCH] ARM: i.MX8M: enable MMU in PBL around fw-external BL32 verify
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The BL32 fw-external blob is loaded into DRAM by the PBL and then
SHA-256-verified inside get_builtin_firmware_ext(). The verify runs
in PBL phase 1 with the MMU off and D-cache cold, walking ~720 KiB
through uncached DRAM accesses; on a Cortex-A53 this costs around
2 s of pre-BL31 wall-clock on every boot.

The verify is the only thing anchoring the BL32 content to the
signed PBL: HABv4 on i.MX8M only signs and loads what fits in
on-chip SRAM (= the PBL), and BL31/BL32 reach DRAM via PBL-driven
copies, so skipping the SHA-256 would be a security regression.

Turn on MMU + D-cache once the DRAM is populated and right before
the SHA-256 verify + BL31/BL32 memcpy run, and drop the MMU again
right before the BL31 entry (BL31 expects MMU off). Mirrors the
Rockchip handling in commits f2ae1a4a85 ("ARM: rockchip: atf:
enable MMU in PBL") and a0ef3a1b5c ("ARM: rockchip: atf: pass
correct memsize to mmu_early_enable()").

Measured on i.MX8MM and i.MX8MP (Cortex-A53, ~720 KiB BL32 blob):
the BL32 verify drops from ~2 s to ~300 ms (generic-C SHA-256 in
both cases, the difference is the D-cache state) and the BL31
early-init also benefits from the warm cache (~200 ms saved).

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -20,6 +20,7 @@
 #include <mach/imx/xload.h>
 #include <mach/imx/snvs.h>
 #include <pbl.h>
+#include <asm/mmu.h>
 
 static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32_size)
 {
@@ -187,6 +188,9 @@
 		     "r" (tfa_dest - 16) :
 		     "cc");
 
+	/* BL31 expects MMU off. */
+	mmu_disable();
+
 	/*
 	 * If enabled the bl_params are passed via x0 to the TF-A, except for
 	 * the i.MX8MQ which doesn't support bl_params yet.
@@ -284,6 +288,12 @@
 	imx8m_setup_snvs();
 	imx8mm_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR,
+			 imx8m_barebox_earlymem_size(32),
+			 MX8M_DDR_CSD1_BASE_ADDR +
+			 imx8m_barebox_earlymem_size(32) - OPTEE_SIZE);
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
 		get_builtin_firmware_ext(imx8mm_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31, &bl31_size);
@@ -349,6 +359,12 @@
 	imx8m_setup_snvs();
 	imx8mp_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR,
+			 imx8m_barebox_earlymem_size(32),
+			 MX8M_DDR_CSD1_BASE_ADDR +
+			 imx8m_barebox_earlymem_size(32) - OPTEE_SIZE);
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
 		get_builtin_firmware_ext(imx8mp_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31, &bl31_size);
@@ -414,6 +430,12 @@
 	imx8m_setup_snvs();
 	imx8mn_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR,
+			 imx8m_barebox_earlymem_size(16),
+			 MX8M_DDR_CSD1_BASE_ADDR +
+			 imx8m_barebox_earlymem_size(16) - OPTEE_SIZE);
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
 		get_builtin_firmware_ext(imx8mn_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31, &bl31_size);
@@ -473,6 +495,12 @@
 	imx8m_setup_snvs();
 	imx8mq_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR,
+			 imx8m_barebox_earlymem_size(32),
+			 MX8M_DDR_CSD1_BASE_ADDR +
+			 imx8m_barebox_earlymem_size(32) - OPTEE_SIZE);
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
 		get_builtin_firmware_ext(imx8mq_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31, &bl31_size);


