Delivery-date: Sun, 04 Oct 2026 03:25:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyh-009UTb-1I
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D79BF2022EC
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WYFc4Vkd;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=dteevm+8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077123; a=rsa-sha256;
	cv=pass;
	b=VdMbClDYRqW8YkzNMWk6uznK8hru4pdp08JdhL1xHeLBTO9F7YhrJcWMk5bcKeUhw65pTv
	nncdnqqk608mgfLpgPAjQ3F7sZ2nJ4lzwva0TCOeqGerqAwfTRshsgNoMYlXBBpsyorTy1
	RTMFskcmWinb1WC4vuawhk5zgKMX57w3aTc+t+9BhXTys7F4JK9hldYlIHIPh1DFQc2Bxd
	QeoENRPOc6ymd8dF6M0bshPazYgJAJ20fvat4cCJ8/lyhvTTmC53hHz8xw6CkZtrCykzVP
	GssGvpWxHj00YT2CU7PNvwfc0Yjl5/KT2vOIHX+2x2XaDzPFyL9fnG50izWRiQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WYFc4Vkd;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=dteevm+8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791077123;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=feR+CUDqrOgGb3P56Od0QvVp1fxsbooRhsQmg+aATxY=;
	b=LAiB2slgQK/lc9GCo5NkXiTE9rqCVaaFrmtM+B3SMJKq8FAnhQtCTiIPrtvxyj1zMErG2m
	hQ/kIN3Qc17dlRxN6sjV68SWdrU+ST4WIy0hAi9UVPIJ1KERiZxQoSz6LXpf9be6bzdzVY
	MTWKZSQA2vXO2TN51of1RZKeITn3ZFiwCvUQFY4t2NbR5RhgrwMRQXxwAnliplyH4zYvO8
	InUy6qJ3vOhEl4F1hClUss7ZUZv0mac/owk9keVGk6R37vz14QugC5zS6LgdEbdKbvtFcT
	QDuBwduXAHgueUMHiHE66yJXajkzKghuRn59FEjmgj+2y1TCOwbuCHANOHClBQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=feR+CUDqrOgGb3P56Od0QvVp1fxsbooRhsQmg+aATxY=; b=WYFc4VkdwKR07RbiXAKrok/hzg
	NPJHbnqaUoE3wqKs1s9tJ8vaVoce5HrRcOYbT8nk9vWFRzFx7NARPsUnYaOow5dsTrf7TcmdgH1jq
	Di1xhIAa33rVbIvdFe2+JtNKNuKU4O5+gD9TRVtqrF+TPVkqbt1/whhplrjQFjZg7DNoF3lnv8KGk
	WNxKNg27pVYsKffjEC5vGJrM5+iD4TDjp29J1S6s6iB3QfuaQKkCVJYAGJlzADuPnFwJOb5w2++07
	6Bb78N7mxqOiNJtKuDJEAWGJpQIRc1PFcBJSCbRlgV59dPge2KcuIiKVGV2DCL3mnaevnKpXaAPTZ
	C4h86x+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtj-0000000EE0e-27aR;
	Sun, 04 Oct 2026 01:20:15 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtd-0000000EDtM-3dBT
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fRlByhlxjWhYX78zK3K1hrHISU8bdeoWbwYzhB4p9NZmXBlTneEfOHHCWAIoomRf+bzRpkimgEq9Nrgs2VTgtpszQVuoT34k2D2CBI/2TNpZsnCX0JijFioN8W5wrMR37feZ/dbdUfb8ZNT0g5wBZNUaEKS2+/azAIOODU+81reKeUqbIdMfrf9KD0LWHTZ/BHdexBd4nM7HXUOF2kIjpH+trw5uzjeHOuc7KXhR0Qgauc3f1wUDocCbAxKz6GJ2It78C2gKSilw7vylRUoOa3NRvSipJkmYfmGkmxLOq2Le5/1N8oZzQPgkJdZEOft/xN2oNAJUDBj8NaWKsDRu+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=feR+CUDqrOgGb3P56Od0QvVp1fxsbooRhsQmg+aATxY=;
 b=c+VK/iXzsiLzJbL9t4n0WOjO44jxq0QUXl9oB+HWTDXUjHeVJhUY09Zg6FyxJzTxLWyQavKitYfVLTqIMgfuHCWlYWGKZzYeSXfnPN/WYtYlssMU2dWJ/67DlXuAHHWjcqarOWJo4KjQCmt8dK7WCErDgqgT534K7PijNRMnfDx9kgp1me4JvqZj0xGDaj5HAjY5bAx5LALLryEVFh2PHW202PcRujBdY1XBNQS7DTpjTHmji0c4856pHzx++fRdI+Jj8t15z98X+7pcdb+TCPJ9K9TI6AYAeK/aY76OS9J6dxlIXexjVgey9baoU7SCv8PSDaksO3skcbOsCZzoEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=feR+CUDqrOgGb3P56Od0QvVp1fxsbooRhsQmg+aATxY=;
 b=dteevm+8iWzphcSyRlWeppXiBFdwB63mOdixhNu7TA8FFT30MdAZ/fDAf/pn6+RsHEU7shGW8RFF+VAW0uJGEDyEgvo30ZJk2B+7vtS/I03zQJX22PPQ8ClJfpIHC0YVVdkLo9ub5wYAndeFzFXol1gFybcEXXsA+AOqKBnePgo=
