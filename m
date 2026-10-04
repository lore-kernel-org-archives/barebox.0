Delivery-date: Sun, 04 Oct 2026 03:25:18 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyc-009US6-0F
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7CD6F2021F9
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=P29t2Np5;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Q1AkukfK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077117; a=rsa-sha256;
	cv=pass;
	b=W/D1aPJDoHGlAcAQ4AWk6D5TUyhoU/fyj54IwD3pnCQ2ijuChfwf9Z8FfEwDO9oztzk6ny
	cPH+hAPLrU6KVBYIWUPsgdrECth6g6jEleMXio/4GpRclTAKhM0UThD4P2kXTJolcOWUms
	0DGXwCDlM5RX9qdIyjOagDXD7FrgN3ztE/bAeKBurkqztRaacxUGtFaS+C4n4MVPYRSSkI
	p1XYbxhbygqak/FR+W9ECJ8xjXbHjlSZSrwcsxXZZqM/xHATv/s+vVlS6knUPzGmB7WRib
	xhEEwA6iuX4GzugeXDDA1SV9uH38XFj2dFOZwlIJYutKq4VLJxIel7nNQmT8qw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=P29t2Np5;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Q1AkukfK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791077117;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=XPxNo9YDXQ/fWEB3a1i0l37OfYZeNBt8Da4iH83ML+U=;
	b=SKJy+KmHshpX5QGMjxgsQGK1UqcRZmr5OxquguK0AT96C61E0xrnlFuf+xwgbjAKG1pL3C
	BPnu6EysZ6bli+6Mz0j2eWcLL9GiyXKlMdgAEGGcxqQRrxkhjQ2hocIFoyLKn1W7907ZUg
	+hPACjzwvCIDMqR5D6b0UVySEAbAuKN1Jn9RdVeFj8otvFEg9rZxViJKZ5C2lkc7LD7m5y
	mr8vgQ/hXeo9065yY2Av6Xi3FSSkjCz/u5u3FJKlTXpD3m/NScwBX+I0mPr5f6Pxpiwfe/
	3F0/+5Yasek5NipHAIeGGdwvCK+4kgNk/lFEmCXG7F2+WlTsDtlklMwLJzhRRQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XPxNo9YDXQ/fWEB3a1i0l37OfYZeNBt8Da4iH83ML+U=; b=P29t2Np5JfBhts6kOkxZtXzkFH
	VHN6o5sNCN0cRZPDfSy1DTZXYBBPWVSJpZsGF3OIgk9usOZssb/KkfO2VYPcuTfwfutVs3Uh/lzjc
	sVrdkjn0M6H1xlYScRW6pkK7MSQ31JW6SiNeEo62XvFLSeQgggejkFbzVM6KqBjJa+814DwpjMW9h
	BA3A7s25aoPO+a8VPfesnYgPPKfOgnTGvBVwAuwHKpn7K8GlCMURqGhbISJc52/WXcG8BQC8zSwHZ
	ppFF7yEEtHEOxXhU0F1F9wI3tVUsPLPxBCTQNWzzW8iVCSmGXfZ3X3MZ+CQP3h1hOjisOGsL3Zq8k
	DgpgnOzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtg-0000000EDxJ-3f53;
	Sun, 04 Oct 2026 01:20:12 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtc-0000000EDsI-3XsQ
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwU3YojOtfKaoV2YvN5GhUCBa5T3rBtGA2CUW2TKjT/EEDM1TeTSSy4NrQW1Z6I1+BdfEoZsGem/pqTs4JnQ8xh/uDCyg3p1vEsFOyUzO2GExr4amc9dRBXhAFgJWHSIggWLEV4OXnqFDGdY0/l1eheM+x9NG7aZKWtrA0F+GFwp3yysqH3Em2u8uScGa5EllzmetPkj6e6fg9xjfN88c9+absvXWYHMVH7kPgyLnaaUuM+hqi9JR52Ganu9K7fg4+UzEs9p6gNoFbm1vj7LTU3dt07dkFFQck9kWromZSEnCVbI+8d3yPc18bJqYlRF6WmxeyqqnooJ7LQSXW48dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPxNo9YDXQ/fWEB3a1i0l37OfYZeNBt8Da4iH83ML+U=;
 b=S9Hr4FwLGdv4mfn/n8Z1Ir6ZICeDK8YPq9Y0YVuUnUViuwSFwJI+5rw2bocpoaYJ4gMtlSNCRZkmdLoY1WH6zJY8rJbH1UQJFGBo0pg9xwGdcFjzCiyjyPBnZ9EQfxqjTHqLi3Ldb6U4gdlAwTg3DWA6gYZwqHRnJve7aOex6dB4jIuK0w7ZceXXG1CWGYfku4OZAUj46FGpHei8Psp3YqoO3r60O3l/JGM1L6e9VBZDc1Tom9hVrbDfG6ge6vrnxs7TkkC9yMO4mrVDH/Bv4Vi2k6K4rbbYJVhjccnyHHOZW2KcNWH0Og94d4oVSyGeXcZ+c1TBvVHUMPA4FBg7oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPxNo9YDXQ/fWEB3a1i0l37OfYZeNBt8Da4iH83ML+U=;
 b=Q1AkukfKZJzOjIGsFHUOPuw5HnAHyiXOUbx+oKbc6n6a2NEOgQn/2BPHTtVIde8NEUe+Qu0PO5yu5bPf4obdhgc1unH/YfSdI3/vXdwDdnGDY4VG26SKLXi+3cdldJZIatiRnpn+DlJggNDcw0N4xZMJaEnRTB9KJO70wKLmJuI=
