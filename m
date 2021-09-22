Delivery-date: Wed, 22 Sep 2021 09:43:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwuV-0006kI-DP
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 09:43:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwuU-0000SP-7Q
	for lore@pengutronix.de; Wed, 22 Sep 2021 09:43:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kh504W6VAKFscQD1iyPodpb+adc6biy02U5a3Tge9ec=; b=PMB38YTgOBfFoeWFHnhGQGPWJ9
	bdpRbj7qvApWf8vdbaMH8DdNh9qlEZm00yF+oUbjzK2vWm7VY4SN+u7cD5E0dpthDJIRY02Ie0Qbl
	CEtGckKH0PtPS4YCJEKS1CeO0uCEkwm2FdGYgYf+C2DMwWac2RVOMntgiUEDz/3dmG39Rs0ZqNTsR
	/wUmFzzshuh+lKf2kaEVd7Qne6aMowO3SiNjaga2p/7M0zQGrT2C7J+/e3g78yLyIX6r6h3OCj2p/
	Xj8/cT2Yi4M36AL3RY/0dQnXd/mbE1WD0Vt81hE0E5FaeudaS+7De2zWoP9olfxhML2bnQ2pDFSZc
	2CqUxzxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwsx-007LRp-04; Wed, 22 Sep 2021 07:41:43 +0000
