Delivery-date: Sun, 04 Oct 2026 03:21:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAvB-009UO7-1w
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:21:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1C501202303
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:21:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Qz4rDjr1;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=lnCbrtFL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791076905; a=rsa-sha256;
	cv=pass;
	b=Pkr8kECY1p6Jw0SHi8u/jUK8fAJWQ9AsG4MEVo+RpjjUPyS+GYrOYV/2WPKdrZtxhwng1x
	kXr6RmSkunVd1DbSU9w75BRftrBiN072SFBeJF4b+fLyVx3qxjwfiXur+Bu80Gm+9Pb3oV
	dk4Z9FFXTxvsIMBe3qfPz3wAFff6wcWNtRGlmA0raRT05vA47YNrhXxc53jwdruhknNUqg
	/mztkKtOca3xSp60F7WcIs5z7ICKpKYDaLhTWmCXQorkNvUEZD+svG4G9OaJISRVJv8nzE
	+egu36Osod7LjHrQ8EwrRHOcX+wLYTFISCRgwSUl1uoGRsp/FNlw8qgfVSI9Hw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Qz4rDjr1;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=lnCbrtFL;
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
	bh=s2tTYZ8QfuR9OybCukEA0OGJ8YlIRE8/nS6tFJt222U=;
	b=RmTlWZln8zdCZh18sVEVgHMwpBzujQgVdwY3Ns6OUkLa73Z3enjYK19sFe0xlkPn5pcsxt
	zGueOQYU9mSR/ildNzuRqOxc/NRPxyTRlUhLw9Dwz+WoxUarLx7kJDuWCEiBp3fIBJxHc/
	cQY5OcxVmsyIrM8OTEKoBZvJeczEzV9KbnPkChW0SivL5ueVvKUzS+5UxIB05kGvUToF36
	BV5YMt/zgofIivcM51g/qQjFZdsHByrSjfsHX5MU9yRbTkP4pIJnYpgElf4ybZzPbhw3jI
	VvcMKDIiE11QInPTaEV/oUl4KPXMBUOBKiP1KGewKOKHuyrRQSeOL7JicrlT+A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s2tTYZ8QfuR9OybCukEA0OGJ8YlIRE8/nS6tFJt222U=; b=Qz4rDjr1ZfO/5xiijMFDs3mdpB
	HN3mVNPWHA7vWv9td9Om2ll7SlmEuCUujIT5PBM6fuTRPfAs90WLi1YB+wtQgS5Btm+C3tXpzTxdr
	x1VTBhv9Uz7l0PnmEA7K74SWR5wx+o1GDF/3NzRQ8EUMYSfNZoQmF0oy5bLviHfqGvOFtrU36tmnq
	SACQj2ymzlJG93JLT+GDIda0fGBx/YdIfeI9gTa88dbozK4fFuBpTgKq9ROVOnfC0+6kLEag0Bu0M
	BA1XHvfpXVR/wA6/YcSu2iBpljW/1xWWGHGezrjRV7R3jjrP/PefnfiDPC+v2HjLIfRWwEA01Olhl
	PpwypUEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtj-0000000EDzF-05dJ;
	Sun, 04 Oct 2026 01:20:15 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtd-0000000EDsJ-12IE
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H9TGoACXrIxTuuRRl/C1Z3iW1/1xjaxCblvvdkpenmfKYFc424+3pSPxhsrKxQuTO/wHp4CdCLHLdJy4CjnKDwrMmXG2O97lAsTZaqXQNurYFFCv8v3asXTj+rshY13u78NR6OKP1eSqV64EXsgPZq359IyJcp+uvj7moctMcI1S5vr/11Oq3YGrwaY5OPRXgymnqYJBiFj4x8J+9uDlW13dmNWR1K6mv+vJcnK8uRY8agOHTg290A2a5GIXxJPWtnkpDsSkXgzjL782rnpVWQvYnaaULHr+i0QiV4MF09WIce3AXh+2WJcRn+Jv2RBIJ6kbsGO+VDT/vMrDQ0k6/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s2tTYZ8QfuR9OybCukEA0OGJ8YlIRE8/nS6tFJt222U=;
 b=WPRbt2YVDNWfHa275cgi6CnrAvmYbLXzqmFcIvfrwoAxAT4RHGDZymKFu7nCBMuHFf+NctWSdSwFaJBll646eXGdQnFaLEz8oSD8q+Mnomawt0xaDgX+l2o1FEFaTwkq55l1mjKSs6STEhW3co4vfqHZSpOocRHYVxo9lanRVKBVU5O/JBZh6+7ZEAf4z+srjRwEfnLqpqUYPEFhSM0G/CsyTgoIQg+huy5KWGnnY+at3l+F9kVcANNYNYul1jxQs/cgTme5mfP7fTVkqF0tLSxqlg/dgp5bXnmqg453udfQWvjblIDrj6mx3mNOmMHV20MHsFXYAszQqQcfpW4AOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2tTYZ8QfuR9OybCukEA0OGJ8YlIRE8/nS6tFJt222U=;
 b=lnCbrtFLRzmjinbVWEk9uLS8gMEU/d/ElEJNnBelvfreOy5khIV0w/Pfx6SUeSnoHa8KdbNqyELNmn0x/WNRo1GrmzXPEqww7yZQET43mdt08tWw614Ly6CJuViNZ98aWYpCPZIlqrZHcYgRqXbeMX616Fwtp5XyZZXsD78nUn8=
