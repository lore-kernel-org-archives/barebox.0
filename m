Delivery-date: Sat, 04 Jul 2026 14:28:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzTW-000C1W-0H
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:28:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8EF702026C0
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:28:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LQNgqoZE;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=RFuMAGju;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wt48VkpwGic2gYKguDnOzBxKJ0GArGvFFofSXtmnI2M=; b=LQNgqoZEEVS2LZc9FcqvT9m3SS
	oT74hdly9qKGS9+KU3RRGZ180R8sZaVr4tIASOwfFSnkt2bXGQlRaxgcfojhtvUpLBYuZ2mFrzlAd
	8ExqMBMlntk91PB9FhEWHI2e0YitiukPbU7/6TMZgDBA72AkMPDl1hirt8Egskx1vFjXzlLuZ0hUJ
	Ehv85pFm3b6Brj+lcVnsvXLTyIjiAlLYPaRZ2ZH8bHjQM2F2mx4PyPJnGshgsdRVIw2UyaWd1tTbR
	xyzFoCpvOzj9Ez2hY33KtNS0oa6ca/MKlREM4rP4ppuBjC866dTg/ANWTu3LVYlslq+fBORNf/W8z
	8mbdBchQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSD-00000008PyH-1a23;
	Sat, 04 Jul 2026 12:26:41 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSA-00000008Pux-167G
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tB51BqpBxdl+vmScJAZ3ibItSpu5TRTcxMLjbCk401pmMBQFe/si7wnbvNtIQG2K/bMX3/d3T3w8fo0ag4FMya1zklWAksLXxvL60osEvH2zTVaE4yA5JwrK6+tP4/5iDcpcneunsxD/UEVeBy+i+O88e+qNurTEmMlUX2B7XrdPfepv1tTzRwzwmKkUN3/Rta04p1sWG3xWOtiWUbz3SbNmnXqeAyeG1HOvszFHGn36xo0Mns2kq7u5i+z6Pn6wguOAos3vwqUpl6fPtDsofKzgBLO4BDhbIwmK7xyVXd64xrfZF+JdTxZKdXl4axTFlPdBNgZLXHya7EzgH2qSSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wt48VkpwGic2gYKguDnOzBxKJ0GArGvFFofSXtmnI2M=;
 b=MfI8UbznzhfZ6rlCAnk3JYQ6aOk6NELxtDulKq6iK8XRj/G77i6MGIYrseYUyTd9EFP9lYMcRI2Vz9DkMt7U76aTE6FL1CvUmt40Sc8aP0ACmtDhSbQiRHYAiOA5X7o8i8A9NQValKFWXxYsm1VMHeY70FNsHv/ZXQt/EOt2aSCemSfAP3KbXc+408HIqnZJawilVTQ8I+RqeCff+XZu7qcl6oMKk/AOlqqQREibsFsUyVEY9VGE8cseCOmufPA6QBb2VH6sn4nURPHS5Rt/4LamGXHgDkcXlLt2qY6MLGroxPcG7BbCmD+fmEXUhy1iM5bz9/WreFKrwQ6bp0dxWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wt48VkpwGic2gYKguDnOzBxKJ0GArGvFFofSXtmnI2M=;
 b=RFuMAGjuo2zfOv3fUN3GwGrJellQ5td2VFP2C0ZWOUE01WZyE9wPAJ+uDYjKqlIwf93ab/ME3niCjfBDLnnGrlIwpotTJuEwQRoss8WGmBCHywhjcVbJOzmrU9bphgcyV0RiGsD6Sw3GYj4lrFgn/G4CYbhr6tlrB/y1Zw83sLI=
Received: from DU2P250CA0027.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::32)
 by AM0PR06MB6451.eurprd06.prod.outlook.com (2603:10a6:208:1a1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Sat, 4 Jul
 2026 12:26:31 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::a8) by DU2P250CA0027.outlook.office365.com
 (2603:10a6:10:231::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:31 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 01/11] ARM: i.MX8M: enable MMU in PBL around fw-external BL32 verify
