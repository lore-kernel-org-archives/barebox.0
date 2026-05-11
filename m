Delivery-date: Mon, 11 May 2026 15:19:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQXc-000Z8C-1c
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 15:19:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQXY-0007G7-Gh
	for lore@pengutronix.de; Mon, 11 May 2026 15:19:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P35QSSqj40mRBbUKXgQ+9jrDjaf4G0gsLZXUcoAgd2M=; b=5GtF8mkUux72keRhNAcB1+noS4
	sir0X2P6Lwgm3Yw54/un+WMFM7JvpomMeyW3ADFKkK4ocGxqRPI+klsvzHfbTkPlVCbq9j7+mkOX1
	rS1GFB7R2MQ/OYiEsIjZ47CQ9wDJHMtyRCP66JBucvM0HBbVWEDOf34ikIZfLpvlLsS2hiiwoj8wH
	bqOnF75rf9NMsht0AFtaBcRWHwgNWBX7gUi3OE+DRmzxWIHrGGg/pL553GUlxy+HyPEwfIYU0uRLz
	P4WDOCqpRpcirl/A2nuH8VQAkWaOkV4/TY6gzNTOgT/kGequYPO8H3jbdW5cy4QvKu8iNifoAzPlK
	wGcLx5CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQWB-0000000DhSL-19gp;
	Mon, 11 May 2026 13:17:55 +0000
Received: from mail-germanywestcentralazon11022133.outbound.protection.outlook.com ([40.107.149.133] helo=FR4P281CU032.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQW8-0000000DhQR-3lGY
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 13:17:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=etllfIU6fUA9rwNv9FfehxANp5E16RJzNou3EdopF4vYF0+kUM/FTzbD2N4JGp7d6sfL5R8bcdYI1GW3dtuDD9d0mShcheNS5egb/IUIRFYbfA8QClWQofwMY+9MOUrMsOoVFQbBLexypj9VooyRDvhIjXtbjpL5nn9lIt8pHYpO2z3M1Ny0RahUgb0m+1/Ey7+bgQdKHrnnGz38R2jUD2REegah13qOFsCoUIqHgaHdzoN1WbdHIQDOIMWmxzwPvamy4PUvntqdsIJXskRsOthv/WJFXO90lO0qQ2qp7iuaXdqdLDRe+ZOEhHgjvBDtQMw68phXMBiiyItmS4TDTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P35QSSqj40mRBbUKXgQ+9jrDjaf4G0gsLZXUcoAgd2M=;
 b=is58aPloX45wK1iXMBjkNECl77EkBdfq5QZ4sOf7/JHl9DrqHTdfatXyC85WlEijwJPie6jOISsmJ2ZVa7mqWCiN6OSZ+JB4B86N1JKHfMDdv/VqqyCTk5gJpETfzJU6/yoih2hchdbvMoBEM9opmUg7bir7iDi29aXdb1iTMyosW+NY3BE7cNrWfzX6BD3lVIWw0VSMK67i3gIVe5bd+ZsQmcrHlPAf9tGZl9J5nM6q36xP+FoNKVW9/BBLA7FvU/u0GNZPfsOFPlp2ycHEGORE1/qL12fOIfryuInyW7aAVmnfLvm1K0LI8J6mA26TzImIewCDDMrQxSmbMK9Fdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P35QSSqj40mRBbUKXgQ+9jrDjaf4G0gsLZXUcoAgd2M=;
 b=JqE3/WEnjU8IfFWZcKdk0d+ncV4qBWuvfMzrfKd8a4KixS4wwlVfJJ/YYltqkUglOln48hDTGum/UT/Qp8u3ilh8O+T78+lI4YQfLAzvISqhFs/L4xw9hhcBIBh9+/p1LuvgwcFGsexvVZWkzbyrOTQKT0mh2we/ahAGw6fYyRw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from FRYP281MB2060.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:45::12)
 by BEYP281MB4316.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:a9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 13:17:46 +0000
