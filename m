Delivery-date: Sat, 04 Jul 2026 14:31:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzX5-000C63-0r
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:31:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BA83820269E
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:31:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AywRSSPE;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="D6j+rJY/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DgOJ30LkZyN3HvPP2rwtCPmLmFBc+q3cNEYGxOzdmlc=; b=AywRSSPE1lJOXRBsBLowBsL2DJ
	sGx0WGPLZC7lxZgBYgRYb6VaWsZ8KeJ5+S19o4KGooARILMIKdUkYeh5gbat0fu/QQJjoOE6BdI4s
	H7WOMwS8EqSZ46iImiUcmkR9O/RL0JgZ65IixKdD+CKKOPm6tXR7/08iJwsP0I+cFkhrPCG/CHxVA
	/c7rReB8zDmzhloVPY5SQRnE0gO/WhbF5Jijclcg9P0cLNSMxANs9i2XLblT9yR5IX0/3JKurHmbR
	acCpfSm/n98y245ucZcKp+uwn9GSYu28PiRDl7KWNKsUSgv/EBzU/u6cJ67rrvJ5uUW8R/1JVSKOm
	lVdV4xPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSD-00000008Py8-13tT;
	Sat, 04 Jul 2026 12:26:41 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSA-00000008PvK-2zTc
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhZbiwSfnQPcw5+VjIVndSmVN0vzbo6Lxl33cOioWSrv73WIO7Mw2AfsV8okhxG9jfy/8Aa27fi/TcyOyEgcKa7NxgrkWFSZMg8W+mX6DsSl/GStHbnD8gQZi3EVGLizskkFwIJUWNa+K9Gw+mfH6jQ0Lz6APn3qKSU2Bimze71lfhuR39RuAry18djKMCpMu2L+Fm9BgdsOccUhAw41ub/lMAWLpMX0LTPObZsGnVDdQoYC0BPqRc4MLmgtkFBaJv2JkpvOMjWrP0O4s7X/W0rClP/luuu5gyhw6WBasb3vLYsDQCWyXC+w7JOEgWBgTP/qv2O2cDfaX6ePUCeCnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DgOJ30LkZyN3HvPP2rwtCPmLmFBc+q3cNEYGxOzdmlc=;
 b=rVjG4SUcNwzQ6kLMNWwih54Qc2WoSCf0uIlblaljeDGe1TD+Odn2WfkJ4RmwVikNEoWlOrYks6rauKVKpKKvcleZn6WJ/KNiTsQgugcM8zI7QoEVj+N2JpzeHJrp7acCL8Hmb3H/oUZ6S8SSZHFVhFZ+ulO0IHmPOm7Icccp/DX0wCLW/lYiZJFD96idZaDYmP5Of3R7HFE2QjqmWYABQSwyISUnp+YKZ1xD5EIZ05QcFijL8bt8b9Bbhe7FaPNAz+T8y/Ys5GkkwhVAYNXnmN3CuFJiqeBmlun2LKr+g4YcllPLvtQzwkwCAE4/pl6Yo1lH1MvRNcKQMTMHlm6u+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DgOJ30LkZyN3HvPP2rwtCPmLmFBc+q3cNEYGxOzdmlc=;
 b=D6j+rJY/kWE5ZHlnmGXJ1+wCzPaJ3OgHSz2KnMn9QBiLQ+S/aGDHTR5gtcWov5FgA92FtSRvioyhrNj2xyduR98nbzuEHc9b/cBjO8qdlqQs/1e1qUW+H47jzWngPexQRMorpf6nvt8Qe0UqcIdtBdJn/Jai4sjuA0kcSbiJo5M=
Received: from DU2P250CA0008.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::13)
 by AS1PR06MB8539.eurprd06.prod.outlook.com (2603:10a6:20b:4dc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Sat, 4 Jul
 2026 12:26:35 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::5f) by DU2P250CA0008.outlook.office365.com
 (2603:10a6:10:231::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:35 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 09/11] dma: provide the streaming DMA API in the PBL (opt-in via PBL_HAS_DMA)
