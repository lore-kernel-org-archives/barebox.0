Delivery-date: Sat, 04 Jul 2026 14:28:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzTW-000C23-2I
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:28:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0DFD02026D8
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:28:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sPxcDH3y;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=l+irfHB9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7y8ZmyTxNnfP6mwX8poMUeRvF2k1SSkyvgAv+nj99xI=; b=sPxcDH3yneJY4uQp9W8xnWfTdW
	3NKwSoFmBmSQa/A958AdPLlATWfLQyiY6RISjtlhbEZRKbA/TMHueXAE299LFmbAhFqXaP7gdhBG9
	BvNUk1umdHSxTWjs06+K9LTQUJwRQbNSYeX8BxfvtGqxeHEqcb+Bhl4RIvBn5tpf08itgiilx5XN4
	JBGh33scKjOFDq2kqvmsMId3qeLV//YwtDk9Em/B+0OhsrTrssXWI5BM58v64sPCyCIM3RRZulvUA
	61hPnYlYDAMwW4Ol2+W03SkYS0vr6FXrLxTW2azAKwEENDnUQFR4Ld25wJhizmU/7ENsS3rS7sj0Y
	bzkU70ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSF-00000008Pzr-1viS;
	Sat, 04 Jul 2026 12:26:43 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSB-00000008PvA-3A2J
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hlcDsBse4vGSNJW7UoVmPvkTs/MD3vMC1a7Fsbge0uc00/lRmeShQdT+HMljCScwT+mB1T1wPzvT7yp3Rt0CRVxfgVlBPMv2tRjpnS9GsSqUmcux3oi6QAkPmQ+9cjHfxNHBheIuBJ/uUpwIjE5dMZNQIiL7KjbXuqvjNjHO/1XWUCwe1aq1jSmY1lGc7PXIA6HKGCYHDnsZICrGrPVvEuDR2iaKvFEIG4bsnAWgJLatVn6yNPAr6cBvJ2MVj3P301bOCHrJfeueRAVtZV49ZtmiH7lAKS7EyZwYG/Cj0SX0Q8DcWSaJi+8OUEMkvd3T/Vp62lYJeGEtlxlvu83gaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7y8ZmyTxNnfP6mwX8poMUeRvF2k1SSkyvgAv+nj99xI=;
 b=UVEWO4yp4cUXg1rvbaPbk7TLJaCs+6Z0c3d6IF2+XIRVfZqhUpPeBY4iunXoGn5ZvUVTt76YL2S5MX+utLYFipPH4kfLERrqBdIZsAxgG84O1ql0j9fwlN+RVrrulJ8d0NE9Auk35ZdMXHMKgfRPG/a3dFsMD6NsNGAmosY3JHF/yfqU+xDNNVDQz/h9u3AUp1pv+H4sLXBu/QVDuU838xVrtvelbwf/WX6X1Osa3ez/2ylEyWiz3TaZkc25hTsLhpG+TJRitn4VL5FKoQdWRK5RQIituKiJYom6vqjHNj7z5c2Kurkd7tvmtZLo7K7iYM435SlgOYgJhFRAF6VHdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7y8ZmyTxNnfP6mwX8poMUeRvF2k1SSkyvgAv+nj99xI=;
 b=l+irfHB9vKOJC49kRrHiK7OcbeEeQRLZ8MTyKgY4ySG+wTyMZo8eSq4gRNvQYABqlDw+3s+CwaUaP4Xqc+J1cI8fFv69JnLmc8eTrPw605ccbB8VjpEyLFJbDzsBlIc6ZESv5GkRW5hLppgh20zKBrWeu+P7ThW56MkMa9xKhOg=
