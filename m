Delivery-date: Sun, 04 Oct 2026 03:21:38 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAv4-009UMy-18
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:21:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C1030201EAF
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:21:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=beNSa0Ft;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Trs1imC2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791076898; a=rsa-sha256;
	cv=pass;
	b=GMlp03RtG+9OarBJU+Gt/bnm+rF+L6rscGc2c030yMtdM1azDEv8NeDsVZPdTFFSgabn5e
	+uFXj2jHisXldAlkJwzW128wFWU6tHS6wyKZANwC+CQ+PgQRWc6kXd3TBnIB5eFBGjfbOs
	LZsTxCd4ZgYmAwk05+ZHfau7dt9d98Xb1IQSgFDM2UG3T4QcfhaMGiFjhI7Zx2teHzEujI
	/PgHCMtWiZnC86/ofP1KQDgbUrxYtJAgRMZa/4x1UQijHBK7HV9GB0bx19DosF9lu/xO+X
	3NISGl9uOSg/+4w6IxdfefXvI/p066AeTcelmedEYPS3x3C97stkOpKXidd3/A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=beNSa0Ft;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Trs1imC2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791076898;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8kdTFBg220vt7l7dZvtAT5+tQjH0TQxQnBKNcycvyo0=;
	b=LmFhp4KoKpeZt0conBXoy4XmRweOXD7TJFs1wPETlxVvtdPGxupeplcPUBHiBukZLqMS7l
	+K4ZSJyj3jx/rx0idpLrfC6u+j2NgGs41h7HgdIaU9ChQjsJIPLWPV1CfhuyGLtw6IMckv
	+CSFOZNgOzUrc3A/zwJDucLd0coRTk15NhNpcERIZpbs6FeTYADAM/RPf65x9xvlfXmvY0
	b5NgpePs46+uYa45ekfHno1QQlXAjqdyqMokhsDq7rL4x1HGGTKWaQO3beYAzOV2TpKSzm
	wipZl2QUfceif5Sp7wxySn/azibcxrHDEU8NY32ift+v6+IeWE8iOXGUz4LxbQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8kdTFBg220vt7l7dZvtAT5+tQjH0TQxQnBKNcycvyo0=; b=beNSa0Ftzw5OPuXfIkiFtG975z
	7h0iFArTCvhGt1e66TJkb7Xlox8tu2ScKjugsQdSH6rxlhpfvq6I4TNyPD/x7HQyiJne84ITBnxT4
	8ITzyfDKLa2+uksX/cmLcLwZLyyxSwVNuxCglDYzQGtjYVSsb7xEd/5oFyGZW8EaXAI3xM+qe6uAM
	TdqX57m9TMPK8NaxibFVrfgPQNIWYBcaBHJrC1hnZzv9H543WdiB1Dxwn1LfjToESxPrR5qE/8j4q
	fbc7QqqUXVjTibxSNym/p7+HdDR18ZxyyQTto2V0FxrhPDtl1DVfg/Hjxalq/TtUHnQeAIhsOS1vW
	vensjmdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtj-0000000EE0u-2gm7;
	Sun, 04 Oct 2026 01:20:15 +0000
Received: from mail-northeuropeazon11010041.outbound.protection.outlook.com ([52.101.84.41] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAte-0000000EDuY-3YIv
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PjR39p7yhE8DNXeJ9Ue8iyoM5CgcUWTIJHE23IGy83R2JJhyEKU576HZY4M0McavLn1MLoLmKwVZdY4xrPpQPzucmk+MvoDluPufwoZJLbN3TiDik/mTCqiesv0JAErY86OMm+Y6BFJ79eA/9caTj1YIylF5mdsNIfJdAECX12aMx/TfajGRGrAHLhuOlaGACjqkCEnK53SGSVTs/wrMWNzo3fLyqDdKFxfAtwJYI23z6ACKSH8sA5AH+FlU0jRzuAc0zss8p05kv1CoXOapDHLb8Y+QhRPxdU5g9SxsiTOVnclVZmdCw4n6QKH1qJTedheZ/ejH4XHGbAc+ojpIwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8kdTFBg220vt7l7dZvtAT5+tQjH0TQxQnBKNcycvyo0=;
 b=G8BQ5GmP7SwlSHKoDx3EiQehlyvFZ3PZv42sv0LHT7fyHBZXTnTAfPM1Fu/AZqE2bKD2tHQSSqrv5HHqHMl7tfg0s2ME+ruu3Ykc0Tmm1AQHgnuFDtQ+Mdanzq++n9gRZhBtqFJTj0tnNwGidGlI2HH64sf4kZIiPwhHHIR+iFp453YN8tEdPRSam58xmXEzrfE/21gc8ZyuDDc4jDAy7NLK60j8XpsHeeaxrZE7qOlL9TfDYs7XzBzWmSarP5s7Yf47x71N0ciIaazwtcplKG0pH2LJ9k/GPvCgbciR9dsX/F1fw0NhoN9ALPF1dUH+83oByZClNkxKgo4xgsRxBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8kdTFBg220vt7l7dZvtAT5+tQjH0TQxQnBKNcycvyo0=;
 b=Trs1imC2dN3zfTdp5cMctaI0gkbU4fole1IF3MxvgmcK+2pZh8oQNed8wzCrKIbMjoFSCwDptJSidlv1tnkDZJPq6Hze6jnjdDsjtNsPdpU53CqDLYxVYFBBxwvCL4SS5M1MjpqGRtZQnW6Xz0WcgHvTCn8xE4581D9qHCGRDOY=
Received: from PAZP264CA0150.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::11)
 by DBAPR06MB6792.eurprd06.prod.outlook.com (2603:10a6:10:178::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:04 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::5e) by PAZP264CA0150.outlook.office365.com
 (2603:10a6:102:1f9::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:04 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 193.8.40.99) smtp.mailfrom=leica-geosystems.com; dkim=none (message not
 signed) header.d=none;dmarc=pass action=none
 header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 ZR1PEPF0000E6B0.mail.protection.outlook.com (10.167.241.87) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:04 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:20:00 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 11/14] efi: loader: file: expose no filesystem when signed images are forced
