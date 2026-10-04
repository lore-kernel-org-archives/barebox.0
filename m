Delivery-date: Sun, 04 Oct 2026 03:21:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDAvB-009UO8-2B
	for lore@lore.pengutronix.de;
	Sun, 04 Oct 2026 03:21:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 25C35202304
	for <lore@pengutronix.de>; Sun, 04 Oct 2026 03:21:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="G6/R/1Zg";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="CzASx/gb";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791076905; a=rsa-sha256;
	cv=pass;
	b=Ce0eSJHrA6otgVshP9m1lcU52PT3MjPZjhWlIgzxxxRW+55yCaRHh2EmajyMOV3jKUTTQD
	Y6fRP3UsC0v4sc1wiWDTbUqx8on+CMe+P/OBdSUiO7gHgsZMA/rP8GA5Cg+zww9mC0Gz3m
	+4QhKaVg7RuBe8bwx/2iz5saJVN8U2uuPDTzMeD7cpRID1z9+pI9ny9o6wagjaoGfOY50+
	Ak3YbsDno2bKir4AA0BEPRKIlbdyKoSWs4j2R2ZxD3GUzIjgvLhYRoJpU5CQSarV21rbnR
	t1PCu2DI/Rc60viUi/UiLKkuxcD/71C5OOU8kFROTJ1XEjWtOvt9E6BetCJf7A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="G6/R/1Zg";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b="CzASx/gb";
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
	bh=cEtmKrSpPjrLdIl1n0liRbERVCBpbpnsN985tjw6yPw=;
	b=FFPbIHknzfVuBdXLMU1xhuJs3xPEOfWcE2G7x5sapiHvhdY8I3jH41QsntpB2FwxQ6uYEC
	kfpacfuC8ezxMue1hpfx6K8FDv2pQpJQy3Zp9AYb1wn53zGeEPlEwMedm2Vwwzz8h2jH/S
	lj7n7qD2xmfz52poIcocC3WEzfhxLSotI+QiCwWpSkcWVv5PHJjgoShTk2Ncajf1Vpg77m
	6vFdfRtUV6rXtOjHpgFff9UPjy+CYtjPCb0w/dRUpvem3gfgNpmFQ6MxG5aqKw9c+DMIwz
	ZZ2FYxzlIPhxyTLlUoMFek9CZ5v+8uXXX2u/iokAur1qU9V7sLAOm18+6WeZdQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cEtmKrSpPjrLdIl1n0liRbERVCBpbpnsN985tjw6yPw=; b=G6/R/1ZgHcQQA6RRtBOdMPhozL
	XTupcbIkfOTPObKag/eFYtun+HAhj8l+7Tm1RxEosQQB5iOV6J4aPEHSaEr3JasmMZIxpzmCSMa0O
	PAOTuk9tBQ5prAl/24dpctcjqyhIIn+zRIhfeTXvNW7L5bWZJbVYn+KFqUML+c1WvLjzxgDRGMi3b
	R23AB9PmvjRrXaDUe4/Cd0WUXWoHteFJIHEdmKDiBBnaILxCitN/GIfJXboPBI5cfmZCp7blt9qoy
	aLFHXf9bqQheIf0sYfIhhsv2Q3AxIILgmkCq+Q32IpSLhAhog+uISs1JbWUcJNjP+9VnWNQVNScwm
	KXIE8yqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtg-0000000EDwt-1m5c;
	Sun, 04 Oct 2026 01:20:12 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDAtc-0000000EDsO-1DOX
	for barebox@lists.infradead.org;
	Sun, 04 Oct 2026 01:20:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zRviLtyUQjhflAMm3cxEtrYZ+msb5VUIJAW7q0hQ7oCWTVtzMHI4U1eofRp8ycd6a67ItT6yVNTU7f9hhU9oDRmj62dhnPW1DmN6jSuucJZ85HoA1nKsZ545cDqjcQs1FgciY14WAe1Es2RiARd1iyV6/E8RgEYlN79Dn35FgLonSeNlVlMXNM/5R0hnvzp/nwVyoOdFfFpb/505Ro2uJk0IR2xvva92uWguXeESmxYP9kAePApRN+or+2YgmRPrQi0A9/hCgFBaNMMwXNqXYQaWI3Mvm5z1EtAGfqNuhja4/wgeyjZGZ004/mbcwGsa09wpPwm7ZSPX95i1hYRXrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cEtmKrSpPjrLdIl1n0liRbERVCBpbpnsN985tjw6yPw=;
 b=JB+cISsNquuVrww/93i1y7o5RfDPd9ZJ9H+H6gulZv5qcxAPiAMc7kpI0iNl1Jrtc6VOJCRGgTwNFM3Pvr8Grf1zSk4dMKSG1aTrAejQB4EWq2tZJbomxiTXVcOtzVLqUgkvypeCLaQK/FdcKvflGlZgcEW2fwsuRosz5ffhDw3JWtKfD8eLAL2PlkrgEWmJf0JAceKVQOhxRvl7qw3kZAiRIkylo6T36/dEWWcCrjz2Nbj3C7G3zQsLarRr715w0z+Tr2Zf9YKmFdSfATACt3tTPi6r3q+KMsPOFNVXX877IToS79WAO5crfdxcQio4GcfvbIqxtkEswOcj3X0N9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEtmKrSpPjrLdIl1n0liRbERVCBpbpnsN985tjw6yPw=;
 b=CzASx/gbYmL88oPhBLy7M8+Ofxtp6ssQ7BgSdkfp7XakppOwXHh9rYbj+UpKjSpCdrvrcD1WkM53jI+F/kMmSkXUCD/To5izx+N30rNIuCDF824MGA1UKCltEr932AoaKPiOLVm5i3vnG4k4F35AVAscz7AyEly9/6KiMrIPTSc=