Received: from DU2P250CA0017.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::22)
 by GV2PR06MB9873.eurprd06.prod.outlook.com (2603:10a6:150:27b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Sat, 4 Jul
 2026 12:26:32 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::7e) by DU2P250CA0017.outlook.office365.com
 (2603:10a6:10:231::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.11 via Frontend Transport; Sat, 4
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
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	"Claude Opus 4 . 8" <noreply@anthropic.com>
Subject: [PATCH v2 02/11] crypto: sha256: PBL SHA-256 fast path via pbl/sha256.c
Date: Sat,  4 Jul 2026 12:26:19 +0000
Message-ID: <20260704122628.3326142-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0198 (UTC) FILETIME=[578CD560:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|GV2PR06MB9873:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 638973f1-2736-4439-e2cc-08ded9c77af6
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|82310400026|36860700016|1800799024|11063799006|56012099006|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: TpOfcIZyJE1ThlHtT3REM2mFYA6rGy4VKNIYNz1sYEzkbX2FDvtoy4wrD1k0plhPiJaj64KhS4xiR5sorrvZDAvv6vrT4F+PktFhoAcceOKWEupPmxX3e3/i83yHNXxF4s0BlpKiaytr+DF9WeeB+2YLQU4ZG6JzvBvBXbtQ22Mh/7PoQXD5K6yOlIHtiGJ2O5bK7Rkod6RwsmEy41cwKBvmlyvZku0AszWccNgDCQmnMghRVJLc6DyKs6yX7Fl5XonkdCMEXlPBL1QHjIv+tnBxuanOLo42gSAcy2TuJSmMA2Xgv94Yg6xdDgZcJY1wKc/1xApx8b49JsCpkR4MHb26jd1jvgqcuh890YYr6+8CpDK/X8SrmB/yQOrDbOJc60iWpEjKzwdee1xaFHAZQp87jFEZ0uSWgq2QrxR7TIi0UoIsN0MsP58Q+7XuLZ8xJzxnP50Z2cKq114r4tkgKX7RJg9kch4YpOZBY4cCezN5A04XJvhAdUUE/Q5iR3vOWfDBCY1o8pHWbtAZ9lWXRpP5d3Iu2g50mJfX2Z9LC5Cfo/ufbg4c4vrvDOFBZcAzXIsMrWAiYLhoQhyrUjQYkeUQIq7SyqDKGN7Is3i411piVzPo7PwIpeTP6RxQjvGtFBY5BYTaw1traldz8OqB3BeufWTKSZcBK5zez1R3cK5Mt9Td2Stt/bFBKJFofRcxOElfEnBwNvlziqA64qv8uw==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(376014)(82310400026)(36860700016)(1800799024)(11063799006)(56012099006)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: p6LXcNazlwmu+Qx0q5pCMOEWZcU3WmFkFB3lzYnOigl9DUVyJf+eNYLbexibDqdm4PaOvbe1xpZ5pbXj7utccZe3MUt9eKRitKT/BXpyFyFLd1bxaLNSrimVJQMK9HEoMejheh9lI6qq2R6EiciMozgQ+1Vv7wUBgwoW+iUBpyr1J22ExzAxoKgrf//7gjHdyJONT1lBmWjn+Pii9jyWAESLaLHBhvGwnwWj6k2VHE54rg0twgT2wlzOaF/xLXhpmHGCgOAH7JHYhyCdo6X1I4/XkQGS/YVHuKiCDy1koiwYtXSC/oDwHdJhtlx+2RAPg8t4VjreyZiDuzbv7KqhUgGBYAlQGM6zjD4x3WXRGCWfMqMZ1GRyUrGW9NYNsNE7x12bPFJFN0i8zbTVmCMvghr8QStVs8Wxkj5U6qI6fR4sM/HWuAbE7c/0ksImaj5u
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:31.7283
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 638973f1-2736-4439-e2cc-08ded9c77af6
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR06MB9873
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052639_800823_AF67DCF0 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hashing MB-scale blobs in the PBL -- e.g. the fw-external
   SHA-256 verify on i.MX8M, ~720 KiB of BL32 -- spends hundreds of ms in the
    generic-C sha256_transform() even with the D-cache warm. Add a PBL-local
   one-shot 
 
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
X-Rspamd-Queue-Id: 0DFD02026D8
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::1:received];
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
X-Stat-Signature: 9qwqanapo3psknjwwp8ufw6cw7hfnomb

Hashing MB-scale blobs in the PBL -- e.g. the fw-external SHA-256 verify on
i.MX8M, ~720 KiB of BL32 -- spends hundreds of ms in the generic-C
sha256_transform() even with the D-cache warm.

Add a PBL-local one-shot

    void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE]);

