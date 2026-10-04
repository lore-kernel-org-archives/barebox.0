Delivery-date: Sun, 04 Oct 2026 03:25:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAyg-009UTG-2f
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:25:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1856D202303
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:25:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ihgbUM93;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=agZORH6D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791077122; a=rsa-sha256;
	cv=pass;
	b=VLEclyjxsu5z10qB2gUML3JN7XsAdaJxkb2GNBdU4YdBvX7OdZhKGIvBkuBg6HJhMlcqbw
	8IVuHaSXzsEqMrwKe3p6WvXOt+OyMrcYnlUF41kYJYxgTuyvKEi0Z5LE72140s5i88wMd7
	R7BebSvCQyX3TYcIn/3kY7+s07YsE2zQdTLoSIHpQwhSj90ofUpecneZAJpzGfWU2LniFr
	uEyRJaF9kLoRDL0+XlNEyzQ9s+HR7H7TMzygLJz14rX63g2QYleZ6oj4QDVKlDBBnW2dvZ
	fPnSIWKWgPSK/6SZsCiVqPcFgQQgJr+XQFUkx2zdr73UfpxqK2+yHSh+ney/Aw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ihgbUM93;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=agZORH6D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791077122;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mnD01lIqtyuPnOETOGiK7NVsReJrcpl1F6+akwnl1lk=;
	b=P/fK0xWZnHf6zHb5v3H4WbVEETT5Ct/wF7VqmLilyMyi7gZP8knOTZpns+KYVWfVSM2vA8
	+DTon0mUMOBz3EkufdyhSfAvDbaVWJw1v5v/PUbh6Jioykm+J64mRJGl7gFklGaVnvUgng
	1Fic0bOY72FT6wtegxthLWYf74XkEehvNL2gR9DGEDGV0YECCNVNxX32i04ua47I8tMgBN
	PG4TNuOheZ0VA7i2TKnKp0TtXSF7m/6QKk/aqaErhvIhipDiy5IzYouGulEhvowT4i0svS
	se6z+L2NJF2imuZTWGZNJDmxJrJNuB0PrZL8kVE6wNjG7rEDowFIjMKVCDvftw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mnD01lIqtyuPnOETOGiK7NVsReJrcpl1F6+akwnl1lk=; b=ihgbUM93FxUwrQPJvTiaC+Bk7i
	tZ2vOjW/CtVSsMM+jfj7kKtsQqoArjgu8qDOgcN1jUzAvKH95U8rQIBu858EUkpIkFPt0ozspoul+
	e85GR1VqDnsuX8wd/D7A4aTK1NlDEql/jtwaL1Rx1TGwK+KEDJJxFkSmougsod7CfNQ+M0awbBb5u
	tsgSpda4BL0UXrOEzi8c8wQIzJaJNqvsi4BQkB0SljYjnlFichjBqlUZUH/OzBNaITBTljFSrHe8W
	8LHGxeJvS7OEgHWZ+nw8FfUgtH4p+4YhnvLpZdqMVVd+z51WVxlW5hQaNJmqih9bIuAxWJGXIe98k
	AUwZYsDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtm-0000000EE3M-0ajz;
	Sun, 04 Oct 2026 01:20:18 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtf-0000000EDux-3PeJ
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KPAnMMuCYvbgFOdQZc6eOF99FOF4ZPidh189YOhnIdfB8rcDy7Wsp/vtW/UjyorMhcAv5nLUefulF/xM5sh0fxe2P4L7hXJbuV8I0IirRAQNTnVU42Q6FHAeR6Mt66Q1NCNRGiq3XtKbZz0EQZcSik/5cPyAGztA7V6DGjDuLYWNG8zClwwpWt7M+o5cdcN9dlC65mq9TCxKdDNlVdaPP73bd2L6E+qIC6Ny+yIC98BZtrwsZ49P1jcUTRbZoKMsiMoK4v9RsaTw2tHWbNsJcfJKQrxtTIEO4utJCxxuLqRwZGyqJaMTum4dNL3QOt47Tm/+Whd1s69rNPKMDpdfgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mnD01lIqtyuPnOETOGiK7NVsReJrcpl1F6+akwnl1lk=;
 b=kzkwHzX8S4Fq6xsrqF5OtYDw9K/zReBuRxEh5EB9qIfWZ1E2ILIRQ0UI2XKkWslQbgFFKXG2dMClrWiQspz3ypazasyYqT4uO+dZ0ki/Chqm1E4U8vZmjwW5CwlxKgK0PjFtilJY4Uoloa4fiOOKkvERMF5xzLS2koAK1xgT7ytyKgXaqYkUktu5Fw3Lj5YpcP4N0J2Zb2uP3alKfCN6R2HyLZpm4nY6FnzapP46h+fNj6FxEh8G0F4G2h5wzT4vwJUne0TV+QwABezI8zsmhcmboUp57Ryjw6M54HOtOcRGzBpMEgv0wjifZgAz8ylTfnedkT1aDhOVG+1QQBgjdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mnD01lIqtyuPnOETOGiK7NVsReJrcpl1F6+akwnl1lk=;
 b=agZORH6DXCvFfPa0ts6zhUiuS72f5uRnzGIFTisutMVX3QOnZ/O24HG8EZaHTJw5GY7RtJbuGi+is2VlXVoEPUdReItm1q/1UyfzHhmOt7Xkm+mWs8rwAZMpwIETV6/l/UBgqdFFaZKupCnxIS7ceUiInLbDKAR6HrSDbgMt3Z4=
