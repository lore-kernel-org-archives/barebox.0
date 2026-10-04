Delivery-date: Sun, 04 Oct 2026 03:25:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyh-009UTl-1u
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF6E8202303
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vL7ERjNF;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=eaH0OOBv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077123; a=rsa-sha256;
	cv=pass;
	b=K1JUc8uCnHJdblniZHay4tyR3V+xRSH+tFQHhCBeFCjxfQliLtzTNoB0Qveq2XUkAm0F8d
	oLfATvy50Vw9SB+ZKpaftH9Y6/pH/bVBrc02uFYTjKQjy5nKw2mXpsVE3O2ydbg1s4N+XB
	uahvzGByBE6Z728ulxGZGCsmK4ys33c5vyh0JOcj8KNUiUvbVHsvWoaUL2FPi9q1icnkUR
	pk9ZCa5AzlkVdXWjIPrj3ny6O6YMfmmGIRlvNFMqmRurpjSF+q8ooiEmfAm0idaWvatBUn
	R4bA2Fc5F3UQNKqfrfEfD/S+vlFnExmzLe7iMyI8TWNdF7Ebbb2m2JZesB52fQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vL7ERjNF;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=eaH0OOBv;
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
	bh=wY1+cmBUd1kPoQjIyJ3wHZQSAr/Fzh+8yt9WxSWzP6U=;
	b=U62lo1p7ir0HQvWPaqbWiS0NWXUwnq2AA05jtNGQK1xuygjWDV7vH3Ekm5p0d8Oz1htHSR
	3ozRH317Y40dcwYmZxbKDjE61koQ9wRSuC91jM3+t1kwZExgmGBreOeUxECTW4dQcRSI4t
	EfLRoekY6igtbUyMdU84d1oZzm2lRp7o8R8AAOlFKZZCoUsmLVxqgNzPDn8B/htePJUSC4
	rfx9s6Wrrb+yYlZ6MN+QDQk1k4AqzlFR1iDAN8uZEBFFxmtot/gYOZ2lTdYNnHBLcZh4yS
	WmT4MqkVgP9NN24BG84EMuUS49ywaKnIK0LqZCx513nM22jelKhUmYMmKVYEvw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wY1+cmBUd1kPoQjIyJ3wHZQSAr/Fzh+8yt9WxSWzP6U=; b=vL7ERjNF0afU+e5UlugK/mAOgD
	N45Mw/rM9W3QpCMNAg+3au2sEWnAHg3yfhuilzcK0Pzm0s60aBXXIsLhMl3VhHrgrmmEnk/rpvYex
	Vr7YmYBrSifp0aRaj+3LCMgDYnBUJ4y3s9fC5p4yzIDzbHdSTzyoRXjFJHVqfKzNJ16eFMipob34v
	TxDyVcvEhS+zoMiNOJ7fY1aT1h2Ob0QKg/pRWl+UgXbJs1/6Z9pP/UEZ63D1M3bWvG/HaFaJ4rqdK
	WERFh/arJL+KQcdmTwGHcgQ1rGb/c+cUTchHSLz63xn4VfMdOM1p8gKXyycO+/bc4ucvOUf3BK0uF
	SsK1DNUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAti-0000000EDz1-3K3x;
	Sun, 04 Oct 2026 01:20:14 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtd-0000000EDsM-0S5c
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yOPEAINO1hCOLlfeeHDJBO8dcsPGPt+uxW8kgOzE+dvSI+ldez4DWmrt6uXdjJXWJsBPo+cwCai3GLRWzlosFucC7gn5fK3V3SP49IkQEWcis8manRoD6XR3hStVs6CP9rGK21pqmiZ3Cs3lS4nbaY4Tn0ua+RCDuIyCq+vaBth2xHLeWePH99f0vJgZdZ4tCzB290zKGBqjpOwTGpPj3kRjWmI1lNsSDbiMtiv3Yn169EbG3v6IcGaRIOBMN7XbUsxvOhTUoLt67Uqv3dpumcqRtHtk23ggvTdjmxnEtgRb5awwaIUimOOuH8qRo5oXrziqg5JxRkDTyMM31UzFAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wY1+cmBUd1kPoQjIyJ3wHZQSAr/Fzh+8yt9WxSWzP6U=;
 b=Isl/X2gctrB+mLBMFu0b5TrG6xV7dch24k6L/Rq6KKMu7Z/7bq8s+wzhAS3Yg2aNinRcuUGkbAIdrmUALjsREmfP673h7M3lqbsdtAW+QeUlYnuFYzkQj5BfYgR3KkYd4tSc38oMkoq6QFFsbOYlYEVXW2JV6/tqjDwLl8nFAIPE8wFXBtV73JVZVR+2tOjq3+K4MegwRsEEXMSEXdkboA8NPClu5GIdZx7MuN3FrIkwAvFjgOaP2uSwgPIake7rRZbFErLEGBVZoWaM9yjoYPtSSarnC07lV2f9r0zbqKLuVEB4cM4NOufyYrdHOZGXk2Ainv743zv7P3qqoeFSRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wY1+cmBUd1kPoQjIyJ3wHZQSAr/Fzh+8yt9WxSWzP6U=;
 b=eaH0OOBvfg6th3C1YYhoaDGfchfKonfX0lILZtlCECjeVwFZs0Rix9I1cSH5zlY7cq0qbuLOamPiJt+bmG1bHcaHhUr9DjqlLpDCFHhywfQyOpZgxttpZF2XQIuqTojZOB2a1mg/kq2NQJe9nL2+WhzSs+IExT8kwgESVgoFgQ0=
