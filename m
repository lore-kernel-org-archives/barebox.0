Delivery-date: Sun, 04 Oct 2026 03:25:25 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyi-009UUC-34
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7025E201EAF
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pDAHPTaB;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=doTZYbol;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077124; a=rsa-sha256;
	cv=pass;
	b=Ye8EEW0U3oYynt32NaIs73E0rPsbtGkRKXWJz13i+CGmkKMzRcLdiajYMhRiK1qOMg6+u7
	1HQIfcWAuwIYavFotQoSrxCRbEFlxCZ2u0qqrGxMlDws5LtGUlX/mXFEXl3M76WHURigVV
	dk0FZAbxJhgp+MEIeZ8p2xmFu0ATHc+7T3OD7bnt+fJit2FkPkKsO0BrYFzRuFd0vJi5qH
	3rDbCtyJe5f5zNKWGJ50hUDhFwVrn0NbyI1ybut+8K08FeiQeBo/OnMeJktjUVYkfvTC9e
	M7YKswjiRoyDYHyXs5NBmxzOF3I+tjuu1uDs23Juy8hTvjT09cLU0v/TYu3Bwg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pDAHPTaB;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=doTZYbol;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791077124;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=AI3b3u6OeJtyi0/mCWaQh4zmhQGXoIIhq07lFevdxzg=;
	b=CYyyTE94C/BXlY8daOwgsHJ1lX22Jn00p9BZnmmInXvQtk4BHxkHvTiEV5BDLNm42F8xR+
	vHxFF4wjSsdPzlUU4EUgZhgv+0kzu8Z6JzW71RIcBRQd9NtAHT+dEHrKNpoR5xwRqM1ic+
	eD49Sf9J9gewy/OdHhNDFK8iX+bZDKjw/r9wdBB9xH0Q7eMd48y0gSfdjvC0taZM7XEkFb
	iM1gdn9gpU4b8ykGNxDj1iywEXWhEIWzrnYxdLsbocFHMNmNXo2FW9Wq5SbgZ/D/QCucG8
	cYQwBYDwY+pI6IfA1g92omkXHz26CcrGGagZuzX3xXyD/S6M9j9vGxR6t03abA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AI3b3u6OeJtyi0/mCWaQh4zmhQGXoIIhq07lFevdxzg=; b=pDAHPTaBghCNI8U2QQh6/sPWLz
	+utU1WDemB7pfJ2yABU2HaoG6XwCcTmVNy0embBkIlt32DE3D8RAJrmGMgXKWohmWy65YHW1ZLgLs
	i+zGoiuKa+QkH1o/0uranKKPSbOGNbLhnB6tBzLoyTBYbKQQTISgu0j8E7SOIgeQiYIRdu4tpc3Td
	cqldcS4IC8Qm0gqBjqQ/jY3BSkPnJCJNW60EdObSEBXAnDxRrOJ4kw7Uf3+x5YR635N84fTeQKuSe
	CCM9L+MgaKAzvskI9+GlJyNAZmA/YZ5a7YyuetVOCw1qU2uFeY6+hZSrX/seslMLixB+Y8NB2zBgq
	YcrvYNAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtj-0000000EE0L-1NJ6;
	Sun, 04 Oct 2026 01:20:15 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAte-0000000EDtb-26Gs
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jpg9cUmd9wcNmWwa313Kx0R0t02seqUoOQJd5jVKs1Q8m0Mt8s7QkthUZ1WnhX9/N97UiIT4WX1IQyDLVat0J4yOSM2evR5NKiJobe9B89KX8QAAP1mUgU3aRFR7ztcWuY6ffMt+czBrZBFneH0mC29ln3NOwb3nQ5BOo5SwknPN4DNUFibS1XrC3KFHwM38MuJNVMrDAa9YAMZD8Zj8GFT1gdEZgOcRPotNtOpmbPsf/6UHH2Z5RNdevH0qXN0BmbWY17PfZXzD358GlKgyYnUIKjX5jz+Y+44jPqmofeRcVP+4RoPinjZjPE5Bt6bXCEMTMWG9SRTRxcDiDAL6jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AI3b3u6OeJtyi0/mCWaQh4zmhQGXoIIhq07lFevdxzg=;
 b=QGO2/Xkuw/wCAYS3FdsjE+UYazlox7GCL8stzg9buW08/yXUORh+prle46j0laOB35ytIXJYoJXo6YL6AdoAn3DUlrE56XxukCODZvQDS57xJAlr38LdcbZOzK6iynPQLJpt0N1lt8zcD1dZkJtjtSjWqEhG8eksGrakih4+WHF6JChgR3z3IVNdIO3v0D7HpH1Lck8kwmenNQwbYg14ieCh58Uy7kFZL/Fehpf6qJtJL4AVrD3cNm3uIjzxsr1vG1B+uyUtQ50DhgtdwY+FcKZwdVOn1bzIZvi4bfjSr5T7msB/b83sogUDoJaytWmxpUgCOzPWwpJrwLmnZep/qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AI3b3u6OeJtyi0/mCWaQh4zmhQGXoIIhq07lFevdxzg=;
 b=doTZYbolS6D48mMiYKKusxYeIYasZmlGt6otB4sdKnTHLXLYSPzQHkg9dEWIIeC0Fv5xRKFd/VMkrswR6lUsdHBIstlCsXtyGK8AgEiwE4ubyspzCMAHlz35bgekREWa096qGnbsMTduPLEBPcuD+fnggBnr+RXhHyCCfJvOP5A=