Received: from PAZP264CA0154.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::16)
 by PA1PR06MB9234.eurprd06.prod.outlook.com (2603:10a6:102:467::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Sun, 4 Oct
 2026 01:20:03 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::26) by PAZP264CA0154.outlook.office365.com
 (2603:10a6:102:1f9::16) with Microsoft SMTP Server (version=TLS1_3,
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
Subject: [PATCH v1 08/14] efi: loader: verify Authenticode signatures against built-in keys
Date: Sun,  4 Oct 2026 01:19:41 +0000
Message-ID: <20261004011958.3255011-9-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0180 (UTC) FILETIME=[79A55740:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|PA1PR06MB9234:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: dda10fd3-2592-49a8-4c2b-08df21b59e2a
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|36860700016|23010399003|82310400026|11063799006|56012099006|260925022911599003|260925021911599003|260925021311599003|10067099003|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: NpvENiMy42WYAM+fp/Kp+tbCMABFMK/nCo9+VpimH9qP1sgzu0Q+5emehBdc7gKs7vBiqZlpnbCDBH2fUNN4dJZn5pElij0yFhe1H/LdvHP6f7lM7BFIft0QIHrZKRSdamiHVWO1Prn2bSrtXwXb3wZcf1iEjW2666CpRng5lEARdqSWyytQSZ2EE02KjaDCwINkIvosBjkPH9WVmZWtsdpKvDHbQC8mr/+VtMur0atqaek1m1kUUQCVIeMTU0hdq3RDm7ZMf9EUN/Lwk+C6gtUnCpfTZZPY+DzSp2MsBu+Qj6jkR/nxAsZkVMkWkGTlmgZiv2RNj2kEZYNOjdIwApaJDNKSD+NnBs6YUN13DSxq3iaJcSj0GUDOoIgz9RMahMgL08N1aEtyT4aItQjwgmvq4F2IeuPSnbLQgu4rIrPsPuICAt191gWC00R/FNPjB2J2xEfpW6doBQP+J3qk6v8vRZi4eNFNTQKiaiKYbrhtdMybNCaD7gCyBT/y2coqQMOAkKd8VrtVPYbm5yyKYdSyPsdro1+KdCAvdCP7fvEZWNX1t8mgvuBSGwwWobGBxLejdjg1C9dGPpk8XZ59aI3fRwF4KPL0JUmX7hDjh357Jm/katjO1/JoZAxmDBGsATSIy8+5nvBtWnbyIfgcrH3bVUv9nNXYXXr1VvHEiftAfr5xAQjPdu4QkTrv+K09V9do1j4h09Y1+h/34BELgQ==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(23010399003)(82310400026)(11063799006)(56012099006)(260925022911599003)(260925021911599003)(260925021311599003)(10067099003)(22082099003)(18002099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: GPPBq6CiqXnpuLt9BKfxmV5xbhGrejH1iJVLXIhK3v9h/Ev3cGI/wUDmMUeMBN+bCe7S8unhWrg/ClHZDcvNggb0PADj5InBtZGJpCf8isHU1m4RKTItDiWytElfQTAKOQmAYdlnoV6GjC5SCIRnICF/tNdMuXz0bltCrbMjGLbtsp3FxE+6goqKi9X7DUvy9eFP/p4ag6zpJ6VHqT+8I5S3NgG+F3sqZPP/tt8vfyDwG1CF+oYKtm5Y+gtSJSr4QtzGyAUtKTHxVKJi1kfXPYgFP9pFyIbznlx/BX6YAVyw2Ikqqvvx47qMiFvhKj75rFkwtoINZdOJi1mMW/gMFjexyY66NZk3pkalpu+gNmyC+XdlMQ5n3Gf/w8/4RH/bs0x7C9AaCDV6cjAQB9t+drya9ojtU28ZE1VLUkMXoMZ3m6FTyEW9PRqt2/SpLV1j
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:03.6196
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dda10fd3-2592-49a8-4c2b-08df21b59e2a
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR06MB9234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182012_051464_E22A55CD 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox's EFI loader verifies no signatures: efi_image_authenticate()
    accepts every image. Add efi_authenticode_verify() as the verifier for signed
    EFI images: compute the Authenticode digest over the [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c20a:0:0:0:7 listed in]
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
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c20a::7:received];
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
X-Rspamd-Queue-Id: 1856D202303
X-Stat-Signature: j716ij6g7xakd93x1ygfgsctou1pa7az

barebox's EFI loader verifies no signatures: efi_image_authenticate()
accepts every image. Add efi_authenticode_verify() as the verifier for
signed EFI images: compute the Authenticode digest over the regions
efi_image_parse() collects, check it against the SpcIndirectDataContent
of the PKCS#7 signature, check the messageDigest attribute against the
digest of that content, and verify the signature over the attributes
with the keys of a barebox keyring. The following commits use it.

barebox has no ASN.1 decoder: keys are converted from certificates at
build time, and FIT signatures carry none. The PKCS#7 structure is
walked as plain DER for the fields needed, with every length checked
against what remains; the certificates it carries are skipped.

Supported are one signer, SHA-256 and RSA. As for FIT images, trust
comes from the keyring, not from X.509 chains or db/dbx.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/Kconfig                |  16 ++
 efi/loader/Makefile               |   1 +
 efi/loader/authenticode.c         | 435 ++++++++++++++++++++++++++++++
 include/efi/loader/authenticode.h |   9 +
 4 files changed, 461 insertions(+)
 create mode 100644 efi/loader/authenticode.c
 create mode 100644 include/efi/loader/authenticode.h

diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index 5692e54ebe..4099da0689 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -24,6 +24,22 @@ config EFI_LOADER_DEBUG_SUPPORT
 config EFI_LOADER_SECURE_BOOT
 	bool
 
+config EFI_LOADER_AUTHENTICODE
+	bool "Verify Authenticode signatures of booted EFI images"
+	depends on CRYPTO_BUILTIN_KEYS && HAVE_DIGEST_SHA256
+	select CRYPTO_RSA
+	help
+	  Verify the Authenticode (PKCS#7, SHA-256, RSA) signature of an EFI
+	  image booted with bootm against the keys compiled into the "efi"
+	  keyring (CONFIG_CRYPTO_PUBLIC_KEYS, keyring=efi). With signed images
+	  forced, an EFI image then boots only if one of those keys verifies
+	  it, the same way a FIT image must carry a valid signature.
+
+	  X.509 certificates in the signature are not evaluated: trust is
+	  anchored in the keyring. barebox does not report UEFI Secure Boot
+	  to the payload, so a UKI keeps taking its command line from
+	  barebox.
+
 menu "UEFI services"
 
 config EFI_LOADER_GET_TIME
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 24850e87b1..775014dc22 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -14,6 +14,7 @@ obj-y += boot.o
 obj-y += runtime.o
 obj-y += setup.o
 obj-y += watchdog.o
+obj-$(CONFIG_EFI_LOADER_AUTHENTICODE) += authenticode.o
 obj-y += loadopts.o
 obj-y += efi_var_common.o
 obj-y += efi_variable.o
diff --git a/efi/loader/authenticode.c b/efi/loader/authenticode.c
new file mode 100644
index 0000000000..36e5a46fc6
--- /dev/null
+++ b/efi/loader/authenticode.c
@@ -0,0 +1,435 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Authenticode verification of PE images against barebox built-in keys:
+ * one signer, SHA-256 and RSA, the certificates in the signature are ignored
+ */
+
+#define pr_fmt(fmt) "efi-loader: authenticode: " fmt
+
+#include <common.h>
+#include <digest.h>
+#include <crypto/sha.h>
+#include <malloc.h>
+#include <crypto/public_key.h>
+#include <efi/loader/pe.h>
+#include <efi/loader/authenticode.h>
+#include <efi/error.h>
+#include <pe.h>
+
+struct der {
+	const u8 *p;
+	const u8 *end;
+};
+
+struct der_elem {
+	u8 tag;
+	const u8 *start;	/* tag byte */
+	const u8 *val;
+	size_t len;
+	size_t total;		/* tag + length + value */
+};
+
+#define DER_INTEGER	0x02
+#define DER_OCTET	0x04
+#define DER_OID		0x06
+#define DER_SEQ		0x30
+#define DER_SET		0x31
+#define DER_CTX0	0xa0
+#define DER_CTX1	0xa1
+
+static const u8 oid_signed_data[] = { 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x07, 0x02 };
+static const u8 oid_spc_indirect_data[] = {
+	0x2b, 0x06, 0x01, 0x04, 0x01, 0x82, 0x37, 0x02, 0x01, 0x04
+};
+static const u8 oid_sha256[] = { 0x60, 0x86, 0x48, 0x01, 0x65, 0x03, 0x04, 0x02, 0x01 };
+static const u8 oid_content_type[] = { 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x09, 0x03 };
+static const u8 oid_message_digest[] = { 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x09, 0x04 };
+
+static int der_next(struct der *d, struct der_elem *e)
+{
+	const u8 *p = d->p;
+	size_t len, n;
+
+	if (d->end - p < 2)
+		return -EBADMSG;
+
+	e->start = p;
+	e->tag = *p++;
+	if ((e->tag & 0x1f) == 0x1f)
+		return -EBADMSG;
+
+	len = *p++;
+	if (len & 0x80) {
+		n = len & 0x7f;
+		if (!n || n > 4 || d->end - p < n)
+			return -EBADMSG;
+		len = 0;
+		while (n--)
+			len = (len << 8) | *p++;
+	}
+
+	if (d->end - p < len)
+		return -EBADMSG;
+
+	e->val = p;
+	e->len = len;
+	e->total = p + len - e->start;
+	d->p = p + len;
+
+	return 0;
+}
+
+static int der_expect(struct der *d, u8 tag, struct der_elem *e)
+{
+	int ret = der_next(d, e);
+
+	if (ret)
+		return ret;
+
+	return e->tag == tag ? 0 : -EBADMSG;
+}
+
+static struct der der_enter(const struct der_elem *e)
+{
+	return (struct der) { .p = e->val, .end = e->val + e->len };
+}
+
+static bool der_oid_is(const struct der_elem *e, const u8 *oid, size_t len)
+{
+	return e->tag == DER_OID && e->len == len && !memcmp(e->val, oid, len);
+}
+
+/* AlgorithmIdentifier ::= SEQUENCE { OID, parameters OPTIONAL } */
+static int der_expect_sha256(struct der *d)
+{
+	struct der_elem seq, oid;
+	struct der in;
+	int ret;
+
+	ret = der_expect(d, DER_SEQ, &seq);
+	if (ret)
+		return ret;
+
+	in = der_enter(&seq);
+	ret = der_expect(&in, DER_OID, &oid);
+	if (ret)
+		return ret;
+
+	return der_oid_is(&oid, oid_sha256, sizeof(oid_sha256)) ? 0 : -EOPNOTSUPP;
+}
+
+struct authenticode {
+	const u8 *pe_digest;	/* SpcIndirectDataContent.messageDigest */
+	const u8 *spc;		/* SpcIndirectDataContent content octets */
+	size_t spc_len;
+	const u8 *attrs;	/* [0] IMPLICIT authenticatedAttributes */
+	size_t attrs_len;
+	const u8 *attr_digest;	/* messageDigest attribute value */
+	bool attr_content_type_ok;
+	const u8 *sig;
+	size_t sig_len;
+};
+
+static int authenticode_parse_attrs(struct authenticode *a,
+				    const struct der_elem *attrs)
+{
+	struct der in = der_enter(attrs);
+	struct der_elem attr, oid, set, val;
+	struct der ain, sin;
+	int ret;
+
+	while (in.p < in.end) {
+		ret = der_expect(&in, DER_SEQ, &attr);
+		if (ret)
+			return ret;
+
+		ain = der_enter(&attr);
+		ret = der_expect(&ain, DER_OID, &oid);
+		if (ret)
+			return ret;
+		ret = der_expect(&ain, DER_SET, &set);
+		if (ret)
+			return ret;
+		sin = der_enter(&set);
+
+		if (der_oid_is(&oid, oid_message_digest, sizeof(oid_message_digest))) {
+			ret = der_expect(&sin, DER_OCTET, &val);
+			if (ret || val.len != SHA256_DIGEST_SIZE)
+				return -EBADMSG;
+			a->attr_digest = val.val;
+		} else if (der_oid_is(&oid, oid_content_type, sizeof(oid_content_type))) {
+			ret = der_expect(&sin, DER_OID, &val);
+			if (ret)
+				return ret;
+			a->attr_content_type_ok =
+				der_oid_is(&val, oid_spc_indirect_data,
+					   sizeof(oid_spc_indirect_data));
+		}
+	}
+
+	return a->attr_digest ? 0 : -EBADMSG;
+}
+
+static int authenticode_parse(struct authenticode *a, const void *buf, size_t len)
+{
+	struct der d = { .p = buf, .end = (const u8 *)buf + len };
+	struct der_elem e, ci, sd, spc, dinfo, si;
+	struct der in, sdin, ciin, spcin, dinin, siin;
+	int ret;
+
+	/* ContentInfo ::= SEQUENCE { contentType, [0] EXPLICIT content } */
+	ret = der_expect(&d, DER_SEQ, &ci);
+	if (ret)
+		return ret;
+	in = der_enter(&ci);
+	ret = der_expect(&in, DER_OID, &e);
+	if (ret)
+		return ret;
+	if (!der_oid_is(&e, oid_signed_data, sizeof(oid_signed_data)))
+		return -EBADMSG;
+	ret = der_expect(&in, DER_CTX0, &e);
+	if (ret)
+		return ret;
+	in = der_enter(&e);
+
+	/* SignedData ::= SEQUENCE { version, digestAlgorithms, contentInfo, ... } */
+	ret = der_expect(&in, DER_SEQ, &sd);
+	if (ret)
+		return ret;
+	sdin = der_enter(&sd);
+	ret = der_expect(&sdin, DER_INTEGER, &e);
+	if (ret)
+		return ret;
+	ret = der_expect(&sdin, DER_SET, &e);
+	if (ret)
+		return ret;
+
+	/* contentInfo: SPC_INDIRECT_DATA carrying the PE image digest */
+	ret = der_expect(&sdin, DER_SEQ, &e);
+	if (ret)
+		return ret;
+	ciin = der_enter(&e);
+	ret = der_expect(&ciin, DER_OID, &e);
+	if (ret)
+		return ret;
+	if (!der_oid_is(&e, oid_spc_indirect_data, sizeof(oid_spc_indirect_data)))
+		return -EBADMSG;
+	ret = der_expect(&ciin, DER_CTX0, &e);
+	if (ret)
+		return ret;
+	ciin = der_enter(&e);
+	ret = der_expect(&ciin, DER_SEQ, &spc);
+	if (ret)
+		return ret;
+	a->spc = spc.val;
+	a->spc_len = spc.len;
+
+	spcin = der_enter(&spc);
+	ret = der_expect(&spcin, DER_SEQ, &e);	/* SpcAttributeTypeAndOptionalValue */
+	if (ret)
+		return ret;
+	ret = der_expect(&spcin, DER_SEQ, &dinfo);	/* DigestInfo */
+	if (ret)
+		return ret;
+	dinin = der_enter(&dinfo);
+	ret = der_expect_sha256(&dinin);
+	if (ret)
+		return ret;
+	ret = der_expect(&dinin, DER_OCTET, &e);
+	if (ret || e.len != SHA256_DIGEST_SIZE)
+		return -EBADMSG;
+	a->pe_digest = e.val;
+
+	/* skip optional certificates [0] and crls [1] */
+	do {
+		ret = der_next(&sdin, &e);
+		if (ret)
+			return ret;
+	} while (e.tag == DER_CTX0 || e.tag == DER_CTX1);
+
+	if (e.tag != DER_SET)
+		return -EBADMSG;
+
+	/* first SignerInfo only */
+	in = der_enter(&e);
+	ret = der_expect(&in, DER_SEQ, &si);
+	if (ret)
+		return ret;
+	siin = der_enter(&si);
+	ret = der_expect(&siin, DER_INTEGER, &e);
+	if (ret)
+		return ret;
+	ret = der_expect(&siin, DER_SEQ, &e);	/* issuerAndSerialNumber */
+	if (ret)
+		return ret;
+	ret = der_expect_sha256(&siin);
+	if (ret)
+		return ret;
+
+	ret = der_expect(&siin, DER_CTX0, &e);
+	if (ret)
+		return ret;
+	a->attrs = e.start;
+	a->attrs_len = e.total;
+	ret = authenticode_parse_attrs(a, &e);
+	if (ret)
+		return ret;
+
+	ret = der_expect(&siin, DER_SEQ, &e);	/* digestEncryptionAlgorithm */
+	if (ret)
+		return ret;
+	ret = der_expect(&siin, DER_OCTET, &e);
+	if (ret)
+		return ret;
+	a->sig = e.val;
+	a->sig_len = e.len;
+
+	return 0;
+}
+
+static int sha256_regions(const struct efi_image_regions *regs, u8 *out)
+{
+	struct digest *d = digest_alloc_by_algo(HASH_ALGO_SHA256);
+	int i, ret;
+
+	if (!d)
+		return -EOPNOTSUPP;
+
+	ret = digest_init(d);
+	for (i = 0; !ret && i < regs->num; i++)
+		ret = digest_update(d, regs->reg[i].data, regs->reg[i].size);
+	if (!ret)
+		ret = digest_final(d, out);
+
+	digest_free(d);
+	return ret;
+}
+
+static int sha256_buf(const void *buf, size_t len, u8 *out)
+{
+	struct digest *d = digest_alloc_by_algo(HASH_ALGO_SHA256);
+	int ret;
+
+	if (!d)
+		return -EOPNOTSUPP;
+
+	ret = digest_digest(d, buf, len, out);
+	digest_free(d);
+	return ret;
+}
+
+/* The signature covers the attributes DER-encoded as SET OF, not as [0] */
+static int sha256_attrs(const struct authenticode *a, u8 *out)
+{
+	struct digest *d = digest_alloc_by_algo(HASH_ALGO_SHA256);
+	const u8 set_tag = DER_SET;
+	int ret;
+
+	if (!d)
+		return -EOPNOTSUPP;
+
+	ret = digest_init(d);
+	if (!ret)
+		ret = digest_update(d, &set_tag, 1);
+	if (!ret)
+		ret = digest_update(d, a->attrs + 1, a->attrs_len - 1);
+	if (!ret)
+		ret = digest_final(d, out);
+
+	digest_free(d);
+	return ret;
+}
+
+/**
+ * efi_authenticode_verify() - verify a PE image's Authenticode signature
+ * @efi:	PE image
+ * @len:	exact size of the image, see efi_pe_file_size()
+ * @keyring:	barebox keyring holding the trusted keys
+ *
+ * Return: 0 if the image is signed by a key in @keyring, negative error code
+ * otherwise.
+ */
+int efi_authenticode_verify(void *efi, size_t len, const char *keyring)
+{
+	struct efi_image_regions *regs = NULL;
+	const struct public_key *key;
+	struct authenticode a = {};
+	WIN_CERTIFICATE *wincert;
+	size_t auth_len;
+	u8 pe_hash[SHA256_DIGEST_SIZE], hash[SHA256_DIGEST_SIZE];
+	const struct keyring *kr;
+	int ret;
+
+	if (!efi_image_parse(efi, len, &regs, &wincert, &auth_len))
+		return -EBADMSG;
+
+	if (!wincert) {
+		pr_err("image is not signed\n");
+		ret = -ENOKEY;
+		goto out;
+	}
+
+	if (wincert->dwLength > auth_len || wincert->dwLength <= sizeof(*wincert) ||
+	    wincert->wRevision != WIN_CERT_REVISION_2_0 ||
+	    wincert->wCertificateType != WIN_CERT_TYPE_PKCS_SIGNED_DATA) {
+		pr_err("unsupported certificate table entry\n");
+		ret = -EBADMSG;
+		goto out;
+	}
+
+	ret = authenticode_parse(&a, wincert + 1, wincert->dwLength - sizeof(*wincert));
+	if (ret) {
+		pr_err("cannot parse signature: %pe\n", ERR_PTR(ret));
+		goto out;
+	}
+
+	if (!a.attr_content_type_ok) {
+		pr_err("signed content is not SpcIndirectDataContent\n");
+		ret = -EBADMSG;
+		goto out;
+	}
+
+	ret = sha256_regions(regs, pe_hash);
+	if (ret)
+		goto out;
+	if (memcmp(pe_hash, a.pe_digest, sizeof(pe_hash))) {
+		pr_err("image digest mismatch\n");
+		ret = -EBADMSG;
+		goto out;
+	}
+
+	ret = sha256_buf(a.spc, a.spc_len, hash);
+	if (ret)
+		goto out;
+	if (memcmp(hash, a.attr_digest, sizeof(hash))) {
+		pr_err("signed attributes do not match the content\n");
+		ret = -EBADMSG;
+		goto out;
+	}
+
+	ret = sha256_attrs(&a, hash);
+	if (ret)
+		goto out;
+
+	kr = keyring_find(keyring);
+	if (!kr) {
+		pr_err("keyring '%s' not registered\n", keyring);
+		ret = -ENOKEY;
+		goto out;
+	}
+
+	ret = -ENOKEY;
+	for_each_key_in_keyring(key, kr) {
+		if (!public_key_verify(key, a.sig, a.sig_len, hash, HASH_ALGO_SHA256)) {
+			pr_info("verified with key '%s'\n", key->key_name_hint ?: "?");
+			ret = 0;
+			break;
+		}
+	}
+
+	if (ret)
+		pr_err("no key in keyring '%s' verifies the signature\n", keyring);
+out:
+	free(regs);
+	return ret;
+}
diff --git a/include/efi/loader/authenticode.h b/include/efi/loader/authenticode.h
new file mode 100644
index 0000000000..24c46ca7cf
--- /dev/null
+++ b/include/efi/loader/authenticode.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_LOADER_AUTHENTICODE_H
+#define __EFI_LOADER_AUTHENTICODE_H
+
+#include <linux/types.h>
+
+int efi_authenticode_verify(void *efi, size_t len, const char *keyring);
+
+#endif
-- 
2.43.0