Received: from PAZP264CA0146.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::6)
 by DU2PR06MB8261.eurprd06.prod.outlook.com (2603:10a6:10:2d0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.16; Sun, 4 Oct
 2026 01:20:01 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::3) by PAZP264CA0146.outlook.office365.com
 (2603:10a6:102:1f9::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:01 +0000
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
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:01 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:20:00 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 02/14] efi: loader: file: report EFI_UNSUPPORTED for volumes without a filesystem
Date: Sun,  4 Oct 2026 01:19:35 +0000
Message-ID: <20261004011958.3255011-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0008 (UTC) FILETIME=[798B1880:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|DU2PR06MB8261:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 29a5a3f0-e175-4131-b9e7-08df21b59ccc
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|36860700016|23010399003|1800799024|10067099003|56012099006|11063799006|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: V3uECRgIZngBa6jRXZY20XYY/mfmsBBqQdeLsYN4S/XS59j75Tn5vj4rT8+OdhMIQXzSi+lxf6txLrcjLMhA2rEPAPIffGR3laBFGNGPC1PRhAfQIyVfIy+zB61BQ2yDEH8kX1i6lRhkXH2P9Ab1/IYpXEfJpQ3i3fzu2D/5NRnRds7HsecsGBiuJbg6qKIpNh7KJDjB5iRgLkI7lweP6IuNKrT498Ywc0ehR1JKnPUPv58Py4vWCB4IQ2WHFMYZFxlJBceIKAJguqfaIMfao3PGCsYCFIWUH5Eus7ftULw5s7LrqbtX3JMbccGZAnJqn8gqy0miE+dGveQFzsd5xOm17yfBt+WEHFL3QmrpSif1aw54IElt5Lai6+hr+XEVbpjU3Xd2ND040eYawpdzKyGVBMvfGL3AydlJfPfQXFGNWEtOcqYBDe4M8Eq4P2f2ILFZzmYnrFpVeV2HVMSTv32OX/9yR0WMzuVSANoicL6/lJRqzUhCaazr/PcMjwyJoz2MXHzB+8Kt6KBsYNgJUUU5QbgRqMSKFJPQaamOzw3Jrc7kozrhU580KTCwGKXoaUbKzTy2ZtwVhI9YK6lwzR0PqzwRXKTJ9y0WWvMXuLaU3dAb4oxvmyFVaFkpsj99RoCs33ajskvIjxK7KRvc9pbX2aWN8E70eQhForqzXdaY/9+mfBFz7oPKhIfITqvfzeljkdvKiDQFq/Kn5P1sHA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(23010399003)(1800799024)(10067099003)(56012099006)(11063799006)(3023799007)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: D7ZNKFpSAEnniJ5sASyyz3hkzq8AvJBGN0NgEcoW8R+288NMhNNnoxdKwb2bksLZ8S/il2X6pmFNOvfOkyvbQAzuf+BMSim4RCMOxOF6NFXM+btGIa7akJTZBQiwF6U0okrW5dGHZ10SuFRx6M3CfUpCiyo70ZnRPIr/NVOM4F+buis5wj4Rqu7oZBBS3gYB23Orj9qHe2LfW7xn2u1qzFDmcwn+bh2tzcqfg/5vYWVIMCSW30nCDFJ74ik7QkNTuWF/7WrT4mJubGipQosqezjkW0Lx5/lnOeobkvuYljs64fD3L/a9XHRvT5NUL3TpMmW0Ax1wU0llZJv60RAweQnPnFt/w7W05P3Yl/5DTKWjpop1UHYfK9puluGlkWxb7o777080W6Qlb7REUpXixzJRh3N8L+s3/JzZGpnGEwh+KORWVQI0wCHnHW1cAtZr
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:01.3283
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 29a5a3f0-e175-4131-b9e7-08df21b59ccc
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR06MB8261
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182008_886303_8A2237A5 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  OpenVolume() on a partition without a filesystem, such as
   a raw slot a kernel or UKI is booted from, fails in cdev_mount() and returns
    EFI_DEVICE_ERROR. The UEFI specification prescribes EFI_UNSUPPORT [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c200:0:0:0:5 listed in]
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::5:received];
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
X-Rspamd-Queue-Id: 7CD6F2021F9
X-Stat-Signature: qupimyp76q1sd853qjq1o5xwa677z5gb

