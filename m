Delivery-date: Sat, 18 Sep 2021 00:41:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMXj-0001gZ-PJ
	for lore@lore.pengutronix.de; Sat, 18 Sep 2021 00:41:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMXi-0008JY-Ik
	for lore@pengutronix.de; Sat, 18 Sep 2021 00:41:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C1n+gTDGayX4q7HLIZVemTu+4hhiU0gjBYSehrv41Ro=; b=Z3q1I6gh/MDdJCQClqNEdVPGWD
	hrnb0fah7PBff3Pu3k6mlPrzWHBmVLIQ1nTpM//j1BzM3/rabvBvGCTlUKhgOC8LaQYJpQ5eTj82e
	fj4YKMSrdDyAfyZs4maGf9Kk/kv++QIu2hVfSBaWvOCn32LKZK+EVImlBrJSywR7hKpvKNsH82Dwq
	jhXXA3e5FkL3CTx6/+/n2IJ2aKNWkgHanDotNigItys49ZKmRSGWsTtf3qellhDES8kqEztCUyBmd
	iv+C3MH+eZCQKHndSk+VhiPbLrs8NfVumj9gCER7FvpvB62L3EkDi+Hx0FksP/YSfGRtkMEaiOVkv
	ByFUwwNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRMWR-00F5mV-6n; Fri, 17 Sep 2021 22:39:55 +0000
