Delivery-date: Sun, 04 Oct 2026 03:25:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyd-009USS-1a
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EC948201E1B
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KKVGLNK0;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=bHi5fqDH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077119; a=rsa-sha256;
	cv=pass;
	b=Jr4IVaXJsS7FwR3aCWuYDeCyhP7SC0Ef1M2/o0tQbPXMcRTTHxK2RRpM4MB85vgw4JWJiR
	s2KS/gKxZfoHI62jzMu4GVz8foE8JTysyBPtwLvATrTtce4eCvVKnAen37vZa+Mk/ow/3F
	p2yLBtQ1CT2NmjsxcANRJr7ETW54Nt9tgN2RQY5Rf5ptwMTUwFRiM2Y5s7Ohjo91OM1NQd
	xuzCbkMhXQ7mvjAAVpf3hVu6DG1o07sO21hdHRL6c+GHpetLTR2VkRunY/0vZR5Jb+AQO1
	rDEFu2Zba3OTEz1wNck7r1y7B2giJ9QPW4kOMXeBS+T8z9ckWvY8msRmrNiLFg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KKVGLNK0;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=bHi5fqDH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791077119;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=m6x89DIUxnyUMbmbT8Lrxr+Ejykzk8KitJJLtfLztao=;
	b=Ug69COSpsRQ9N35QB5w/XXAtxDNzF0GWifTbO8a8Vwj40DDGedchJ20VpVCMzDAO/1bS/p
	23FZ5kA5VXBYEpjDkJQbo6mcN2CVVrp724l4E6S32FWTO2AnnY8ZfnB4aBnex1mBIgTETG
	8mmxVmQFOtkxwCb9ykbdjAzVH3WvaombWuBXCLBl4UZ7kzkENi/Fktp4i4F49S45t4a248
	uh8GzFSPWEi7yqEW6FTUCG1hD4OgwspHbTlQ/TZQDOzkNXcNA6Gl9814PfUmuUzPg1scuF
	1BNUQt4F2R3Qaj/kfm4WMzLl9V9DuRi3Pi+AOR4NYaYhao1hOnin1TXzqqr05g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m6x89DIUxnyUMbmbT8Lrxr+Ejykzk8KitJJLtfLztao=; b=KKVGLNK01AfYLLAjAGloFKzZj+
	5cdx2lxN6jvpHtbnbtPEsl9BhBL/ywNuPHvBxPM8y3Wsn/xP3oZ5HkSy+uRS/rK90HYravLbfkEF4
	VkXIC5wlP785wOOMRbc2yVqfScZbLsES++587dG2q2hC3mCN5mde7MXmNUvEDYHSGsvSlgum3fJRf
	9nTgJaDV5Don3LcDKkWtAp3+yhtirmeYcwkPtzMwNCyVkW+gfUj3BWdVAwkIcWkyBmbz7Xjx3Cpqn
	If8GoKbZCFQDKLWNdG2+gevG3NMwT1kghakhmA9k452YJGVoRDjwJ6E9rNYLxkGxGyRm0j7G531Ys
	HzU6pLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtj-0000000EE17-3GtX;
	Sun, 04 Oct 2026 01:20:15 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtf-0000000EDtN-346F
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JFK7/u65OtlgHqF0hI3UEoaCKMH7FvBV6aXJEc/rndM2JjLKS+1d+JhOQ8RlhGoA/uumFfgA0mMNZAY147PKnaT57QTAI2Z132kHq5BW2/rFOchbNGZ89ElDMszKLLL0eO8yROfM5ddZTvyAnYuBvn+aW7fY6O5+e/x4jTYukxKLH0tF9zu/mAqMowb0r1Ds+UX+ZN/DgwDQmP5RcgEsEQ3Xoe2yVdKXm4JaiGFh592NlBdt7FeI82YDy3LPrIg3xEyDIupJ1xvBBjgYbX+drtUSn7m0LCbM56EXF+JbxOknmZY6w3B/tl7afnVRyIH+O+p6oP5NTMP/SWOulYLelA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6x89DIUxnyUMbmbT8Lrxr+Ejykzk8KitJJLtfLztao=;
 b=vuDueGMSFPBgwUfpxFipSs3GMHl8c79m1XbwI0ULYpGFM7cNVuVvlU3/xWtM/kkQ32GNZ5kfyIRtLXX6nDJ7hWoUibICFIp09YFVAie9lbEIEZW6CBGDGuXAC8Stid+1nV6tokIoJKU0I07H0j7w7tiYuU6rkhk/3b3+fK0i2zRXVrEOpZwkPMkHqRQHtOKFh5mrIkiVFQ5AIrkSry+1k769FFNnWSQyWWLsItsT6SA3xxJ6lpxdWwN0XM2QRC9Jwv4oh9qwpMEJC2h3X6XLFUD8KYrWfRkILpuF+ch4kX2I25AEfR0Z3L8PAY+BO1/lkNYzsvxYZZR/S9HrLIpuxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6x89DIUxnyUMbmbT8Lrxr+Ejykzk8KitJJLtfLztao=;
 b=bHi5fqDHrNpiJHgShZcTL91DTIygMdSP+9Qy9XGrbd7JMDDpDFS5g+6M+pyvp9pTF7SGiThl04F01zeB11cBqt/g5ThnENdw01VNJ+wsgjEpTo9SD6DXFnUByC8CNymFl7SEGVz+oLvg+KXdsw5zxHMDw02dPPMJ/1cKKsxk7nM=
