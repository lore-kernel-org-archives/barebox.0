Delivery-date: Sat, 18 Sep 2021 00:39:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMWH-0001ct-9k
	for lore@lore.pengutronix.de; Sat, 18 Sep 2021 00:39:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMWF-0007xR-Vy
	for lore@pengutronix.de; Sat, 18 Sep 2021 00:39:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Cc:Subject
	:From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IlsIHsBmWxdh9vnS/NFjbF37R293AIVKALUe5QGAmh0=; b=m8b1vWNiV9oaqW
	mqNGPt4NOMZQlXZms6Vhala47LC0eWXl22Lxb6G0Ra8Zx0nvKQvGDxrOM24Ld5dKIkpT5cJ0xXLvH
	xsmRDpD/yVtNaWUDHvDHxogoEF1Tk0wSlSjuMlCKkEu0EJsxu+TOfYq95JUcrKmLFn0VayAWUbDIN
	enSiUZM9M+HcgCICXOVtDel1pncnZBnq6LyuPc0TJ4V0DIUBWXxCaDg2AM28YgVbQQkesodcbKMeK
	1hvti+tnqZ1KZWKF963mg0J8/qvbBsdHCZNwisxVv1zMZRYpmnfRjuWBN+BqRyxiiSzZ3HJbetWbI
	rtIjRoOD80OnSTtw66ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRMUT-00F5Rz-AS; Fri, 17 Sep 2021 22:37:53 +0000