Date: Sat,  4 Jul 2026 12:26:18 +0000
Message-ID: <20260704122628.3326142-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0167 (UTC) FILETIME=[57881A70:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AM0PR06MB6451:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 5b4459c4-591c-4071-1909-08ded9c77ac4
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|376014|1800799024|82310400026|13003099007|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: lX4zIZhB08wSvca2xHWT28QXlvWwsFgyEdn29TVvWFQgFL3JkTowol6FaY7TGnLjdwH1nfnqrP/QJ6nUsCb9xH5H69cVdeFrSOZkQ+4gpPWVd3NpLjZJ0mmpAFuBowll+npZH6w1MmUVgWs7+1fgTacrU9L84O2Al8W8U0tv6abSCXxreKNwBpeDdY9+a2ecF1nFyYw/4Uz5Ic4PCzKEZkdSXnfHyydvqHWpC0FpNQpsiN/6VbsU1mI3mCso4JIhwyD/zalJanIcoQn4F/bzsPFOPvi00GS8HTOXS/KjlGwcAJYByWauiy+ENhkyxD9OfkVBlsGuc4S2O3dMpGOeFxA2HX07LzUVUnN7JA/shbi/m3hlI3i+vRDQqULJlspSynbuJ2KwqW8tg+voCRHvZmfQhpNeixhJMFf+ZF768x5JXF2k1FB6gRbV46gOxANvAdztNp6PM9PfvEJABWfpiFKPg4k9WDItGEu6FYUiSYTU8nLr8psPTEXV40Zsx161OHB8hxTwl3erDR9zf6wwVm/cAeYx0XrORY5rLBytIdjzDQECwXAxxNNSguWsPlAkCcwtWInlMIlAHfHfxzhF4x2ExdPR3UiPe/AX69o/LzMjAJOoeQCIhVSVdCL/qPjeqKQJCTJISQgCHmy4hteSsNrD7csV5Sta2Er/4oCmj2XYTj6day0Di9P+OPyKq54H8vwL9xwHKtJt5G6dkh+TSA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(376014)(1800799024)(82310400026)(13003099007)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: QsvEabMJeApBzm32Uk2/xeo9dNs0oZbGJLhB1lJ0YnSd8Ac+rHBt+lN6V6DUNv/MomtSqPHPGm7vdT8Me2czfAB+7PHHN64fNYL1frkSl2VA6iUxtISSv3gFXEjFW+CH6VCoc7nnPGdOiB3eN7UOGwT3MaXQw0zjAFMX6HnqWSrSEEO70Q4oBybv+7MGNQ35ycG7e0JRV6mcphAZBIidR4qgD+Y9Toi9lCcZUDU2eqn+d5UmXEdV5rs7ZhsyxR5nVwMSNc0snDPeBbQqDyfPbMwBOq3psOvqexF5DLJQWSehEKEb3ZiiZZKm1ifCf0wqZeji32GM2soJgL+A3bjjc/3kLpcpJuo85sJXMOrom3evrOX+nKqU77xbjlvKSdpDRgwVW08jEoM+vDgSx90kn2L+MWMsY7SWzBtBfjQP0MMHQ1KyLyFWXOXiJaV9ibVC
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:31.3953
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4459c4-591c-4071-1909-08ded9c77ac4
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB6451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052638_330119_2A560AE6 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The BL32 fw-external blob is loaded into DRAM by the PBL and
    then SHA-256-verified inside get_builtin_firmware_ext(). With the MMU off
    and the D-cache cold that verify walks ~720 KiB through uncached [...] 
 
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
X-Rspamd-Queue-Id: 8EF702026C0
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
X-Stat-Signature: 6a6xyi46cgzey9zi7hiznz6ww88zdfgi

The BL32 fw-external blob is loaded into DRAM by the PBL and then
SHA-256-verified inside get_builtin_firmware_ext(). With the MMU off and
the D-cache cold that verify walks ~720 KiB through uncached DRAM; on a
Cortex-A53 that is ~2 s of pre-BL31 wall-clock every boot.

The verify is the only thing anchoring the BL32 content to the signed PBL
(HABv4 on i.MX8M only signs/loads what fits in OCRAM = the PBL; BL31/BL32
reach DRAM via PBL copies), so skipping the SHA-256 would be a security
regression.

Turn the MMU + D-cache on once DRAM is populated, right before the verify
+ BL31/BL32 memcpy, and drop it again before the BL31 entry (BL31 expects
MMU off). The verify drops from ~2 s to ~300 ms and BL31 early-init also
benefits from the warm cache.

Wrap the enable in imx8m_mmu_early_enable(), which picks the early-DRAM
size from the DDR bus width (16 for i.MX8MN, 32 otherwise), rather than
open-coding mmu_early_enable() at every call site [1]. Mirrors the
Rockchip PBL MMU handling.

[1] https://lists.infradead.org/pipermail/barebox/2026-July/056889.html

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Notes:
    v2:
    - Wrap the enable in a new imx8m_mmu_early_enable() that derives the
      early-DRAM size from the DDR bus width (16 for i.MX8MN, 32 otherwise),
      instead of open-coding mmu_early_enable() at each call site (Sascha).
    - Folded into this series (was posted as a standalone patch).
    
    - Guard the mmu_early_enable() call with IS_ENABLED(CONFIG_MMU) (it has no
      !MMU stub), matching arch/arm/cpu/uncompress.c (Copilot).

 arch/arm/mach-imx/atf.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 948756e26b..0f57a204b7 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -20,6 +20,7 @@
 #include <mach/imx/xload.h>
 #include <mach/imx/snvs.h>
 #include <pbl.h>
+#include <asm/mmu.h>
 
 static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32_size)
 {
@@ -130,6 +131,20 @@ static __noreturn void start_bl31_via_bl_params(void *bl31, void *bl32,
  *     4. Transfers control to BL31
  */
 
+/* Enable the MMU + D-cache over the i.MX8M early-DRAM window. */
+static void imx8m_mmu_early_enable(void)
+{
+	unsigned long memsize;
+
+	if (cpu_is_mx8mn())
+		memsize = imx8m_barebox_earlymem_size(16);
+	else
+		memsize = imx8m_barebox_earlymem_size(32);
+
+	if (IS_ENABLED(CONFIG_MMU))
+		mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR, memsize);
+}
+
 static __noreturn void
 imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
 		     void *tee_bin, size_t tee_size, void *bl33, void *fdt)
