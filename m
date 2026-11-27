Delivery-date: Fri, 27 Nov 2026 09:13:24 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWr59-003lHO-2P
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 09:13:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3479B205A87
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 09:13:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2I4W2txL;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=bVU6a8l9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=leica-geosystems.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795767203;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=fUURugvu+W7a+6YaXfWkPt3l7SIs3numAL07rFeuE60=;
	b=QC2n5OGfs6a7oaQpW7Ros5zR6306VvCZagRNAFljAlaxzUH59CXq7nLoTJC3f/+laVd/wM
	n+g2lWFrEBNyak0mEDMfEELNmXlm6anf5piBVGLe3QKC6/aj4Ar12zPr20/gPCy5Up6I7q
	vyrtC399fY/0ajeSVZbCL1TCMrgZMjLXqsZNAfVjHznAAfxpF11zcgp7ZND7Ozdbqjfc4p
	PQlIEANFU9YKGwBs/AYuV/pfCVem1F9/qTUCqfqhBDQ3swkMjVb+NL0ZUnQInYAPCrv4Rm
	p3OcULVAdtrpEojunBffsejyggpEIEdFf6fExeaWVF7EzJ9uW7fAqLtn/9qM1w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2I4W2txL;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=bVU6a8l9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=leica-geosystems.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795767203; a=rsa-sha256;
	cv=pass;
	b=FJDCTfke36s0k9cnkQ2h9ZVaavTTbDO4FwrDgF7Ldy/1I+i+5+1LjioxndIk4/C8tyW7uT
	/BylvhufvD4fyANLITIQp0nkutA4vEGX5tF9ESiOZlaqjA+q3aaidE480fsTcc1QBm5ro5
	xax4sR0+cAo4DETHRLszwlpInmeuk2aRgTkoO1rdBHco5jQTvgLf3gJEyyoJWb/wEoppTN
	SUg+wvfJO0IyUjI0RJpKzbS6JpiE9L7M5yb1u5jjPBu4T88G4LZlLA2qj4KEiEBSjaJu1R
	pDA3SZcuT2ncAzl4+t67iT72Rx+ns2iQb5odlzcSNCQqViSHmlu+IJSl650vMg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=fUURugvu+W7a+6YaXfWkPt3l7SIs3numAL07rFeuE60=; b=2I4W2txLbWylt/0CRdP+ivf5Mp
	KJzGYZSX/TR//XUxl/ZAxJ7sxbCXd/urQMC4zlzt39utnyyOKv0oKQSilQ5dGuWmhQtku1x3yJAKR
	M1m+q9wc6ononpuyfv3RDQ4bAywNIyO6dIbvt+3OY1g4jaSHf3TAx7Eoa2vsbztoxqnl7WrfJPMhy
	kWiP0N3TOnesxaf8pTzHIfaEQmxtKvH3RTJV96nIASN7HXLbI3W3fM50MMc0gyGA6MwepRzljPDVV
	pJXTrG+8/M+azPSeNFo49dUy7Q7g9M1KIkHj8GNFaI4t6ZNv4dLfXmyDKAk3Lc8nyw/GHat2j+IbU
	gioA8icg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWr3u-0000000FEt4-1DoE;
	Fri, 27 Nov 2026 08:12:06 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWr3r-0000000FEsB-1uJr
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 08:12:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d3uutnkaXkjZl37RLIGIRMItLofZTiysR+uBuV32WTYJ7la/7BFbFmUy6npGXCndL9VCAmz6EUsnN7toY7CtoogDk///RGBirzaN6Omv0KjVj9ertlwy+YpUUQ/SbZMxirFXfkE5pTxoaD8beJu12A0auEtFjAoI8YqJ7jItmsKBvFcwMVuCHJaQCOC1CUXu4yk6JKN5i6dW750uimwu5+rkcmpK5x41fcOtap8bqqdCWqtC0S85wWHpoZ+JkqoCU3p64y422US9Zmi6RxqJe/pA+4tAKWtmuuamgic8BiRUBeZcMMTMUfGkeEZfGYC5RDNuI6gegZJ4b2iSF8cv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUURugvu+W7a+6YaXfWkPt3l7SIs3numAL07rFeuE60=;
 b=bjmNQ9ioA3o39XT7qbbkZ/ned4hS4Gv6h5FH/LPsQi89I4zGOK1v1lERmNB+Nhd8DuTzHhQJ/ifd1s4ifNKtpx2qVOyWTet1WZcxit8Wr41N4kj7Ayjpzdp9jHgcj1FFTFLiS2r2OwhCiZfyjHasKvONLrorjwDVgDEoCKsN8YjyCm4/hd038L9+e+xtQ/9SkHUlfXEwdaj9gkfN0+ECOzLS40CJsUpEgO7mpa+IxufNa4qy9xHtpF+SyQ6vi/HAAifK0vWt83R5lAeabVyXyIMJEK10iGoXCWaqZzTd2cH2ClR4vILDTJJ+yIElcTDxay34BThxdVuQ6wSRP+WlqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fUURugvu+W7a+6YaXfWkPt3l7SIs3numAL07rFeuE60=;
 b=bVU6a8l9aIFcGOfYvr0GW4pHGQeIdDdxni2q9lLocSrIQRX+4jG+yZv1SdAN1n21tkAhlXaW+wmMohS1W3NICxX6VPurI4dW0wCUgdRb5NVh/roKdf6Xhfcy69UhFXkHtyzdrb1MJHWrAGdKV5H+xmBEziv8VQrVLS/JbDDuiwg=