Received: from PAZP264CA0145.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::14)
 by AM8PR06MB7538.eurprd06.prod.outlook.com (2603:10a6:20b:366::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.15; Sun, 4 Oct
 2026 01:20:05 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::2c) by PAZP264CA0145.outlook.office365.com
 (2603:10a6:102:1f9::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:05 +0000
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
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:05 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:20:00 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 12/14] bootm: efi: boot signed EFI images when signed images are forced
Date: Sun,  4 Oct 2026 01:19:45 +0000
Message-ID: <20261004011958.3255011-13-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0273 (UTC) FILETIME=[79B38810:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|AM8PR06MB7538:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 292477b3-373d-4318-b05c-08df21b59f13
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|376014|1800799024|82310400026|10067099003|5023799004|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 0GhxLMThR2csRiM47AiE6EN2u5+OPiPVFWErtjMb9nEDdkyA7ogj6goNcF2hfpCEsxzllhwSI+i4yNxYBenbidFh6gsGOAqISijZsHIG82wrW3lAt5XY81i3z8YCTW0DOVHCwDnt8D0bwDyXU/tIagzX05gpQzMgQQieXSurPxSCPmjM+gLXRYHR9hcftpXaCgH7sVORBDDIUbJfbhxVnejoAGVzbbXTQhcYYnA7Md9pr6yBfRGsGOe2BgwAC1jrUGTD4IRQMAmAefGBHQwpPXqK3PdpQHhCSTW5SwbZoXmHV7kNqxrf4xKF5GimEDtr3pQYWeQH2nmALm9VE498Cl9iy6c/Ei5B8WAT031rDwWfs6yb51VNs92wsULbHRtk9S/MRqaUW8Dy/9k86yA3+yBjKoRjTG3IgqyRiemNof8i/Kz4j7yG/FlBmSTR/e/zLhF5qKsId3jOopdI1wCqZzDYuGNZ2/LqS4OEvZfCtNU8PXD3C7CfMv/mKWSJIPTaR7EATBeM30FdeoDFOebTLqyMzmpemZBBozvoK+Al9w/Mm+oaDmBS4Hm/ewDPTwXubkGRbIXOlaz9hgPjr+W0hSjN6jnl/y2gnduTa/4MQsJcMwZAM4QzpFpFuCraeurxLBdw+yJHJVec1bcZ+mLEbexZRsZYDIzb12ptVvKPGTyhnsmiyeVHMJdB3JC7DRionfegtf/Nz/QrTJtLImDyjA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(376014)(1800799024)(82310400026)(10067099003)(5023799004)(11063799006)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: +98mE4kjqC2wEmq1CmRp/R2ZFJsdvEGtOxnQeXqiVXlM6GLxXUUyb1tKbaJRmvR45Cubovp1sTZuGpu/w6J+77Nc+5Lx/HYP5YkrjtGUGQiWAuYnt3xfIrLO0FLB2pRWf0ZFbP6wT3eEt9oKs+LJvOiBEUdAYUBgMtZYZmmgfrGSid5/yqHNIzn5AqqILEP2Ot6Fn19XdITzRP25fH3nLHX3sWi8z1d/duEdNvUCnxUGKnZd0msYI8QXv+SkcX1foVMGHM4EB1r7dJzI6ZqwiLv6oHXcXG0dTFXvN1QTn1oQScqfbltqsQgzN2IZ0f3BJGywZ6tmnYj7wIKJ4fQaIbteJyYpi33vym2s9yZ5aqK2drdJK09qXpBfP+Rd+0QGMKcrM8R1Y44TfpfWWJg8gWFKvaKOWhtA51HmquyUGbVfPNLNJyZM9nL7G/ngS59e
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:05.1486
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 292477b3-373d-4318-b05c-08df21b59f13
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR06MB7538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182011_804170_FEAB7B27 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With signed images forced, bootm refuses everything but FIT
    images. Let EFI images through when Authenticode support is built in, and
    have the EFI loader verify them against the "efi" keyring before l [...] 
 
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
X-Rspamd-Queue-Id: EC948201E1B
X-Stat-Signature: g4an7agq5y8jpryif3qrdxy788ohr3mn

With signed images forced, bootm refuses everything but FIT images. Let
EFI images through when Authenticode support is built in, and have the
EFI loader verify them against the "efi" keyring before loading:
mandatory with signed images forced or bootm.verify=signature, skipped
with bootm.verify=none, reported otherwise.

Not when barebox itself runs as EFI payload: its EFI application
handler passes the image to the firmware's LoadImage() and verifies
nothing itself.

An image booted this way is verified twice: here, so that barebox does
not parse anything of an image that is not authenticated, and again in
LoadImage(), which verifies every image a payload loads and cannot rely
on an earlier verdict. Skipping either would need the result of the
first carried over to the second, a shortcut that has to stay correct
as both paths change; the second verification costs 70 ms for a 30 MiB
UKI on an i.MX8MP.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 common/bootm.c     |  6 +++++-
 efi/loader/bootm.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 27da1a590b..c8fc5220a6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -576,7 +576,11 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 		 */
 		data->oftree_file = NULL;
 		data->initrd_file = NULL;
-		if (data->image_type != filetype_fit) {
+		if (data->image_type == filetype_exe &&
+		    IS_ENABLED(CONFIG_EFI_LOADER_AUTHENTICODE) &&
+		    !efi_is_payload()) {
+			/* authenticated by the EFI loader before it runs */
+		} else if (data->image_type != filetype_fit) {
 			pr_err("Signed boot and image is no FIT image, aborting\n");
 			ret = -EINVAL;
 			goto err_out;
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 8a83865458..fa12caf560 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -35,6 +35,7 @@
 #include <efi/error.h>
 #include <efi/initrd.h>
 #include <efi/devicepath.h>
+#include <efi/loader/authenticode.h>
 #include <efi/loader/pe.h>
 #include <loadable.h>
 
@@ -195,6 +196,30 @@ static efi_status_t efi_install_initrd(struct image_data *data,
 	return EFI_SUCCESS;
 }
 
+static int efi_loader_verify(struct image_data *data, void *efi, size_t size)
+{
+	bool required = bootm_signed_images_are_forced() ||
+			data->verify == BOOTM_VERIFY_SIGNATURE;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_EFI_LOADER_AUTHENTICODE)) {
+		if (required) {
+			pr_err("signed image required, but no Authenticode support\n");
+			return -EPERM;
+		}
+		return 0;
+	}
+
+	if (!required && data->verify == BOOTM_VERIFY_NONE)
+		return 0;
+
+	ret = efi_authenticode_verify(efi, size, EFI_AUTHENTICODE_KEYRING);
+	if (ret && required)
+		return -EPERM;
+
+	return 0;
+}
+
 /* The image may sit in a much larger partition: load only the image */
 static const struct resource *efi_load_os(struct image_data *data,
 					  resource_size_t start,
@@ -266,6 +291,10 @@ static int efi_loader_bootm(struct image_data *data)
 		return -EINVAL;
 	}
 
+	ret = efi_loader_verify(data, (void *)os_res->start, size);
+	if (ret)
+		return ret;
+
 	/* systemd-stub passes the load options on as kernel command line */
 	if (filetype_is_linux_efi_image(data->kernel_type) ||
 	    efi_pe_find_section((void *)os_res->start, size, ".linux",
-- 
2.43.0