Date: Sat,  4 Jul 2026 12:26:26 +0000
Message-ID: <20260704122628.3326142-10-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0385 (UTC) FILETIME=[57A95E10:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|AS1PR06MB8539:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3ec2da3f-21c1-4ef9-dc74-08ded9c77d0f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|23010399003|1800799024|36860700016|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: zUd525P2PjCVHfX82qRS7UVKWoNyKVUB8OgNw3qmFWD5FOH4YjUFZTcmg888L5WZXewVN+v435PIyk/S4MDWPlOrIt3g/sn41u4nxIfFQXvy0j4L2WdNMsuWcWNeLC31FoBBlxVhGynQ5LYzReDkAUZWSUX6KUA6+p/cqrPFjtStgfQ0KpcTt7xkOQQB8NyBzLtiG0jAPpI0IWGrzxoJXjAER0Gdru7GCLZKMMpF6NaVcxfb2S19tpCIh3HQmjiebR8Zpu2q5eR6sP5lmwfTvxEuToB2I+1m9N7Nw+iqlYf1jhhaFZrAj8y7LuciNI0LLaO16Z7q2KEmgledfJppyfTqXKJahyM2M08LT/ANAipzbNcjMWEc5eUo6MSYVjtp18H0V5vJt4Sln2/jCBRVUtQs+4FEuJl502cQtNDrCY/0IstE7pMkzNeQqKy5ZShcxQ4O+YWVKSd03rwfDQpAwrhcljYvpA/cTVLqv7BdO+OJt+OGDT+OAqqbyB3eF0Gr4WKeR+Q1LQUb5r48M08NKW2r7LxvBNc0cj59SSzXGZ3joD/+258RtoSRyU++6XP01D1k2BloOKeAENFGVvjPP3c7ko+T7v4iHVCsOyfOcbOXNcfaM6Pd+mb4LLUEBNQI1OsAuFKFbPK6pseCV10YYvW49J1c417O92ip2mu1/VuWhrNbgVGW82cexBk7fnfd02lXvbor4AdJlsz1ek8yVw==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(23010399003)(1800799024)(36860700016)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: WSFCEAS6Wjc4MQMBLqT4DGg4KFptW/3dM1qnuNZeJaL5/th65IqJJZoPu1rWp/AzJNsuxKRu/Oo1gk/byYWM5xa/CY9bAia3/rRKLjZRu/4hbO9WK9zOX3m4LwLEPwExDai1IONz70Lxwj1AbyvrcbTUhSCcXISfZZEKwegKXbYicAo69RFL4FbSPBN4UbpwWzDtR+JPcppZ+iKrRhzLWERQW8gXezBYn3xy2LH2dxsL4v4mbxNteLd0hCBqxb9e0jrAjiMsx+y4rckDSsUlZFlBHJaD5PNMdPxoogmW2wFbvLSwmc9Znsc3R5AiuNmj4hwC/CRawP0aBH/3jen0q0e5FDGxAOCp2c7t+3WGx13oniqv3PIm3efiDs6A8WdtTz8QyP7SGRmZ19fjX+RFoNtUy68zNTCKq96ydc5McIRwsc/yYMVvpBl4U8BM8t7X
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:35.2471
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ec2da3f-21c1-4ef9-dc74-08ded9c77d0f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR06MB8539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052638_751972_CD20BF68 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PBL has always gotten no-op dma_map_single()/dma_sync_single_for_*()/
    dma_unmap_single() stubs, on the assumption that DMA buffers live in uncached
    memory because the MMU is only turned on in bare [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c200:0:0:0:1 listed in]
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
X-Rspamd-Queue-Id: BA83820269E
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::1:received];
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
X-Stat-Signature: gc5rdretun5mb5w1i93yt1q8fqcxqok1

The PBL has always gotten no-op dma_map_single()/dma_sync_single_for_*()/
dma_unmap_single() stubs, on the assumption that DMA buffers live in
uncached memory because the MMU is only turned on in barebox_arm_entry().
That assumption breaks the moment a PBL DMA user runs with the MMU (and
thus the D-cache) on -- which is the direction the i.MX8M PBL is moving in
for a fast, warm-cache next-stage load.

