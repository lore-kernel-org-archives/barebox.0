Delivery-date: Sun, 04 Oct 2026 03:21:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAv5-009UNA-1B
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:21:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A8921201EAF
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:21:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zvnXuSR4;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Dp+OcqMH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791076899; a=rsa-sha256;
	cv=pass;
	b=Pq+mDNxIJtCsdn/QT9O+NuLYHtwG8luG/HTmcmnG9oIbDDuuOf9mAMCxF2AIXiercawBAF
	BFGOw4Nk3L2w4VypLkUi9AQ3B0NCU6S9E2eu/skb10vZdFfUW82E3JXozazZyoJP7OTQS+
	hsXA3W4AyvcuPgR6wf7SSgm01VFgOGz0TYecCtPl+6TCIhRLoeUIl3BCxqi1ofQInshh+3
	skPsEXsnFqdKSOF+JP/wB4QnVxu54fLoYljFeeOHimQ4bKbf4MWx7y9fjhNKFsToJj/VxM
	ZyFSkhj8iWmdHY5ppDjhtvq++WZgMMDngIoGC11dmS6adg/bkciquDOwnr0s5Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zvnXuSR4;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=Dp+OcqMH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791076899;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NBJniLW4aFAWlOp0ZomR2+2PHAxw+LFPcHDCDTL9sl8=;
	b=JTqzEk1fWcZrFGxMyQaluglZojvx+hfHT0tlyMepyKmCVgvMBoaSSC6Gy/x7ki77zgoTLu
	l4qEK9qE6nn5o3C0yHoJLMWKcYsczvp6jhACDTRgpYMQOpmBB6I3E/CzExSQ82V1gBrWSu
	1CXySMFrxsT96EQd+MzrETMr2mkvjXGJYjwoA+b8iN/vj8k+/LUCMwlKdJ6pGTxIBKm5rc
	bokDkSqBOOBljGr7QRezot/Xu9G4mtAOVnIk7JidEcxE1JVLzgvsVtLY3MMch91JqicAOG
	/GFbPNSw7zQkTu9xXR4SV3wZt+tZjNVDb1F51Ra0u5e+imLtMxZCsRTe+f9CyA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NBJniLW4aFAWlOp0ZomR2+2PHAxw+LFPcHDCDTL9sl8=; b=zvnXuSR4x51iSCC7SnWedps+z1
	1+WNFLPIcY3w9ZlFfAe5Leo3e9PLT9J1zCQJOomEeJo9D1bFRZzD/iqGeVHNlAXg/75rzq5nbC6N2
	s+K98UAfL0Ro3Yfzo5tiKnwtTvbycs05XRAP8u4NjNIn7xFill+cLReOdDJqnmnGuNzPvzYNfxROo
	gVhpCqEFqOeBCgHyg8UPHac5BtnNpYAJkxHNAmAXRlW5wkWSTcZptJj+56I5JES3yIaQ1wqgUlm6l
	VXc63aVI0533fEeVskwoWXqdVFV+cVq1+4cTMpqQsUANU+ZnTGHLQH1imG3lKTbTyrZ9KPY3Np7TF
	vOe3Zdsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtg-0000000EDx1-2akm;
	Sun, 04 Oct 2026 01:20:12 +0000