in a new pbl/sha256.c that picks the best transform available: the generic
digest API by default, or the ARMv8 Crypto Extensions asm core
(arch/arm/crypto/sha2-ce-core.S) under CONFIG_PBL_DIGEST_SHA256_ARM64_CE,
driven through the sha256_base_* helpers (the same batched block/finalize
framing sha2-ce-glue.c uses, without the crypto-API and kernel_neon_begin
shims the PBL has no use for). pbl_barebox_verify() calls it.

The ~720 KiB verify drops from ~300 ms (generic-C) to 3-5 ms (batched
crypto-ext) with a warm D-cache.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Assisted-by: Claude Opus 4.8 (1M context) <noreply@anthropic.com>
---

Notes:
    v2:
    - Move the PBL crypto-ext dispatch out of crypto/sha2.c into a new
      pbl/sha256.c with a one-shot pbl_sha256(); crypto/sha2.c is left
      untouched (Sascha).
    
    - Build pbl/sha256.o unconditionally (pbl-y), like crypto/sha2.o, so the
      ARMv8 CE core always finds its sha256_ce_offsetof_* glue; it no longer
      hangs off CONFIG_HAVE_IMAGE_COMPRESSION.
    
    - Gate the crypto-ext path on ID_AA64ISAR0_EL1.SHA2 and fall back to
      generic C, matching sha2-ce-glue.c; the CE instructions are optional on
      ARMv8 and trap as undefined otherwise (Copilot).

 arch/arm/crypto/Makefile |  3 ++
 crypto/Kconfig           | 12 ++++++
 include/crypto/pbl-sha.h |  4 ++
 pbl/Makefile             |  1 +
 pbl/decomp.c             |  6 +--
 pbl/sha256.c             | 85 ++++++++++++++++++++++++++++++++++++++++
 6 files changed, 106 insertions(+), 5 deletions(-)
 create mode 100644 pbl/sha256.c

diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index 55b3ac0538..085c01db09 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -15,6 +15,9 @@ sha1-ce-y := sha1-ce-glue.o sha1-ce-core.o
 obj-$(CONFIG_DIGEST_SHA256_ARM64_CE) += sha2-ce.o
 sha2-ce-y := sha2-ce-glue.o sha2-ce-core.o
 
+# Reuse the asm core; the PBL glue lives in pbl/sha256.c.
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
diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
index 7d323ab479..2508448ab4 100644
--- a/include/crypto/pbl-sha.h
+++ b/include/crypto/pbl-sha.h
@@ -3,6 +3,7 @@
 
 #define __PBL_SHA_H_
 
+#include <crypto/sha.h>
 #include <digest.h>
 #include <types.h>
 
@@ -10,4 +11,7 @@ int sha256_init(struct digest *desc);
 int sha256_update(struct digest *desc, const void *data, unsigned long len);
 int sha256_final(struct digest *desc, u8 *out);
 
+/* One-shot SHA-256 that picks the best transform available in the PBL. */
+void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE]);
+
 #endif /* __PBL-SHA_H_ */