Received: from FRYP281MB2060.DEUP281.PROD.OUTLOOK.COM
 ([fe80::eaf8:c21a:a7ee:519f]) by FRYP281MB2060.DEUP281.PROD.OUTLOOK.COM
 ([fe80::eaf8:c21a:a7ee:519f%4]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 13:17:46 +0000
From: Gavin Schenk <g.schenk@eckelmann.de>
To: barebox@lists.infradead.org
Cc: Gavin Schenk <g.schenk@eckelmann.de>
Date: Mon, 11 May 2026 15:17:24 +0200
Message-ID: <20260511131743.463478-1-g.schenk@eckelmann.de>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR4P281CA0041.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::11) To FRYP281MB2060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:45::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: FRYP281MB2060:EE_|BEYP281MB4316:EE_
X-MS-Office365-Filtering-Correlation-Id: f040fa3c-ce1e-4000-3e26-08deaf5fb12f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|376014|1800799024|366016|56012099003|11063799003|18002099003;
X-Microsoft-Antispam-Message-Info: EPvooT9fopQ7cH+xo4AgT9benGedVRkXD0y2m/1DA8pSyO7+tqosN77Iu793wS41Mm85BRZB61PL2xPMQSzjzCHzxctxiiSTRF/RJxU7WlxNGt7osLxUESr03CaJmE+d3X0SLyTJHB8g6lkrpHiES95EJFyOctepZZr7ztB++ucjwRncMd2SE0su7Y3hL/Bhwt3eI0aZNJtWohiocu3ZhGfWJxAPGMT+7rEiHVaCxG8Lg3gBDxuDsteFhoOX85ik8B7U892/xc1VgC6ui//aFmeTdKfF2BgdFE1bQ8cnFXs1SWA0REiMl0bLQNSnYd0VWK++GGDSxVA7uO8fQEWhQzAHHg/qWU2U0emwSHXodEwLNj1abUhuBnNDB2POk0GLTGxbb3UhbtH732YGcvuN9XIu4NqgxBMfbc3XnF02C3i0UWeLq1myfCmJmPbOtGuY3gXtg6phvhyl20e1vTL0tQ2U7SVNkoE23IzKjL3j+b8AMUn4FTnf2TXtAfCd/xGV3TqC8U1JcpUNUYl5JZ3oA3vBfdUHk2UtCC0mymqtI/LxL+QMg/cO1u98ky0iiUKaQJWHEBFDfNPJdXVFYiuT1rhAFVCVTknClSmcM3ISIGf45qatKKnVrZ36Idjtg3ompq9EJl5ojW1rcfI1uTTNkSsddVwjwzqAGVRRj8q7lkxka6KOoSX76irSuD3CZkNQ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FRYP281MB2060.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(56012099003)(11063799003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q5KbIclLBMKWSK3CNnKdk++9morYAC812zPSLmof5lQyJe2GwwhITR8ci0sQ?=
 =?us-ascii?Q?EiGXrNShvk9kyJCeQsaZQBVD8dVV6qRn7j5yONBtADNbxpN31oZqXH68FiYK?=
 =?us-ascii?Q?9VEtHJs2+GItfCYJ/62gxUrPm8xD7I6c6GMqiu3fGmPw9p35WYp7njV1RDOH?=
 =?us-ascii?Q?Zt/GG4NAqL8Y+F/40BkRfIajuvq25DAD1o4TgrSnh9zcGHWE6Bz2Z00qJA1j?=
 =?us-ascii?Q?E7Y7BiqI/pLCSF2CidWpfkoELSbGJqNXN1udN8TcUqEPv+6ZKJp3WLOmuUjo?=
 =?us-ascii?Q?+YVPu33JJIDYJB/5lhtqnk9GTfLVBhTRkuwtnn9cd3vs3Jbhh1d6B244BCSt?=
 =?us-ascii?Q?NUTT+RjHc+GJcZxuPe0q86YLYb1KtASp6hkJ7Eip/S1YSk86lJPQaMSRGptB?=
 =?us-ascii?Q?g+uTh+8YNImxzEd+HA86Qas+y7xC4lTYvszsee5/xu8EljYhzT3ZSnsT4aBD?=
 =?us-ascii?Q?aZBzNZ6NMI/AA//iaaHGBoNZchIPnTJ+9nkdEB76gxYQtuzRchHx4VR/QUAq?=
 =?us-ascii?Q?08HtizkGOxiPdmGW6/wH3TnbX4H+WdH9bxzSI8YCLoln4aDcy0q3CJEOuKJ0?=
 =?us-ascii?Q?ZfSwRO79SDUukr5BRYbpryDffuYt0AO9GXfBCh2PNMVBfQgEWfJcBMt/wj2g?=
 =?us-ascii?Q?DOVF6oiT1jHunh325Jc85QlGyMzgBEziVWZiuZSv9r+ycR95Ec820k71YYmr?=
 =?us-ascii?Q?Vwxodxbn4fND3ruNRQ50LqA38o9/Sn8Li7ioejg5c7h5obYEcVEodjBxBTw+?=
 =?us-ascii?Q?sIPyt+aBKbQtRdOAnyPWPFMvaAocRgkRRYXuVcX3TOyP+2uwd3jdulkDtUWv?=
 =?us-ascii?Q?hzCQQswJISkkZQkKWWCtNRkatitvVI8P2TxoJMJ1GHrfnOy6rxZHp2ON7Pc/?=
 =?us-ascii?Q?F4eIKTEU+1cq3bq9srPpnEC1Xd2IY9VDIhxkpo8YWisDUZAUgC1stPZ2c5pX?=
 =?us-ascii?Q?XkKq9D4lPY+2hw7Pypsw8UEX4jCThzRuJYEtbp3W+bWR6J+OK8T+0X8YYXjD?=
 =?us-ascii?Q?BFv0Y+M9520scatPryhgreHa9k5lyJU4p9HcqK7TKsR46hwb7EXLIDwFCppk?=
 =?us-ascii?Q?XRNwOIomb5Qf5Xb3Va621539C5z6ejwNSbzbxwFDC/IeSjyiGW0MqJ4o6PkZ?=
 =?us-ascii?Q?rw8Ou3AeTyu64TttGb6f/A5HwkapGA0f2eJxCsYR9wylxxowkoxTey1pmC28?=
 =?us-ascii?Q?U7F5RCnay8ihqJlG+lQygvNELxA35U+552mNvepE7e0CXfue/17yl0x+RXK3?=
 =?us-ascii?Q?Hrx6yDkCS1UZjXYuGXXDY+jigAhr+6+Gz/IMUN1pU4nTSVLWwJ0xcLnP7757?=
 =?us-ascii?Q?v8G3Mpm4vuLSNQTryv4BdOEKk18o/aYUZAlpr+CLzONjIElF2bCqSYOWFmxG?=
 =?us-ascii?Q?YuFfESd75G3pj10b2wg4fjQ5DZIeD4xS1xa90PsLrJOvQP2MQU3VREgFJp2c?=
 =?us-ascii?Q?SuuieDXxirp+SP401XijanBlM5/mpQorGphqBEVtH7X1atnH9DWjZVHQ3s2A?=
 =?us-ascii?Q?Ck2nENBOFXVZKymfvBze5ebcIdj0XpzwbX2S99T8sQvE4ATNIzJ06p4thNUN?=
 =?us-ascii?Q?VE7fQALQo4BM2Uho1N0GqRJV8b45PzexlFCjxuGNIRWWxYuBlzBlqQqewKds?=
 =?us-ascii?Q?NxLhGlT9yCSZKR81yKs1SmbmM8V/4L7ZyY7AKNAekiDLtSov0o9nCl+YSoQd?=
 =?us-ascii?Q?uMwOcJTk4ugLbUAHWaoJMO0OVuDTYCD24pQy2BZWFUeLZ58OPj0rl1DCdUaz?=
 =?us-ascii?Q?Q9u/TlMthG5/13vAhNENzMXIRchdMGA7TDfe7INimfbGAtpZDzSikkFAQgB9?=