OpenVolume() on a partition without a filesystem, such as a raw slot a
kernel or UKI is booted from, fails in cdev_mount() and returns
EFI_DEVICE_ERROR. The UEFI specification prescribes EFI_UNSUPPORTED for
that, and callers rely on it: systemd-stub skips EFI_UNSUPPORTED quietly
but logs any other error, and its log_wait() then stalls boot by up to
10 s:

  stub.c:587@load_addons: Unable to open root directory: Device error
  cpio.c:340@pack_cpio: Unable to open root directory: Device error  (x6)

Return EFI_UNSUPPORTED when no filesystem driver recognizes the device.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/protocols/file.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/efi/loader/protocols/file.c b/efi/loader/protocols/file.c
index ea7b0df82e..bfcf14f0e0 100644
--- a/efi/loader/protocols/file.c
+++ b/efi/loader/protocols/file.c
@@ -30,6 +30,8 @@
 #include <malloc.h>
 #include <dirent.h>
 #include <fs.h>
+#include <linux/sprintf.h>
+#include <xfuncs.h>
 
 #define MAX_UTF8_PER_UTF16 3
 
@@ -1012,6 +1014,16 @@ efi_open_volume(struct efi_simple_file_system_protocol *this,
 
 	EFI_ENTRY("%p, %p", this, root);
 
+	/* No filesystem on the volume is EFI_UNSUPPORTED, not a device error */
+	if (!cdev_get_mount_path(fs->cdev)) {
+		char *devpath = basprintf("/dev/%s", cdev_name(fs->cdev));
+		bool has_fs = fs_detect(devpath, "");
+
+		free(devpath);
+		if (!has_fs)
+			return EFI_EXIT(EFI_UNSUPPORTED);
+	}
+
 	path = cdev_mount(fs->cdev);
 	if (IS_ERR(path))
 		return EFI_EXIT(EFI_DEVICE_ERROR);
-- 
2.43.0



