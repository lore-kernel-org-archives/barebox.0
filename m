Delivery-date: Sat, 18 Sep 2021 01:59:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRNlg-0004B4-My
	for lore@lore.pengutronix.de; Sat, 18 Sep 2021 01:59:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRNlf-0006oU-2V
	for lore@pengutronix.de; Sat, 18 Sep 2021 01:59:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tXrxLNG8zDNIe5lufwM5hsF5VKnu1Nj1VZsPKG23eqg=; b=GbI4Zyp0nmuzsBB2Y8YBZdnspM
	UzLQWasFJNpqVSz8hOCbYDvatLvlM8iv8RcarP70G6ud6zqrY/TDpdYWThTw+OX5OI+toJsRHm3GD
	4u4x0KA7e89juF+6LjA3y7mJCq7gUxGvs/W3n8pT3zJQZlDEqlIX+xIb9pUDhIBEJsud8wC9fdSIN
	TtREbGHzYi89nPukrY8vqmdDQKPATD+0N8i9jo2rB7hpERysaB8VtW5x3c2FU2Su0O5YdwYE2qVlr
	llKlyBmO7jlkoBi03QBI0hxXrXzofwaz6gVnBF3sJt4qPk0TBkRin1QLIy+sRfY/ZTQALUkjzBK55
	gxBsSpNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRNk1-00FAgs-0l; Fri, 17 Sep 2021 23:58:01 +0000