Add an opt-in CONFIG_PBL_HAS_DMA that routes the PBL through the same real
dma_map/dma_sync implementation (drivers/dma/map.c) and arch cache
maintenance (arch_sync_dma_for_*) that barebox proper uses, rather than the
stubs. It is a plain selectable bool: boards/drivers that do PBL DMA with
the MMU on select it; everyone else is byte-for-byte unchanged and keeps
the stubs.

On ARM this also builds dma_$(S64_32).o (arch_sync_dma_for_device) for the
PBL; arch_sync_dma_for_cpu and the dma_{inv,flush}_range cache ops already
come in via the PBL-linked mmu-common.o / mmu_$(S64_32).o.

No functional change unless PBL_HAS_DMA is selected.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

---

Notes:
    v2:
    - New patch. Adds the dma_map/dma_sync cache-maintenance infrastructure
      the PBL was missing, behind an opt-in CONFIG_PBL_HAS_DMA (Sascha).

 arch/arm/cpu/Makefile |  1 +
 common/Kconfig        | 12 ++++++++++++
 drivers/dma/Makefile  |  1 +
 include/dma.h         |  7 ++++---
 4 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 467ef17bfd..d1e94d9a13 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -7,6 +7,7 @@ pbl-$(CONFIG_ARM_EXCEPTIONS_PBL) += exceptions_$(S64_32).o interrupts_$(S64_32).
 obj-pbl-$(CONFIG_MMU) += mmu-common.o
 obj-pbl-$(CONFIG_MMU) += mmu_$(S64_32).o
 obj-$(CONFIG_MMU) += dma_$(S64_32).o
+pbl-$(CONFIG_PBL_HAS_DMA) += dma_$(S64_32).o
 obj-pbl-y += lowlevel_$(S64_32).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
diff --git a/common/Kconfig b/common/Kconfig
index 2c75844be9..055f169431 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -87,6 +87,18 @@ config HAS_DMA
 	  Drivers that depend on a DMA implementation can depend on this
 	  config, so that you don't get a compilation error.
 
+config PBL_HAS_DMA
+	bool
+	depends on HAS_DMA && MMU
+	help
+	  Make the streaming DMA API -- dma_map_single(),
+	  dma_sync_single_for_cpu()/_for_device() and dma_unmap_single() --
+	  available in the PBL, backed by the same arch_sync_dma_for_*() cache
+	  maintenance barebox proper uses. Without this the PBL only gets no-op
+	  stubs that assume DMA buffers live in uncached memory, which is only
+	  true while the MMU (and thus the D-cache) is off. A PBL DMA user that
+	  runs with the MMU on must select this so its transfers stay coherent.
+
 config GENERIC_GPIO
 	bool
 
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 66f9dc2756..c941b69c89 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_DMADEVICES)	+= dma-devices.o
 obj-$(CONFIG_HAS_DMA)		+= map.o
+pbl-$(CONFIG_PBL_HAS_DMA)	+= map.o
 obj-$(CONFIG_DMA_API_DEBUG)	+= debug.o
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
 obj-$(CONFIG_OF_DMA_COHERENCY)	+= of_fixups.o
diff --git a/include/dma.h b/include/dma.h
index 60937a69aa..2a6f3d804a 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -102,7 +102,7 @@ void arch_sync_dma_for_device(void *vaddr, size_t size,
 			      enum dma_data_direction dir);
 #endif
 
-#if IN_PROPER
+#if IN_PROPER || IS_ENABLED(CONFIG_PBL_HAS_DMA)
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir);
 
@@ -116,8 +116,9 @@ void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 		      size_t size, enum dma_data_direction dir);
 #else
 /*
- * assumes buffers are in coherent/uncached memory, e.g. because
- * MMU is only enabled in barebox_arm_entry which hasn't run yet.
+ * PBL without CONFIG_PBL_HAS_DMA: assumes buffers are in coherent/uncached
+ * memory, e.g. because the MMU is only enabled in barebox_arm_entry which
+ * hasn't run yet. Select PBL_HAS_DMA to get real cache maintenance instead.
  */
 static inline void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 					   size_t size, enum dma_data_direction dir)
-- 
2.43.0



