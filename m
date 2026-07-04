Delivery-date: Sat, 04 Jul 2026 14:31:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzX4-000C5f-2U
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:31:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 41D6E2026BE
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:31:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gSS7tbEA;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=V+RwfMN3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZEoblncaIsdDFVL5Q7+VDDBy8p8InpmvAJpLwuo6L8g=; b=gSS7tbEATk3339vpjTjyYCKv42
	woRRs29pD7hLwDcKL94/pe3GFJ1qhJlad3HEFy3zRzVoMCwXmaSIIIdLREGB+ZvA4rQ6/0Y4+6e3O
	F7TR/WAAgvjuvZew7U8asnAP6kNgcIfYM5DjjoIlS0sD1xazDoG7v1R8Y64ub/s+6fYr2O9DEcQjk
	vnzZg8LzHtSiJNMnx/eyUZ1E3z6BElDMFECx/8+xyNeTqU3dW5ru6aMdGgkYLH8KZFUCrUyeILFwq
	er8AqvvE1iBJaAaELddf9G/3zmHG6P24W738hYreh1ecMcgrIpRuFjG1wo3WTZJ3x0ZOp2204j8pI
	tOPHyw9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSI-00000008Q3l-1Ige;
	Sat, 04 Jul 2026 12:26:46 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSE-00000008Pxb-0Pu8
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N37tbPsWopaV7KS5vEOJNlDQyelMv7qyQGGLJD7fNkbCJNnAF9pvRkpQnkPPwUAeOOAPFhxyJBWfFPqnTZmjbbBsH0Htgw9fS/EYtKiztk8SqNo72PNsuB+x0VSV/S70Mek8vEU643a1vqBCWLG3WepMeaqGib1SwKundY+vUrnFprbOXqJf4vC4MzmL2lqYN5aaQxo4eEQFr+vNeMjonYDbsWvHRCIln87LNJF8knQiaBcfSuav0JcHvE4tU1F4DsJQcxRTVj1hNVGIatBpmd6GZRlYWT7Nw1WjjQ9K30sA192wZwvy1tUt7Dt5EebKiFrzDX6cxmBdCCO/rb1w+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZEoblncaIsdDFVL5Q7+VDDBy8p8InpmvAJpLwuo6L8g=;
 b=VRNNmen1Zq2+eRxitKFShIztOay6apGG17ZjAk8KDzofLEGfOBULH36D/uk7ukOVF4R3jXQxMN+mNhBCcWRx9rmXeZwD2DNOvatE8Vcvlsn+HU2Q/38rxDplVB0oLH1SXCUClNJUH34hIQw/r0FRTWYL2aJVh+7fZfiDpHdgkik8SvUa47itQik2SdwEeFXd1IZSX7og/pC6emn3UtCiQtqojRDOVQ/PTasbs3yqmPnMUGVNPyoVDhfJVgrFOXsusz5hcCAnhUN4B7ybH3+yQ0b0VYX2eKmbj+OqE7K8MKKVayEFdjOMPlAGKs9r/Kmm7CXVnb2Yh6babofJDKegtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZEoblncaIsdDFVL5Q7+VDDBy8p8InpmvAJpLwuo6L8g=;
 b=V+RwfMN3/HZGiSpWi09JAZWeMUQ9I+9TLw62+7aG6X+kvb37ZZ6Xh3yesLhj07rH8TwOfSxSqnyWtuHOpdhP+B28o3qdOgwrC9CMiWNuRVC6X83UWpvyFSG1fPN0rdHuwMcLexasJOMSQn8bQlujKz+E28vmXQj8fAhjDIfzmVE=