Received: from PAZP264CA0154.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1f9::16)
 by AS5PR06MB10700.eurprd06.prod.outlook.com (2603:10a6:20b:753::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.24; Sun, 4 Oct
 2026 01:20:03 +0000
Received: from ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
 (2603:10a6:102:1f9:cafe::4a) by PAZP264CA0154.outlook.office365.com
 (2603:10a6:102:1f9::16) with Microsoft SMTP Server (version=TLS1_3,
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
Subject: [PATCH v1 06/14] efi: loader: bootm: load only the PE image, not the whole file
Date: Sun,  4 Oct 2026 01:19:39 +0000
Message-ID: <20261004011958.3255011-7-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Oct 2026 01:20:00.0117 (UTC) FILETIME=[799BBA50:01DD539E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR1PEPF0000E6B0:EE_|AS5PR06MB10700:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 7d5cbb6d-65dc-420a-cac7-08df21b59db3
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|82310400026|376014|23010399003|1800799024|10067099003|56012099006|11063799006|5023799004|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: +5aQkE86pwiLa811INPByknzsRUVZq+Zy9mGzmh74KOZpO49dSUknZU1BxYTHfvtONW9hVzDOYcnO950XsM/kG30Y5BWOLZ5/w6nZKgUHvD2/dTOaUVvPDI1dpeDAZX+dJi+3LE4GHuSPs5VjQ4t72vHJ9if1NqWV2EdbCteV90nmIy5ppTobMd2PQLCKqYqpQ9Emdv8XUoocFskWEc/p1OO88Es5RyIpNVn6S0KtGsMhPGGkHElrbRrL/DnpenznJk8eJaC4NHUO7jNCwZdUi47mATYlyj2snmxPMX+h1EMhLfL2LLLzG+YrxNcZrdx9cI6X0T5RGxADCMmCShw8hp+4E4umz8EpVYhYYWBIqy0XwlnloXdrE4L2CKUNccTwSJNwNT/j1KKTH0OWpNRVyI62dgMLbmy/piWvfeoT2oMigJ7FvHmMjgfAsEFaMfeS+KWhp6NnWaAJhfmtiWSwnFoXTO0TdgL8fa6QW5b0Cw9oCxYfnNtNr086p8fn7KpNDLSsj8sH6tisosgT/JtCS0UINQVp0ozGohToOWBgfYMVwlO7CO6BJ50uuiWoXs5jGfKzDzsC4YD/N4lHGkj1QioWGppOkkM4P9tDHyM3uVKPdLTe54UlxRef2Z6MOCMxJ4leG2yWIvJaOHbovcTqGcuqozvgIBqdmGE/CgsJ6R5tLIbhLZY8y5j6b33cf0Z6ZXAVVPGQRq7vo8SMVb2tA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(376014)(23010399003)(1800799024)(10067099003)(56012099006)(11063799006)(5023799004)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: FfNSernx233vkl58ZeBmUsDM54bYUMKAPhE5n4BhidG+eEDfLwN82SAMDO2BHZYyylunu5qELlxu/ThbzCUhyBe8TCp1QjAlaW4Rbl7qVSl8DjG17qXhcMwduw2pM0FT8HJ0W54DfDhAPFcxpoScbXjwhwRZ44wsYu5PzSYFxvnGIMahbTzvEvpCQ85TPPcGRKfrAWpisg8A7s099NzG9EyE8rRFb1Fnh+t9Et99RpigdKMqJcNr9KO3qLJrk6ePNvFAVKs3r/wsRj5a+EUCBxpjSSd61NBibZ7l3ht4sIcKrkBPQLVGdDvBr4K53TQipWDnLCCa3MMjiVZIJzKXcfNsRAPpLiu2CYKnRzS2Wxj/9oN8RU8LsTIgqYPascUz3BdsxppxZTh5pAcED5I3PKQzx9YoFp0XfEdTQSnWxsKEXlF4ijGOUJIxFXNBOp5E
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2026 01:20:02.8423
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d5cbb6d-65dc-420a-cac7-08df21b59db3
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: ZR1PEPF0000E6B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR06MB10700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_182008_329668_4957534A 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With global.bootm.image pointing at a raw partition, bootm
    loads all of it, and hands the trailing data to efiloader_load_image() as
    part of the image. Read the PE headers first and load only as much as efi_pe_image_size()
    reports. This saves on boot time, since only the actually needed data is
   loaded. 
 
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
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 25C35202304
X-Stat-Signature: p76derbho37qkpm1344hqmrxchtxktf4

With global.bootm.image pointing at a raw partition, bootm loads all
of it, and hands the trailing data to efiloader_load_image() as part
of the image.

Read the PE headers first and load only as much as efi_pe_image_size()
reports. This saves on boot time, since only the actually needed data
is loaded.

Files whose headers do not parse are loaded in full as before.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 efi/loader/bootm.c | 56 +++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 3 deletions(-)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index 425e61fd70..18539565fd 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -35,6 +35,8 @@
 #include <efi/error.h>
 #include <efi/initrd.h>
 #include <efi/devicepath.h>
+#include <efi/loader/pe.h>
+#include <loadable.h>
 
 /**
  * copy_fdt() - Copy the device tree to a new location available to EFI
@@ -193,6 +195,48 @@ static efi_status_t efi_install_initrd(struct image_data *data,
 	return EFI_SUCCESS;
 }
 
+/* The image may sit in a much larger partition: load only the image */
+static const struct resource *efi_load_os(struct image_data *data,
+					  resource_size_t start,
+					  resource_size_t end)
+{
+	size_t len = SZ_64K, size = 0;
+	struct resource *res;
+	ssize_t now;
+	void *hdr;
+
+	if (data->os_res || !data->os || loadable_count(data->os) > 1)
+		return bootm_load_os(data, start, end);
+
+	hdr = xmalloc(len);
+	now = loadable_extract_into_buf(data->os, hdr, len, 0,
+					LOADABLE_EXTRACT_PARTIAL);
+	if (now > 0)
+		size = efi_pe_image_size(hdr, now);
+	free(hdr);
+
+	if (!size)
+		return bootm_load_os(data, start, end);
+	if (size > end - start + 1)
+		return ERR_PTR(-ENOSPC);
+
+	res = request_sdram_region("kernel", start, size, MEMTYPE_LOADER_CODE,
+				   MEMATTRS_RWX);
+	if (!res)
+		return ERR_PTR(-EBUSY);
+
+	now = loadable_extract_into_buf(data->os, (void *)res->start, size, 0,
+					LOADABLE_EXTRACT_PARTIAL);
+	if (now != size) {
+		release_sdram_region(res);
+		return ERR_PTR(now < 0 ? now : -EIO);
+	}
+
+	data->os_res = res;
+
+	return res;
+}
+
 static int efi_loader_bootm(struct image_data *data)
 {
 	const struct resource *os_res;
@@ -208,13 +252,20 @@ static int efi_loader_bootm(struct image_data *data)
 	int ret = 0;
 	void *fdt;
 	int flags = 0;
+	size_t size;
 
 	memory_bank_first_find_space(&start, &end);
 
-	os_res = bootm_load_os(data, start, end);
+	os_res = efi_load_os(data, start, end);
 	if (IS_ERR(os_res))
 		return PTR_ERR(os_res);
 
+	size = efi_pe_file_size((void *)os_res->start, resource_size(os_res));
+	if (!size) {
+		pr_err("%s is not a PE image\n", data->os_file);
+		return -EINVAL;
+	}
+
 	if (filetype_is_linux_efi_image(data->kernel_type)) {
 		const char *options;
 
@@ -262,8 +313,7 @@ static int efi_loader_bootm(struct image_data *data)
 		flags |= EFI_DRYRUN;
 
 	efiret = efiloader_load_image(false, efi_root, file_path,
-				(void *)os_res->start,
-				resource_size(os_res), &handle);
+				(void *)os_res->start, size, &handle);
 	if (efiret != EFI_SUCCESS) {
 		pr_err("Loading image failed\n");
 		goto out;
-- 
2.43.0



