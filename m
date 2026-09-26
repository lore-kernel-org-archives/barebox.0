Delivery-date: Sat, 26 Sep 2026 16:13:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xAT9a-006Zgp-1p
	for lore@lore.pengutronix.de;
	Sat, 26 Sep 2026 16:13:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0858C20075E
	for <lore@pengutronix.de>; Sat, 26 Sep 2026 16:13:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="t/apZrRp";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=pMCTbtLO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=leica-geosystems.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790432006;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ic6ScYvJgNY93IoH3Zqdr51lt2K940qTXCfouxuSBag=;
	b=gh23T8PIIX+N47HIEDob+V8sZevo+BGeVq9Xfo9vHZj92VNw3X74Eh7Q8boz9hgw8AmPI/
	X9b8VkJ7H6uOsd/Q3o2Zcr1w5ufJzYNHFIeqVfdZjsdeecMw+bb+0PJJqNb2EdEmAW/B1n
	Ya5lCzujx2tEQL2HxGjGY8qn1cHCAtNgGASOt6m3RhFsh1RoxH7V9FFEbpqfo1UnpI31c1
	t+yLD1whTYh62aY4E+EfeyHGU3dWAJ0kZgagDrQHqMMmYqhAR80sdN5BKLBRUkFneD+d7J
	kULMyU96D8inF8HwXxCiYk0Mgxx3Yo65YZMJxa7G6I3yNWD8auIMBBAM+r45Qg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790432006; a=rsa-sha256;
	cv=pass;
	b=IL2Zk2WPWfSNa3+XQ8LPhvzuH7/fbHaUynv4WiI0bt7rjo8oE7A3jgW9e1NY8U9F060ni2
	w2GlE/G4q4yBpVgXLfFZWa9H3x7m+iem/hZ+ILv2VcBxtQbNzVSEM1y1mfYgz45oMJ0vWh
	+fR/kLu2oUYbvSHTsbqDhiasDE9LxMRg27Who1qa/diwxDGmu6ffj/czKNE8Ykqm2Otk2+
	mrimFzZhhbwTx39yR5YL2IgcWIJzXJcb6raJMiHD548mztFxazLwJ8An8zmxspwywsFvJ5
	xQ5R0doPcD/EBj0B+xSyvllvThSnCfsfAe73X30Vts1A5l7gpUftmEaKQ5cdpw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="t/apZrRp";
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=pMCTbtLO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=leica-geosystems.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ic6ScYvJgNY93IoH3Zqdr51lt2K940qTXCfouxuSBag=; b=t/apZrRpe8WHUqv14gC8t10w74
	Jj4qhxAITHZ7pMUy/oO9lDzJ9XRhMS6ncFjMxjzvaeTubnfcqRIX7jx73UsQIF5g2LgqdgxAh923d
	sKq9iyE3oJqFXuGlNCRbZ3hyiZXZ8/jlk1T8+WSHtzLSsRD1tYGYPpzn5HWONm74z+1QYOJgHzpnO
	wEOqAPfFxnpcBZJZzql0lbJhNSeAcyXM4IWNRXFMPMyGJGUIsXSxqTdsZjtPAaDAfc9A72h9Du3UJ
	Z99ABn+KauS8QGJQEcxwaUNNrqAEV3HH7Mf3Q7IqwPW7l8ccDqYCpAxWS5GaTL3tfB9OzDdhoZ0Wi
	y8NFBDLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAT82-0000000FVar-0Wmh;
	Sat, 26 Sep 2026 14:11:50 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAT7z-0000000FVaI-1Pxd
	for barebox@lists.infradead.org;
	Sat, 26 Sep 2026 14:11:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMYeKvED0rL9YVwfDq48OLJTQ7br7Gjsg29ywOSrcf++1Sw1GpIhODD7SKJuNuMQrwFvymOVX+s/X3mWczPD94JGf7JDNqQJKw0l6h2+xp13qAKrqBGXHla3T+9WSzvh1HS3krOXf1HJGdBNzyGaGIqC/STtHIppu5m0k6QmvxvmaxczzTMYgLEszJfYMv/g6+Yo/jJX5b9dbQxdasL7/PPb7YQGKFknrFnxFPVijMNlHpfxdEKzDv3vE4d5ar6IKiLxJ+Pe/dmvgvgLr2vgDGVJDeWnb+JD2BoizdEzgAfhAuou81pQKUzqEEbXfK9h/H7mAcxQjW/CMRMwqTBG2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ic6ScYvJgNY93IoH3Zqdr51lt2K940qTXCfouxuSBag=;
 b=bGZgk799rjEE0CjDX3FnyQv/gmmJuMyFWkVO07d74QBvTfVySrv8g85zeFsReHr1HFo3YNhS6PYmTEU6FTFZPCtRxcBqHCz6QNp6YtEuvG1esIg+XZkXDBuk6kLhoMCRb4zMBV6iXg+mmN4l78SDgBR99EAWocBYAFyfVn37MHca9xgTMOBqEORzX4eb+7Wk7tDVbs2P1HMS+Jm+uLqAeXY7PS5TGAy/TTBo3CxWU4SbeQO8qHgQiJeVBJpwZX8iX11bZW0hCABnAFO91SS9BW8vrLkeO3UV3XTBTlANiJWM5YuP34cCXIieshQ6tLWdtqz8Ll4ANsv7pdCoj27Rwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ic6ScYvJgNY93IoH3Zqdr51lt2K940qTXCfouxuSBag=;
 b=pMCTbtLOww75ucBwfOmPvPQR0qKDelDtersa2pNfNBZUZ8OPHiaL9tp1JeW4yV72a588UJj6fCNMbRSCfwD1aMEeNXetUx1APyu9n8Q87Uog3H11r7XAgg5vdkVX6RCvxkQ+PwZOTad/IhAWH8Bq3mre5Kyb1Ib8TpCQvhhcyMg=