Date: Sun,  4 Oct 2026 01:19:44 +0000
Message-ID: <20261004011958.3255011-12-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0258 (UTC) FILETIME=[79B13E20:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|DBAPR06MB6792:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ec4d2572-0705-4585-9821-08df21b59ec0
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|23010399003|36860700016|1800799024|10067099003|3023799007|56012099006|6133799003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: kSoU4EoHxGFdkC38eKETAmweZvXf6uWUAPK6dk0n9I5htNPHa7Vos0C47SCxPsGoyGWLbOtiE7dYoZSHVtC9cd9AyjIvn7tInPH3TXAhdXNkVrU1nxkNqTLTcvllIOcZHK3b6n18Rgb/GUBdHuM2+tYLZCDgkncf+X0ENewVSMolmCJWcXiMkhbghhaa2PZIypvRv0/QtROplhbroEUKAuKG9Z7AGhsG/5b6zs6bxsjABpq/BdCO3OsRqbgTpoYw7LHZeSYIwxZZ8K5Y5/7yUFaQUoH2hhmRQP5MIz+f8l20TL7I3FN2RQYZG5XHXFbU3GLptX4KvX6gAHuqTdJIDclNuXzWVV2bMnU+AUZRpsDqN/mjqTrsBvTXU8nf9oxziNl/IDvYll6Fnr6BqIgjYqHOSnW7+6BkpVYveB3rfk9oDocXqMLmr2BXzwXNJ5UHfphXxn24Wk5aAQrSuukGBGJARmzWQVFnSczgQY0wO/uoV4Mn850YvF2+wJewOMKKl0csow9oT/LsmXiAz6GwoOSocRMunydXXI6nGpPmr610YyOWMFbegWwgoV5uTPHDzLciFIBlfDY00v9PkJAO7HlqvsIIBYaGJYDr4w2N0EcTvvhPoiaDTSlizYgWJE6/cEtWmZzX5JS2uoEy3Rb4tdBLQHrn6tIR5iy5BnJBd7gF7gHgvPXrQwLvAe96squcxskaL+8j+ysMCdEjLs99aA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(23010399003)(36860700016)(1800799024)(10067099003)(3023799007)(56012099006)(6133799003)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: twUMMdMpUivQUgKrm90KslNsKHbKgdywp4kWXFC90Yk9boaKNIs168Ao/yhUxdfLR2O+QUyP5mXZs4XynA3LLXIg30H/bk6xV9hG2R+M/GjSjW5KOSbH07o9pRDcwLujCW1HUCZZUB9cCTgqkr+yNNtk+EZF2Yo834g7AeJZ8PF+iRTBZRAUP3wHtvS2RaXwYe8y5CMRBB+wufJrlXsOd3Ek5GMZOssfslVQTlNAktSCjYYQhRSJ90mL1CrnM+RSgfQN58aK2QfSdXRx7MJCI6ml1Cti/hzK68u5B2xpX7JMfP6lQSQR1bcrUV7hVC5sb0lGestZW2mPzE15FuUTLs7ORyVLbJvaTZVpNqMu1yefzw370gu1nuaJJSzzFM3SrpLP6REjQv4fKDd384oOlczZmQAXxBTkbqaL51T0Ll4Klierdeq0rPPMwSIo6X5t
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:04.6039
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec4d2572-0705-4585-9821-08df21b59ec0
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB6792
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182010_938288_881873F9 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  systemd-stub packs systemd credentials (*.cred) and system
    and configuration extensions (*.raw) from the directory of a UKI into its
    initrd, and none of them are signed or go through LoadImage(). With [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.84.41 listed in wl.mailspike.net]
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
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C1030201EAF
X-Stat-Signature: uwm7bhke7by5sz8fe7bxkg69ukts3h3f

systemd-stub packs systemd credentials (*.cred) and system and
configuration extensions (*.raw) from the directory of a UKI into its
initrd, and none of them are signed or go through LoadImage(). With
signed images forced, anyone able to write next to a UKI booted from a
filesystem could pass credentials to the booted system, such as a root
password.

With signed images forced, let OpenVolume() report EFI_UNSUPPORTED for
every volume, the answer for "no filesystem here". This also keeps
LoadImage() from loading images by file device path.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/protocols/file.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/efi/loader/protocols/file.c b/efi/loader/protocols/file.c
index bfcf14f0e0..11b9e9e6f2 100644
--- a/efi/loader/protocols/file.c
+++ b/efi/loader/protocols/file.c
@@ -32,6 +32,7 @@
 #include <fs.h>
 #include <linux/sprintf.h>
 #include <xfuncs.h>
+#include <bootm.h>
 
 #define MAX_UTF8_PER_UTF16 3
 
@@ -1014,6 +1015,9 @@ efi_open_volume(struct efi_simple_file_system_protocol *this,
 
 	EFI_ENTRY("%p, %p", this, root);
 
+	if (IS_ENABLED(CONFIG_BOOTM) && bootm_signed_images_are_forced())
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
 	/* No filesystem on the volume is EFI_UNSUPPORTED, not a device error */
 	if (!cdev_get_mount_path(fs->cdev)) {
 		char *devpath = basprintf("/dev/%s", cdev_name(fs->cdev));
-- 
2.43.0



