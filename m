Delivery-date: Sun, 04 Oct 2026 03:25:19 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyd-009USd-2O
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CE2B2022EC
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ck0EP7kX;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=ey5XB7Yc;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077119; a=rsa-sha256;
	cv=pass;
	b=XqLI6cGK4Nsg0I+LVKS3K5Zc5XZEbLvs7QE1vfrFy1vR+eHACSRdN5+UY2sCtZfTQ+fXDs
	wdPtzjRSbE/Hw7xvTEzMvhmz7nFwhBAg6+v+O3SeUjLsH6lcmQzpYEo6cc5DJmeownzm4x
	bIn4vr2fqY1Zb58GXboyAKrpPqyOxUM9ZJT1vBsARxvyRNTxdmeCyLymR51cDV2NBleKgg
	9gnAUXsr8xaGXs5Fx1yeacf8ZvNA0BGhzFgFLLOocYV67K7IMB+E/ZxBRoQZtXvf7Szed5
	IwUL0irHfShZZ9O3V7Bl9hjG6M9QXBbz6LS0xqvKUW/6avZXWS5/SoamfIb60w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ck0EP7kX;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=ey5XB7Yc;
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
	bh=PHmiWE+f6kK0u2gP05IkVLR8zE97+P6sETGr/2ShMGw=;
	b=TZJ3EAmFFYR7kT/3OvO2IoyVECyvSYvfm7rnwMwKKHa7/YMOgOgyjcCTy0fdQbgfFznOWa
	bRDjX20mouMpvXLn7PUYBI2CpnlKUIfX1yEcCpeDveS5gpPM5PoSBa3EjfRPDvVykjX3bg
	ySAdLv4LIs0/3j3+P1tOU1I0zXCK7WKeAghlGTSJMIAOnaGkyOYojOuGhbUDrmzi/YUsuO
	lO0drwzKgowtSsCep+UJoqZvLpe2G9i7fAdTDrZJ0J6DdfaS5ZuRpTygavA5hYAFpEhD0H
	239NFY9EDbR/rP/3hEjsiLCWSIe4GQ9fDfGcCiMnw06Iyh1+UZfyXJw8cud2Nw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PHmiWE+f6kK0u2gP05IkVLR8zE97+P6sETGr/2ShMGw=; b=ck0EP7kXdK6lzUX4cZWJkqzS7/
	pUNYPbo8xM65YBfVBHg8WPNcAXqD/vs7hY1tFybr/O3a+AOy3VpsZqLtKOagkpcFIRYJn6i4ys1AC
	3uKtKKpdfKJesEep5Pwsbaeq64Rv0QWNFry5DWeuLZkpI0uxVnqKmCRgunRK1aVWk+lQZmj+rU0pc
	dgYmBNZTnPZnmW/TR8RcNEmIhlUrQ38dy4ZuwPeMO2zkiTyKuONyhtZpOBmNRgSOWCm1qyG3JMZVj
	ivXRmiCntJrhlCDAfJxyxUH9vFTb4VNReOT4z9DmZMnfS/UXupYobVLaId5tVtRyMO1Ir/SkSSlJ+
	9wQLgK6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtf-0000000EDvY-0ePn;
	Sun, 04 Oct 2026 01:20:11 +0000