Received: from DUZPR01CA0116.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::15) by PR3PR06MB6747.eurprd06.prod.outlook.com
 (2603:10a6:102:68::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.451.18; Sat, 26 Sep
 2026 14:11:40 +0000
Received: from DU6PEPF0000A7DE.eurprd02.prod.outlook.com
 (2603:10a6:10:4bc:cafe::1c) by DUZPR01CA0116.outlook.office365.com
 (2603:10a6:10:4bc::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.451.21 via Frontend Transport; Sat,
 26 Sep 2026 14:11:40 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 193.8.40.99) smtp.mailfrom=leica-geosystems.com; dkim=none (message not
 signed) header.d=none;dmarc=pass action=none
 header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DU6PEPF0000A7DE.mail.protection.outlook.com (10.167.8.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.451.8 via Frontend Transport; Sat, 26 Sep 2026 14:11:39 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 26 Sep 2026 16:11:39 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH] usb: dwc3: gadget: ack pending events while waiting for the halt
Date: Sat, 26 Sep 2026 14:11:37 +0000
Message-ID: <20260926141137.244764-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 26 Sep 2026 14:11:39.0582 (UTC) FILETIME=[F2EF6DE0:01DD4DC0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU6PEPF0000A7DE:EE_|PR3PR06MB6747:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 39d96685-342f-4c22-c034-08df1bd81598
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|23010399003|376014|36860700016|1800799024|10067099003|56012099006|11063799006|3023799007|18002099003;
X-Microsoft-Antispam-Message-Info: ZezqFal8mw5K1LUUC1jDIQpKG4D3y9rJp1hgpNw0s5VX5PuzHzlopWVV/R+Xl4c+AncIjj/OGQrTCB22t4WnJn0GC93TjfsgZc51pzZn0ae19hg9lgZM4/zrSxJmQEthXo4kRu28ZjQVfKeok40IeIaFCsEQL+oO4YOu5DwjGbrAQcus5sufzsCAHvTifmqiIH2BB0AAGoB1AQCHN5s9OSpsY8ZCrpeGx0tkH2HQMqCc9NDQfWUIE79ggOVaO8MCVBALyup4LOj9ITHnLVWPiP1N/lQIM1P+77e52H9oZE8WDDU8OPsH0uaXDQaS4mssGMXakNCLBMHqxOZDY/P1t+2NUznNTdwcQUCwQOwzyEXKGHOFaT9Iszdg7TjT/Z8kC3QtaU68Pgn6AFBGvPRc2qaI8Bg23r7F2+ALaZgqeFG86mDJxdUwjGCYgpSyCBFNepZZjRdW6EJirl0X8lHQiu03fyQwooAjNXlYiB2rh5COig0HIzd6WWbv70n78uxdVNlS5CyUKdcejDrz4xabvNHi2ZF9A0c0C7kROiVVW6BOb8ahUoOCdDtE+DKz4qa2tMYZYoCVyTwFtjku7bmYwWLoWB/br9R7LC8ZqMNjG/5GAyyINx+KOQqXnAjptP+qdjId/dJTFLNdqXK5XINUpF8gQ2hOO/Rd8XLKeIGelszcdUEDLERhqwikEoL2HS8IzH6giR0CQldnCtGiXlX0eA==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(23010399003)(376014)(36860700016)(1800799024)(10067099003)(56012099006)(11063799006)(3023799007)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ebZtVrbBeI1l8bae4Q3byGtrUgWRxe0RWoVWO7jpyI6on3iBFzfbRM9e+8wNIscBNfkEjnZ8i27OI1EerAoigwxbAnV7JldJctkDqpfSmDg9vFMmdyBmvKGwjAdO4DELPkwXn0evA+IGunBbZSjYepIwI8DgHu+WxkgSNsam14tFj+NUq14/Wd3GE59ns8kzUW+wsY7ulVa61Dd/tlf7yghl6G7LSamA5UNBbDtlkQ6dKPnrNVVbgA3NmnrmU+9nMPfI1k0hnEQSOIgjYcINDbzlwei/i4ZXsJEUlOuYnrKbO/NVma53YLB1t8qo27f1ibJXtf//wwJKJErNgPwW3LebVuZ6HRPpVAXW0OShGaMPkKvV0ILW9Jy/PfUYQ2B8B6SgMkLpklsb8bKjREiwX73ea8CAI4evxB8ewrPkMeauEeHH6ZeZ0qMbpcbUvRMb
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2026 14:11:39.8476
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 39d96685-342f-4c22-c034-08df1bd81598
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF0000A7DE.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB6747
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260926_071147_417410_A049F4B2 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The controller sets DSTS.DEVCTRLHLT only once every event
   in the event buffer has been acknowledged. Linux relies on its interrupt handler
    doing that while dwc3_gadget_run_stop() polls; barebox has no [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c201:0:0:0:6 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c201::6:received];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0858C20075E
X-Stat-Signature: 6hcsqd7iuajfpaitbgfasdrw57hemiou

The controller sets DSTS.DEVCTRLHLT only once every event in the event
buffer has been acknowledged. Linux relies on its interrupt handler
doing that while dwc3_gadget_run_stop() polls; barebox has no
interrupts, and gadget_unbind_driver() unregisters the UDC poller
before it disconnects. Any event left pending at that point keeps the
controller running, and the poll ends in its 2 s timeout with
-ETIMEDOUT.

On an i.MX8MP board with the gadget enumerated by a host, 1 to 15
events (GEVNTCOUNT 4 to 60) were pending on most boots, and each such
boot lost 2.0 s between the start of shutdown_barebox() and the jump
to Linux; with the events acknowledged, the controller halts within
1 ms.

The gadget is being stopped, so acknowledge the events from the poll
loop without processing them, keeping lpos in step with the hardware.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 drivers/usb/dwc3/gadget.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index 8b26a0c102..46a70231a7 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -2322,6 +2322,19 @@ static void __dwc3_gadget_set_speed(struct dwc3 *dwc)
 	dwc3_writel(dwc->regs, DWC3_DCFG, reg);
 }
 
+static void dwc3_gadget_discard_events(struct dwc3 *dwc)
+{
+	struct dwc3_event_buffer *evt = dwc->ev_buf;
+	u32 count;
+
+	count = dwc3_readl(dwc->regs, DWC3_GEVNTCOUNT(0)) & DWC3_GEVNTCOUNT_MASK;
+	if (!count)
+		return;
+
+	evt->lpos = (evt->lpos + count) % evt->length;
+	dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), count);
+}
+
 static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
 {
 	u32			reg;
@@ -2356,6 +2369,9 @@ static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
 
 	do {
 		udelay(1000);
+		/* the controller only halts once pending events are acked */
+		if (!is_on)
+			dwc3_gadget_discard_events(dwc);
 		reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 		reg &= DWC3_DSTS_DEVCTRLHLT;
 	} while (--timeout && !(!is_on ^ !reg));

base-commit: 75819f9e196e2da048e96c8589898fdc38ef8e7a
-- 
2.53.0



