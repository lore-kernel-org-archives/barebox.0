Delivery-date: Tue, 16 Jun 2026 17:01:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVHo-006XE5-0Z
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 17:01:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVHn-0000Cf-0s
	for lore@pengutronix.de; Tue, 16 Jun 2026 17:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ah5Qo4AnDFhZiQIwJgPh9/kwYKUfLz4vdtOMnpJR5+s=; b=V9XMAYJMoVsu3/lNbZBTH6UoEV
	gUOJQYzK5PeZeNajI+2eRg2572Iv+JyUBDO9IhbH0IMkh401gUCfKIfOJ9zd23Bi7fHT1nCwT7W9b
	gr88TNNgFAsxvxL/Q4S73yru+G9M4LgwYNetRII8raIQAq73pJ+jpcskozrCNaSL2cNwIR92TMveV
	4Z3fzdGuBB0TE6fdCxNPc1Lb90Own7NeyzpH3vK8UeB9f7x3Ke/d3CBWfucsyzGWrPo3sxO7Pyf1D
	jhPAeqn3Om17Ya1d0+i6Gid+huNmEqZekF4L2Zvvp/W70ZUP3tinOyWiFculjj5f42hIR0sjSFW3g
	iJLp/+7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZV6d-0000000FwVq-3HEU;
	Tue, 16 Jun 2026 14:49:35 +0000