Received: from mail-eopbgr70112.outbound.protection.outlook.com
 ([40.107.7.112] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSwsr-007LQy-GN
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 07:41:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isutHvigfgDBi9S0XnVwfg2pnsfuXDKIG7rC0UlRx2dnVDGI/BGFV0p99jPrBrgnGsruRj6tk4jyiEkYhY3QUo7sJSFNLJ4qc9A0mDQ5pM0e7smpU4+VC3Mz9Pyh2R/VUZA8ISBhA5TTYSSamYP28Pf8XWJUFDzSvtk133aCZu/v/WwJYbF84YLoyDXmCHvV9Dtco5yKhmr327VIzX56mg++IXwwIIRAmOhRV9H7hLbiRZmEsR2G7AbF4V+ilSVf8PGLTmVgW8BPGwvX6MAbU+iakN7KBF5DO8ycqkuwT7df1sPJZUpP00Vwj5xEABomMqL3AEWqqGpCzQ8HjVHnUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=7EP3P7xzjsn0+n35xRoj72f2KhiXIJXI2pIMKRCpDbI=;
 b=K816Ui9uzT+HjmRd5QrrApfhnhc9eh3EDiTIrZKIPk5nBgw1xyV+HkV0p29EkrgJuneVU8zfK6JcnXyV6x77c7IjPLsGBQCp7nvBxRrUltjE584vrvsckWsLIEk/HjyT0sFjwM7/xoLonz/EuKbTgSZ9+BcYYQtWH02Pu4Hhmef9+OcQvC+LwQK5UeS0WBCvA5L54xGFZeZCX5CW93KN4ta5ZrLfh6SNYiQPZFu5XkbmMTodJDMPkbbxpNy/PFGQOFXeQfE8/lN2ZxVPXktC0cjtT3Y6DRMaZClhhkt68S0sJSoGbnSukaY7H9t3PiQe8U6ThczMvig7GDnYRps+1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7EP3P7xzjsn0+n35xRoj72f2KhiXIJXI2pIMKRCpDbI=;
 b=PXfhVSEpoyMke0ze/POdpO/ExiIk7jxPgUuYXalFy6/pcejkRIOiihpHPO7paX3gPgIzw6WVDGhJJgXno3CJNVotN9lWLc8cUQBbbl7Mvsv5EmHcBWMTOHC7KW0Uzn4WvaQcrCv6T41ASqDFkWScc8T5Ygy9hs6wWx/vEqXvaH8=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB9PR02MB6651.eurprd02.prod.outlook.com (2603:10a6:10:218::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Wed, 22 Sep
 2021 07:41:31 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4523.018; Wed, 22 Sep 2021
 07:41:31 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <bf4bc5ce-8206-ee40-f36c-1e5dff759b6e@axentia.se>
 <237cc091-69e4-c49a-9c7b-eb195515da63@axentia.se>
 <07c2f7c4-47f3-7fd7-537c-8826da6cb24c@pengutronix.de>
From: Peter Rosin <peda@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <4067b040-f9f1-ffdc-aad0-818ff7707aec@axentia.se>
Date: Wed, 22 Sep 2021 09:41:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <07c2f7c4-47f3-7fd7-537c-8826da6cb24c@pengutronix.de>
Content-Language: sv-SE
X-ClientProxiedBy: HE1PR0701CA0085.eurprd07.prod.outlook.com
 (2603:10a6:3:64::29) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 HE1PR0701CA0085.eurprd07.prod.outlook.com (2603:10a6:3:64::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.7 via Frontend Transport; Wed, 22 Sep 2021 07:41:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f1d12d9-0f80-4d5a-ce53-08d97d9c6517
X-MS-TrafficTypeDiagnostic: DB9PR02MB6651:
X-Microsoft-Antispam-PRVS: <DB9PR02MB6651341916ACFDA195276BB1BCA29@DB9PR02MB6651.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IYiQULQ4uSxs00CIIFFpq2b3SpaTkBgMw2qkiJc6Sk0L1cGxSXz8TtLCMsymtzXtmIldQjM1Xk8rlV9kXXfBrbZvWK2jQhcOWBFMJOp4uWtSozylt8/RGbPIICb8//EH92YMXcUvlFhyZyRDOAUdcBL35EC5q1OskEJlq8pcy7wOKNROzndE8o3eDUk3DoW0/ilA2DiWpgb2q++Ecv9e6kfGJ5XsDx5PTgax20QAlfM0HyWh6sa8JBvW+cRbA/YpZZWnqSP3Mavoa6szPjxKBKFrly7pkU0ewfXylMDZ6yQzF1z2KkxV5iShljdkGm4BYRUUyc3HDa2TcXjnAoayARQa1iQmBFzF2Uyx3m0ZgRTzQFoG7k+KDMGt6duL5TM6Eyp4AkYg0IRFwhI4xcq5Jwx5AJfIoL4mwjsOfpDRgVVc2QiX3HAAu5oe2AVDh5X1vQt1D7CCMS+bsEUCyZ4Hy+bpmZycKVMtHZXVAzAERhLENKTLI8MO45YRj4HI04KlbyrHeU5YMLyguBUkyz1FcyonPy23Ss8EAa7EoEb9t6xMC4urqmOME9RsEqXb3IjWI+O+dJ2OjjTGlXQJ+qiiXBpQ0kF5fI1odXuy7wFljaYpMhpyUXnKEr0jKrJKueEY9tiw/IyVtGAA9SbxIAyMxiIa2uT37ooeS9BGdvqL/ecpEYMMdedMzA2SzgEybun64LNul3bBWv4SmlrDOUaaGTzh2VRgL+JAfB2EmvEaGEA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39840400004)(376002)(136003)(366004)(346002)(316002)(16576012)(31686004)(2616005)(53546011)(6486002)(5660300002)(8676002)(508600001)(38100700002)(66556008)(66946007)(31696002)(66476007)(36916002)(8936002)(86362001)(4326008)(186003)(36756003)(2906002)(956004)(110136005)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1hHL0orMlQzMkpCd2hGdHlPdVNoTUxSZTR0RCsyNnM1d1hrWGpvNUZES2ov?=
 =?utf-8?B?UktWdmcvOGFlSHVkYm1TOEVFZHBhdk9ER1BUSVQ0RVFoTWhaRkc0VlpjVzMz?=
 =?utf-8?B?T3dxU3Z1Qlp5NWxVNkFid0FBY29sNFFabHJuYm92amFTUmtnODVQcTMwajVS?=
 =?utf-8?B?Zm1QZXVIY3BYMnFQR09GcHBUZjZ0Ujg3aENPVEdwNE13Qkt5amJ2RWYwQzNr?=
 =?utf-8?B?YmJGRW1xRDZLNkJNVGliUE1xNWsyWnNKWnV6RHJJajhQUGRCd2tXcFhJc1hD?=
 =?utf-8?B?QzRpUFdJaFpMZzNPOHl0ZlE2SGRYS2xleE5lYmVQRWNKQWk4VXdaYWdGeUsx?=
 =?utf-8?B?bEwzQnZjUnVzNm9CaERneWRYdGJwK3BxdEtuT2hEdFU2eGowUzlMRFhSZ0ZT?=
 =?utf-8?B?M1pkMGRNWHhrRkxMRTl2b1NJQXVzcDUrYzgrYk9kZHdUblBuSmIxTXo1cG5T?=
 =?utf-8?B?NUpCTlIxRTkwT0FkSUkvbEZIYlFxSHNNK2ZQcTFNcFl1aTJpSlpsMEpZSnNH?=
 =?utf-8?B?dGtkMFVnY21MaGVmaDhvcXBPZXJHN1NDNFdOTmY1OFFDREV6UnA5NDVrUi9D?=
 =?utf-8?B?NkdKR1psT2FpanBqQnUxTVpPNGY5dkl0YTk3NWFHMGh1MitLZlNxZXRpMzRj?=
 =?utf-8?B?VHlRa3Q5a1hVK2Rub1pDaXQzT3IvemZ1Q2Q3RjNFT2ZuRXlhTmF5Q2I0WkZq?=
 =?utf-8?B?NjlzeGl2NCtCWHZQVW5BdkRJbVFTVGx6RlVpdzZWRVUzY3FVWFFsSFMwZmNB?=
 =?utf-8?B?VVdhWWFKZmtlaEROUEU3SFNZSVVSb0puanhJN2ZpU011VmIwcGtkVTZ2UTha?=
 =?utf-8?B?SDRWTWVORlUyYzhxUzJjU3c0NkxSaE4rQTZ6SGxnd1phb09OT01adTQzajdW?=
 =?utf-8?B?cytKbmNBNnpkM1cxaWx1ZmZ1Y2x1QTIvd3hlTG93ZnVaaVZ1cmRnYTF5VHlz?=
 =?utf-8?B?NTdyNTNHdmVxSWxvaDkyOUlHNnR6R21laHhVbkVFOFVPTzhiK1NoY2NpNWFw?=
 =?utf-8?B?eEtZNlE2ZjNMaFdMcFA2TjdDVThqZHdEb2w5eDhZWkVWUFN5K0ZzeUs3WmF0?=
 =?utf-8?B?bkVjWG5IeC9vN3FlMjdUWG5JeGxEWXVCRXhhV0JSNTQ5cmR3U1ZUUHhtWlM3?=
 =?utf-8?B?ajVWNjcxbWxncGZpRnlWYklMM3VQdzVpcm56aVgreFRWclVqR0NEa1JHbzls?=
 =?utf-8?B?azdHQUR5UHlORDFtR0JuUysybFNCeUI4TVVXaUoxWTFSWjhUSDFJNlR2cWV0?=
 =?utf-8?B?VWtYaVdIY2t4aEFFa01EeGl3VFlRYldKNGpSM0pEMUtYRmR3WnpDV3VUVEN4?=
 =?utf-8?B?U3Y1Y3BCMTF1MEdkRlFuZ2p5YXBwMEdyMEhLOFpqQVZMTXllNHR4cU9yRXJp?=
 =?utf-8?B?V0x0QzZndjZwV0NJTVJrZTJEOW5BRzg4WHh0MUVVVG12OFh3cDU3Z2RGOHVO?=
 =?utf-8?B?Rjc0L29CbHZXQ09hb2xjNE1nVWxzeFdsUFJHSEpoUVpkeDFZNm9Xd0FoLzQv?=
 =?utf-8?B?QUpPMEgrRXR4S29JVkpDNFltMS9Wc1UwT3JWa0NTcFIyeUVzNEtxQlJBNVlT?=
 =?utf-8?B?dncxZXpYRDY1OG1JR0Uremh6QzJ2OE1YS2tGRmZWQmRwcEd1UDBzSEsxMTB1?=
 =?utf-8?B?TUU1R01uMEhIblIwOXA2Zm1wMUI1YXIzM2Y5WTZ6V1g2cTJ5VG96OVBkcHB1?=
 =?utf-8?B?Mm8wSUp4NndqVjVZQ0MvUWNacGo3YkdnRmlEVmxKMjJGSmxwbGUrOVZYMmRY?=
 =?utf-8?Q?6F5/1mBHOXF35ogdolxqOx6CnBTEwlj7SCFEHcU?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f1d12d9-0f80-4d5a-ce53-08d97d9c6517
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 07:41:31.5054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W2cCK+w3X4ElI5/O+uOn1LRzbPv53zvaycdro2T8kIGPfhh2FD/6JO4UBPYJnpgi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB6651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_004137_813465_F7911F83 
X-CRM114-Status: GOOD (  18.00  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: at91 sama5d3 "regressions"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 2021-09-22 09:06, Ahmad Fatoum wrote:
> On 19.09.21 08:32, Peter Rosin wrote:
>> However, the above also means that the quotes around the
>> "regressions" word in the subject can be removed. The problems
>> are squarely in the upstream code base, and I do need fixes
>> for region overlap, eXecute Never and RO_DATA_SECTION.
> 
> I am interested in understanding how that breakage came about.
> I have a sama5d3_xplained here with NAND, which I will try to
> find some time to reproduce this on.
> 
> For your immediate issue: I'd like to use the occasion to get
> all sama5d3 to probe from device tree. We already have one
> sama5d3 DT-enabled board upstream (microchip-ksz9477-evb) and
> I just CC'd you on a series to migrate the sama5d3_xplained
> from legacy board code to DT. I tested this boots correctly
> after at91bootstrap from NAND without your series here.
> 
> The relevant defconfig is at91_multi_defconfig. It will generate
> a barebox-sama5d3-xplained.img, which should boot to shell
> on your board.
> 
> If that works, we could create a new barebox-sama5d3xek.img image
> that does the same as barebox-sama5d3-xplained.img, but with
> different device tree and see if all peripherals you use
> still work.
> 
> 
> With everything nice and dandy, we could finally remove non-DT
> code for sama5d3 altogether and your board would reuse the same
> early bootstrap code basically all other platforms use and test.
> 
> Sounds good?

That sounds like the right way to fix things. Thanks!

Cheers,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

