Delivery-date: Sun, 04 Oct 2026 03:21:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAvB-009UOJ-2W
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:21:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 18345201EAF
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:21:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4KEEIyEc;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=qhSoBpfZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791076905; a=rsa-sha256;
	cv=pass;
	b=Ozpr5L0NMWprETkeauHjVnyrYtl0qlSSXxasip4N0IaiLPLk8zjI6r+4RF4PHcn1L/i6h6
	n7e6nL6JZoQKoXJz0Z/gPVKCunyAi2E1OD63/Cd69dzYH2QAfk97qk+3QqZlfaVxqqq/3f
	A2brlpEycHiz3H1L+GKr06rGNArTeATMiRiMu06J5KV4GDoJhpxpD1R027m8WZHcpMKwEe
	VO9coDx1dL1fIEuqU4UYIUyOx875jvUnWkTBUYWHh0cSMDqsCKVZab1MzZngPjgxRk8kEU
	5dDPprn9PVlCSgPxZ5aKnpEDlhPKdD0YxxtPLZbQtBuN+ORS+FS9naYMXkloSA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4KEEIyEc;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=qhSoBpfZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791076905;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=TG6ZI3dRdMeDdDWEXXTDCtmrP23lH2SnidFSVx76DgQ=;
	b=D3Fp39l4rLkOQe9QDwrNXp+E4IrJ69PZJzQRN4Q9uOnDt9CED4cnFfOiIigt/+iWj7hhvk
	wfhtMvsQSamXhA2JsdGmYGXkh34bJLJ7X9K3p5wpgR6Cjap3I/iaLLMMw7HSCBm9A6crnO
	mFyGT6PYrlJoh4a5cCX4XvQhsFQLD05ued1uvUeulJViqnPfyWZiLwRlLGxAfN2OF75DuY
	blL2HSVliw9vPKIriytJOUP9522HhzBgyKJIDt9AxaZDqve+d8JPpKKS8a1wUyjO80PrTz
	96KLSheMyb2gQDMM6H7ewCTZNtFD8sy7LQ7poPd5LNwAS3lVFNRarr9sIgJkKg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TG6ZI3dRdMeDdDWEXXTDCtmrP23lH2SnidFSVx76DgQ=; b=4KEEIyEc+mFXuYqfa7crJEAYrD
	535i8WBT3JCGmZM6OSPNs8rbjwkZORzVCqnrcnNALmBzmdrQGWkkWiocex/iXe+bkAWbCEZ557Q+4
	F1ViidvcnikBm9UnsCXtGSDcTn1nQX8Do04TjUQgTixRaWe3LZWp5kpx3tTn6xWDjx265y1fb3XK3
	0kGfb5/SVOKFCjulbcjSeyhBO5uZeewmkJYGj7ZqOT99grb3ayuW04rktq7/Le9R49NaVBUQjYZIw
	lJ4LnSiNzOs+3SdPfgQxdzJXhjmnOPXOBlOpabGw36STwv/+uF8144Ndex9KhSHFsTa2C1On21BdQ
	R0vFK2kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtm-0000000EE3l-1GeF;
	Sun, 04 Oct 2026 01:20:18 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAti-0000000EDwq-0EXT
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iPw93VGr/nQ2YcLgGdHHpuw8a3+h3inIf73I63DMcUnUybFZa+9g4yPkns8Qcw6x6j3DDaXktqx+hbcc+U6uWBeXOQPTl0/ZU1Q827M9kJ9Y+BfdcCeyxSZzTjDsVEuHsMZ9ivsmxMc0zple1WxLR+LyIcDtC37aUreZBOD70k1gvudSwb4PrJAifRknYTTYwAr7CFf6BGwq34aU+ygNflcaP12VXhSpnYtQQR5rG5EdoMbcgOMj4DGwZUSx/G5q7U5XuWZkPt3s09TBWUelTDw9HJyDIn+AxuMdunq7vDirp9kyUjwa22+N3bf/lFtkZpbM/IX/Kaq31x3Ju7wh3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TG6ZI3dRdMeDdDWEXXTDCtmrP23lH2SnidFSVx76DgQ=;
 b=vCWKxNIEAi1aCdzobRLyFtIbkF3k8weiRHNTuwDbf52Y0XYAQu9BCtNKHxMC9vOVkJbBcVLUVADcm4avIr9GY+4cuZEIy7TT/yYCD0DnawOhqidOpX+0oRYP4lhinRu1rvoptEtkNKmvVJ7sP0DAkoY+NJE/DVJkMKFH0R6fhgZ3pX6xbmkiVsF9f7Yll49QRIOtWJevibCZRHE4eB1mbIMnRlrevv8UYe6Cnz7uhuGW1Csdoi3QaE05u3fZBFBFj2FjnVQgKS71FXrwUTRoVhH8V773wwqsnpsk0SPfYGW6xG80pkMgTNgysK+XlvljxzN90Cmi5pmp0QjKpghsow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TG6ZI3dRdMeDdDWEXXTDCtmrP23lH2SnidFSVx76DgQ=;
 b=qhSoBpfZEJJmhIm5QjlPzwDCN2+uFiNXSISfKnUR3/mHKXW6OvDIlbNZbWBhd8cfCUJQwExhHIOWw1tOyqLGRkY50FSMY+NV+6xNaZOdTnVPKxAwDDaYgr7nxAK2oioaH7YjR/r45xBnaMdQGOnfvz4y6XkONIrNGocQAoSQNnk=