Received: from PAZP264CA0146.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::6)
 by PA1PR06MB9691.eurprd06.prod.outlook.com (2603:10a6:102:449::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:04 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::95) by PAZP264CA0146.outlook.office365.com
 (2603:10a6:102:1f9::6) with Microsoft SMTP Server (version=TLS1_3,
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
Subject: [PATCH v1 09/14] efi: loader: authenticode: add a fuzz test
Date: Sun,  4 Oct 2026 01:19:42 +0000
Message-ID: <20261004011958.3255011-10-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0226 (UTC) FILETIME=[79AC5C20:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA1PR06MB9691:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: b97d5eb1-a5b4-4d29-c0f0-08df21b59e68
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|36860700016|1800799024|82310400026|10067099003|56012099006|11063799006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: iRpyBtf9xRBylmD3QX5heUkrei8SmrCYDBsPpEVcd14z+fhpMTbwf/Na1kgb+wHjoFhymMT5OqHPkp8km1m22bA8JzHFs/0DgXB3mJq5nazZUmADWo/+5C0Vfyrt9ywSpfcbJkfHO2SEYQdmYd4QltgnqqumVO6jzF2Oh0bKEyqlf9rsxtB7gO1QGDDiWIAmUtCwgmhfRs9gr3q4NBaer72dG2kER7Ydkyi/hdmfajur/3XuQ8kWwopP0gKI68/qVrsF/fuQnCeaX54x43TlI/RCFoTJCa7srOggaOBQMokxwYaDybejKMjxrWOmxAj6sJ7Y73wupDiPheK4g+s9uEeEvGpG6hxqrv7HYS924uzC828JH1dvtvW0itnkXTbTeUZoD1bLSTTwG92+A9sCcTgSwZURRL+dpk+Htc2aOTSf6FNFszi/RgBaBoPLuTsYHYWe+/c1rOU7m/wGx8X9sVxXRj5dIXUFgoIUtD1KDmq8GLolduS+C2raNGu1EoSrjAe2EOe6FcYylwh/hODHHzNtF18YkDthIYS+ZQJuS8O7VKqam5PpSeGmcjDiWoXKT9ot4Y8vV4vINzdnpk5NBOdzaz/WFLHOsu1Law6RJZLD5lirAthChMH15zHFEWkmYSsm6Wl1cv6clYyNz8sYCHAiqPvHauQG54phInTRl1Zev7M2/+yNo6LUOdqeOXZPo1Qq9l+pfUgY10H8byIoCA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(376014)(36860700016)(1800799024)(82310400026)(10067099003)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 8ohOv1Ec0tgh5s+Ld8NOr4SucqwZ0p8GaUymzLxoXzOUcEDPJBQXQBHHn9nc0IfKqpFCtVIdyC0uL5QNQLnqc728+lsyIgmtW0ChA2RAx8CL8aOqU/AvXzGQ4GAG/oICW4J6A/x9Qi8+nkx3Fv7khKaShPDAtsBtO6dWDe/BMQ77XzbFupoD0r4drHVKSBe5eZKfupt+zJFJPYM3yslH89/GKJv5b7etvscpcYxU1FqB56GjpsEAJNTtz/cegFPf85NS4Ne6D+kMKu7y02ojf2M9YdTcR76SHSEGHOk1iBbvsbFd4d8WLaErUmDukKw2qeXClCAqzBpV/6WXKhXLXvdoZZbnBpUbEe44FXRG8163NgXC7xIFwOHZzdWOKVJEUIWNTO7J0SBe10qIq19pozF7WH5iC6JE9AbqdlhFUiC/+LdIw/ETbfFsAXD92yC0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:04.0286
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b97d5eb1-a5b4-4d29-c0f0-08df21b59e68
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182009_916096_3AF4A034 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  authenticode_parse() walks the DER of a PKCS#7 signature taken
    from the image before anything about the image is verified. Fuzz it, and
   the digest of the signed attributes it hands on, the way the PE [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c201:0:0:0:6 listed in]
                             [list.dnswl.org]
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c201::6:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D79BF2022EC
X-Stat-Signature: 5i6jjr5prhnm4igezis5y96sn5z6ygkz

authenticode_parse() walks the DER of a PKCS#7 signature taken from the
image before anything about the image is verified. Fuzz it, and the
digest of the signed attributes it hands on, the way the PE parser is
fuzzed.

As EFI_PE_PARSER does for the PE parser, a separate EFI_AUTHENTICODE
builds the verifier without the EFI loader under COMPILE_TEST;
EFI_LOADER_AUTHENTICODE selects it. The libfuzzer configuration enables
it.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 common/boards/configs/libfuzzer.config |  1 +
 efi/Kconfig                            | 11 +++++++++++
 efi/loader/Kconfig                     |  2 +-
 efi/loader/Makefile                    |  2 +-
 efi/loader/authenticode.c              | 13 +++++++++++++
 5 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/common/boards/configs/libfuzzer.config b/common/boards/configs/libfuzzer.config
index f0a298559f..40c90d644a 100644
--- a/common/boards/configs/libfuzzer.config
+++ b/common/boards/configs/libfuzzer.config
@@ -16,6 +16,7 @@ CONFIG_DEBUG_MEMLEAK=y
 CONFIG_TEST=y
 CONFIG_COMPILE_TEST=y
 CONFIG_EFI_PE_PARSER=y
+CONFIG_EFI_AUTHENTICODE=y
 CONFIG_JWT=y
 CONFIG_FUZZ=y
 CONFIG_FUZZ_EXTERNAL=y
diff --git a/efi/Kconfig b/efi/Kconfig
index e3f3941831..6c8d6b9de4 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -12,6 +12,17 @@ config EFI_PE_PARSER
 	  This can be enabled without the full EFI loader to compile-test and
 	  fuzz PE image parsing.
 
+config EFI_AUTHENTICODE
+	bool "Authenticode signature verifier" if COMPILE_TEST
+	depends on CRYPTO_BUILTIN_KEYS && HAVE_DIGEST_SHA256
+	select CRYPTO_RSA
+	select EFI_PE_PARSER
+	help
+	  Build the Authenticode (PKCS#7) verifier used by the EFI loader.
+
+	  This can be enabled without the full EFI loader to compile-test and
+	  fuzz the parsing of Authenticode signatures.
+
 config EFI_PAYLOAD
 	bool "barebox as EFI payload/app (consumer)"
 	depends on HAVE_EFI_PAYLOAD || COMPILE_TEST
diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index 4099da0689..8345fccd1a 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -27,7 +27,7 @@ config EFI_LOADER_SECURE_BOOT
 config EFI_LOADER_AUTHENTICODE
 	bool "Verify Authenticode signatures of booted EFI images"
 	depends on CRYPTO_BUILTIN_KEYS && HAVE_DIGEST_SHA256
-	select CRYPTO_RSA
+	select EFI_AUTHENTICODE
 	help
 	  Verify the Authenticode (PKCS#7, SHA-256, RSA) signature of an EFI
 	  image booted with bootm against the keys compiled into the "efi"
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 775014dc22..f590fb278a 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_EFI_PE_PARSER) += pe.o
+obj-$(CONFIG_EFI_AUTHENTICODE) += authenticode.o
 
 ifeq ($(CONFIG_EFI_LOADER),y)
 
@@ -14,7 +15,6 @@ obj-y += boot.o
 obj-y += runtime.o
 obj-y += setup.o
 obj-y += watchdog.o
-obj-$(CONFIG_EFI_LOADER_AUTHENTICODE) += authenticode.o
 obj-y += loadopts.o
 obj-y += efi_var_common.o
 obj-y += efi_variable.o
diff --git a/efi/loader/authenticode.c b/efi/loader/authenticode.c
index 36e5a46fc6..ef2ea895e1 100644
--- a/efi/loader/authenticode.c
+++ b/efi/loader/authenticode.c
@@ -15,6 +15,7 @@
 #include <efi/loader/authenticode.h>
 #include <efi/error.h>
 #include <pe.h>
+#include <fuzz.h>
 
 struct der {
 	const u8 *p;
@@ -340,6 +341,18 @@ static int sha256_attrs(const struct authenticode *a, u8 *out)
 	return ret;
 }
 
+static int fuzz_authenticode(const u8 *data, size_t size)
+{
+	struct authenticode a = {};
+	u8 hash[SHA256_DIGEST_SIZE];
+
+	if (!authenticode_parse(&a, data, size))
+		sha256_attrs(&a, hash);
+
+	return 0;
+}
+fuzz_test("authenticode", fuzz_authenticode);
+
 /**
  * efi_authenticode_verify() - verify a PE image's Authenticode signature
  * @efi:	PE image
-- 
2.43.0