Received: from mail-eopbgr80130.outbound.protection.outlook.com
 ([40.107.8.130] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRMUN-00F5R2-Pz
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 22:37:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=foGluhhZomkk4mYFUlXizl6Tj7vP9htGY9KKOP3FAlwb0ihndpHiR6tWdslua5mocoyqdvWFXmbCejGAM6LN8TuwYxg4iq2uqlvVbgfLnkxRJINNn5Q7T+sMQ0Ei/QGKygIeCHgurcD9UIKWCdNP4J6rc7tmA8u59tqr8Xl/D1HJ2Ph04FcCYnguLGYf/ki1w3eYGMr9pyzCVSsp6NtPco+RKpv8AWviCQG1ofbrHRnGxWH/3OyannOgzO2OsT+FloOIm2C9xmmek3FlhfKTLCKo9MfbrD7T03pLt5o6aRcgz1ChlYdz9BAVzrTcYvzaEhfWITTtl4+g+CV8g0RjIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=nMX9sNuPlUwvHrruikPDpYC6BP+4VSnUCApYnVQcRcw=;
 b=ZRpseA6qCcnjw3A1Yyj6dLgu0CKXYf0cJZTZLrrqzFTZXC++pN/C1VmlyckwVakl7BRe9iNmfTvjkPb9VeOdYLPFOmqTZC5XphKaxqXR4GJHfcswXs4aKOkV50Todx3yH2b4050CJi+sdjzsq5n1I3J7hOcO4AOdLDDRkAJlaJS3EP4IjhDCHgL7e9f7pAhkhks11nEM/EDrmnaHaqJpEFPIQrS9eEpbkofXpC3sLIgLO8f0OmqLTl5Qqs9qpm8T4ihRmf7+59WVffHV8RFEpvN5zcHpt1MBFwUPKMlmAAkGuKBlMpr5FDMqmvBhylFNT/xkQzAR5taGdFBIG006rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMX9sNuPlUwvHrruikPDpYC6BP+4VSnUCApYnVQcRcw=;
 b=M1pHQjI/es7F+fE/6FlLIXlbSzxJEIwngBsTwfP35q8pBH+LJ3vmsMUp/ccM9e9wvp6rInbbwFUc4aP3YvB3X7jGrYbnATKbDPatCeQLzVYuNwGBYAkkjsbQyqVoS+eOFp3xsjMDx+O16wRTnxlCO+HKqvKQsaDHcrCiNVSuH3I=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB9PR02MB7259.eurprd02.prod.outlook.com (2603:10a6:10:24a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 17 Sep
 2021 22:37:42 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Fri, 17 Sep 2021
 22:37:42 +0000
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
From: Peter Rosin <peda@axentia.se>
Organization: Axentia Technologies AB
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Date: Sat, 18 Sep 2021 00:37:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
Content-Language: en-US
X-ClientProxiedBy: HE1PR0501CA0007.eurprd05.prod.outlook.com
 (2603:10a6:3:1a::17) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 HE1PR0501CA0007.eurprd05.prod.outlook.com (2603:10a6:3:1a::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Fri, 17 Sep 2021 22:37:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c8556cbc-978f-48ca-4487-08d97a2bc318
X-MS-TrafficTypeDiagnostic: DB9PR02MB7259:
X-Microsoft-Antispam-PRVS: <DB9PR02MB725955977D81AA1B70908002BCDD9@DB9PR02MB7259.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +6rGTIJtCWy4MZpxSNT5+BBnZPQsIFi5xmLbZbFtAmBqJKSYymJaEdDlP0B3/aXGHowuNFxZZystcn4zK8Uirn2Cwaw+NGMFWZ4SmjJprOk1l3k9faR8lCGc5SyZOyOxGdiD373Hm+nVaQDkJGA9tShqii7ih9FUwDk8cq9ojtxXi2Zz8sx77rm+rrujiJ3d4ubbyBNnI8aLXyu//Dzt6TyCL0n8rB2zWksBenP5oZdct4fFbOoMU5+jMh/ASziCn2OIYKHhc9ey4FqQ8jDmzY9y7pl6i+DWOle8VMnxmKlC5zf4UR0GTUmHOyleNpQgEafGF68mCbSu/bj5rBW1NwY0KBhE/nBYCG+2JvNJ3F50TSk4/0QMUJlISoro//q4li0yzSp7GSiRxQ75A4Hh9W8jtICgWB5+dVy8QwCqjk/xKrdqfnFzi6YafekvANY1aMdMOlsJhMlug8W7q0/PTAljrFv39csblw4SM4QqGDNoVRsVCxtluYl5flC1BVxraPSy76/wxHHtNtboHv1x2LK4pw1eBr/FNr6BbDtJM2KhYqvWYzOaQc80d3Gmwjmw4ReA/nXwGJ2/QBChlhZJn1hDuFMPOzsIvCO/zfUnEp2XMCukCVyNpc0AOXHptlXYTK4DpsL/yUlYotQICnVVwLneQuCovSD1xTPRapAaDjr45XFV161nDPL/tQTxpc4uFxvkqgMCqIY8LQpxYSIHXUiWEolo2OyuVVbiDDa16RmifC3zolYm5JGaa7nkACUv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(39840400004)(136003)(366004)(376002)(186003)(38100700002)(8936002)(8676002)(83380400001)(26005)(2616005)(956004)(2906002)(16576012)(31696002)(5660300002)(66556008)(66946007)(66476007)(31686004)(86362001)(110136005)(316002)(36756003)(4326008)(36916002)(6486002)(508600001)(45980500001)(43740500002)(554374003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1dsUzNPZTd0VU5VejI3cmFsWldnK1l2dnhnYXFSQ3FybE91K1lKdHlGRDNS?=
 =?utf-8?B?bFR6MFdoRjdma2JYa2lFeSt2OTkwRlhqR2grVFVwVXBBWE1lOEhUV3p6ZG84?=
 =?utf-8?B?cVpVV0JiRFlMY1FHY0MybFVJczZPODVCUGNtcUo5ZjE2eC9RWm1lUFN4aVor?=
 =?utf-8?B?ZlQxQmVSK1VNWGxRL29RWi93TWFQOHZyZmNIb3Z2WjFxUmpLZjNWS1BRaDdh?=
 =?utf-8?B?VEFhWWpKa1RSZHlHcktaWTBFNkNESVRLaGNhZlNJdUQrN0R5L2tsSDZFakRE?=
 =?utf-8?B?Z0xNY20wK2RyVG91NytiUU10M0k0Vnk2aW1QQWpNY0xJTTQ1ekZMaGE4M1Jq?=
 =?utf-8?B?akJtZzZqc1c5bjhNV3NobG90d1U5UUJ0SU4wYktPN0YwN1JmVjJsbEJaYVBj?=
 =?utf-8?B?MmJnUHNnMUIzeGFOdlkvTm9tNlExVDFKTEhmWEM1V2IzUFowM0ZUcWhXZm9o?=
 =?utf-8?B?anBoYXlRT1d2T0dlWXB6YnBrbTY5RkkrcGxuWkRKd3RnTm42YnFpdHlCemJL?=
 =?utf-8?B?c1BPY2FSTEFJV09MRFYrcmV2SVUwQmJIdnpTY2JibFEwREdEbXZ0TFI3a0JK?=
 =?utf-8?B?TnYzSzJ5cThrL0lIaUNBelZQc09rRWFURGdiRUVhQkZOdHRMMHFZVGI1TDRp?=
 =?utf-8?B?STZ3ZERrYklHWVJMYzNNWjNlQzc4cjVkN1lBTmxYcTJMa2lOV2hxaDliWnFL?=
 =?utf-8?B?Q1ZOL3l4YW5CVXhWejFVOTRGakl4WVNCVExlbkJZNkdjeEpKOEpQVU40eG5M?=
 =?utf-8?B?bnkwWWNIcGFraEhvSkU1K0JtcVlwQ1hDNG9qRUtnM09OVXBqSHdBZ2FLRHl0?=
 =?utf-8?B?TFo5R0xsOElGOEFnOTlmUTVMSWtpcEY1SVlZZEZuNnZWQTBvNTZPR0ZiR2I1?=
 =?utf-8?B?ODlYQjRkbkUzbEtaVGJSODlDSDFEbCtsL29ReUdCL2E2cnVBTklhZ0JVQTR4?=
 =?utf-8?B?V3lZQ0JKVkR5VTVpdm0wUmpFNU8wU3djK1pmR0ZaQXNBbXZPQkVPWmJvdVp0?=
 =?utf-8?B?WXZyaE5iNk9oR3k2OEIyaDRGWEdyQ1cvYVdIL2dwejVXNzZkWUpOdlpYWEtQ?=
 =?utf-8?B?TldDeTc5SUVBSGJ3MENkdDhkeE93VG5wQXlubDJDSFJQRWtOQ3c2TEwxb0VR?=
 =?utf-8?B?d2hHSUhBYkFDdHNYbXhjSlhVMkF0TnF4MjE0enRucGg0c0tOOFJJMUxIY0kw?=
 =?utf-8?B?cmR1cllxYXFNaEdwUEZtVUg2Q0VaT2RiM0FhQ1YxOStydkVCY21IWkY2T0Vw?=
 =?utf-8?B?MWNheGovMnY1VnBzQm9tMi9MbHdnQTd1aWx0RmdPWDdMTHNySXpsODhmREo0?=
 =?utf-8?B?L0puT2tqQVlnR3UzU3o0eUNwdlQrbVdDRCt2MjhSNnIzcEJKajhDYkhwQVdB?=
 =?utf-8?B?R2ZiSk5Pa28vd0dIdlFOWk0vNXdMMjB3Um5OSXQ5c0NuMUNrVGVBd3VHa2oz?=
 =?utf-8?B?Ty83U21QQ1dnekxGRFlmUHVHSTQ3UEsyRFBNQkpiZWFNK3d6NzNZUnlSMXpv?=
 =?utf-8?B?czN5R0F3a25leVI0R04raGdmZEFFSDlrdG5jSEtXVlJCYlhNd3BmZVc5K3lD?=
 =?utf-8?B?SGlOTCtmRzFCT3RvNUF2a2RaRGtnOHpibUFQRlN4aWdnWWJNUmZJUm1ub0hO?=
 =?utf-8?B?OTMrNWhwc0M0aWRtSStFUC9teEhwdFlXcEZWK0xFMWs2Z0xKM2VqR0FCd2tC?=
 =?utf-8?B?aHEwVllMN0dMZ2JDWHpXakJvQ0xBMXZ1RmVJK3VHNVRLOUphZFB5QldkUzZU?=
 =?utf-8?Q?Znk5OhARFhhHpYihmGkeU7EF2uHZVb6kbiTmHsX?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: c8556cbc-978f-48ca-4487-08d97a2bc318
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 22:37:42.6255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 81vDGCr5N5PEAD7Wzcs0hnFIFHvRBueb7cX3xJdftcy2IWT4LPL0leoeiqQiEdka
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB7259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_153748_116078_2BF8AB52 
X-CRM114-Status: GOOD (  10.25  )
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
Subject: at91 sama5d3 "regressions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

I have old boards that I'm trying to get up to current
revisions of various pieces of software, and I'm running
into a couple of problems with barebox. After bisecting
and sorting though git history for a couple of days,
these are my findings...


1st problematic patch:

070de908da ("ARM: remove PBL_FORCE_PIGGYDATA_COPY")

This patch claims to remove an option, but it also kills a region
overlap test that I appear to need on my board. This gets further
complicated by patches
81ca755487 ("common.h: remove unused region_overlap()")
04e2aa516e ("common.h: move and rename lregion_overlap()")
that first removes the needed but unused function, and then
repurposes its name, and by patch
0be48260b8 ("ARM: Merge single pbl with multi pbl")
which merges the old single pbl function into the multi pbl case.


2nd problematic patch

3e4a040545 ("ARM: mmu: use client domain permissions to support ARMv7 eXecute Never")

This just doesn't work for my boards, and I need to revert it.


3rd problematic patch

c5d38e9201 ("lds: Add and use RO_DATA_SECTION macro")

Again, just doesn't work on my board. I'm doing a partial revert, but
that gets further complicated by patch
cd23b6facf ("common: add initial barebox deep-probe support")
which piles in one more entry in the non-functional RO_DATA_SECTION
macro.


I'm going to follow up with patches. I very much realize that
these patches are most likely not acceptable as-is, but I do
include them since they are probably the best description of
where the problems are.

Cheers,
Peter

Peter Rosin (4):
  common.h: reintroduce region_overlap() as old_region_overlap()
  ARM: copy data if there is a region overlap
  Revert "ARM: mmu: use client domain permissions to support ARMv7
    eXecute Never"
  lds: the RO_DATA_SECTION macro does not work on my SAMA5D3 board

 arch/arm/cpu/mmu-early.c     |  7 +------
 arch/arm/cpu/mmu.c           |  7 +------
 arch/arm/cpu/mmu.h           |  1 -
 arch/arm/cpu/uncompress.c    | 12 ++++++++++++
 arch/arm/lib32/barebox.lds.S | 15 +++++++++++----
 include/common.h             | 14 ++++++++++++++
 6 files changed, 39 insertions(+), 17 deletions(-)

-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

