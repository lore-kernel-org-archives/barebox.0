Delivery-date: Sun, 04 Oct 2026 04:18:48 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDBoO-009VRV-2Y
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 04:18:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3AB44201EAF
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 04:18:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AsC5M7lR;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=dvjigrBP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791080328; a=rsa-sha256;
	cv=pass;
	b=GtAs+ZB3BgLRn1ajdEusKwBk+Ts7i2sZ9vnW2FMjOe6smvBbcNvhTivkd1hnypyulv3c6x
	9M0L38BLhPtEMp5OF4RVbjvGE9a3RhEKn6MUb3X1OoVmFHAjommqvVf5z5LhSweFeneHif
	um5O6sGxFXlXO3yb6QjPOZgM175f9QlbcRGcaFc7/ptnn5eR6hCpgBWxOnwbtt8ppHz/+a
	wThx4obMr6pUTNuHL2OyQE+YFWd2D0FKZsJ7I0XAYGJNq0S4gWrr6F+pfmfaFtoko8VrEL
	koCQI62jjdH07UYfcUR0p8GsaYWWalP0xPrTRO0Cb1AUF08qolmolHAFY+ueOQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AsC5M7lR;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=dvjigrBP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791080328;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=jmIuwSKV1dXyDifaCsMe9V9nOu6CbXmraTzV7Qp4ZsI=;
	b=U2nwTt8bIqIe55XaWJoWOxdXF8Tc5jFRuq8WXm21pTLjWI3I9tTaEjREDltjCRwQlrmBm3
	pTEcD3mnqx1iDawI0npLlSYscKgvHQPkaU6dIMzH+9qgwKNQXN2kVHVlBsM2w6uNKO6fEZ
	XHL0xfeOxPLiFbcploCs8AYtiwujWWeuE5HesMRgV3KFVKmSjwT/2GzMcVauIiypmjW+Pm
	+zBydpdb69HlBVdRw6vgd5CUdnFVDxPSiu/ZKOdJrNbYy9LaPtVUaU3DBTsZU26alNq7tH
	pJI2e7480sHOW9jW1ObEcScxxLx5JbSlO34SrRXD3e2vkFIkekXLTnESnO+mBQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jmIuwSKV1dXyDifaCsMe9V9nOu6CbXmraTzV7Qp4ZsI=; b=AsC5M7lRlITXa4Kge4o27HHBwU
	vA+NC7WNF8a845Dpiuk/V2Sr2U6lZYUcztNblwW1WmrBTRcj97y32Xw+A60GgE7+OScAoQoOEorqY
	pQulM+d5rY55mMX7oCmHpiS4sHCJJZgBTr2x48yAGAaVltn4uLch5zkVxMQYbk2kVOLi07UY34vub
	fVZD+K++W+eBEotd7XL6zTfkLlxJflgVf8avdjriCr981yqAc8oX1WcKNcUPDV5BnSeTtapmgTI+F
	uozuzvGYORnRRcp1O3l7DeuxyQgUtO3eFacgM+4UAZLdX7QVXJ90ifyUTIlar56/XZqnOyGcUmrsx
	kKU4+D5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAth-0000000EDxS-0Tax;
	Sun, 04 Oct 2026 01:20:13 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtd-0000000EDsQ-0U4U
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHttC6ynXYo0pLE/pPsp31Jdw70c/QiRpCdfOf+066aLC7p/fCa9dIkgD6SomINXZ7TUZcLxZShbiEmcILtNZIZp4E/SqWMemvMBzz0H9D/D0aUjqeyADpRzJwUNNKoOzlG/v9bxzH8pkxWejrIJEjj+m4d+u/8OFGRnBHsu1gTe/ikvLf+wmAg8achQs5NhWF8AE4PaEe67XfYFV3CQZ7cweWkAlOtcUZhNZWqpHyO8DXB5o2MGszocest76RLbpRH0WL2eWzwxxqJxJrEf8nFduHyHeLG3Gnn0jKYxKPi0wDozVrzQfpM9a9Gh+ZdrpO3HjmG0u3DUzMhYrubW2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jmIuwSKV1dXyDifaCsMe9V9nOu6CbXmraTzV7Qp4ZsI=;
 b=mQHcC84Am1AJZge6KPDxjx2UORBrmFZCat8lzY6T4GuunL+G9EIrXP52E+J8gh15+UCIBDLOqErKCss7bcfbVSvlq81DLqyYYHfuYPYe0pNS8bwKpSdgFTsVEbmgFU40uw43iU1Yo0Vj7ymMVPQ7lbfOmgYIUbW2lJmvxs/AdUhwtybCucGkrTfM8/keu/gybUh+bVa4zh19o3zBDohCkSiZ8iKWd3yWXJyuHdNak187YL15kU2QsehEtOSxV5/R+UyD7ORupFn3rIljHi0UnbV22vu8le8N2LF9Cut6Fp8fUck/2R0/K5+RvN5We9pvokHSxkNtLVQzA+dFL9pQWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmIuwSKV1dXyDifaCsMe9V9nOu6CbXmraTzV7Qp4ZsI=;
 b=dvjigrBPSjwApO8FegkNOZVw8ELlHM3AjUm5RCPHAX7chRWy0o5F6dHEwRjnL3LsUwUQpZyNmoypBsKfctBD+Qd4nTALDkqQ2OhqKTjKed6/hL6igt3gW4UQWLlFTfh0fVbqPzqNuIC3QAdotCtCXquBIkD/hr7D6ddgpW8m/IE=