Received: from PAZP264CA0153.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::8)
 by DU4PR06MB10046.eurprd06.prod.outlook.com (2603:10a6:10:5cd::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:06 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::14) by PAZP264CA0153.outlook.office365.com
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
Subject: [PATCH v1 14/14] efi: loader: bootm: apply overlays carried by a UKI
Date: Sun,  4 Oct 2026 01:19:47 +0000
Message-ID: <20261004011958.3255011-15-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0320 (UTC) FILETIME=[79BAB400:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|DU4PR06MB10046:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: b7203c3f-07da-4009-96a9-08df21b59fe6
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|1800799024|82310400026|376014|23010399003|11063799006|5023799004|56012099006|10067099003|17002099007|22082099003|18002099003|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info: dA1ZFc0upQxjSBK65At15My6aDpmOMzsa/Bm+DvLe9ozey3WFp77UIQmuqMzq1YecObXLBhLxwoLVsL2RBLYY6gRpw+N3T/sd7pOqsfCFpUAYvN9GKIXQerAx05WGyfTZeVWBiZzQH6LKCxk+x8zt0KJ3MaOpBK9RA+HoYuFmLfiFl2ZJLIEJD1O97fgF8khVNdfmCb/N/bRSNcdkd2WYyCngXvFJ23ZnrEV2ubQaa7UAOdmAphfRnEy+z1rGaFTq+PY8cFK1u+0fGOpC6eIjSXiIkNxcQfjKym1Lud03y0baYnwEtRb12kSMY5a/ZqOn2HNN9pE1orcLatzAAcypXx5wqbc++wUrXeFoHb3pttAYHaj1D+P3gkgQIFyuQC3/Y13vQSDzYo351sIAn5CPg7KPlUnVYafATfxZ0S10wpsUqLQUFyvUU+kYPJMK+pXs+PgvYDiXZdFtrFJlrXKWMKE7BRzAxhS7eABvQ0NM66Q/HTimYlKf3f3yMlGmI7oWKrrwYR7jEtLfAC9ODpUiIFC25+W8Aqo1nFqAxYWb7El9UtUhEXrgJ+7LAWBILFo54sXCOJjtcq+Kkr9T4T46UGyob1vQGcZpZvKiiWGDvGVwEo19mZ5ZnZwKM7/Vy1mXRgijgt+Jkoz66iVpg9ceutoaXaznPj1UqGEWguKMqbp3RXaasPCv1bIge5t07w7fXrnFd6Sd5o14vOnpxFNtg==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(82310400026)(376014)(23010399003)(11063799006)(5023799004)(56012099006)(10067099003)(17002099007)(22082099003)(18002099003)(6133799003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: hJFSZQjioU2MdBINXglfJ4v4+naMYjA7HKHKrDzysNZXMcsoxIm1tunUNulubjoqZDOSRITaFfRCjNupnAqZkZZnz4Gwt7LvGbJu762iQlh5PBLegKHGGXmx1ArBW5z/Ycx319s5jxxKiWeAcrwvRq+B9CGGi8qe0yG9P0bTtunj/BPn2Oa1uz7YIv3nYu5nOQi5ucP8TGi80VNknZjCjIjIo0ixx+PMavjApTmezTg2yjoq+WL/2XzzHmQH/Vt1lkCn5HHH1WgSjlQVxEAi1TcB77U+ce5I/gaa2JYygc62gcJLTweUYT29EbTBy0xrRoeaa2DlsQGB1l5nEYQbTq0gVUEA8OrIfaayO75/Cy3nG+XLP7i5bRzE2+VeGUeY9KKOXLuBZ6Eqisb+eQ0cBrex9w4tElvPF1IwqAvMThqA/R2+7hUyhS5WxrYC+099
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:06.5312
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b7203c3f-07da-4009-96a9-08df21b59fe6
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR06MB10046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182010_565749_D486F2DA 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  A UKI has no place for the overlays a FIT image carries next
    to its devicetrees, and systemd-stub knows nothing about overlays. Carry
   them in a ".bbdtbo" PE section, covered by the image's Authenticod [...] 
 
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
X-Rspamd-Queue-Id: 7025E201EAF
X-Stat-Signature: 5kajk97gesk47yp8567yazc4rncdonwg

A UKI has no place for the overlays a FIT image carries next to its
devicetrees, and systemd-stub knows nothing about overlays. Carry them
in a ".bbdtbo" PE section, covered by the image's Authenticode
signature: a devicetree whose child nodes each hold one overlay in a
"data" property, named like the overlay file.

Unpack them to /tmp/efi-overlays and point global.of.overlay.path there
while the payload runs, so EFI_DT_FIXUP_PROTOCOL applies them to the
devicetree systemd-stub installs, filtered by global.of.overlay.filter
and pattern like overlays from a FIT image. Without such a section the
path is empty for that time, as it may point at the boot partition,
which now holds the UKI. The previous value is restored when the payload
returns.

Refuse a UKI whose overlay section cannot be unpacked, which would
otherwise boot without the hardware its overlays describe.

Only with CONFIG_OFTREE, which EFI_DT_FIXUP_PROTOCOL depends on.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/bootm.c | 86 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 85 insertions(+), 1 deletion(-)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 47f7a3d1e2..71c61935b1 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -37,6 +37,7 @@
 #include <efi/devicepath.h>
 #include <efi/loader/authenticode.h>
 #include <efi/loader/pe.h>
+#include <globalvar.h>
 #include <loadable.h>
 #include <of.h>
 #include <barebox-info.h>
@@ -223,6 +224,62 @@ static int efi_loader_verify(struct image_data *data, void *efi, size_t size)
 	return 0;
 }
 
+#define EFI_UKI_OVERLAY_SECTION	".bbdtbo"
+#define EFI_UKI_OVERLAY_DIR	"/tmp/efi-overlays"
+
+/*
+ * The overlay section is a devicetree whose child nodes each hold one overlay
+ * in a "data" property, named like the overlay file
+ */
+static int efi_uki_unpack_overlays(void *efi, size_t size)
+{
+	struct device_node *root, *np;
+	const void *blob, *ovl;
+	char *path;
+	size_t len;
+	int ovl_len, n = 0, ret = 0;
+
+	blob = efi_pe_find_section(efi, size, EFI_UKI_OVERLAY_SECTION, &len);
+	if (!blob)
+		return 0;
+
+	root = of_unflatten_dtb(blob, len);
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+
+	unlink_recursive(EFI_UKI_OVERLAY_DIR, NULL);
+	ret = make_directory(EFI_UKI_OVERLAY_DIR);
+	if (ret)
+		goto out;
+
+	for_each_child_of_node(root, np) {
+		ovl = of_get_property(np, "data", &ovl_len);
+		if (!ovl)
+			continue;
+
+		path = basprintf(EFI_UKI_OVERLAY_DIR "/%s", np->name);
+		ret = write_file(path, ovl, ovl_len);
+		free(path);
+		if (ret)
+			goto out;
+		n++;
+	}
+
+	pr_info("unpacked %d overlay(s) to %s\n", n, EFI_UKI_OVERLAY_DIR);
+	ret = n;
+out:
+	of_delete_node(root);
+	return ret;
+}
+
+static bool efi_image_brings_devicetree(void *efi, size_t size)
+{
+	size_t len;
+
+	return efi_pe_find_section(efi, size, ".dtbauto", &len) ||
+	       efi_pe_find_section(efi, size, ".dtb", &len);
+}
+
 static const char *efi_machine_compatible(void)
 {
 	const char *compat = barebox_get_of_machine_compatible();
@@ -361,8 +418,9 @@ static int efi_loader_bootm(struct image_data *data)
 	void *fdt;
 	int flags = 0;
 	size_t size, section_size;
+	char *overlay_path = NULL;
 	const char *compat;
-	bool match;
+	bool match, uki;
 
 	memory_bank_first_find_space(&start, &end);
 
@@ -384,6 +442,11 @@ static int efi_loader_bootm(struct image_data *data)
 	match = IS_ENABLED(CONFIG_OFTREE) && compat &&
 		efi_uki_has_dtbauto_for((void *)os_res->start, size, compat);
 
+	uki = IS_ENABLED(CONFIG_OFTREE) &&
+	      efi_image_brings_devicetree((void *)os_res->start, size);
+	if (uki)
+		overlay_path = xstrdup(getenv("global.of.overlay.path") ?: "");
+
 	/* systemd-stub passes the load options on as kernel command line */
 	if (filetype_is_linux_efi_image(data->kernel_type) ||
 	    efi_pe_find_section((void *)os_res->start, size, ".linux",
@@ -432,6 +495,18 @@ static int efi_loader_bootm(struct image_data *data)
 			goto out;
 	}
 
+	if (uki) {
+		int n = efi_uki_unpack_overlays((void *)os_res->start, size);
+
+		if (n < 0) {
+			pr_err("cannot unpack the UKI overlays: %pe\n", ERR_PTR(n));
+			ret = n;
+			goto out;
+		}
+
+		globalvar_set("of.overlay.path", n ? EFI_UKI_OVERLAY_DIR : "");
+	}
+
 	efiret = efi_install_initrd(data, os_res->end + 1);
 	if(efiret != EFI_SUCCESS)
 		goto out;
@@ -502,9 +577,18 @@ static int efi_loader_bootm(struct image_data *data)
 	/* Control is returned to us, disable EFI watchdog */
 	efi_set_watchdog(0);
 
+	if (overlay_path) {
+		globalvar_set("of.overlay.path", overlay_path);
+		free(overlay_path);
+	}
+
 	return -efi_errno(efiret);
 
 out:
+	if (overlay_path) {
+		globalvar_set("of.overlay.path", overlay_path);
+		free(overlay_path);
+	}
 	efi_initrd_unregister();
 	efi_install_configuration_table(&efi_fdt_guid, NULL);
 	efi_free_pool(file_path);
-- 
2.43.0