X-MS-Exchange-AntiSpam-MessageData-1: 7UXxzyUGpcPERQ==
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f040fa3c-ce1e-4000-3e26-08deaf5fb12f
X-MS-Exchange-CrossTenant-AuthSource: FRYP281MB2060.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 13:17:46.3894
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XxFkd/yiFKD6Ma5rCJ4wX005GuoG+f8VO9PweS03fLpiT3kh0sOmK4nNCEb2MfNA0XUfszukvzXIJflvVkFQxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEYP281MB4316
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_061752_943540_5535C370 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] docs: migration-guides: Fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Gavin Schenk <g.schenk@eckelmann.de>
---
 Documentation/migration-guides/migration-2025.05.0.rst | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.05.0.rst b/Documentation/migration-guides/migration-2025.05.0.rst
index 1cab96e2bd..9e8ab13d06 100644
--- a/Documentation/migration-guides/migration-2025.05.0.rst
+++ b/Documentation/migration-guides/migration-2025.05.0.rst
@@ -93,8 +93,7 @@ Build system
 Bisectability
 -------------
 
-Following regressions had a wider impact and could falsify
-falsify git bisect results:
+Following regressions had a wider impact and could falsify git bisect results:
 
 * Many users of ``read*_poll_is_timeout`` are broken between
   ``554bbc479c09..dea0ad02bbd6``.
-- 
2.47.3