Received: from mail-westeuropeazon11010043.outbound.protection.outlook.com ([52.101.69.43] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtb-0000000EDsN-37Kq
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CrEY5NUD7b6l11j3jdDxUkVKNyGAAaJdqvHFsN2aqLGVkXoMd68cv99I49ClE6uW4/QwyCm155iysQ8irD7+5FX8TstQDtIcFiXM+isARaZi+/pNskKh3OM43Ph+kRaEiHpm+fDmjoeTXOG2ZuLkWkS7PQzkfHsiCg6ErwF2S9cVCXC+xn4ZAY9vMlhENGZV1VgUzYnZKjQKtB+XOXk77L9pn5FOjcpyDsiVu/54/sLKLpSCLWAyKcxANgpEormExAHuIfC8jGu25ZQ6tb858P6baABACuplke9mI7nZORQ7j94ef+Sb+OlySAS3PkiCbEnUr6nyIefYGP/a12cpIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PHmiWE+f6kK0u2gP05IkVLR8zE97+P6sETGr/2ShMGw=;
 b=ruUcr/iopQX8G4VwK02dzGQ3t30465HwcF09T2N7FZpSVXOh151vZRAIIXYAfiRcbx/c97TgJKDOzv2R9gnVo7cIoiS6oBGIplqedtzT/Oy+14uD1sVVENBRfd7w4g3yIJt6ym/UQcRFp7NEdva3y5RA4LIurl8Asf6WrP11QV2RyAoD+nu9tSVdNtWYTKKPti/YWXO/DeJP6U2F0J3zEHBTHHOrLt+8p8sP7Emz7qXAGWwArclVEPCtp+G78sRy9BPG03M54qkso59XQ+aaa5MnKV+QG2mXph+8/9GEU29S1KFkpCrnNbSmQOBWy/1iu12txn+wwWwfD/xD842e/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PHmiWE+f6kK0u2gP05IkVLR8zE97+P6sETGr/2ShMGw=;
 b=ey5XB7Yc42ktPmtusfeyxm0T2R0ggf8KK3BRQ1eUL6mL7Ycr8owZfwMvKfRwVFjZKYpGHTW+4DACs4ZIyqcDXu1Cdj9x2NzGC7RProi9hIgX9t89lg3HvOBzn85KoIWiiK7cHbP4OsixIlZoMh4TXIv8ingm2AWIOk2VqJqO0ls=
Received: from PAZP264CA0152.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::10)
 by PA1PR06MB9326.eurprd06.prod.outlook.com (2603:10a6:102:455::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:02 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::9e) by PAZP264CA0152.outlook.office365.com
 (2603:10a6:102:1f9::10) with Microsoft SMTP Server (version=TLS1_3,
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
Subject: [PATCH v1 04/14] efi: loader: provide EFI_DT_FIXUP_PROTOCOL
Date: Sun,  4 Oct 2026 01:19:37 +0000
Message-ID: <20261004011958.3255011-5-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0070 (UTC) FILETIME=[79948E60:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA1PR06MB9326:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 45deb2b1-059b-46d4-30de-08df21b59d5f
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|23010399003|1800799024|82310400026|376014|18002099003|22082099003|56012099006|11063799006|10067099003|260925021311599003|260925022911599003|260925021911599003|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info: aH6cOA4n3l6cNonz20N8rOycr/QTqXH6yXXbrBlyg31guYNY6xgpSaZRGmbOmuRVQqDL6LU3wV1QQjQOm7UgFV+RFoCuhfZGKXnOEeLgxKqmDDlSAuyrSoXuv8GOUuI6PgZ4PWoAMHDb8Y7ko4zH5FQzMtapkOL4sK8FnelN++ld/pQKq6cf/zBi5RuRE9DDhSQd8kJfyrfjk6WnCmFIfV4G2ACe+325tO5dbXkSjT7oGY5mch6AQai1Va/OhkBzuxIKD0zVfC6ETIbPJdvcRCK5NgXhYG8MsUknts6Sk+EMjmB6Bm8divRdV00lQSIQ4iPW8zAlnqhJ/N1R3bHClDgBQ9+YQAdsw7dxLBcRhbfyMqgBYAZpIjDXw4uaj8rUW9p/M3t5x8Xe03vFZE4UQBl7UFh9DXxKTBTgy4jIcsC9CS9wUeJKPhvgctWgnFto7MPRMSbVUhy3Pm6IpbkQi6/pSi55dNXH0mAnkOL0YSW8LalIWeyt5wGDNrwJadbMgULjOMW7e4i2ouQ7gBvIZmMYsb/wabwALdKjPbwUyTIhXDklfVCOR3sMTGeM0m+jiPB2joHZx4QcH+v/KGyRbLhDaaIHjQr7Zrkjfifyp5zF6aoOPzvW9WiQeLS8IedEIARqrTdIgPn3QYSjmFN03Ew73eakgQSBcMbtx7540uZ1+bphUY0PeySXiSHN8cUYHpn+WD3yr2vwOm4GKj9RFA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(23010399003)(1800799024)(82310400026)(376014)(18002099003)(22082099003)(56012099006)(11063799006)(10067099003)(260925021311599003)(260925022911599003)(260925021911599003)(6133799003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: VLv7RmwuRj4e682gOVPnfOV0P0WftzHrn1ltsDwUV+YQnMoHVO7+IV2yn8T1nhCvL+LxHMqeCIgxE1p8QqIpy6GoYjb2/QYMqrbFRqn94D+aj3co3ZmjSpeMFKQ33Y7c/PfUkeU2fux9QXStRQliPI6zA5za5GG9EDiMCqVtp5JSXkenSD1PuRCazqgnNI3iuMuaSa60WcwnQ+bAeGinYkFDYIqI9F0k2XF61ni1xzS41PhaGqCATanYJ2KPlZLULAPO+DR8AKbdnWfQHXQ4f9ohhbvaTedgLdbQoNZ0LyFqlIY8Z0zq98am4YPCxKHsFQHiAxpU31pz57AKOXCVk4Ap4qTPVcDd8/2vY8QLbmpS8i4vfzInjTiMcEEAeUVXHWs3MKdUt09fdZDgalLP/gOf2XBZzLcbFEdeHkB37fHt8W8rALxXXMsxlNV9P1W3
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:02.2879
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 45deb2b1-059b-46d4-30de-08df21b59d5f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9326
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182007_933634_4B5BEFBA 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  A payload that installs its own devicetree, like systemd-stub
    with a UKI's .dtb or .dtbauto sections, replaces the one barebox installed
    and with it every barebox fixup: machine compatible, serial num [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.101.69.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [52.101.69.43 listed in list.dnswl.org]
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
	RCVD_IN_DNSWL_NONE(0.00)[52.101.69.43:received];
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
X-Rspamd-Queue-Id: 0CE2B2022EC
X-Stat-Signature: mbrj5xaohwzo61txc8rbrcofogj3sh3y

A payload that installs its own devicetree, like systemd-stub with a
UKI's .dtb or .dtbauto sections, replaces the one barebox installed and
with it every barebox fixup: machine compatible, serial number, OP-TEE
reservations, global overlays. systemd-stub asks the firmware to apply
them through EFI_DT_FIXUP_PROTOCOL, of which barebox only has the GUID.

Implement it on the root node:

- APPLY_FIXUPS runs of_fix_tree() on the payload's devicetree and
  returns EFI_BUFFER_TOO_SMALL with the required size if the result
  does not fit. The result is kept for the retry, so fixups and overlays
  run only once.
- RESERVE_MEMORY keeps boot-services allocations out of the memreserve
  entries and /reserved-memory nodes. The regions are requested as
  boot-services data, as the EFI loader cannot allocate
  EFI_RESERVED_TYPE; that suffices, because the kernel honours the
  devicetree reservations after ExitBootServices(). Regions barebox
  already holds, such as OP-TEE's, are skipped.
- INSTALL_TABLE installs the result as configuration table.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/protocols/Kconfig    |   9 ++
 efi/loader/protocols/Makefile   |   1 +
 efi/loader/protocols/dt_fixup.c | 185 ++++++++++++++++++++++++++++++++
 include/efi/protocol/dt_fixup.h |  21 ++++
 4 files changed, 216 insertions(+)
 create mode 100644 efi/loader/protocols/dt_fixup.c
 create mode 100644 include/efi/protocol/dt_fixup.h

diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
index ad7896065a..bc0d3adc8f 100644
--- a/efi/loader/protocols/Kconfig
+++ b/efi/loader/protocols/Kconfig
@@ -71,4 +71,13 @@ config EFI_LOADER_DEVICE_PATH_UTIL
 	  The device path utilities protocol creates and manipulates device
 	  paths and device nodes. It is required to run the EFI Shell.
 
+config EFI_LOADER_DT_FIXUP
+	bool "EFI_DT_FIXUP_PROTOCOL support"
+	depends on OFTREE
+	default y
+	help
+	  Provide EFI_DT_FIXUP_PROTOCOL, so that an EFI payload installing its
+	  own devicetree (like systemd-stub from a UKI's .dtb/.dtbauto section)
+	  gets the barebox devicetree fixups and overlays applied to it.
+
 endmenu
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index d0b55bde46..ffc86ce84d 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_EFI_LOADER_UNICODE_COLLATION_PROTOCOL2) += unicode_collation.o
 obj-$(CONFIG_EFI_LOADER_RNG) += rng.o
 obj-$(CONFIG_EFI_LOADER_DEVICE_PATH_UTIL) += device_path_utilities.o
 obj-$(CONFIG_EFI_LOADER_DEVICE_PATH_TO_TEXT) += device_path_to_text.o
+obj-$(CONFIG_EFI_LOADER_DT_FIXUP) += dt_fixup.o
diff --git a/efi/loader/protocols/dt_fixup.c b/efi/loader/protocols/dt_fixup.c
new file mode 100644
index 0000000000..fe48d4a160
--- /dev/null
+++ b/efi/loader/protocols/dt_fixup.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * EFI_DT_FIXUP_PROTOCOL: apply barebox's fixups and overlays to a devicetree
+ * an EFI payload brings itself
+ */
+
+#define pr_fmt(fmt) "efi-loader: dt-fixup: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <memory.h>
+#include <of.h>
+#include <linux/libfdt.h>
+#include <efi/loader.h>
+#include <efi/memory.h>
+#include <crc.h>
+#include <linux/err.h>
+#include <efi/protocol/dt_fixup.h>
+#include <efi/loader/table.h>
+#include <efi/loader/trace.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+
+static void dt_fixup_reserve(u64 addr, u64 size)
+{
+	u64 start = ALIGN_DOWN(addr, EFI_PAGE_SIZE);
+	u64 len = ALIGN(addr + size, EFI_PAGE_SIZE) - start;
+
+	/* only needs to hold until ExitBootServices() */
+	if (!request_sdram_region_silent("dt-reserved", start, len,
+					 efi_memory_type_to_resource_type(EFI_BOOT_SERVICES_DATA),
+					 MEMATTRS_RW))
+		pr_debug("0x%llx+0x%llx already in use\n", addr, size);
+}
+
+/* Keep boot-services allocations out of what the devicetree reserves */
+static void dt_fixup_reserve_memory(const void *fdt)
+{
+	int i, node, sub, len, na, ns, entry;
+	u64 addr, size;
+
+	for (i = 0; i < fdt_num_mem_rsv(fdt); i++) {
+		if (!fdt_get_mem_rsv(fdt, i, &addr, &size) && size)
+			dt_fixup_reserve(addr, size);
+	}
+
+	node = fdt_path_offset(fdt, "/reserved-memory");
+	if (node < 0)
+		return;
+
+	na = fdt_address_cells(fdt, node);
+	ns = fdt_size_cells(fdt, node);
+	if (na < 1 || na > 2 || ns < 1 || ns > 2) {
+		pr_warn("/reserved-memory: unsupported #address-cells/#size-cells\n");
+		return;
+	}
+	entry = (na + ns) * sizeof(fdt32_t);
+
+	fdt_for_each_subnode(sub, fdt, node) {
+		const fdt32_t *reg = fdt_getprop(fdt, sub, "reg", &len);
+
+		if (!reg)
+			continue;
+
+		for (; len >= entry; len -= entry) {
+			addr = of_read_number(reg, na);
+			size = of_read_number(reg + na, ns);
+			reg += na + ns;
+			if (size)
+				dt_fixup_reserve(addr, size);
+		}
+	}
+}
+
+/* Kept for a caller retrying with a larger buffer, so fixups run only once */
+static struct {
+	void *fixed;
+	size_t in_len;
+	u32 in_crc;
+} dt_fixup_pending;
+
+static void *dt_fixup_apply(const void *dtb)
+{
+	size_t len = fdt_totalsize(dtb);
+	u32 crc = crc32(0, dtb, len);
+	struct device_node *root;
+	void *fixed;
+
+	if (dt_fixup_pending.fixed && dt_fixup_pending.in_len == len &&
+	    dt_fixup_pending.in_crc == crc) {
+		fixed = dt_fixup_pending.fixed;
+		dt_fixup_pending.fixed = NULL;
+		return fixed;
+	}
+
+	root = of_unflatten_dtb(dtb, len);
+	if (IS_ERR(root))
+		return ERR_CAST(root);
+
+	of_fix_tree(root);
+
+	fixed = of_flatten_dtb(root);
+	of_delete_node(root);
+	if (!fixed)
+		return ERR_PTR(-ENOMEM);
+
+	fdt_add_reserve_map(fixed);
+
+	free(dt_fixup_pending.fixed);
+	dt_fixup_pending.fixed = NULL;
+	dt_fixup_pending.in_len = len;
+	dt_fixup_pending.in_crc = crc;
+
+	return fixed;
+}
+
+static efi_status_t EFIAPI dt_fixup(struct efi_dt_fixup_protocol *this,
+				    void *dtb, size_t *buffer_size, u32 flags)
+{
+	efi_status_t ret = EFI_SUCCESS;
+	void *fixed = NULL;
+	size_t size;
+
+	EFI_ENTRY("%p, %p, %p, %u", this, dtb, buffer_size, flags);
+
+	if (!this || !dtb || !buffer_size || !flags || (flags & ~EFI_DT_ALL)) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	if (fdt_check_header(dtb)) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	if (flags & EFI_DT_APPLY_FIXUPS) {
+		fixed = dt_fixup_apply(dtb);
+		if (IS_ERR(fixed)) {
+			ret = PTR_ERR(fixed) == -ENOMEM ? EFI_OUT_OF_RESOURCES :
+							  EFI_INVALID_PARAMETER;
+			fixed = NULL;
+			goto out;
+		}
+
+		size = fdt_totalsize(fixed);
+		if (size > *buffer_size) {
+			/* the caller retries with a buffer of this size */
+			*buffer_size = size;
+			dt_fixup_pending.fixed = fixed;
+			fixed = NULL;
+			ret = EFI_BUFFER_TOO_SMALL;
+			goto out;
+		}
+
+		memcpy(dtb, fixed, size);
+	} else if (fdt_totalsize(dtb) > *buffer_size) {
+		*buffer_size = fdt_totalsize(dtb);
+		ret = EFI_BUFFER_TOO_SMALL;
+		goto out;
+	}
+
+	if (flags & EFI_DT_RESERVE_MEMORY)
+		dt_fixup_reserve_memory(dtb);
+
+	if (flags & EFI_DT_INSTALL_TABLE)
+		ret = efi_install_configuration_table(&efi_fdt_guid, dtb);
+
+out:
+	free(fixed);
+	return EFI_EXIT(ret);
+}
+
+static struct efi_dt_fixup_protocol efi_dt_fixup_prot = {
+	.revision = EFI_DT_FIXUP_PROTOCOL_REVISION,
+	.fixup = dt_fixup,
+};
+
+static int efi_dt_fixup_init(void)
+{
+	efi_add_root_node_protocol_deferred(&efi_dt_fixup_protocol_guid,
+					    &efi_dt_fixup_prot);
+	return 0;
+}
+device_initcall(efi_dt_fixup_init);
diff --git a/include/efi/protocol/dt_fixup.h b/include/efi/protocol/dt_fixup.h
new file mode 100644
index 0000000000..fd418793f6
--- /dev/null
+++ b/include/efi/protocol/dt_fixup.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_PROTOCOL_DT_FIXUP_H_
+#define __EFI_PROTOCOL_DT_FIXUP_H_
+
+#include <efi/types.h>
+
+#define EFI_DT_FIXUP_PROTOCOL_REVISION 0x00010000
+
+#define EFI_DT_APPLY_FIXUPS	0x00000001
+#define EFI_DT_RESERVE_MEMORY	0x00000002
+#define EFI_DT_INSTALL_TABLE	0x00000004
+#define EFI_DT_ALL		(EFI_DT_APPLY_FIXUPS | EFI_DT_RESERVE_MEMORY | \
+				 EFI_DT_INSTALL_TABLE)
+
+struct efi_dt_fixup_protocol {
+	u64 revision;
+	efi_status_t (EFIAPI *fixup)(struct efi_dt_fixup_protocol *this,
+				     void *dtb, size_t *buffer_size, u32 flags);
+};
+
+#endif
-- 
2.43.0