Received: from PAZP264CA0157.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::12)
 by PA3PR06MB9946.eurprd06.prod.outlook.com (2603:10a6:102:4b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:02 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::5c) by PAZP264CA0157.outlook.office365.com
 (2603:10a6:102:1f9::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Sun, 4
 Oct 2026 01:20:02 +0000
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
 15.21.472.14 via Frontend Transport; Sun, 4 Oct 2026 01:20:02 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sun, 4 Oct 2026 03:20:00 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v1 05/14] efi: loader: pe: add helpers for the image size and a named section
Date: Sun,  4 Oct 2026 01:19:38 +0000
Message-ID: <20261004011958.3255011-6-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0086 (UTC) FILETIME=[7996FF60:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA3PR06MB9946:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e2af20f7-e576-4c45-aa11-08df21b59d87
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|1800799024|376014|82310400026|23010399003|11063799006|56012099006|10067099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: Y9rzjAXVI/p10MrvpaIijsCnBP+W9AYKJirVviRrUrX3LnJOCGjgqX123sJwLvGuP+rrcP+Wam5ivcqqd5UEAoJy9ZIOYuAGtpfDzPJDul0+Ps/VndrCLzlV5tCF3E715pI5EZ/9h/hq9mjoTUtVVQcoKniqvFEIFAESXmaqKkqtlqHse9fStXPkO6VKVLbSjJ9OMcX7AvfGNcwy+FoG4k8pH2M0y1x6Foz6enjydgMXkT4DDLlC4dLs056nU8rhu59d6KuQK/5t+KM5eI93AJJJIF78K7BpovGhETg5eFyrt/9hdm+Qwhx7i6MVHhUWTskHggVhOKVyCGZjF8uP05t0joLEBIbPkpPW+ry3qwSxjcht8PQYxwPzDiKjykN5x1hHc1U2UwdSBcpbAAe1mMpZjsBWsleGD8Z/FlhQmI7/uqmXMJOMIqondXUXwK0WwPPCHiDP7opKUHz6ssdc9iATV8eWvfyOFc6ZHkoozM7e3emH71dH794zlsjcD5KGE7NA+TUJ6ToXwIOW4VThf5uraqXh9Cys8UshlT2CF1GNF4OirOXY8owR43Db1vDUDgT6CKG+nX/IRWgpbFh103aQqtepPSi8jNvZwpDqjKtXSzZzbSC5LTNmVZQKakLUD1K+4MT9u7hnQ3mMg0QZ33sajjvtrycR4JvlxpxmL0q+0UvjCq7YNFwZxR11+lzlXfPwzWzQHH7sDV7GuB+vDA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(376014)(82310400026)(23010399003)(11063799006)(56012099006)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: REPj9J4qDermxwq/kRXbiE6oXu/47a5HZeuXEIK0WvoO5RmZoTbcTYVMXQBU0k6UXLU7L0e3SBbM/hxAtNzbACv7XgJb4XpjHicaS1lzhYfyWInI5JXMnhhJ609XPmR3QP3OBwtHJ1B8PvrDgAsMjYMKNzlCxnDRvnITMwxSdjyS3AjinfNFa4wBjp5yEgGxtEOEzd3S5yxn2VNDxlsfLt0xcvW1tSugpHsyBnv7KXy0QpT6hYDUgST/2BVhZ+8MeCkSodYcyM2PXQHPeKAf+i7TVq7AcwERSsG/YDeZrGnlFSCSkRvRxeep1wz2kOLp/th+O5BqOI8lFkhwpSoNW4VlidXxThH2lKAOux37i3mq4ntUTEldsE7IIh6wClONmA8fFSEwi+HPVQqixkSYog6GXw/eFEISHpj+FJhf/naErpu838W1IQcV6oLsHo7i
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:02.5528
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e2af20f7-e576-4c45-aa11-08df21b59d87
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA3PR06MB9946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182009_157882_79A92FF4 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  An EFI image may be read from a raw partition far larger than
    the image. Add efi_pe_image_size(), which derives the size as written from
    the section and certificate tables and needs only the headers; [...] 
 
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
X-Rspamd-Queue-Id: DF6E8202303
X-Stat-Signature: ntpx3gcfwrimks4hmwysy575x8aoyu1g

An EFI image may be read from a raw partition far larger than the
image. Add efi_pe_image_size(), which derives the size as written from
the section and certificate tables and needs only the headers;
efi_pe_file_size(), the same for a buffer holding the whole image; and
efi_pe_find_section() and efi_pe_find_next_section(), which return the
file data of the first or the next section of a name.

All of them parse untrusted images through efi_image_parse_header(). For
efi_pe_image_size() to work on a buffer holding only the headers, the
check that the certificate table lies within the buffer moves from
efi_image_parse_header() to efi_image_parse(), the only caller that
reads the table.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/pe.c         | 116 +++++++++++++++++++++++++++++++++++++++-
 include/efi/loader/pe.h |   7 +++
 2 files changed, 121 insertions(+), 2 deletions(-)

diff --git a/efi/loader/pe.c b/efi/loader/pe.c
index 4b7874fe2a..827b50378c 100644
--- a/efi/loader/pe.c
+++ b/efi/loader/pe.c
@@ -507,8 +507,6 @@ static bool efi_image_parse_header(void *efi, size_t len,
 		return false;
 	if (!pe_range_ok(len, 0, *header_sizep))
 		return false;
-	if (*authszp && !pe_range_ok(len, *authoffp, *authszp))
-		return false;
 
 	if (!pe_range_ok(len, 0, csum_off) ||
 	    !pe_range_ok(len, subsys_off, 0) ||
@@ -570,6 +568,8 @@ bool efi_image_parse(void *efi, size_t len, struct efi_image_regions **regp,
 	if (!efi_image_parse_header(efi, len, &nt, &sections, &header_size,
 				    &align, &authoff, &authsz))
 		return false;
+	if (authsz && !pe_range_ok(len, authoff, authsz))
+		return false;
 
 	/*
 	 * Count maximum number of regions to be digested.
@@ -780,6 +780,118 @@ static int fuzz_pe(const u8 *data, size_t size)
 }
 fuzz_test("pe", fuzz_pe);
 
+/**
+ * efi_pe_image_size() - size of a PE image as written to storage
+ * @efi:	buffer holding at least the PE headers
+ * @len:	size of @efi
+ *
+ * Return: the end of the last section or of the certificate table, whichever
+ * is further, which may lie beyond @len, or 0 if @efi holds no valid PE
+ * headers.
+ */
+size_t efi_pe_image_size(void *efi, size_t len)
+{
+	IMAGE_NT_HEADERS32 *nt;
+	IMAGE_SECTION_HEADER *sections;
+	u32 header_size, align, authoff, authsz;
+	size_t size, end;
+	int i;
+
+	if (!efi_image_parse_header(efi, len, &nt, &sections, &header_size,
+				    &align, &authoff, &authsz))
+		return 0;
+
+	size = header_size;
+
+	for (i = 0; i < nt->FileHeader.sections; i++) {
+		if (check_add_overflow((size_t)sections[i].PointerToRawData,
+				       (size_t)sections[i].SizeOfRawData, &end))
+			return 0;
+		size = max(size, end);
+	}
+
+	if (check_add_overflow((size_t)authoff, (size_t)authsz, &end))
+		return 0;
+
+	return max(size, end);
+}
+
+/**
+ * efi_pe_file_size() - size of a PE image held completely in a buffer
+ * @efi:	buffer holding the image
+ * @len:	size of @efi, possibly larger than the image
+ *
+ * Return: efi_pe_image_size(), or 0 if the image does not fit into @len.
+ */
+size_t efi_pe_file_size(void *efi, size_t len)
+{
+	size_t size = efi_pe_image_size(efi, len);
+
+	return size <= len ? size : 0;
+}
+
+/**
+ * efi_pe_find_next_section() - locate the next section of a name
+ * @efi:	PE image
+ * @len:	size of @efi
+ * @name:	section name, at most 8 characters
+ * @size:	returns the size of the section data
+ * @index:	section table index to start at; set past the section found
+ *
+ * Return: pointer to the section data in @efi, or NULL if there is none.
+ */
+const void *efi_pe_find_next_section(void *efi, size_t len, const char *name,
+				     size_t *size, int *index)
+{
+	IMAGE_NT_HEADERS32 *nt;
+	IMAGE_SECTION_HEADER *sections;
+	u32 header_size, align, authoff, authsz;
+	size_t namelen = strlen(name), sz;
+	int i;
+
+	if (namelen > 8)
+		return NULL;
+
+	if (!efi_image_parse_header(efi, len, &nt, &sections, &header_size,
+				    &align, &authoff, &authsz))
+		return NULL;
+
+	for (i = *index; i < nt->FileHeader.sections; i++) {
+		if (memcmp(sections[i].Name, name, namelen) ||
+		    (namelen < 8 && sections[i].Name[namelen]))
+			continue;
+
+		sz = sections[i].Misc.VirtualSize ?: sections[i].SizeOfRawData;
+		sz = min_t(size_t, sz, sections[i].SizeOfRawData);
+		if (!pe_range_ok(len, sections[i].PointerToRawData, sz))
+			return NULL;
+
+		*size = sz;
+		*index = i + 1;
+		return efi + sections[i].PointerToRawData;
+	}
+
+	return NULL;
+}
+
+/**
+ * efi_pe_find_section() - locate a section's file data by name
+ * @efi:	PE image
+ * @len:	size of @efi
+ * @name:	section name, at most 8 characters
+ * @size:	returns the size of the section data
+ *
+ * Return: pointer to the first section's data in @efi, or NULL if there is
+ * none.
+ */
+const void *efi_pe_find_section(void *efi, size_t len, const char *name,
+				size_t *size)
+{
+	int index = 0;
+
+	return efi_pe_find_next_section(efi, len, name, size, &index);
+}
+
 #ifdef CONFIG_EFI_LOADER
 static bool efi_image_authenticate(void *efi, size_t efi_size)
 {
diff --git a/include/efi/loader/pe.h b/include/efi/loader/pe.h
index b99f517cbf..2d2a19604f 100644
--- a/include/efi/loader/pe.h
+++ b/include/efi/loader/pe.h
@@ -73,6 +73,13 @@ void *efi_prepare_aligned_image(void *efi, u64 *efi_size);
 bool efi_image_parse(void *efi, size_t len, struct efi_image_regions **regp,
 		     struct _WIN_CERTIFICATE **auth, size_t *auth_len);
 
+size_t efi_pe_image_size(void *efi, size_t len);
+size_t efi_pe_file_size(void *efi, size_t len);
+const void *efi_pe_find_next_section(void *efi, size_t len, const char *name,
+				     size_t *size, int *index);
+const void *efi_pe_find_section(void *efi, size_t len, const char *name,
+				size_t *size);
+
 /* Check if a buffer contains a PE-COFF image */
 efi_status_t efi_check_pe(void *buffer, size_t size, void **nt_header);
 /* PE loader implementation */
-- 
2.43.0