Received: from mail-eopbgr80093.outbound.protection.outlook.com ([40.107.8.93]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRMWM-00F5lW-6J
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 22:39:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lEHElNyg8qvW/QoztiICjpW6Nh+t4dd4UoXTO8AZEWJ/hO5KWmZdIA4hraLtYKvp73iItC2s6ae8zAUFYNNyG869oxryzOKtcZUbQQCywAEoM/ZWGKlnLFdDntwgt0V/h2Wdcg2nGRXZjD0km+lgfeRBFFkvf9edyJQ5eKhfgHSvTUMEf2ebBvFVN4uGFXPkFPG8c/2R7B8AfqcKGAB2CZFqC0E/jXr4olc7rKkRFUV3P2R/krjUGxFXHcbCzYN1cYeK4TgMWgE+YdFH3/DoqSOvQKU+bSC4NUWDN3e0PWvATQT9WWrTRf8Kgsr7CVije0cJ0bKx5jxmMfE0LvwBEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=qVuY3OBJjlXPoii6+Are9KXAt7UlGC8FfwgkxTvKoMc=;
 b=KyNCKXXnWD0kDpk/n/hfc3dpeY6BS7odngf9pHomtsmv7y8MoHOdQvVCRQJPOJ9FbBLSYDcvvVLBgSPTkmfqg5Ud+M6A3REN7bnVArGVSa5/sLOxd/DAaFYQSSBxnRfg36vKvXKhteXfMi5S5eWFESO7cRKucOnsE5kQG/U2lwPGT9tOz+w1SfOouu+o1u6oFuge0zrEbUkM8ptmxTyigT9Zym+QhQO0mm5mWZfNrYi8hWosjgWbB9f++nUUsxayiNzzcK5RU0eqFEajpcymAst1m91Hd7elzMUEHVccwv9CKas6LvHZ9Vtwhn4cEQ9a4AxHZVDhV22EjX+kEehWfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qVuY3OBJjlXPoii6+Are9KXAt7UlGC8FfwgkxTvKoMc=;
 b=Th7ScfbuN/vfvxIFjPQQVupcsexP+kHiYW5stZmyH43do0UVYwor5QAxEMNdRK2Mp8ziMCPnom7t7XSwjuYWNz5KFkvAqkWRYYIkPoM3Xph50Zy1eu8bth0CdDDUX9tVkork/lY1Ori1MCkb5lryOaXiTjbnwCJYfvCoHLiR1Uo=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB9PR02MB7259.eurprd02.prod.outlook.com (2603:10a6:10:24a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 17 Sep
 2021 22:39:47 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Fri, 17 Sep 2021
 22:39:47 +0000
From: Peter Rosin <peda@axentia.se>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <1ae69c03-3da5-4676-5d3b-612a8c5bf3a9@axentia.se>
Date: Sat, 18 Sep 2021 00:39:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Content-Language: sv-SE
X-ClientProxiedBy: AS9PR06CA0238.eurprd06.prod.outlook.com
 (2603:10a6:20b:45e::8) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 AS9PR06CA0238.eurprd06.prod.outlook.com (2603:10a6:20b:45e::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Fri, 17 Sep 2021 22:39:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef1697df-52f8-4012-c586-08d97a2c0dc0
X-MS-TrafficTypeDiagnostic: DB9PR02MB7259:
X-Microsoft-Antispam-PRVS: <DB9PR02MB725907B818CB4F385203AC22BCDD9@DB9PR02MB7259.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:849;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ahDb+sKhBkplZ1S+QfyvdVTG1PPrmvH34W/XRMuVN8kSnh2RDvEsno2PPRupyZMmrII1JBGP3TsPVqwTUIJM3WBbWwzjT7lWHbMibuRvJq3vztCdJqD7IU1wr0yCEFtZPt+pm9iVYWk3z7vmPx54Z2+b+KVvWgLfSldn3BC7QnS1ixFexI38FatA6v1VK/GyevEMZjySq/4DwUn2FpmPivxTrlPlY+8IBL4JquzIZLgxSqmx1fKt8DN4uDXTW9OTZ/olQ1GkXygZefeTC1zRwO8W8UmRmmtzaV5h9HEbZarBULDBdwAMjPgcXIN73jpxm8dojBfXBrcAa3s8QghYm4kJ8jTtQKnL/RHJXJ3UY0ChRHmAAZsW5XchmQHZlNs6zOi/SkI/O3LvOCN2eZ0hI6O7Yjl888kpX4O4XWSCxhkrfo0vIj/z+pRc/N3mnGSFXE/JmOYdijaMVf9XXf4+iDLjwc83roI/t6C8UoMPM92NRYUqjLRvPu3OS8gKgJ3b8+Gjp2UGruyBJ8MELZDV/CD+9A90pBODis0b7UEXo0hB7L9k+YX4rsVMa74Z7ctMXT3Txl0RD4ToBlWT0PyDyHImfXzUg2r8Q3WzwX4KyrQOkxweGhrTrm2df0wNV8rzDebr4wCroTIDpQM2cbrseoVWGc4MEHcyE7f4a6IoxVBeYPl+A0pc82aHWP2mAPCs7n6uQpB/dYVCAWOwYNqAFhBL9Sf8LhVHLKlbwbRiI8A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(39840400004)(346002)(396003)(31686004)(86362001)(16576012)(31696002)(5660300002)(66556008)(66946007)(66476007)(36916002)(6486002)(508600001)(36756003)(110136005)(316002)(4326008)(8676002)(26005)(186003)(38100700002)(8936002)(2906002)(2616005)(956004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXRuZU1Va2RpN0U3d1kzaUQydHZqdkwzWEk1QlllUzZWZy9zV3hBeWhyTkdF?=
 =?utf-8?B?OFBpZ2dWc1FPVGwrYy9NTlpLVnhsczBHVUtFajBjVXoxMm9ua0hjQjFNUEJQ?=
 =?utf-8?B?dURlWHNXYkhHR2dYejNFKy9qdFNFTmQvMllkVUN5d1pBby9kMm4yUXhXNmJT?=
 =?utf-8?B?czZUSGdqdExBaHR0d2Z3bUhQamcwQWt4OEd1L0ttTkUwUFdFTG1jeWVnTUps?=
 =?utf-8?B?TnNuclhDT2tWcGN6QmdiOW8wa3B6UUdqMkZjZDBoU0pPbVBDU3dsSE9ISDVP?=
 =?utf-8?B?cy9YcExSekRGWUZlLytiZlVoUnA0OWZraHZ3OHJjbUJSb3dsMW1VZGRYVWlN?=
 =?utf-8?B?M2U1eWtTdTVIRlFNaGNEOHpqTjZkTGtvRnVvQys4TllqZC9SZ1YvaTRNNEdW?=
 =?utf-8?B?TXMvL1FOV1hmRWxvOEhmWmRTNytJbGs5bk0yTFdQTFhqVmQ5d3BzMnVXaCtZ?=
 =?utf-8?B?YXdFRHovMjdGN1FFSnQvSlc2SitscnpjbFQ0b2FET1dSWUoxb0lYazA0RHhQ?=
 =?utf-8?B?ekN4cjRNWGxEbEhha1Y1ekI3aDN1NjRnbkZQRnpDdnpaQmJQMVNjYmpPNzVn?=
 =?utf-8?B?SDZTK2pyOE9vNnJPMDF4cmFQbWowRDkwVFl2Y1VpVDNJMWlVanM0M25ZWFAr?=
 =?utf-8?B?YVNSWmZYVCs3Znl3b2RhbGFpV3Bpc1VZazZILzY2U0xaek5LT2JUMUtGOFFa?=
 =?utf-8?B?NDBmNVJreEwzS1c2R09BT0p2NTk1bHZBeGlIYnpYdVNxakpjbUxZSkEwM0s3?=
 =?utf-8?B?QjMxdlFvUCtzRWhTVSs4QTdZMWd6bk41dCtrNUJ5c0VvZDNBTFp2REtZazRi?=
 =?utf-8?B?aENna2FxVjIzLzhOM3VFQ1V0SUk1a1lBZ2FPVXJ1WGh4anc4L3JFNERGMkVM?=
 =?utf-8?B?bk1LWjRDSFp6MmxxU0IwcXc3R1NVa2dYMGNjNU8vS0hybmtVNlppSk04Zm45?=
 =?utf-8?B?blcxTTBTM3hSOW1vTzdMRnBTaHpUZ0dsTEs3cXg5OW9ZaDFjZkR5MXpaTDQv?=
 =?utf-8?B?dHhyTXk2MmZIdDZ0U0Nna0pDNWJNR21wcUFwYUlWT0NEZysrTEpEQnNoRjJO?=
 =?utf-8?B?RVR5dkJjSWhNY3k0bVY3ZHA2RlVzWGdFTVp4SnA4Z1FVNTNRSEpSY0tSZ1Fi?=
 =?utf-8?B?QzBjL0ZucGg4R2NaSS95UUM2ZFZxaFJHeXZtTVVTVzk5V2pVMDhISnVrbkUx?=
 =?utf-8?B?QmE3SGhJTkdDMjRVdCtLWTlUV2lWNlNqV2RRQ3pnOFY2dHFrNC9tb0hFejNF?=
 =?utf-8?B?VUZNdGZTZ21mU0c2ZUI2UXhBckJzRzA0R1J2UVVOendtZ1l4c0pkdURybzQ4?=
 =?utf-8?B?NHpRMTUvbEV0NElKR0dXS0JJWXhIVzdSaEgzWE5BZWVySEhqVkRXWEdnTG9Y?=
 =?utf-8?B?TjJWc2NpR0hOYW9XUi9Zd1NiV3JLTHJneWxTbDBUd21jV1VYTlJjT1VHQ3ls?=
 =?utf-8?B?dzNuUVNycThqUU1PN25BVy9MMFYydWFUcXRRRkpiNVg3T3dwWlRzMEUzOFVW?=
 =?utf-8?B?VHYvbWpFbURMQUh3dUk5a3p2K2pRV0kvT3R6Y2pNZ24rRXEzRm4yTVNmamIr?=
 =?utf-8?B?VEZZTVgyaXVJRUpkZzAwTUtnRFd2RjA5dkhUcmpvUHlVSWE1VjhnZzFpaHE4?=
 =?utf-8?B?NEduUHNZR0xLbDduNFh2QU55alZXVzJJams1cFBaK1QrZkRKSnU3Q2ZEMXQv?=
 =?utf-8?B?NTNvaUNtUzhOMEgyMVNaMU1GZWljZ250TmRUNkE0NnNTVEc5UXU1OEF6Z1hQ?=
 =?utf-8?Q?GwmfDvnCOyhm9m/GXpxMgh5WLSEHgv5ymf5QEu7?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: ef1697df-52f8-4012-c586-08d97a2c0dc0
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 22:39:47.8452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BwEAGGk7ankXSKBKYEP0TvFPU5+D8XifZTIrvrb4rggU+6lyZhpOQ0vI4Gxp7tcw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB7259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_153950_290370_35C28D23 
X-CRM114-Status: UNSURE (   8.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: copy data if there is a region overlap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a partial revert of patch
070de908da ("ARM: remove PBL_FORCE_PIGGYDATA_COPY")

Without this copy, my SAMA5D3 board fails to start.

Fixes: 070de908da ("ARM: remove PBL_FORCE_PIGGYDATA_COPY")
Signed-off-by: Peter Rosin <peda@axentia.se>
---
 arch/arm/cpu/uncompress.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 2250b8ccd375..d725e7c2c34d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -45,6 +45,7 @@ extern unsigned char input_data_end[];
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 				  void *boarddata)
 {
+	unsigned long offset;
 	uint32_t pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	unsigned long endmem = membase + memsize;
@@ -52,6 +53,9 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 
+	/* Get offset between linked address and runtime address */
+	offset = get_runtime_offset();
+
 	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = input_data + global_variable_offset();
 	pg_end = input_data_end + global_variable_offset();
@@ -77,6 +81,14 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	else
 		barebox_base = TEXT_BASE;
 
+	if (offset && old_region_overlap(pg_start, pg_len, barebox_base, pg_len * 4)) {
+		/*
+		 * copy piggydata binary to its link address
+		 */
+		memcpy(&input_data, (void *)pg_start, pg_len);
+		pg_start = (uint32_t)&input_data;
+	}
+
 	setup_c();
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

