Delivery-date: Sun, 04 Oct 2026 03:21:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAv2-009UMd-0h
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:21:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A0FA7201CE0
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:21:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Cza/mLoe";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=fNy6MSmb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791076896; a=rsa-sha256;
	cv=pass;
	b=eNQh6rU90ZKfAVykWYyZXqe6Uv5pqOwYuEjU9IPtU2nAZaXGnCT4x0xnms0YlYO/wZcP1Z
	qK7eVxeGTUn0AquJXj+a62jPDhG7oqxFbHUJAJs2BEfSWECrDL5FnDzewy+UEQ4usMkKSN
	dUGD2ylleatPOiVqfLrjpH1oQhptV2hHi0ITU95LgbQ72Df4dqdz8PDXm4yD+dd7EDxbwN
	HxkRqgkscVdEXCjsBU8ueLE6ma5MD7NDaQCLRhitlksLSCfPVUZqA5j8oTbwsrlpU+arHe
	q6v71PM9bMIue4i+wFWOKZbLfeALBCPLfpe4cO87T7HhSPLDnYilxnArWpoFmA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Cza/mLoe";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=fNy6MSmb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791076896;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=fEoABlupNwQw7voHt1SSmN4C/4fDx4G+hwPBw4I0znE=;
	b=CpUrwf3lKRxpkRUyOnriSTmUd88nWp1SUjbgxx/so/neZ+l9eLTbk3P+rRbg5dw1l0oeGy
	eYNug8kQwbXQx29RKNDiMp9nF6FQ2/DMCTeaNFRmQ7vUOXGkvUBGXPIFnPxIEd5VT6Ge4H
	+NTAzdPEJs+Gv/alHjoDCVcqgT7jq7VvN23w5TePlfRiaczwF/OdZzMwb+Q+cQwtr++F0q
	NOeI80AHGp/faqYRFRZWIiYuDym2vjvIsimO6JtMLUkOBD97Tg/Uj8xADvcfusXMb3OF4Y
	FYe7cA256UtadYzPDKnftGVFz9BZug1VRVsl/t8pO/fGLiBTywM1EUBDmg9TzQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fEoABlupNwQw7voHt1SSmN4C/4fDx4G+hwPBw4I0znE=; b=Cza/mLoeeDoEDIojiLVeUY8NKd
	4xtjrAdI2Q4PFk5p/gpfzmzCQEQhhJCiy29GIKxn0Qyd+AqF09G44gzWCQfFPaYF6MLoTVtnKsT6a
	KwvvDgbXAgJ4C96cpAf1XY/+zStKci2F6oopYCk3TifrdB9MXCa4AR1nDhgR9opbEzVv/Izjv3qaO
	aRI4V0PmAvYbli5h5ebNDHSNnh+kjHVCUZUTYgwYWdWxvP7iDLFAdo7Ms7MvBGxq1YmJTV9axhVuL
	bB9/aLiEDwAxMPfYDRvmrqt706EeO+EHY0mlN1+sanjkvQe/qmZW8WXYJtLZWqrHvCiTms/3zFF54
	XKYiyX9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtj-0000000EE02-0kbF;
	Sun, 04 Oct 2026 01:20:15 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtd-0000000EDsf-0vxY
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SmRZmnl4J3RP4WdfGntEK/SCSmKQFf4plKCEbIb1Qdq8f1wGOTkS3JDNKAD4I0r5oRJghxD5qe+zN74nZrXAWeh6F7reLeepQS8mcaf9Psc2lITt1ssbe6oBkZDfjiTLFL3qCsr+5QZduspArWllltu7ehIDnBiaOBFx5i2CaMqvcTpshbuZM+3wTZ2Uqhy/eaj9ckKwUksDdJAI4a2QcsMC8BtiL0Qji6xfZ3LNgHQoCNlQ03Pa/DIylgQRv1UK6TMnk/FcgBeFV9lmI96Kq5R330wXFS02ETDaGjTtZN4Oik99Un7XuVbFqtHWvi8WWKkTO12nRVFyIWQaHzLylA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fEoABlupNwQw7voHt1SSmN4C/4fDx4G+hwPBw4I0znE=;
 b=f5uwLC8RykGu9osP2euhfZWsNLT+pzUh8fund5aRhdUMzCxDM7P9TDx+ROlKyEjVGlOt3PrNf5a95+euRCMd6eYWXBToPOp6fYAw6dYPSeGsLQjqbJnMQXlNJWxmOIjSgvFg+yM7tl9AVggawgIyKI6KfdCUAsI8xBrs0fWY9JDjHDTlOriyxDgUpt/if10w3liKy/scySsJlF3YSF+zO76qmwIZHnkGavz7MmNxVGTrbOhyLU6I7DEaMWxnXfiM6LaLPwXFNANw+MAH2LVfgtLlp25TRMycZeSQX1NyCMixLqfmROxwTFH/LEC4fkTFcvHP1WC5+FInhdO39NiJgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fEoABlupNwQw7voHt1SSmN4C/4fDx4G+hwPBw4I0znE=;
 b=fNy6MSmbEEGCjLwZnZgZ2plu1K2cPpc3D3clm7Qq2bEX5UGw15fWNO6R6jHgdBnKN1DMpMJEgRWbH9DUnW/lZckncjokybAC/ki1+NNFe+Q0nXxyHC9XUHQot1chuMsqyCOb00QAuZIuiQcw2nj2xirYkhj/3YaNxjQuVkZimwg=