Received: from mail-norwayeastazon11013038.outbound.protection.outlook.com ([40.107.159.38] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZV6a-0000000FwUp-2v5d
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 14:49:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eXfNgSvVICIrGsU4Tzpk8w+wvQ9237TS6SBX7DOT8z0KE9nG2zM6aj9Gsi43clFfvsrMlr31ES58RoI1nw50KRjCFGrcNxdURl9I334q3mDhecLuHQWFyOC3++cCg+vxAJFFclvkUOwYeQAW1nw/ctK0pwUniLMcpuJhtsk/bdGeGFrqaSz9uwllbQQNx3Eytdpw7KYLm4uo1HnVnMU+AcpovnQpkF7PfZ63dTAjpJXpirw6cLAh9+JxLfYOFzJm4NKB+HwXH5/HPsc/pxn7aPz58dcnKvOPqyHafWZHCpRhOseMJZ1rMnEKPvqI6WZXOb5+IgGoKAf/9fOCAswJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ah5Qo4AnDFhZiQIwJgPh9/kwYKUfLz4vdtOMnpJR5+s=;
 b=Q9F8b3yaFqAuVQQ67GcHyloQFLdMN1COU1L2LIByHbqevRPRDqjTefaR9UbkjNlPoUOZYdnrl3AJzjOi8rSgjiNu1v/E4iYV6Y6i6LaH5yPjg4nGj51zk0i9hSoecZlvYoKoLXgPwLDqYJZa6E2QSXlVDQNY+C3l/1F10/tjaTmhdo+8f6HMEo5Ke7SpyV512pOylHkHeLSRVz9+IeQrjOjmLNLmVhrOCt7Lrmok1ORYhQBgwchExXeD1s6EIkCoSN8myj7rCH19c8irJXefIj4GPqgYpym5Va1hZOi5nGfNQeQqvAiYUD7ewsH8HUokn113SMsBtZiMg9aVU95Gqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ah5Qo4AnDFhZiQIwJgPh9/kwYKUfLz4vdtOMnpJR5+s=;
 b=BQ3FpQmaJLPA7Yj+j4SZfzPC8mXhT1+2IT15d2kXkt+niyLIHIMUZgIndBL3r8U/c8N4AWruMlaortZujlpzhnAKRXFTQCUx1rFHu6eJ1nUHzjhHVoLvPi3+/fegp5cZ2EI191NcDMBZuzSQkjP9Igm74LmGIaH3lbl8xYuI+Ao=
Received: from DU2PR04CA0227.eurprd04.prod.outlook.com (2603:10a6:10:2b1::22)
 by VI0PR06MB10617.eurprd06.prod.outlook.com (2603:10a6:800:316::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 14:49:26 +0000
Received: from DB5PEPF00014B93.eurprd02.prod.outlook.com
 (2603:10a6:10:2b1:cafe::3b) by DU2PR04CA0227.outlook.office365.com
 (2603:10a6:10:2b1::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.18 via Frontend Transport; Tue,
 16 Jun 2026 14:49:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B93.mail.protection.outlook.com (10.167.8.231) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Tue, 16 Jun 2026 14:49:26 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 16 Jun 2026 16:49:26 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Tue, 16 Jun 2026 14:49:24 +0000
Message-ID: <20260616144924.1614561-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616144924.1614561-1-johannes.schneider@leica-geosystems.com>
References: <20260616144924.1614561-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 16 Jun 2026 14:49:26.0345 (UTC) FILETIME=[53E58390:01DCFD9F]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B93:EE_|VI0PR06MB10617:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e0004feb-825b-40d5-35a9-08decbb67690
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|36860700016|82310400026|1800799024|56012099006|6133799003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: p86uxn42DjOV4FD2s06YnW4bk6FZlZrQf6kl90CO5ehpXUcGq30VRH1G/w/KnEi6+USmoCdYVNntI482tBfS6Dx+ZfqzXo5bKSeyncbBPfWGbms5VVILlt75vFeelrRg3nJw+dc5ouz5VOcne2cOMAJFRmapbrM2TSWcDkFp7OV5z5A9nBoi/Ux67MM+glzp/4mvf86pVzQH36F3wwwfrZwVgQxih7fCticW5YLBDVZk2C88k40q2wBYY1zOzwQ2DbmWby0ksHx8ZvakSj3kJFXJT9BdsGrrCXv/oNIiiDZfF8z2F3bzKr8KIB1X/ZIEjTMylSuvk/aCqDW7/VYx0k/pUSlsSaHvHFfNvrEyU9jjAGI+/vq+fa9+SUwYno9CVN8c/UZsl+ueKN44O2fKCQ6+L1n7PGl93pe6RrVQ3kp6/tTPIcobUpOzxe6dvKF3A0WeK4nETA9beNV7BgG7HF5XprWQPufomE7styxbuMB6qrl1uG/j2M3JvOuiNqIh8sY4DWlBOXUhut6gz8crSq4irlw4+q+juT2PCpt1FLLYFHXppUH9wZdC1mHrTtRdDCtKweCLAVI+85Pl8VuoC63DSytLuuvLLi4DcnOXR02J4L8UIQLbVydaWTQdtEurwmOyhGNENLpzLlqqyF/2XvBgDKYvjlztwrPoCG1+FzkVCON0goNg9PxEAZLL/LhkxHhpToUN2uIc+UyyvlCd6434gn4ihoBPgvEwRHkTPh4=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(376014)(36860700016)(82310400026)(1800799024)(56012099006)(6133799003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: zHvRNBlHbGOOpZwD3yp1LL0Rw3V4JZNB16YyFc4gHcLXUUHd5+35b9hDxu+dI3qFYfiEiu8HLj4HFPjElerWnDkMv3PIAlZVhbOpCvGsLXqonLCEi4KqUQ2qH0RHhe2p7kbk3D6VSzyY5DiGhTJbnydOxTggj297rHPhf8oCTpy9N7JMOyQ5hl8x5PU680r5BV0yT0XeoeOFB3eUqTD8Fdd+XAYBrhVJsgy6D85/AevGgV7Est8HGKEoy6LkPQnu6CuGlgYnlGMOaLe+dh++ob6QYzHArcVLiYmY+g5cjVzr6Pg/cxVRkR1ZkPHeLCYXnXuhixdtnBHtCDPB2xqIOAzSunOZgGIIxnwHRmWyf9R2G5rmL0Jc71HIlOZkuLN5BKPqz3gy4obpmnaB1Ujof0mCu7d30PTmlrgHerg3MTkFRdYVPFmMbjaG4aa5TQpH
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 14:49:26.6115
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e0004feb-825b-40d5-35a9-08decbb67690
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B93.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR06MB10617
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_074932_739863_0FDFD219 
X-CRM114-Status: GOOD (  17.61  )
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
Subject: [PATCH] crypto: sha256: PBL multi-block transform via ARMv8 Crypto Extensions Crypto Extensions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox's PBL ships a generic-C sha256_transform() that runs roughly
1.6 MB/s on a Cortex-A53. Callers that hash MB-scale blobs in the PBL
-- e.g. the fw-external SHA-256 verify on i.MX8M, ~720 KiB of BL32 --
spend hundreds of ms in the transform even with the D-cache warm.

Wire the asm core in arch/arm/crypto/sha2-ce-core.S into the PBL link
and expose it through a new sha256_transform_blocks() entry point.
The asm has an internal multi-block loop; a single call amortises the
prologue (round-constant load, state load) over the whole input, which
makes the difference between ~200 ms (per-block calls) and ~5 ms
(batched) on the BL32 verify.

Rewire sha256_update()'s bulk path to call sha256_transform_blocks()
with the remaining block count rather than looping over a single-block
transform. The generic-C path gets a trivial blocks-wrapping shim so
both code paths share the same caller-side API.

The asm needs two link-time constants (sha256_ce_offsetof_count and
sha256_ce_offsetof_finalize) which we provide locally rather than
pulling in sha2-ce-glue.c -- the glue drags crypto-API and
kernel_neon_begin shims that the PBL has no use for.

Measured on i.MX8MM and i.MX8MP, ~720 KiB SHA-256 verify with MMU on:
  ~300 ms (generic-C)
  -> 17 ms (crypto-ext, single block per call)
  -> 3-5 ms (crypto-ext, batched).
Both crypto-ext savings carry over with MMU off too, just shifted up
by the uncached-DRAM read cost.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/crypto/Makefile |  3 ++
 crypto/Kconfig           | 12 ++++++++
 crypto/sha2.c            | 66 ++++++++++++++++++++++++++++++++++++----
 3 files changed, 75 insertions(+), 6 deletions(-)

diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index 55b3ac0538..72d4bd77c0 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -15,6 +15,9 @@ sha1-ce-y := sha1-ce-glue.o sha1-ce-core.o
 obj-$(CONFIG_DIGEST_SHA256_ARM64_CE) += sha2-ce.o
 sha2-ce-y := sha2-ce-glue.o sha2-ce-core.o
 
+# Reuse the asm core (glue is provided inline in crypto/sha2.c).
+pbl-$(CONFIG_PBL_DIGEST_SHA256_ARM64_CE) += sha2-ce-core.o
+
 quiet_cmd_perl = PERL    $@
       cmd_perl = $(PERL) $(<) > $(@)
 
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 528e9a0d22..3dfb316b32 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -107,6 +107,18 @@ config DIGEST_SHA256_ARM64_CE
 	  Architecture: arm64 using:
 	  - ARMv8 Crypto Extensions
 
+config PBL_DIGEST_SHA256_ARM64_CE
+	bool "SHA-256 in PBL via ARMv8 Crypto Extensions"
+	depends on CPU_V8 && PBL_IMAGE
+	help
+	  Use ARMv8 Crypto Extensions (sha256h/sha256h2/sha256su0/sha256su1)
+	  for the SHA-256 transform inside the PBL. Roughly 100x faster than
+	  the generic-C transform; for callers that hash large blobs (e.g.
+	  fw-external SHA-256 verifies) this is the difference between tens
+	  of ms and hundreds. Requires Cortex-A53 or later with the optional
+	  Crypto Extensions feature.
+
+
 endif
 
 config CRYPTO_PBKDF2
diff --git a/crypto/sha2.c b/crypto/sha2.c
index cac5095648..06af886867 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -29,6 +29,44 @@
 #include <crypto/internal.h>
 #include <crypto/pbl-sha.h>
 
+#if defined(__PBL__) && IS_ENABLED(CONFIG_PBL_DIGEST_SHA256_ARM64_CE)
+/*
+ * PBL multi-block sha256 dispatch through the asm core in
+ * arch/arm/crypto/sha2-ce-core.S. The asm expects a sha256_ce_state-
+ * compatible struct and reads its `count` / `finalize` fields at the
+ * offsets advertised by the two link-time constants below. With
+ * finalize == 0 the asm runs just the block transform and writes the
+ * new midstate back into state[]; count/buf are untouched.
+ *
+ * Avoiding sha2-ce-glue.c here keeps the PBL out of the crypto-API and
+ * kernel_neon_begin shims, which add bytes and unrelated dependencies.
+ */
+struct pbl_sha256_ce_state {
+	u32	state[8];
+	u64	count;
+	u8	buf[64];
+	u32	finalize;
+};
+
+const u32 sha256_ce_offsetof_count    = offsetof(struct pbl_sha256_ce_state, count);
+const u32 sha256_ce_offsetof_finalize = offsetof(struct pbl_sha256_ce_state, finalize);
+
+extern int sha2_ce_transform(struct pbl_sha256_ce_state *sst,
+			     const u8 *src, int blocks);
+
+static void sha256_transform_blocks(u32 *state, const u8 *input,
+				    unsigned int blocks)
+{
+	struct pbl_sha256_ce_state sst;
+
+	memcpy(sst.state, state, sizeof(sst.state));
+	sst.finalize = 0;
+	sha2_ce_transform(&sst, input, blocks);
+	memcpy(state, sst.state, sizeof(sst.state));
+}
+
+#else /* generic C transform */
+
 static inline u32 Ch(u32 x, u32 y, u32 z)
 {
 	return z ^ (x & (y ^ z));
@@ -213,6 +251,18 @@ static void sha256_transform(u32 *state, const u8 *input)
 	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
 }
 
+static void sha256_transform_blocks(u32 *state, const u8 *input,
+				    unsigned int blocks)
+{
+	while (blocks--) {
+		sha256_transform(state, input);
+		input += 64;
+	}
+}
+
+#endif /* PBL crypto-ext vs generic */
+
+
 static int sha224_init(struct digest *desc)
 {
 	struct sha256_state *sctx = digest_ctx(desc);
@@ -258,18 +308,22 @@ int sha256_update(struct digest *desc, const void *data,
 	src = data;
 
 	if ((partial + len) > 63) {
+		unsigned int blocks;
+
 		if (partial) {
 			done = -partial;
 			memcpy(sctx->buf + partial, data, done + 64);
-			src = sctx->buf;
+			sha256_transform_blocks(sctx->state, sctx->buf, 1);
+			done += 64;
 		}
 
-		do {
-			sha256_transform(sctx->state, src);
-			done += 64;
-			src = data + done;
-		} while (done + 63 < len);
+		blocks = (len - done) / 64;
+		if (blocks) {
+			sha256_transform_blocks(sctx->state, data + done, blocks);
+			done += blocks * 64;
+		}
 
+		src = data + done;
 		partial = 0;
 	}
 	memcpy(sctx->buf + partial, src, len - done);
-- 
2.43.0