Received: from mail-westeuropeazon11011042.outbound.protection.outlook.com ([52.101.70.42] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtc-0000000EDsH-1ibr
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DhUMYwxcVmRnxewbqsmqG9bLi5qKD2mVJ4+Eq5TtLCCh2D+4QcpwTiS7mGcGf8zGZpKelY2kDXdzyXZuuftp8+YW3eQC3zdilb+SUJ15Vn+qphquaHiPKG7vAb+M0R6iokJQiGhF6UlaJRmIIf9jp9pOyBwcEGob3ZKimX9KR5U1sWIZo5Kt8uNCbg4S/ysvo1brfUSvjelodT2v27d7Pd49gu/5qwvDdlX8QXOxeR9trsfDxr0s/0yxXcN0tKVRG0FoTV2xrUuc5c80vM8dgx43WFTHJlERc3Wu1m42E93xv96b3YOOtF8xMuNKeSS4LrE1BOe7RvE1xfFrIiN2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NBJniLW4aFAWlOp0ZomR2+2PHAxw+LFPcHDCDTL9sl8=;
 b=SLxpzf/KBNPsFtxvRWlZU2yHE05HaFiaqwBVycYQnYwSOa1AqUjzQEmBSrOAwbJgZm4bGWJFtzIKc/Ilac4bSq/Oncvc9xW86IITiR4u9wtDDfOWVWWB9bwzLWL8vgLNd//nITiJxgstgjGhOenHasOWySrkEDJjJCSVyXNJdENQm+/i8ZZmm4HmUM/iGsqgfE2L4f7UA8rUyY/Xl/hpc4bqR0hflU4YUp2L526l9CI9CDE6H4tGbUuivIMecNl1ZAado0rBYpDwPV/zPMl9OxfbLHaJonoMVvLg8d7eC6ovnvJF3Ntdy3ZGrtR01oZJqnTsuMCILojQP96oTGkJeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NBJniLW4aFAWlOp0ZomR2+2PHAxw+LFPcHDCDTL9sl8=;
 b=Dp+OcqMHsLNVwj6UxNLundg0MaraiwamFT+ofXNLZ/Y+9fG/fthOlAMxB4HqsfT+h/UAsOJK+HWvD853dvIPqKqTmqymvbMwdvtQO/Qc8HNUf+WgnnqWL0tXGzn2oQJcP/K0lmwHzjq/TYo+7k0cGIZXca6o2U6L6mDAz7FYZ8c=
Received: from PAZP264CA0145.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::14)
 by PAXPR06MB7693.eurprd06.prod.outlook.com (2603:10a6:102:12f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.18; Sun, 4 Oct
 2026 01:20:01 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::2) by PAZP264CA0145.outlook.office365.com
 (2603:10a6:102:1f9::14) with Microsoft SMTP Server (version=TLS1_3,
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
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:00 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:19:59 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 01/14] mfd: hgs-efi: do not claim the name of the EFI loader's device
Date: Sun,  4 Oct 2026 01:19:34 +0000
Message-ID: <20261004011958.3255011-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:19:59.0992 (UTC) FILETIME=[7988A780:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PAXPR06MB7693:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 717f8bf6-fc94-4200-0aa6-08df21b59c9a
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|23010399003|1800799024|376014|22082099003|18002099003|10067099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: jHsxz17/S6Qb+6RjA/sXZ4Ue79cUMMl+0WfpRT/AAKiR9VyD0+mOwxwECel0BEYgN5wg/wvkEtE0oD+h1RblSV5h5hDa/kbkQo12WKdosh7S2T+3oCydg6zcYFK7UKG7l38t7EOhh3nJM53lcvZvxH9YxgdeYwVtEVqxH2cPgQgC1oWNDTKCAhY5uAk790PFwjXCKJkj+Z1ZoM1cm0gHmj3EZznkz6h1NzvifbclSxhckbrriz7BUD/IEljecrCjlQYwPG4sJZ0gU9bn/z+sOuig5eObylPIfCAhG2Y3IoBJNq9Nt91hAaiW+WL/KLTFHbpW+KXbGaxZVG63RB9veDcpsltqWjnlivRUJi1YyJ0H7x/L6Yh+Wq6bVprY7eA8bYosp1Ykkbq75w562hhn05DhyBxS4LGM/3poQFvyv8kUXNfHoDVxj7MOfIFCm85SndXlkoqY8qlIydaYJ1LwSO4t+M4qcqGb6iTFes529CXt7N2F5jAGArL53SOJ64jWuimd/5xRQ/GtlGPze5V35KAYCKD37nwa2KOdwNsUVqQHuYWA1UNw3GgAM9wKtPHnvwjPy9pjxTzBvqVwp96ROJuV++MGZExB152PCpp5oJZnm0tlhS3dIY/4uY2xNBziG6OwD4PEGanzvT1Kg/AoD0s16J/y1U5hpItqix79dwM8WV2iBM9gCJ6uugXkazjJWmgbAGSb06t3KBaYaBIcLg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(23010399003)(1800799024)(376014)(22082099003)(18002099003)(10067099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Bb+zIpJXKK7cMs79BIgiNUvMScSvPsBVzZEAjn7GR6a2BgDKcIB0vs0DPc9lhHSEfjxOJCOA7lNp5EYvI82rWoZXMy/0jDPcDJ6D7algWtoDxzzSN4Fm+HJe1Lq8HXMq/BUdxH5AX+zBr+beAF5wlqil40Pix8rbVo53Avx9xCL1VQo6aCe3DKRFRqwQNYBGmD3ftOfl+bXCK5enFVGxGpRgOX/wKqmQt2gSQdCpOtQl5wMSJE5/JEIUzftN07Xv3Mt2hv3vpt6yfzKIb8vMNrCgkaC+eTg9msyu3Ln7FJQUfGrLO39qi7nwtXhmrfAbJuzSOAUPbt3rRaQ50WOdZbKdCtJXdbImE871MgYJZfsElbk0VrH7sTBE+ACjaEQ2eC1eTScW2vCGD/mLcfTWcCoHl11tFHsNinDc5upIrtT+Q4647cptclrecUaZtbZI
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:00.9956
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 717f8bf6-fc94-4200-0aa6-08df21b59c9a
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB7693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182008_449393_39AE81E2 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The coprocessor device registers as "efi", the name the EFI
    loader gives its own device. With CONFIG_EFI_LOADER on a GS05, whichever
   registers second fails, and the EFI loader then panics during late [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.70.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.70.42 listed in wl.mailspike.net]
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
	RCVD_IN_DNSWL_NONE(0.00)[52.101.70.42:received];
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
X-Rspamd-Queue-Id: A8921201EAF
X-Stat-Signature: 6ur1cocdnpi1ekhahbejtx4gyzzdt3q1

The coprocessor device registers as "efi", the name the EFI loader gives
its own device. With CONFIG_EFI_LOADER on a GS05, whichever registers
second fails, and the EFI loader then panics during late init:

  register_device: already registered efi
  initcall efi_init_params+0x0/0x7c failed: Invalid argument
  PANIC: unable to handle paging request at address 0xffffffffffffffe0

Name the device "hgs-efi", after its driver, and look it up by that
name in the GS05 board code and in hgs_notify_pp4() to sidestep this
naming conflict.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/boards/hgs-gs05/board.c | 2 +-
 common/boards/hgs/common.c       | 2 +-
 drivers/mfd/hgs-efi.c            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/hgs-gs05/board.c b/arch/arm/boards/hgs-gs05/board.c
index 40dbecae08..f24a764e6c 100644
--- a/arch/arm/boards/hgs-gs05/board.c
+++ b/arch/arm/boards/hgs-gs05/board.c
@@ -123,7 +123,7 @@ hgs_gs05_set_efi_poll_intervall(struct device *efid, u64 new_polling_interval)
 static struct hgs_machine *hgs_gs05_get_board(struct device *dev)
 {
 	u8 buf[HGS_GS05_SERIAL_NUMBER_CHARS] = { };
-	struct device *efi_dev = get_device_by_name("efi");
+	struct device *efi_dev = get_device_by_name("hgs-efi");
 	struct hgs_efi *efi = dev_get_priv(efi_dev->parent);
 	struct hgs_sep_cmd cmd = {
 		.type = HGS_SEP_MSG_TYPE_COMMAND,
diff --git a/common/boards/hgs/common.c b/common/boards/hgs/common.c
index c4a31a2797..0f95bf7bd7 100644
--- a/common/boards/hgs/common.c
+++ b/common/boards/hgs/common.c
@@ -582,7 +582,7 @@ static int hgs_notify_pp4(void)
 	struct device *efi;
 	int ret;
 
-	efi = get_device_by_name("efi");
+	efi = get_device_by_name("hgs-efi");
 	ret = dev_set_param(efi, "cpu_rdy", "1");
 	if (ret)
 		return ret;
diff --git a/drivers/mfd/hgs-efi.c b/drivers/mfd/hgs-efi.c
index 51c0b7ffc9..eb7c267753 100644
--- a/drivers/mfd/hgs-efi.c
+++ b/drivers/mfd/hgs-efi.c
@@ -414,7 +414,7 @@ static int hgs_efi_register_dev(struct hgs_efi *efi)
 	int ret;
 
 	dev->parent = efi->serdev->dev;
-	dev_set_name(dev, "efi");
+	dev_set_name(dev, "hgs-efi");
 	dev->id = DEVICE_ID_SINGLE;
 
 	ret = register_device(dev);
-- 
2.43.0