Received: from PAZP264CA0153.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::8)
 by VI2PR06MB9133.eurprd06.prod.outlook.com (2603:10a6:800:22c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:06 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::8d) by PAZP264CA0153.outlook.office365.com
 (2603:10a6:102:1f9::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:06 +0000
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
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:06 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:20:00 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 13/14] efi: loader: bootm: install a devicetree for matching UKI devicetrees
Date: Sun,  4 Oct 2026 01:19:46 +0000
Message-ID: <20261004011958.3255011-14-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0289 (UTC) FILETIME=[79B5F910:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|VI2PR06MB9133:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ef1a1883-a24c-49c2-a4b5-08df21b59fa0
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|1800799024|376014|82310400026|22082099003|18002099003|6133799003|3023799007|10067099003|56012099006|5023799004|11063799006;
X-Microsoft-Antispam-Message-Info: AB/wCwN6AAOG81nrTJNlnqoiyz3PnE1J7bbFgi2knvXdaOniq7Iku/gv1Rcf4ck4q0pkm0Ogc2fSNYWPY6OIXWhK0Nt/4UalelPKDW2ZlL64EaqMfLxYpR9B84mJKVlqv9D4zfc0SDrb6/c6qF1HmBprgNvccfNBgolVwX8xM1q/8hUXq4v+PDrQkfy40mcylyAfXVUfNUlOEHLslVY8D0gE2v/CnAeEH+xIPhYmMISTkugMxCaBiJaOtJg7660kpLxEEJSFl4MLC8vy+PVi9tmRserOeBCvUcXEMpWildgYy7o8DX63Mz8/ZJxW6roFWQN1E1ntRadXqOKyRkfGR10OjUvCeEbizBQ/ctcanJDvI+bQFJAy6AZeC/iDdMhwnZ/Q0TDlsJIvWu6H2WWtaxQE4CYBMGpW66O/2Tk0aZqagxr4kNjFzf2gTPH0J50AgZD5uLlgAF1hPio4N37O+Ygvjjf4y5pfbEcbtVSaaBRiK2ST3kCidjrvLT0l3E6kjimYIdG/eMs/mzlauT8sNFFfeP1vCaum8fAlwGR3jLjW7zdt1mpJ6cyfyOM3hmeh+uwM0tfjQ5O8kWhRp2I7VbW0iFzzvsFIocGRfgdQbhJFUOnboWjyilZVm1jiVSZlEzDFX9FyQ9vy/5NPwjmXqCCO+LQzstHlOtn5kJRflwmohCCg5nzQ4M/0alqwQXgG7UBGw5zO7zTzqAMxnE86+w==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(1800799024)(376014)(82310400026)(22082099003)(18002099003)(6133799003)(3023799007)(10067099003)(56012099006)(5023799004)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: R9L6hoXx/fmvEUPCfppvK7MgmyaCUCX8JN2aAmqFbr5tJicODE1V1Xd7iQK0XBmwda2e0O9qZb3QzkU/xYaQNH6IjVXEzOEmV8E4Y/OUPk7GPgoN7xvlqexZqS7bxiO0VXPKdEjNTl1YB3d0g+YGCxM7AvMRLy/uojX9fj19oNO/Svs99TBjZAxhBKJ08s30DiHaPk4L95AmYx9q5yCRvIuIXeDReDIE8bMSCqEnIiXBb8Ktk8oTYLyFu0a8vxTgtvbkgZQRm3Kn1rQyuxaKn0QSTXAvYkdC/ch6DaBhZ5Bb3f1M2J5qPlrNvA54X9wt09DWSy0///60iXc1q/NdRbkCDQmYZDN/cMvr98hen9tJalTWEyyUdsDYnWK5NHdpNA7PQd2DzdaFB8lOmzNLk6xtxC1iqt4JytMGhDnqgcAEOe5Xm81voxea68E7ed4j
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:06.0725
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ef1a1883-a24c-49c2-a4b5-08df21b59fa0
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR06MB9133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182014_105918_9E3A852A 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  systemd-stub replaces the devicetree installed as EFI configuration
    table with the .dtbauto section of a UKI whose first compatible equals the
    installed devicetree's first compatible, or else with a . [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c202:0:0:0:7 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c202::7:received];
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
X-Rspamd-Queue-Id: 18345201EAF
X-Stat-Signature: moob1yxurid7pyfnamkncreo48omji5p

systemd-stub replaces the devicetree installed as EFI configuration
table with the .dtbauto section of a UKI whose first compatible equals
the installed devicetree's first compatible, or else with a .dtb
section. Without CONFIG_BOOTM_OFTREE_FALLBACK, bootm_get_devicetree()
returns nothing for an image without a devicetree of its own, the stub
would then pick no .dtbauto section, and the kernel starts on an empty
devicetree, silently without a console:

  EFI stub: Generating empty DTB
  EFI stub: Exiting boot services...

Have barebox check if a .dtbauto section in the UKI matches the
machine compatible, and if so install a devicetree consisting of a
root node with only the full machine compatible, vendor prefix
included, to give the stub something valid to compare and pick the
matching .dtbauto section by. barebox then fixes up that section
through EFI_DT_FIXUP_PROTOCOL.

If no section matches, the UKI carries no .dtb and bootm provides no
devicetree either, refuse the UKI before starting it, so that the boot
fails where it can be seen and bootchooser can fall back.

All of the above only if barebox describes hardware by a devicetree,
i.e. with CONFIG_OFTREE, so that the EFI loader keeps building without
the devicetree code.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/bootm.c | 99 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 98 insertions(+), 1 deletion(-)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index fa12caf560..47f7a3d1e2 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -38,6 +38,9 @@
 #include <efi/loader/authenticode.h>
 #include <efi/loader/pe.h>
 #include <loadable.h>
+#include <of.h>
+#include <barebox-info.h>
+#include <linux/libfdt.h>
 
 /**
  * copy_fdt() - Copy the device tree to a new location available to EFI
@@ -220,6 +223,86 @@ static int efi_loader_verify(struct image_data *data, void *efi, size_t size)
 	return 0;
 }
 
+static const char *efi_machine_compatible(void)
+{
+	const char *compat = barebox_get_of_machine_compatible();
+
+	/* with vendor prefix, unlike of_get_machine_compatible() */
+	if (!compat)
+		of_property_read_string(of_get_root_node(), "compatible", &compat);
+
+	return compat;
+}
+
+/* The first compatible of the devicetree root, as systemd-stub compares it */
+static bool efi_dtb_first_compatible_is(const void *dtb, size_t len,
+					const char *compat)
+{
+	const char *prop;
+	int plen;
+
+	if (len < sizeof(struct fdt_header) || fdt_check_header(dtb) ||
+	    fdt_totalsize(dtb) > len)
+		return false;
+
+	prop = fdt_getprop(dtb, 0, "compatible", &plen);
+
+	return prop && plen > 0 && strnlen(prop, plen) < plen &&
+	       !strcmp(prop, compat);
+}
+
+static bool efi_uki_has_dtbauto_for(void *efi, size_t size, const char *compat)
+{
+	const void *dtb;
+	size_t len;
+	int index = 0;
+
+	while ((dtb = efi_pe_find_next_section(efi, size, ".dtbauto", &len,
+					       &index)))
+		if (efi_dtb_first_compatible_is(dtb, len, compat))
+			return true;
+
+	return false;
+}
+
+/*
+ * Without a devicetree installed and without a .dtb section, systemd-stub
+ * starts the kernel on no devicetree at all, and it boots without a console
+ */
+static bool efi_uki_lacks_devicetree(void *efi, size_t size, const char *compat)
+{
+	size_t len;
+
+	if (!efi_pe_find_section(efi, size, ".linux", &len) ||
+	    efi_pe_find_section(efi, size, ".dtb", &len))
+		return false;
+
+	if (!efi_pe_find_section(efi, size, ".dtbauto", &len))
+		pr_err("UKI brings no devicetree and none was given\n");
+	else if (compat)
+		pr_err("UKI has no devicetree for \"%s\"\n", compat);
+	else
+		pr_err("no machine compatible to select a UKI devicetree with\n");
+
+	return true;
+}
+
+/* Just enough of a devicetree for systemd-stub to pick a .dtbauto section */
+static void *efi_uki_matching_devicetree(const char *compat)
+{
+	struct device_node *root;
+	void *fdt;
+
+	root = of_new_node(NULL, NULL);
+	of_property_write_string(root, "compatible", compat);
+	fdt = of_flatten_dtb(root);
+	of_delete_node(root);
+
+	pr_info("selecting the UKI devicetree for \"%s\"\n", compat);
+
+	return fdt ?: ERR_PTR(-ENOMEM);
+}
+
 /* The image may sit in a much larger partition: load only the image */
 static const struct resource *efi_load_os(struct image_data *data,
 					  resource_size_t start,
@@ -278,6 +361,8 @@ static int efi_loader_bootm(struct image_data *data)
 	void *fdt;
 	int flags = 0;
 	size_t size, section_size;
+	const char *compat;
+	bool match;
 
 	memory_bank_first_find_space(&start, &end);
 
@@ -295,6 +380,10 @@ static int efi_loader_bootm(struct image_data *data)
 	if (ret)
 		return ret;
 
+	compat = efi_machine_compatible();
+	match = IS_ENABLED(CONFIG_OFTREE) && compat &&
+		efi_uki_has_dtbauto_for((void *)os_res->start, size, compat);
+
 	/* systemd-stub passes the load options on as kernel command line */
 	if (filetype_is_linux_efi_image(data->kernel_type) ||
 	    efi_pe_find_section((void *)os_res->start, size, ".linux",
@@ -322,11 +411,19 @@ static int efi_loader_bootm(struct image_data *data)
 
 	ret = -EINVAL;
 
-	fdt = bootm_get_devicetree(data);
+	if (match)
+		fdt = efi_uki_matching_devicetree(compat);
+	else
+		fdt = bootm_get_devicetree(data);
 	if (IS_ERR(fdt)) {
 		ret = PTR_ERR(fdt);
 		goto out;
 	}
+	if (!fdt && IS_ENABLED(CONFIG_OFTREE) &&
+	    efi_uki_lacks_devicetree((void *)os_res->start, size, compat)) {
+		ret = -ENODEV;
+		goto out;
+	}
 	if (fdt) {
 		/* efi_install_fdt() installs a copy */
 		ret = efi_install_fdt(fdt);
-- 
2.43.0