Received: from PA7P264CA0237.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:372::20)
 by PA1PR06MB9429.eurprd06.prod.outlook.com (2603:10a6:102:45f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.662.7; Fri, 27 Nov
 2026 08:11:55 +0000
Received: from MAD0EPF000008C3.eurprd05.prod.outlook.com
 (2603:10a6:102:372:cafe::46) by PA7P264CA0237.outlook.office365.com
 (2603:10a6:102:372::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.662.10 via Frontend Transport; Fri,
 27 Nov 2026 08:11:55 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 193.8.40.99) smtp.mailfrom=leica-geosystems.com; dkim=none (message not
 signed) header.d=none;dmarc=pass action=none
 header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 MAD0EPF000008C3.mail.protection.outlook.com (10.167.241.199) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.688.5 via Frontend Transport; Fri, 27 Nov 2026 08:11:54 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Fri, 27 Nov 2026 09:11:54 +0100
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] watchdog: imxwd: don't claim a warm reset with fsl,ext-reset-output
Date: Fri, 27 Nov 2026 08:11:53 +0000
Message-ID: <20261127081154.3957843-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Nov 2026 08:11:54.0131 (UTC) FILETIME=[F69D7E30:01DD7E46]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MAD0EPF000008C3:EE_|PA1PR06MB9429:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 7eed3e8e-291b-40e5-fd0f-08df4c5e1947
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|23010399003|1800799024|36860700016|376014|18002099003|3023799007|56012099006|5023799004|11063799006|261022075727099003|261009223027099003|261021121427099003|261102123227099003|261021123027099003|10067099003|261026121527099003;
X-Microsoft-Antispam-Message-Info: 8r0GuAQKhaIPS6XEpZ1yYmxnSLVb/2VuQ42mGl35+ti7TbUGkVrtKodE4BCJtLhLgupvwgeRREW8RsKk/CJpyMKnYqE0RSkebwxZewMT9Kk90Va8T3k9Ojc6c7EjMlR8/aU1AJEDKXTeaGcUgWwg1GzeLnBSBygDvAI9quYsIolY8ISd0xuG4ov059p0ndNlXp5gASLpRo5y4iSGBL1dCZ2qypI8JMNJZigGe+shaujsMEnMah4/Xxm6w5+zKkphBLVWuqLylKRLA+Eg27yQtQtU1OKIfuQXLeGgVe94VpmPOgBBTSyGEygGyJQy3o7inWzW84breILOb8iwH4C5okO+cYIbBHVQgRr3mdXSrIk/iXD1kZybwMy+0Q1YAmUu8fP2i0PcvgzweoExPNM/QGlBohrbOVx/0P7BYNgiAQhbAvblnqUmU5UN1/5lAuAdQQvewokA9BudIolWNW2Nssr48iCEXDhQHIZIccmYI13xCjoS3cUCjKnZS32po9tebsyaZJDNad2wiTfZt2b+XuRfw3c8yCemD4Zn7lk9YQ2QRPzwVDHX3TjVvZj9TUZ3A9zGH54VIFvc/qnzejMzAm9MWGRR0Ct8XBoGeqiPvUqnPIbsy+WyTGzjXEit4k0oFfZQMSeR2WhU6Wk9LTtjWm6B8h+jLI3I67PkTNZXPyoXXypIAHUR14dqeEWF4vsKXheN+g87MziJk5doMcCKDA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(23010399003)(1800799024)(36860700016)(376014)(18002099003)(3023799007)(56012099006)(5023799004)(11063799006)(261022075727099003)(261009223027099003)(261021121427099003)(261102123227099003)(261021123027099003)(10067099003)(261026121527099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: O4MpMlIEmEdZrQCmZbTZLBmDGMER2vScmgePgCMmBfNFrgHrf0WjTkcf5jX5ZpW6+m2r3IMcLDg8muNRxkQDtgP/acT9NS/gutMyio6fssZvUbWjYCRqwa0OUR8izkM25DP81jFxVTdM0HUjj6yZTEK/nUWfBGiAI/+6Xz6DPcu+iHHUP5JilraqDjA6IaB8+8TZTHN+/ibk7x/XzZOvTAo2CA+m7dfSbhgOrZ3mdAHmB+2z6caEPdzaMVcneMUg3d/7Tel+t06/UEGHdE4Q1d26Sp95OiIcGNhHr/+68RornyOaDThg7d45+KJft+DB/Wwp8CVkl3crJnBaK2SfDohUVQlLA+7aOynuzjXTicVXcF2arTeuIjZEftdMlfEogH6HKdLx/gIUGdq6Q0CcVB+crxOg3Q3LQud1DxehMRGbU655IMbuRFt7tHL0IenG
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2026 08:11:54.4072
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eed3e8e-291b-40e5-fd0f-08df4c5e1947
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: MAD0EPF000008C3.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9429
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_001203_533082_017D441C 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With fsl,ext-reset-output, imxwd resets the SoC by asserting
    WDOG_B instead of the internal reset. The external reset circuit, usually
    the PMIC, then takes the SoC through a power-on reset, which clea [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: leica-geosystems.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c20f:0:0:0:7 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Stat-Signature: kkesgpbncnmcapcya4btrboa3ucbtjer
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c20f::7:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3479B205A87

With fsl,ext-reset-output, imxwd resets the SoC by asserting WDOG_B
instead of the internal reset. The external reset circuit, usually the
PMIC, then takes the SoC through a power-on reset, which clears the SRC
general purpose registers the BootROM evaluates on a warm reset. A
reboot mode set beforehand, such as serial download, is lost, yet
imxwd is listed as warm restart capable and picked by reset -w.

Register imxwd as warm restart capable only when it uses the internal
reset.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/watchdog/imxwd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index e74638f941..6e537e6c7a 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -225,7 +225,8 @@ static int imx21_wd_init_no_warm_reset(struct imx_wd *priv)
 
 static int imx21_wd_init(struct imx_wd *priv)
 {
-	priv->restart.flags = RESTART_WARM;
+	if (!priv->ext_reset)
+		priv->restart.flags = RESTART_WARM;
 	return imx21_wd_init_no_warm_reset(priv);
 }
 
-- 
2.43.0