@@ -188,6 +203,9 @@ imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
 		     "r" (tfa_dest - 16) :
 		     "cc");
 
+	/* BL31 expects MMU off. */
+	mmu_disable();
+
 	/*
 	 * If enabled the bl_params are passed via x0 to the TF-A, except for
 	 * the i.MX8MQ which doesn't support bl_params yet.
@@ -283,6 +301,9 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8m_setup_snvs();
 	imx8mm_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	imx8m_mmu_early_enable();
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
 		get_builtin_firmware_ext(imx8mm_bl32_bin, bl33, &bl32);
 		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31);
@@ -346,6 +367,9 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8m_setup_snvs();
 	imx8mp_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	imx8m_mmu_early_enable();
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
 		get_builtin_firmware_ext(imx8mp_bl32_bin, bl33, &bl32);
 		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31);
@@ -409,6 +433,9 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8m_setup_snvs();
 	imx8mn_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	imx8m_mmu_early_enable();
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
 		get_builtin_firmware_ext(imx8mn_bl32_bin, bl33, &bl32);
 		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31);
@@ -466,6 +493,9 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8m_setup_snvs();
 	imx8mq_load_bl33(bl33);
 
+	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	imx8m_mmu_early_enable();
+
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
 		get_builtin_firmware_ext(imx8mq_bl32_bin, bl33, &bl32);
 		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31);
-- 
2.43.0