diff --git a/pbl/Makefile b/pbl/Makefile
index 45cfbf5fba..4506f192fe 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -6,6 +6,7 @@
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += malloc.o
+pbl-y += sha256.o
 pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 1539a6b67e..2b3c35012f 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -58,8 +58,6 @@ extern unsigned char sha_sum_end[];
 int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len)
 {
-	struct sha256_state sha_state = { 0 };
-	struct digest d = { .ctx = &sha_state };
 	char computed_hash[SHA256_DIGEST_SIZE];
 	int i;
 	const char *char_hash = hash;
@@ -67,9 +65,7 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 	if (hash_len != SHA256_DIGEST_SIZE)
 		return -1;
 
-	sha256_init(&d);
-	sha256_update(&d, compressed_start, len);
-	sha256_final(&d, computed_hash);
+	pbl_sha256(compressed_start, len, computed_hash);
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		puts_ll("CH ");
 
diff --git a/pbl/sha256.c b/pbl/sha256.c
new file mode 100644
index 0000000000..22af1d6907
--- /dev/null
+++ b/pbl/sha256.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * pbl_sha256() - one-shot SHA-256 for the PBL, picking the best available
+ * transform (ARMv8 Crypto Extensions if present, else generic C).
+ */
+
+#include <common.h>
+#include <crypto/sha.h>
+#include <crypto/pbl-sha.h>
+#include <digest.h>
+
+static void pbl_sha256_generic(const void *buf, size_t len, u8 *out)
+{
+	struct sha256_state state = { };
+	struct digest d = { .ctx = &state, .length = SHA256_DIGEST_SIZE };
+
+	sha256_init(&d);
+	sha256_update(&d, buf, len);
+	sha256_final(&d, out);
+}
+
+#ifdef CONFIG_PBL_DIGEST_SHA256_ARM64_CE
+
+#include <crypto/sha256_base.h>
+#include <linux/linkage.h>
+#include <linux/kernel.h>
+#include <asm/sysreg.h>
+
+/* Layout sha2-ce-core.S expects; it reads count/finalize at the offsets below. */
+struct pbl_sha256_ce_state {
+	struct sha256_state	sst;
+	u32			finalize;
+};
+
+const u32 sha256_ce_offsetof_count    = offsetof(struct pbl_sha256_ce_state, sst.count);
+const u32 sha256_ce_offsetof_finalize = offsetof(struct pbl_sha256_ce_state, finalize);
+
+asmlinkage int sha2_ce_transform(struct pbl_sha256_ce_state *sst,
+				 const u8 *src, int blocks);
+
+static void pbl_sha2_ce_block(struct sha256_state *sst, const u8 *src,
+			      int blocks)
+{
+	struct pbl_sha256_ce_state *s =
+		container_of(sst, struct pbl_sha256_ce_state, sst);
+
+	/* finalize == 0: C does the padding via sha256_base_do_finalize(). */
+	s->finalize = 0;
+	while (blocks) {
+		int rem = sha2_ce_transform(s, src, blocks);
+
+		src += (blocks - rem) * SHA256_BLOCK_SIZE;
+		blocks = rem;
+	}
+}
+
+void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])
+{
+	struct pbl_sha256_ce_state s;
+	struct digest d = { .ctx = &s, .length = SHA256_DIGEST_SIZE };
+
+	/*
+	 * The Crypto Extensions are optional on ARMv8 and sha256h & co. trap
+	 * as undefined without them, so gate on ID_AA64ISAR0_EL1.SHA2 like
+	 * sha2-ce-glue.c does at registration and fall back to generic C.
+	 */
+	if (!(read_sysreg(ID_AA64ISAR0_EL1) & ID_AA64ISAR0_EL1_SHA2_MASK)) {
+		pbl_sha256_generic(buf, len, out);
+		return;
+	}
+
+	sha256_base_init(&d);
+	sha256_base_do_update(&d, buf, len, pbl_sha2_ce_block);
+	sha256_base_do_finalize(&d, pbl_sha2_ce_block);
+	sha256_base_finish(&d, out);
+}
+
+#else /* generic C transform via crypto/sha2.c */
+
+void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])
+{
+	pbl_sha256_generic(buf, len, out);
+}
+
+#endif
-- 
2.43.0