Received: from DU2P250CA0028.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::33)
 by VI1PR06MB6397.eurprd06.prod.outlook.com (2603:10a6:800:126::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 4 Jul
 2026 12:26:34 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::a7) by DU2P250CA0028.outlook.office365.com
 (2603:10a6:10:231::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:34 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	"Claude Opus 4 . 8" <noreply@anthropic.com>
Subject: [PATCH v2 08/11] ARM: i.MX8M: enable the MMU before the PBL eMMC load
Date: Sat,  4 Jul 2026 12:26:25 +0000
Message-ID: <20260704122628.3326142-9-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0354 (UTC) FILETIME=[57A4A320:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|VI1PR06MB6397:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 143d47eb-f315-400f-d4f2-08ded9c77ccd
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|36860700016|1800799024|23010399003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 844TtU5hhygv9e+WnpWi4rijDaX7Ea0yqxwCzUC7zbVlUaDQ1PCOhrbKz3h/altAliozbyElaLzTvvKnn7aBnskMReIVx3hC1/lkLHPP5KVFADHxP47ybapwhwwCy2IKO+KsSSL7y6LqCfByzpdf267ty/9tymNc9hZ2y+XrMfmLWQsSNPhJOxeZrX4yesre5vZEgeuJVNGJd71Cz21og0rC+yuEj5nDu61jcry3X8fe+mKLegfPAgA7GH28YCwYmfvR2mQ945kD4iN/i1lPqkOgjvFWwf+wOn6pOn+Qsi52orJW6TqbToAJ9U7qXPCeyVc6bQ1JjpXzRcARHMDSJgBFQSKORLbmgWLjYJahpytgYA16TolwGvBkcN9ffIpWjGrdSyaaM1qOMC8YHoYLiqYq3OIFw8FE/s7P0idzuhZddEI1ACPDU3HgXGPXbRXGbSxz/fUrsStC+bhFlzmkQNSbNPspyDlsXy2qal/sRAW3qnnHWk9JsYZx2dgNJzImVkb6u6ckr7qvm06OwqI2vEOun0grXU089kCTDYs62IHoINJOEmpV3Ew3+xz5ePUT7WWHTIqNog4ZY3ECLK90/7t35Hm5GsjMLh2+/RTNd/xq7LJUypDNEKL6NwC2gW/7N7HDtIZ5hx38wwznwMPVG+zYKLL6MUmVpuJ/XTBi4UI7QgXcL6wmdW7b+jr9kYCWoHh09RhOdPA2St6ka1EUww==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700016)(1800799024)(23010399003)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 6R9Zm19TD9Zb2nkP0rPsSWfLII9PbAknOvRotlMfs9x66v3+r/Ghx5yK4VZmg8hKUYJwImJw9A1Za3i0hQooyiXsuRKgCZRC9pIOlgJIiPp+egVe0YxY1l/OwaKz+nlU6ClNRhNQsTCmjVyWYI5mM+Fq0wmnC/ygrScNZIhxaw/hZbpK0yHmrYbnMbjwer7OQCAYzT8R879r8GgUFe00j5J8HLNxbAJg/FTKMEdB03BKWPL8pa/6gtolinzJm1hKTayv8J3oxiCQ1RQUFqUcJVcoNQNUaDINHDrqtELsUXgL621OEJCJwxOJ2IzqtE/ZgP9Qu+keFy3iF6SyJ74PcBirj0iBgg2v/GuWrtaxwB2ZaMLcEYDI0HXJz4HcmtiXUPElGkYkA+TLC2RlD6g3sWvqt5GLCNp/BJLhHsKCpJHTw9VCS6XfeDXYP5ccJM1L
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:34.8148
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 143d47eb-f315-400f-d4f2-08ded9c77ccd
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB6397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052642_150769_5E34ADD7 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The i.MX8MM/8MP PBL reads the next stage from eMMC with the
    MMU off, so the PIO copy and the CPU's writes to DRAM are uncached and slow:
    on an i.MX8MM loading the ~1.6 MB next stage took ~713 ms. Move the imx8m_mmu_early_enable()
    up to before imx8m{m,p}_load_bl33() so the copy runs against a warm D-cache.
    Measured on i.MX8MM: load_bl33 713 ms -> 241 ms. The MMU then stays on for
    the BL32 verif [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c201:0:0:0:1 listed in]
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
X-Rspamd-Queue-Id: 41D6E2026BE
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c201::1:received];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: t91hf88gb43kwytyf1doybkgwxxa73q9

The i.MX8MM/8MP PBL reads the next stage from eMMC with the MMU off, so the
PIO copy and the CPU's writes to DRAM are uncached and slow: on an i.MX8MM
loading the ~1.6 MB next stage took ~713 ms.

Move the imx8m_mmu_early_enable() up to before imx8m{m,p}_load_bl33() so the
copy runs against a warm D-cache. Measured on i.MX8MM: load_bl33 713 ms ->
241 ms. The MMU then stays on for the BL32 verify + BL31/BL32 memcpy that
follow, so this replaces the post-load enable for these two SoCs.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Assisted-by: Claude Opus 4.8 (1M context) <noreply@anthropic.com>
---

Notes:
    v2:
    - New patch. The maintainer-suggested DMA-free speedup: enable the MMU
      before the PBL eMMC load so PIO runs warm-cached, split out so it
      stands on its own (Sascha).

 arch/arm/mach-imx/atf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 0f57a204b7..4b6f7ce5e1 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -299,10 +299,10 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mm_init_scratch_space();
 	imx8m_save_bootrom_log();
 	imx8m_setup_snvs();
-	imx8mm_load_bl33(bl33);
 
-	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	/* MMU on before the load: PIO runs warm-cached; also serves the verify. */
 	imx8m_mmu_early_enable();
+	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
 		get_builtin_firmware_ext(imx8mm_bl32_bin, bl33, &bl32);
@@ -365,10 +365,10 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mp_init_scratch_space();
 	imx8m_save_bootrom_log();
 	imx8m_setup_snvs();
-	imx8mp_load_bl33(bl33);
 
-	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
+	/* MMU on before the load: PIO runs warm-cached; also serves the verify. */
 	imx8m_mmu_early_enable();
+	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
 		get_builtin_firmware_ext(imx8mp_bl32_bin, bl33, &bl32);
-- 
2.43.0