Received: from PAZP264CA0160.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::22)
 by PA1PR06MB9210.eurprd06.prod.outlook.com (2603:10a6:102:456::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:03 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::97) by PAZP264CA0160.outlook.office365.com
 (2603:10a6:102:1f9::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:03 +0000
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
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:03 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:20:00 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 07/14] efi: loader: bootm: pass the kernel command line to UKIs
Date: Sun,  4 Oct 2026 01:19:40 +0000
Message-ID: <20261004011958.3255011-8-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0164 (UTC) FILETIME=[79A2E640:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA1PR06MB9210:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a8b2ba9e-b91e-4094-b1bd-08df21b59df4
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|82310400026|1800799024|376014|22082099003|18002099003|10067099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: qn6oi1KJO2/5whO0qVV5VKD7Ofz3A9myCwi+B4m4aG4AAj5/CgTQY7ZFcO3rmzyHgF6/UFF8VbxUjPhbRfjnyPYODsss+Cut8uONfxUQaXHjPclO1WTWC1zwvH7onli2omNPrlVWWxEInInLtsQTMm7kXPYASi4jtny5mh36Xv6uij99WRlm/gYXiPNnwDgQu5MjQ2P6XgrW68QQKFf76dOA33kMtL/onh4emEX7DLB77DGX6DgDzWvPI75mqH7C9hVL40ytaYP9cFfDH9kkHSQJhDLo0pIAWTIzgOjVlF+lyOvnT0TjEr8llf5G6o/NBcEIWh6uZjoJRQtHU/n3HzELGBn+uLd6wrBDfWnS1jAA/GJe766BkVYY5QVVFsMO0H/s7f886GwyzLVcqRGQNUVhaP5+rzMD50GtxXfzzybZzDJsGCM7C+9bs/xANsfonYE7jz7fI7NyMPi4f8MFtT/SxYVdvQOiOX/G4sdbO8HYAOvkW33w8FZqEfUXpKHvZfsPQQb3vKdxqQeDWToYtp/W3yah1+rVtz1Mu7NiptHB/pOT+YxJ2Sy8XAE21UlJxaHL02oEdXKA1kTbZHgQctwY4p0GdmHBfD0dr0iB+m+9ZnSc8WMijDleF5WV5p8x7fNyyBklW7Q6S/InVFzmpE8dVsCqT7yF3pjsf7iuVW7nUVg+5fKfp/i4XYx8jD6g17ZaQkC+VfLtEe/zU48z0Q==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(82310400026)(1800799024)(376014)(22082099003)(18002099003)(10067099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: N40JSNsj27m7yjxz0HxlOl93GvGypIBZWerfJEhN/qHHMkQxjYUvtMmNtmqLIPBVoVkLoQPQdqa3xg3hbqtUJmCO7zqug6pcWo+jx2Ud+5v1fdsy77APbK54FH2XqswhSF8GwKl4bXfSeyFoa9aTQ6i0PHgy9eRsyxXKn3N3dP5GfEE7nmczb8az5ATQni9w/Q8fatUfjmf7V9XJEsmZmeX3Pr6AAxfadVIGTIBQaBjfxtayjVVDfjIiwTrMlmlyuJRfeK3CZ3STKnNt8I6gkUMXa03ZxFbsfGuZ4NlGbJb5TQ6VfhyaNLeXmBQ9louZ0Kp2zNV01/c6Yxvh0hRJ83iIMfsP5tNIm58uBVPcYXELF+7g7h8+rbDU+hUM8JuU58f7mWL9zQFF+V2dpI0uAAOCLsLLshgOewzhvV85vn7Y5nKoty82wIrQUVQzE5DJ
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:03.2678
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b2ba9e-b91e-4094-b1bd-08df21b59df4
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182009_305154_FCF3CA36 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Only Linux EFI images get the barebox kernel command line
   as load options. A UKI is a plain EFI application, so root=, bootchooser.active=
    and the other bootargs never reach its kernel. Pass them to e [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c201:0:0:0:3 listed in]
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c201::3:received];
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
X-Rspamd-Queue-Id: 1C501202303
X-Stat-Signature: c5iagxy3c1kxj9xg3wkcgj5qcdb4qwn4

Only Linux EFI images get the barebox kernel command line as load
options. A UKI is a plain EFI application, so root=, bootchooser.active=
and the other bootargs never reach its kernel. Pass them to every image
with a .linux section too: systemd-stub uses the load options as kernel
command line unless UEFI Secure Boot is enabled, which barebox never
reports.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/bootm.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 18539565fd..8a83865458 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -252,7 +252,7 @@ static int efi_loader_bootm(struct image_data *data)
 	int ret = 0;
 	void *fdt;
 	int flags = 0;
-	size_t size;
+	size_t size, section_size;
 
 	memory_bank_first_find_space(&start, &end);
 
@@ -266,7 +266,10 @@ static int efi_loader_bootm(struct image_data *data)
 		return -EINVAL;
 	}
 
-	if (filetype_is_linux_efi_image(data->kernel_type)) {
+	/* systemd-stub passes the load options on as kernel command line */
+	if (filetype_is_linux_efi_image(data->kernel_type) ||
+	    efi_pe_find_section((void *)os_res->start, size, ".linux",
+				&section_size)) {
 		const char *options;
 
 		options = linux_bootargs_get();
-- 
2.43.0