Received: from mail-am6eur05on2111.outbound.protection.outlook.com
 ([40.107.22.111] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRNju-00FAfs-LT
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 23:57:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrDEy6Qlux6lCzVIP69YEiS4zWiGq9gW/928qGTnM/uRiC6ghKgqZ0RaVr4GiV+S7bf2fE0XzvdbegLtoac+0HTxk2gjA3F09SE4RfAZO6TCxCAJESytIgi1058Z9w5oDd/ctAB5OsAyyp7pEd29Wjt2MZ7QQGGqKXHhgvEw2KI1kYZMBgZnJOy5jGlKN8gR/1FYyzX/2I9kYEVQQ+Uvm7QKvRzE/Apw9cS+E5SbtsvPKVh84KjzrJXs7nvS4yYoPNx8s6EqAYFudeDJCWiaLPKkC5sXeQJrz/TCItmVIXfHqSiV1vIGHkGzceupesHzsd2PZkmBivBNVzdG396OEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=zf5k0N7DSgBJ5KOYVgARg03LSdRdwsy7vWAQL5I7cHU=;
 b=gbK2GqOr0QLDgizxI6+7tdVm0fTs/atf4LIH3VRPsm1jeUJHlHrtp+2COi2YiiQRO+IV6Eqj6QdaTVlXfX69ux4EWRxkzIHFi8bPtc3/WAx52Z6E7Parkpm/2ilf+kZzUGH87/dFw963+odZccqDB9DF0PIDEc6EzDET9A0j0RkHuUYbPcAiQA+6asoFOi5TjFOWTbD2Z9A7MvyDx/oEyI4O90iXteDx/lyGWZtmHX82rH+FhG5K1E4qJW9yXa49LZNzuqT7QROjMPA9uwfZYcWnW1AjMk32DFg3xU4bq9/o5vTyJb4pQtGy9xvwCfwQsWcOZcLyNfIe2z0xhjbpwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zf5k0N7DSgBJ5KOYVgARg03LSdRdwsy7vWAQL5I7cHU=;
 b=o4qeq4AAa2lthFHhZOHywwJghIDdulLrc688OTQSH2AdeDthFz/RSS0t0eYXf8VB8Jpuc+ZtzODDNbnoaGJQNPgcUEdQ2NNr0f0ZNZ4K9H5VKMrTE5VHIYXGKefmWzHbfRXenVE5DW33ki1NVQM/y/JMFYCmM+R9n4itKv3FEGo=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB9PR02MB6571.eurprd02.prod.outlook.com (2603:10a6:10:210::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.17; Fri, 17 Sep
 2021 23:57:50 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Fri, 17 Sep 2021
 23:57:50 +0000
From: Peter Rosin <peda@axentia.se>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <bf4bc5ce-8206-ee40-f36c-1e5dff759b6e@axentia.se>
Date: Sat, 18 Sep 2021 01:57:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Content-Language: sv-SE
X-ClientProxiedBy: AM5PR0202CA0007.eurprd02.prod.outlook.com
 (2603:10a6:203:69::17) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 AM5PR0202CA0007.eurprd02.prod.outlook.com (2603:10a6:203:69::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16 via Frontend
 Transport; Fri, 17 Sep 2021 23:57:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 013a57f9-9b0b-4ad3-d278-08d97a36f4d7
X-MS-TrafficTypeDiagnostic: DB9PR02MB6571:
X-Microsoft-Antispam-PRVS: <DB9PR02MB6571B9CDA8233D75DC4111F4BCDD9@DB9PR02MB6571.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l3q7lA5xyhGj1DYxlKeNSk6zCYrbPyHeSxc6hsE4wgPu6m8E3BhxQylO4Z4zYv8HVrm9OYs451dXj8k6B81ZaVGuCUd84zlzpTM1BfMyk7AEdOlmW3JkX+GP1wEJ3su4QSb7fKN6MB6MpaadDtqLaG8QNj3ti4D7FalIMXK9B6bwfbp3K+NrNMi85eCDppxfl1uVpaLBteFxDeg9EO7Vw9B59lj95XVbFPCj/O4k2GPexXoXu5W8as1D+5tgi6fR9gsvpOHQlZ5Oj/Uj5wZTVWFhe7KEx4IyKQEbMw0vPDIB5Kmd5GWRe3sNbaNZL5GaGTIgKewBmTFc3BXx+S2PDbuDnF3J4/wc1P6MlwmAKmqweaNi+pY0MX9hb2Iha0g/FlzGpsS8h4GvuOJvOm8KOILnhiYZo/MCmQdX851OUw4ekSZNjkdLR0yN7uGJTxErgAU6yELNlCqMlc15b8y3q+rnzUgQ7jFg5HroQB5wS+C8msr1qrbqM9/qLFK1Iih16NCS1nyRrBnEQbQUCnFYUGyk6UU2f7ghULPhy7GxgpPQbBJhU2CQBJtuXmguTXchMYkuorter6RViSJ6OBIG0ZmaxIt8oKWBfSwxq+zadjpECRqx+v3K1WsRX2c+o0S/D6S+I0m1iYfB7pWIbQmXAQPpHhV+57vtY4D8kGyWbiarF5AED+QvHTL5LdfiHGEX6azvDrU6EUMLBYBJu712pknqfBE4+S0VrQOhXjRYcmJgFKI5EnSWZXD3G5AhEsiC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(346002)(39840400004)(366004)(136003)(53546011)(8676002)(6486002)(2906002)(478600001)(66946007)(26005)(38100700002)(186003)(36756003)(86362001)(8936002)(66556008)(83380400001)(5660300002)(66476007)(4326008)(110136005)(31696002)(31686004)(316002)(16576012)(2616005)(36916002)(956004)(2004002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDNsVXRYb2ZVRFU0cUNFS3FXMWNwcE1iU3RTT1pBSG1TQmsyZGFaZXpHZDg2?=
 =?utf-8?B?WWFyS3VmaStpNzVDbFNxcUNHNzZWNGZBbVJjSlVoc043TlJGUHhKakxxMHds?=
 =?utf-8?B?MWd1SDlNaExZbCtndS90UWVkWHVtWDRHVWk3OTVpZW9QV0RDTUFYTEsxRWpx?=
 =?utf-8?B?UzByVnNOOWxvdUlSVSt2Y0t4bDY5Y1Vqc2RqczAwZ0tSVTJwV3kxcUhSaHoy?=
 =?utf-8?B?MWgxbG9OUGtiL3BodXpIYlRuSVlOeHV6N21XQmFlcDdVd1pHQUtHNG1xRURK?=
 =?utf-8?B?bWR3R3ZvcEg2My8za1pkR3EzM090U24xa3FObEdoNm1UU3kzWXB0UHZnQnpZ?=
 =?utf-8?B?NEVEbFJIaStCRmFBWkorV1YwczV5QUQ4anJVNm1GMENnTDZDc2ZzajREVkl3?=
 =?utf-8?B?bmJpWTY0cXNFa3U0RkZZOGE0c3NtNnJIRm5jR1Jiam1RV3ozQ2tBUUNZVGxO?=
 =?utf-8?B?VlJTR2RPOHNHL0FlUnZ6emRIMFlwYUd1TXdOY2lLTHRmaWF6NnZFa1hhemJv?=
 =?utf-8?B?VFBrcVlpa3lmaEpIdmN0cWkzSWgzeXd2a1h4NGFScWlOVFdCR1BTQW5iT01w?=
 =?utf-8?B?NGhnUW5ONHJsZWMyRWZ1SlM2QVBNeUZUYnpqWG4zbnNQSXNGcjA0aktqK09B?=
 =?utf-8?B?QUorajJwUHZ6NU9nc2NQcENMLzBrcmNHQ3FIY1JjRllIeFNvMm5VWHJubGh5?=
 =?utf-8?B?anNtMmpQRHZ5V1F5RHZmT0haZlhGMUxEbzlwdG0yclFLOUh3VCt3emdvbCtN?=
 =?utf-8?B?bTVlUE8yVnJWT3d0YkoxaWtZdjdMTVcyblcwZkE1MzJWaXBMakVuWHBWeWNs?=
 =?utf-8?B?WFJUSmNQQndQOUdsTldVWEJ1QXJ1MlM1cnhCTDhWcUs1ZnRpUDdZLzZWb3RI?=
 =?utf-8?B?c1M2OVhxcFBRUkljdGVPZ0N2OTF4R2J6eTRpTklXYno4R3lTd3Ayd2FEMlRV?=
 =?utf-8?B?bjBrY3hsT0pQMVlyYnl4MGZKNzl4RTdmWGpTZjZXNGxTRUJuam41clpHTjht?=
 =?utf-8?B?MXg2NXM2OTMzTWRuSjVzSnNlU3NOc3lidHJ1RjZYekpsNkVMMHIyR1JhZ25N?=
 =?utf-8?B?TE5URjlGWXczMGxmQldGZ2xyRFRqc3h0ZW5HTVU3OGNyczYxMXkrOXlqQWFG?=
 =?utf-8?B?cDAzZDFmc3RCRHQ1eXZrTGRvdm5Ja2JpQ01KdnlPSzk0Zks1Y1R3MFRydVJk?=
 =?utf-8?B?MEZHbXlvSENqbG1GWDdncUV2M2N0Yk9jYWN1K3FFbWJubGRSdlpLVFJubmFz?=
 =?utf-8?B?TjR1MTYydDlrcmpocEZsQjRUSGlJY3pNeE5UNW5HaTlWSGMrMVlBMGgrOGpn?=
 =?utf-8?B?VS9IOXl3VWk1OEIvY3lLMERKNGVXUjlnZ0UyTlBYelNTVURZQXI0ekUwd1RL?=
 =?utf-8?B?b3AybmNvOVdPbDJ2VERET0NzWHhLdmdiZWE5RFJ3bDdFZWtsMHk5djZYRFd2?=
 =?utf-8?B?UzRma1Z2VlV0SXoxRHVKRW5nZHhyZjc0eTZFUlhseWZDR0JDUnRHLzZaaklo?=
 =?utf-8?B?dGxrRFlyM0hXSHRESXZJbjQzK05pS3oxSEpqSDFMenhrb0ZUOUptZUdqbk5O?=
 =?utf-8?B?N1puOFQ1WWFEaUh6bmRCNjRqcEllQWo2U2h6cm5UbmswdmVxZVd3Q21QZnhG?=
 =?utf-8?B?by9DNWxWaTZITkpvOUNCNWlPdXRoWWs4N2RjTWY4VEZBWWtRMndzZ2Q3dTRj?=
 =?utf-8?B?WTVTNUkvTCtmdFZMOUZuRDQ3TGZ5bWRWWHVZVHRSamp0UWVVUTh1T1dKWUNv?=
 =?utf-8?Q?euB9GniQGf1De/GAS3xA7LincpxOTDBxtQcPpSC?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 013a57f9-9b0b-4ad3-d278-08d97a36f4d7
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 23:57:50.5502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m5AA4kp/Wq4O2L0JqAIPpF+cZ6NQL4if0xi7zK1bPjue1GdCuJS9GAMJ60kZNqtb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB6571
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_165755_158457_98992D89 
X-CRM114-Status: GOOD (  25.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: at91 sama5d3 "regressions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-09-18 00:37, Peter Rosin wrote:
> Hi!
> 
> I have old boards that I'm trying to get up to current
> revisions of various pieces of software, and I'm running
> into a couple of problems with barebox. After bisecting
> and sorting though git history for a couple of days,
> these are my findings...

I meant to mention that I'm using this extra patch for my board.

As you can see, it's been a couple of years, and it is not at
all unlikely that the root cause is in these files, and that
there has been changes in the other parts of the sama5d3 code
that I need to pick up.

I will dig into updating these files, and check if that help.

Cheers,
Peter



>From 4dcf8d62b4f9a7383e93f0967c57742044c18b3d Mon Sep 17 00:00:00 2001
From: Peter Rosin <peda@axentia.se>
Date: Wed, 7 Jun 2017 18:58:50 +0200
Subject: [PATCH] tse850: New board, very similar to sama5d31ek.

Signed-off-by: Peter Rosin <peda@axentia.se>
---
 arch/arm/boards/Makefile          |   1 +
 arch/arm/boards/tse850/Makefile   |   1 +
 arch/arm/boards/tse850/env/config |  41 +++++++++
 arch/arm/boards/tse850/init.c     | 139 ++++++++++++++++++++++++++++++
 arch/arm/configs/tse850_defconfig |  78 +++++++++++++++++
 arch/arm/mach-at91/Kconfig        |   5 ++
 6 files changed, 265 insertions(+)
 create mode 100644 arch/arm/boards/tse850/Makefile
 create mode 100644 arch/arm/boards/tse850/env/config
 create mode 100644 arch/arm/boards/tse850/init.c
 create mode 100644 arch/arm/configs/tse850_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 5aac64fce584..9219c8cd407a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -148,6 +148,7 @@ obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
 obj-$(CONFIG_MACH_TQMA6X)			+= tqma6x/
 obj-$(CONFIG_MACH_TURRIS_OMNIA)			+= turris-omnia/
+obj-$(CONFIG_MACH_TSE850)			+= tse850/
 obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
 obj-$(CONFIG_MACH_TX28)				+= karo-tx28/
 obj-$(CONFIG_MACH_TX53)				+= karo-tx53/
diff --git a/arch/arm/boards/tse850/Makefile b/arch/arm/boards/tse850/Makefile
new file mode 100644
index 000000000000..eb072c016176
--- /dev/null
+++ b/arch/arm/boards/tse850/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/tse850/env/config b/arch/arm/boards/tse850/env/config
new file mode 100644
index 000000000000..52befe0dd93e
--- /dev/null
+++ b/arch/arm/boards/tse850/env/config
@@ -0,0 +1,41 @@
+#!/bin/sh
+
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=none
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=nand
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=nand
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nand
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+ubiroot=rootfs
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="256k(at91bootstrap),384k(barebox),256k@768k(bareboxenv),256k(bareboxenv2),128k@1536k(oftree),5M@2M(kernel),248M@8M(rootfs),-@256M(ovlfs)"
+rootfs_mtdblock_nand=6
+
+m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
+
+autoboot_timeout=1
+
+bootargs="console=ttyS0,115200 rw oops=panic panic=30"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/tse850/init.c b/arch/arm/boards/tse850/init.c
new file mode 100644
index 000000000000..1166b5067f93
--- /dev/null
+++ b/arch/arm/boards/tse850/init.c
@@ -0,0 +1,139 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_smc.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91sam9x5_matrix.h>
+#include <input/qt1070.h>
+#include <readkey.h>
+#include <poller.h>
+#include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
+#include <spi/spi.h>
+#include <linux/clk.h>
+#include <linux/phy.h>
+#include <linux/micrel_phy.h>
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= -EINVAL,
+	.enable_pin	= -EINVAL,
+	.ecc_mode	= NAND_ECC_HW,
+	.pmecc_sector_size = 512,
+	.pmecc_corr_cap = 4,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#endif
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config cm_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 6,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 5,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 6,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 1,
+};
+
+static void tse_850_add_device_nand(void)
+{
+	struct clk *clk = clk_get(NULL, "smc_clk");
+
+	clk_enable(clk);
+
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		cm_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &cm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+#else
+static void tse_850_add_device_nand(void) {}
+#endif
+
+static int at91_tse_850_devices_init(void)
+{
+	tse_850_add_device_nand();
+
+	armlinux_set_bootparams((void *)(SAMA5_DDRCS + 0x100));
+
+	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(at91_tse_850_devices_init);
+
+static int at91_tse_850_console_init(void)
+{
+	barebox_set_model("Axentia TSE-850");
+	barebox_set_hostname("tse");
+
+	at91_register_uart(0, 0);
+	at91_register_uart(2, 0);
+	return 0;
+}
+console_initcall(at91_tse_850_console_init);
+
+static int at91_tse_850_main_clock(void)
+{
+	at91_set_main_clock(12000000);
+	return 0;
+}
+pure_initcall(at91_tse_850_main_clock);
diff --git a/arch/arm/configs/tse850_defconfig b/arch/arm/configs/tse850_defconfig
new file mode 100644
index 000000000000..76611a8b18ad
--- /dev/null
+++ b/arch/arm/configs/tse850_defconfig
@@ -0,0 +1,78 @@
+CONFIG_ARCH_SAMA5D3=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x26f00000
+CONFIG_MALLOC_SIZE=0xA00000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="TSE-850:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tse850/env"
+CONFIG_POLLER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_MICREL_PHY=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_NAND_ATMEL_PMECC=y
+CONFIG_UBI=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_WATCHDOG=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 290178706a40..6e3d33694c05 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -539,6 +539,11 @@ config MACH_SAMA5D3_XPLAINED
 	help
 	  Select this if you are using Atmel's SAMA5D3_XPLAINED Evaluation Kit.
 
+config MACH_TSE850
+	bool "Axentia TSE-850"
+	help
+	  Select this if you are using Axentia's TSE-850.
+
 endchoice
 
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