Received: from PAZP264CA0150.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::11)
 by PR3PR06MB7018.eurprd06.prod.outlook.com (2603:10a6:102:93::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.24; Sun, 4 Oct
 2026 01:20:02 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::5e) by PAZP264CA0150.outlook.office365.com
 (2603:10a6:102:1f9::11) with Microsoft SMTP Server (version=TLS1_3,
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
Subject: [PATCH v1 03/14] efi: loader: bootm: free the devicetree after installing it
Date: Sun,  4 Oct 2026 01:19:36 +0000
Message-ID: <20261004011958.3255011-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0055 (UTC) FILETIME=[79924470:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PR3PR06MB7018:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 99dd3d6a-a5db-45e2-c6db-08df21b59d25
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|1800799024|36860700016|82310400026|10067099003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: N3pi936LOuKUoZ90v1ZXKWQ3xBwFlPI0QPBEC1P2DksdEKEQWYdjFjE/ZoKPmAvfLLyRisMhX1B5IY7RYbwoTxAxmvo1AmHICNkAKc1hy+2UWbiXCzRp0txNzggk9n1G1n8cONr7InK+dKPRIZB4Myz6lWxJPhdjKYFYBqFAfzs1h6ieQCelkzKgzbIasN/o4NBmfRlGhe6u6VocNUvibzHT3VsSlDhIusN9rjXQ3zJ1rtAwZJkyU6Afuhm+xyDmQ8PgTPyDq8S6I9aM95gYOBL50k8skdsVmxj79kqY8GaIxMD/vr9R17jzXl4NZpl5WnqKeJSjjBKBmsaaWo/X1SFsPQMsfXOf1sEM3+3q7wMzU7Ctnitj4OJQGZ5hC0USwWvxwWXnI1Eb83tJaSOGIYu4nAp/JYxMMrWvw6OKnYjan3Z2vAbMmCo6muUv49/Uly/Ike3iU80p8k+/IYvum5XBfb++VBLedztjvFN65Nx0oRpmoCryoWTf/dCjizMn0Q6YAGMS8Gn6Z1k9vAI9NGrMgy+SkNGXhxILSoCFe059KkMQHE9xX49sGPkqOvovjEgLTa+981qwQ7PUt2okajglQEG7w+kHsqsNBiVzlSrkzvACNGnBZRzHEWZ1EdOP1v66BZA31rc0GrqAWciK2G/5GVSVtM6h3CFNqkRbjhISUkshbLn/nGkC2ev77mgtZ4mL9TlLr/VsJDbjvEL7QQ==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(36860700016)(82310400026)(10067099003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: dM4qR13fylyAUY2qx3Kw1oTBQ121F5e/fw6WLgFK7yT2i0iUkIFrG3kBoce591L2OW9I7FhcQ7ZB8/nTdT3k/hLwlaZgyziTdzvLKWtqcILABx208m2iIHQeUZldLWLOaJUr63mGAy9/7O2YGY5/qrWAY56DMZ+9xUyZEu1RadJuEJXnA0/YhMAjt+FoXRndFB5wt9MUyODkD/oi89cZFxbjt4uzidFb1Aawg1GkXFBt5em8RwOCuDRnkPJse+ZO1VUNsnZnc292rcO1imqSBAoJKGqWKHU3R7cXQjlEBlWzZBO+hwQFhbtC8WjZcOUR+PoORRBBCaGzJjEa3LpTmiojkpgP5ftXww1yohAAd2DXdXmfOdMh5USw/7bqXvYjFJxo3S1DugGoYldzD7FDEQ7mB+XMr7fdwYkAZksyUHGrOhMXlZvb2prbqPqei1m1
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:01.9116
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99dd3d6a-a5db-45e2-c6db-08df21b59d25
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB7018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182009_168690_C43C38B6 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bootm_get_devicetree() returns a buffer the caller has to
   free, and efi_install_fdt() copies it into EFI memory. Free it once installed.
    Assisted-by: Claude:claude-opus-5-5 Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
    --- efi/loader/bootm.c | 2 ++ 1 file changed, 2 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c200:0:0:0:1 listed in]
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c200::1:received];
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
X-Rspamd-Queue-Id: 3AB44201EAF
X-Stat-Signature: sxexjxzgtggpxd11fztd17z9onyhr8o9

bootm_get_devicetree() returns a buffer the caller has to free, and
efi_install_fdt() copies it into EFI memory. Free it once installed.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/bootm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index a68db742e1..425e61fd70 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -245,7 +245,9 @@ static int efi_loader_bootm(struct image_data *data)
 		goto out;
 	}
 	if (fdt) {
+		/* efi_install_fdt() installs a copy */
 		ret = efi_install_fdt(fdt);
+		free(fdt);
 		if (ret)
 			goto out;
 	}
-- 
2.43.0