Received: from PAZP264CA0152.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::10)
 by PA4PR06MB7183.eurprd06.prod.outlook.com (2603:10a6:102:f7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.18; Sun, 4 Oct
 2026 01:20:04 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::86) by PAZP264CA0152.outlook.office365.com
 (2603:10a6:102:1f9::10) with Microsoft SMTP Server (version=TLS1_3,
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
Subject: [PATCH v1 10/14] efi: loader: authenticate LoadImage() images when signing is forced
Date: Sun,  4 Oct 2026 01:19:43 +0000
Message-ID: <20261004011958.3255011-11-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0242 (UTC) FILETIME=[79AECD20:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA4PR06MB7183:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 6cb591ab-ee30-4da6-01e4-08df21b59e9a
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|23010399003|82310400026|36860700016|11063799006|10067099003|56012099006|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: 3jDPF/6g3QLM1YszVNABFA6KuJOOrVHxp8lGPHbtUue/hYF1gkbPeDmx/rXpRoVOQsynlBTvoMcGZiF91AGAMN7de35iC18cwNGJoVelmSHJ60rnqV2s04YiWkZOqQ38xTOr3UIi45v6R/ojymxBOH2nvZIyuYMh/jU+wNlH1dfXuQmrmi0uXblF5c7j8dNKGtPqDV3X8E4E2lQxJkoTlOMCTIqBm/72+RTM2N5uErFIdxHEO56mgbuStTu9NSrSxKETDOETayWu77JBSM0dyKU5Qemee7j2Y9j5zfcD6DT+WTZ8YdnT6IhJOms6l51JYELEl8Xungzal4IzS6bco3i7Sqyt1tzPokWHnvIhvP1xEdPWOGPFyuWpI0iNTQFB46zQI2jP21z5BLG03sRUnZc6tWO3yG9TQ0V1LfYCD1U2doxNIjfh3QkF+gst5PFOb5Zk2gHZWmGOv/drkLo7UAGJ8SUDZd61u4dZU0g3+K75k5bY0tbNDjVWE7ak/0mVHQPBy58ysvMXf3YrIU68Y8a0L8Cv8MoXF6f/LnTVYnkApA8scCCwGwkYmTEPjZ3TO1qI/W8vCRepnUf/PGe2xMrmItjAMIZCxW3R/632xMY0sPev+0bvbeXRkgZaC54VPl9ZL0yLUZ2pYa9s10U4MyZ00W8o4ZD+BIO1wSQlCou3COFPdWAMKyo1ZvrVhDthT5mk1uKsdXzODmwXjNQgpA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(23010399003)(82310400026)(36860700016)(11063799006)(10067099003)(56012099006)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: neDXx7nsX0ubxVmgkhOQKJ3IRaOlqsGHNF37EP+niiXwTVDNEj3igSA2fwF6v3iOCNOn+gImrGiSSJ+hbvpUb+6pjbLwpCcQ0pygsUubxG2SUwbTJ3tVuXwsq2xO8WWmQ8gXqYNADPYWq30W2Pat4wXG8EoNuKGIBU5c00wr3y/APgI7S21LqbolUqG4F/g/s77O5PeAf9innLpbw/xcsBpv/dSyKuD97FzbrzhOd+Ar3q2lIxe7W4HVgcMY8tg1MwLabGPNDRLtr9QyzUIGaJ0b/IzfvRKsf/PNE5le+vCl1xMdOiTZs1ossx2rEzSMS1ETsXTLDUMcPDshDul2CsqrD25MNZaJ2pXDV85bbri3qzzoTm0thnTumdmpFCFnu9GHeLg6A0+Y6hnIzXOj0tJYogRk2EBOlagFFatle1IbC2th1nmfArtR+w8xbBjI
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:04.3513
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cb591ab-ee30-4da6-01e4-08df21b59e9a
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR06MB7183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182009_280291_EBB698B4 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  efi_image_authenticate() accepts every image, so with signed
    images forced, a verified payload can still load unsigned images through
   LoadImage(). systemd-stub does exactly that for the addons it find [...] 
 
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
X-Rspamd-Queue-Id: A0FA7201CE0
X-Stat-Signature: 6z6pn611afawkcz4yr3uskzz743t1ud3

efi_image_authenticate() accepts every image, so with signed images
forced, a verified payload can still load unsigned images through
LoadImage(). systemd-stub does exactly that for the addons it finds next
to a UKI, PE files carrying .cmdline, .dtb and .initrd sections, without
shim through plain LoadImage(). An unsigned addon could thus replace
the kernel command line or devicetree of a signed UKI.

With signed images forced, verify images in LoadImage() against the
"efi" keyring, and have StartImage() refuse images that failed: as the
UEFI specification has it, LoadImage() still creates the handle when it
returns EFI_SECURITY_VIOLATION.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/Kconfig                |  3 ++-
 efi/loader/boot.c                 |  3 +++
 efi/loader/pe.c                   |  7 ++++++-
 include/efi/loader/authenticode.h | 11 +++++++++++
 4 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index 8345fccd1a..156123212b 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -33,7 +33,8 @@ config EFI_LOADER_AUTHENTICODE
 	  image booted with bootm against the keys compiled into the "efi"
 	  keyring (CONFIG_CRYPTO_PUBLIC_KEYS, keyring=efi). With signed images
 	  forced, an EFI image then boots only if one of those keys verifies
-	  it, the same way a FIT image must carry a valid signature.
+	  it, the same way a FIT image must carry a valid signature, and so
+	  do the images an EFI payload loads through LoadImage().
 
 	  X.509 certificates in the signature are not evaluated: trust is
 	  anchored in the keyring. barebox does not report UEFI Secure Boot
diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 2d98c95b5c..3c9489e951 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -3098,6 +3098,9 @@ efi_status_t __efi_start_image(efi_handle_t image_handle,
 	if (image_obj->header.type != EFI_OBJECT_TYPE_LOADED_IMAGE)
 		return EFI_EXIT(EFI_INVALID_PARAMETER);
 
+	if (image_obj->auth_status != EFI_IMAGE_AUTH_PASSED)
+		return EFI_EXIT(EFI_SECURITY_VIOLATION);
+
 	ret = EFI_CALL(efi_open_protocol(image_handle, &efi_loaded_image_protocol_guid,
 					 (void **)&info, NULL, NULL,
 					 EFI_OPEN_PROTOCOL_GET_PROTOCOL));
diff --git a/efi/loader/pe.c b/efi/loader/pe.c
index 827b50378c..efec38b111 100644
--- a/efi/loader/pe.c
+++ b/efi/loader/pe.c
@@ -18,6 +18,8 @@
 #include <efi/memory.h>
 #include <efi/loader.h>
 #include <efi/loader/pe.h>
+#include <efi/loader/authenticode.h>
+#include <bootm.h>
 #include <efi/guid.h>
 #include <efi/error.h>
 #include <pe.h>
@@ -895,7 +897,10 @@ const void *efi_pe_find_section(void *efi, size_t len, const char *name,
 #ifdef CONFIG_EFI_LOADER
 static bool efi_image_authenticate(void *efi, size_t efi_size)
 {
-	return true;
+	if (!IS_ENABLED(CONFIG_BOOTM) || !bootm_signed_images_are_forced())
+		return true;
+
+	return !efi_authenticode_verify(efi, efi_size, EFI_AUTHENTICODE_KEYRING);
 }
 
 /**
diff --git a/include/efi/loader/authenticode.h b/include/efi/loader/authenticode.h
index 24c46ca7cf..df4fb7eab0 100644
--- a/include/efi/loader/authenticode.h
+++ b/include/efi/loader/authenticode.h
@@ -3,7 +3,18 @@
 #define __EFI_LOADER_AUTHENTICODE_H
 
 #include <linux/types.h>
+#include <linux/errno.h>
 
+#define EFI_AUTHENTICODE_KEYRING "efi"
+
+#ifdef CONFIG_EFI_AUTHENTICODE
 int efi_authenticode_verify(void *efi, size_t len, const char *keyring);
+#else
+static inline int efi_authenticode_verify(void *efi, size_t len,
+					  const char *keyring)
+{
+	return -ENOSYS;
+}
+#endif
 
 #endif
-- 
2.43.0



