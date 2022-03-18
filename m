Delivery-date: Fri, 18 Mar 2022 11:35:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nV9x3-00FdKf-TF
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 11:35:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nV9x3-0000Pu-Mn
	for lore@pengutronix.de; Fri, 18 Mar 2022 11:35:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L3AZcZPJ/4Fd4fxt789VfeEQGARFZ8zAPtccn12ItBo=; b=DzZQ+wmqUxVxy5LwJK/vWVBsgQ
	pOsLqGagwf+dmJWXnKLxNkOj3tQJAdPv2Uw3jQGLIJxkSiauzgTXrPlG6wFW4T//dCl+iWpiT3p8v
	NigY2czTHwGJYeqIkUGZCTtmEbZeug9pr6ZiWW3y4fGKH4LZUOP21l5M3fnyVei86ixvfaD6hB+3l
	JMRgV0VMmxzElXm85WWrRsVI/1xpJv94/u8APZQmh1ZLzuLhD4tKrSkQquW0u/z1MtJKPPv6Ki9Wl
	L14qELdo6XSiInv9aPhBlCkXnsIqMLuHo3qPoF8fLqKYPMUY+9nqXYDVu04x3bixOQjOgSfUUjTrs
	CovpfJYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV9ua-0018lQ-FF; Fri, 18 Mar 2022 10:32:48 +0000
Received: from mail-db5eur01on0716.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::716]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV9uU-0018kz-CV
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 10:32:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MlLgifyJ8UP8OwLHzGukHUEe9MOfwBZFX2T72BoRFZcK99eKeZ+RYMVSp0laEPFRrr2va7IXa9kHA09NpfWBkK8zLYoRuuAs+sfUohaKFsFPU4q3Uq9nJsUgxc4xkOJ+/BoO0m9e5HFbP0l/657gA2EHsJBX6hdy4GtpvWUSmyDkMiHNSaymKEoVHeru45C9VSmPUkWxU21brAqrfVIrzA+Yl+PuhoRun1SkCKxguShqMidUnzCkXoe6REy6umkFpIH0TJ8O5xRg821za6+a3vWLhhqBfDMuiPb0zIw48JoQqg201Oozl7r5oGZGknAShIvKS4qaaJQzoVDbz/HQ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v5AefNjzCEE6j1LtK60SgbhGgSs1URHOG/BeNjr4m5s=;
 b=kKT5Vju7IxcasnSvtivC1hJDjf87Dg5qyjEqI4VO6B643PZyfwvHMGkf81qnRY/hm85gvZY2O4xiRuDL7KybXuc0YiTcWeFaMlSHX2aKvP6Lefzk274+NwJRKMEDiAEgbTUg/l9lYTrHvhH6HgsPdWEw9oxk9XiJyJxAWhnHRTmB8omK2PoI7mqukiMO+Q0m+IEXQM2kjb5i3Xt/OA+wSsnZ9qYdrzJ5oysONZXdb9UFvzMfnOxBide3HIDa7O2zQwnGEPBUGAIL/gnudukS1FI7aE45PQa3TJ3YGC/UegDLtZ9/ylONHGfWSeNg8EqSFoVFkKRQ0TAiFOxsD4BW7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=basalte.be; dmarc=pass action=none header.from=basalte.be;
 dkim=pass header.d=basalte.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basalte.be;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5AefNjzCEE6j1LtK60SgbhGgSs1URHOG/BeNjr4m5s=;
 b=UURBMe7VRa9dYRGQ8qdVkoNSvoAgvR4LDOBP4bTW9cdbibZ0npE2fU6EGYe5ZRunydNC2H1jH/GxcrEsiRa+r3IhOLQIsiCuipdjJGVqgKgI6v9gfl5YrUDJgRCV3RxvBsANSDa/VodICAlUp/W8A167sUEBlyFbMJV4t8PE2f8+UMupsP9BT3JH4utkJcwQsCI+PpOXRCsXWTXPP3i1xTsJpkoFpWl/elnZlbEexSaBo6cTEHM+B2firZjRKoLwE8QYNNbVF1Ymf8KhsmO6LeyZuQ4E2YB+UUCVn435BZvHrMdXfE/uOvzBT0PzWbV7DeD6zzWimOov/t7f0AJjcA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=basalte.be;
Received: from AM0PR04MB4243.eurprd04.prod.outlook.com (2603:10a6:208:66::29)
 by VI1PR04MB4016.eurprd04.prod.outlook.com (2603:10a6:803:4a::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Fri, 18 Mar
 2022 10:32:37 +0000
Received: from AM0PR04MB4243.eurprd04.prod.outlook.com
 ([fe80::348a:b420:ed4b:8532]) by AM0PR04MB4243.eurprd04.prod.outlook.com
 ([fe80::348a:b420:ed4b:8532%3]) with mapi id 15.20.5081.018; Fri, 18 Mar 2022
 10:32:37 +0000
Message-ID: <a4886a48-717f-d970-49af-551f3138e201@basalte.be>
Date: Fri, 18 Mar 2022 11:32:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <sha@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
 <20220317074628.GT405@pengutronix.de>
From: Tibault Damman <tibault.damman@basalte.be>
In-Reply-To: <20220317074628.GT405@pengutronix.de>
X-ClientProxiedBy: PAZP264CA0077.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1fa::15) To AM0PR04MB4243.eurprd04.prod.outlook.com
 (2603:10a6:208:66::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7ecbede-2d80-4094-8f89-08da08ca9f2b
X-MS-TrafficTypeDiagnostic: VI1PR04MB4016:EE_
X-Microsoft-Antispam-PRVS: <VI1PR04MB4016F5EDC61FD97C5CACD910E8139@VI1PR04MB4016.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DBYTfHFbVOqvV7X3sOyMmPRoeeb5PFoM13Boz1GeJZFZX9VMj281h8TaNP9ROZl4L5QGnR49KljXVvFqUneD+uVo1eKwYBb2/auIgEzziFVRpv+2GDkHuYpzbYWr45S7XqFSh0FIhDrY1wrhMatc/0rUDd8xLpOehVQxzvSK/IteYuEQTVRWxrA8wtx7gucde++YlLhU5HJ1irx/hxiigCeM2DYtXjXv+w6//GXgQsS8OMXUP08V0TC92KvMHvTiR/YhIoTTvw6T23rPkwoDVIGc9a/5Ad+CP1RcDEXcgrUUvH+dEuRsbjVEaCFIoj43oBmNtRq00FVuNLkOX9IZdV9K+qp3CkBg2FX/Wc7UbInKDfIwV80ZRq6t5nBZArwc874e1EigQfJPqlQgBzl1WPruuOhRFnvd9zJgsjL/L/wJnER4nZ4sqrZ9+Fl4g23iQsdVjoZUyiyO9/Ng9cb9ZPJBtj3kIesu9DDlFGvQxgOT8nXthCrH7TnpI3SQGP66ZRoaUAo0+tBC3EtbMCqVbmBZBYlMZWUmMzrz/59TuvTWvJ9HyNpUdH6X7ejcbUmY19kUQVKfQ6D9Zh91J5087s6mLHQXjiUPzc4AXY2CMVWRwHvayQj1R2UjDkqMKDEYA8ghQt/EuhtMZcFp3FQtrV+hHIolF0/8qsx/uHuwIBXgl9w4LGjkScRojl1RoV3bM5RyVOtsTUXGBAOEYEUDPlMbJeaFdNvUqfPYAyUxSF5l/4xZ47ok9QdzMO10hkNIp3iTFbTYM0RgCeO8MuMxpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4243.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(346002)(366004)(396003)(136003)(376002)(39840400004)(31686004)(2616005)(26005)(36756003)(186003)(31696002)(2906002)(8936002)(52116002)(53546011)(5660300002)(30864003)(44832011)(38350700002)(38100700002)(8676002)(6512007)(6506007)(66476007)(66556008)(4326008)(66946007)(86362001)(6916009)(316002)(6486002)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWt6UlEyMDlEM0NwYy9xQkM3Mld0eTlxQnJ6NUgwdWdIWk9PSTBuZnBoc2M5?=
 =?utf-8?B?MHhNRmZFYXZOQzF3aTM1ak5sM1ZUQzdVYkhpZjV2cSt2V1VMN0tKcUliVHFM?=
 =?utf-8?B?cGZDYWFRM2dBVGs4YW9IOFA3RCsxOFNIYVZVTTF2ZDVKTHRkOTBINXg4TDF2?=
 =?utf-8?B?OG9uWC9NRXZBRjhmd3BZbDhrTy9Vd3QxM1pDY0l1akhGRjV6dmFuWXM2SFpC?=
 =?utf-8?B?T1JRY25talRxN3ZoUlhscFdzdHByTFFmeDRSb2xLN1FEM0ZGa0E1NEcvbjU3?=
 =?utf-8?B?U1NDamE0SW9TWVZkK0tIMkE1V2lkQTR1YUV4anpxbHdqdXlyMWlTc0RaVmV0?=
 =?utf-8?B?MzFOWmJDY1JFQ3RuMTFDU3FDMzczWDUzdXV4R1gzNnhqbUxWZSsySWRNY09J?=
 =?utf-8?B?anhUMjRFSFk0bzVhVWR2LzlvM1kwRVd0NUErUExxdk1HZkc5UGladEFFZlNv?=
 =?utf-8?B?NXo5bmFVaHFKWmZKUkhOaHR6SFZPN2VEWXRLWVpzbDlzVjkyWVN3YWhHNzBE?=
 =?utf-8?B?UC8rMGY2YlpOOUN1TzlJSUFDZUNRaDMyS0VpbDEyTisyTGZDTk5Ha24zSE5u?=
 =?utf-8?B?VkFGVmZHU21lODRsZVYxLzRkRkFuTUVhdFNvMjQwYzNvRGRPUnZKOFlRM2w1?=
 =?utf-8?B?d0U4L1FGVlRBRUZEa09pMERnUmhkTmxJNEZrOC8wRSt2MU0yektjY1ljakZW?=
 =?utf-8?B?WHRtUE9Vd2wrTXNNTm1BYkNDNlNMSHVZTWVIQlFlMVUvT29nWGFEQVFnN1dJ?=
 =?utf-8?B?bTB4SEQyS21UdkdQVWh4K1pnaFNQZTlSRG9EWVB0ZTZLTVkyak5idkc5d2dN?=
 =?utf-8?B?Sng5M0RFR0pXcDFxZ0hsTm9OS2QwUW8yS1dGNmU2cmlHRDVRT0pYZXpudlVO?=
 =?utf-8?B?bXlCWS8xcm8razZYekNzb1Q4REsvSHA3VXZCL09kY2N6aStNbVFSeUU1WHAy?=
 =?utf-8?B?ZWxqR0lnVUNMNjByZnNzZmg3T3FsZjN5c3gzTGdVRXc3Y2RuU2VnaXhSbWQ0?=
 =?utf-8?B?VjRYV3BrdlhsNk1DTTBIYXRPeWQ2RkNvZXJ5bzdCRGJFdUNhZytteUZrL1Bz?=
 =?utf-8?B?V1VrSk90MEhNd0hWajBlRmZGZ2VXUGo1b3dPbU51RFRtQ29UbkdYdjg4ako1?=
 =?utf-8?B?emJES1hpSHY2c3hnQmFuZHN4VzNWWFBpZXRJekdXbzNQZ25KVzJ4dmRiTFJx?=
 =?utf-8?B?NW1qamlQWDVpOXpyUkovY0hKd0dvS1ZxYnZvS1dLekZHdWxYZUE2aERwa3JY?=
 =?utf-8?B?VlVJT1lmN0JSY3JvckFuRGdwS0NRZ0hrdmZadkhKY0U2OUZLWkZoL0pXRVJk?=
 =?utf-8?B?S1N2Ui9scGV5SVVFeFllNEh0dzR1QXNTdDViYW91ZmpaMFV0UjRrdXJhZzJV?=
 =?utf-8?B?K2ljU3owNXlaWjdqSUFjZUZIM1F5MklYdGlkVlBYMWsxTTRIMXpLQnNYc3Bk?=
 =?utf-8?B?Y2JUdml2dHlhQ29hTTFURkVTM0xRN0k1T2l3eit3VytIT1dzeEpMK0c5NXRr?=
 =?utf-8?B?NXZ2cTY3RkFxOUd3bUJEQ0JWcTkrbVA3NjhMcEpSVVJybWNlSlJuNU5EM3Zr?=
 =?utf-8?B?SDYvV0tKNU1ERWRZYjB1QlQvdHU1Mzl0RER1OGh6aklLRU9QRzZ4WDMvN0hI?=
 =?utf-8?B?OE9OVHJ3b0x4OUU5UXpjdWdpWk0rSFZ0cEZsbVFkQktkWGorRG5xYTU4NjhM?=
 =?utf-8?B?K0xyQVhxRE44eERWREZNL0dJRC9mZ1AraEtuSkx3QzdxcXpNRS9uRE5xRVo5?=
 =?utf-8?B?dytLOGhneUh3SUxhaXk2YmVnQkNKako5cTNUZ1lGeTVJUUg3OEpPRGMwM1ZX?=
 =?utf-8?B?eEZuQm9kTEFRTnE5RDZrWVVLeEtQQ0JYSkJZWlQ1RVZyM3gwcGI5UncvNDBj?=
 =?utf-8?B?V1g3RUJ1N0VuQ1dZRGJuV0krZDZaOHd4anBwVUpZOFhXYlUwSVhmMjN1T3VU?=
 =?utf-8?B?cktRMEYrWDIxSTBiUks4TzQ2ZGgyL3lKNllsVDRIVzlwcGtQU2xSdlc1N3VU?=
 =?utf-8?B?NGVXTU5LWnZRPT0=?=
X-OriginatorOrg: basalte.be
X-MS-Exchange-CrossTenant-Network-Message-Id: d7ecbede-2d80-4094-8f89-08da08ca9f2b
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4243.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2022 10:32:37.4444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 848bfa46-da8c-48a5-a4f3-bafe311d486d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sngw+Oxyr5z+HlihvjwGPi8zILdxc+7h5hk5keLk7TatGDPGWdMj9+3TEkMLKeEnbfSPbWkwc4nIW6iiBxr9jBpHLH8VGtIrYmdOJz/9VN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_033242_749636_EED4805D 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Gah, I just saw how that mail was sent, let me try that again:

On 17/03/2022 08:46, Sascha Hauer wrote:
> No clue, just some things you could test:
>
> - in BCH8_HW_ROMCODE barebox can't read what it has written itself,
>    right?

so it would seem yeah

> - Can barebox read what Linux has written in this mode?
> - Use Linux to write known data to a page:
>    seq 10000 > foo
>    flash_erase /dev/mtdx 0 0
>    nandwrite /dev/mtdx foo
> - Read the same page in raw mode in barebox:
>    md -s /dev/nand0.raw 0+2112
> - Write the same data with barebox
> - Read again:
>    md -s /dev/nand0.raw 0+2112
> - Compare the results
>
> You could also just return successfully in chien() when the result would
> fail and see what you read.

(I had to edit chien as you suggested, else md didn't print the results)

Writing from linux and barebox seems to give the same result:

> barebox@Phytec phyCORE-OMAP4460:/ gpmc_nand0.eccmode=bch8_hw_romcode
> barebox@Phytec phyCORE-OMAP4460:/ md -s /dev/nand0 0+2112    
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> 00000000: 0a320a31 0a340a33 0a360a35 0a380a37                1.2.3.4.5.6.7.8.
> 00000010: 30310a39 0a31310a 310a3231 34310a33                9.10.11.12.13.14
> 00000020: 0a35310a 310a3631 38310a37 0a39310a                .15.16.17.18.19.
> 00000030: 320a3032 32320a31 0a33320a 320a3432                20.21.22.23.24.2
> 00000040: 36320a35 0a37320a 320a3832 30330a39                5.26.27.28.29.30
> 00000050: 0a31330a 330a3233 34330a33 0a35330a                .31.32.33.34.35.
> 00000060: 330a3633 38330a37 0a39330a 340a3034                36.37.38.39.40.4
> 00000070: 32340a31 0a33340a 340a3434 36340a35                1.42.43.44.45.46
> 00000080: 0a37340a 340a3834 30350a39 0a31350a                .47.48.49.50.51.
> 00000090: 350a3235 34350a33 0a35350a 350a3635                52.53.54.55.56.5
> 000000a0: 38350a37 0a39350a 360a3036 32360a31                7.58.59.60.61.62
> 000000b0: 0a33360a 360a3436 36360a35 0a37360a                .63.64.65.66.67.
> 000000c0: 360a3836 30370a39 0a31370a 370a3237                68.69.70.71.72.7
> 000000d0: 34370a33 0a35370a 370a3637 38370a37                3.74.75.76.77.78
> 000000e0: 0a39370a 380a3038 32380a31 0a33380a                .79.80.81.82.83.
> 000000f0: 380a3438 36380a35 0a37380a 380a3838                84.85.86.87.88.8
> 00000100: 30390a39 0a31390a 390a3239 34390a33                9.90.91.92.93.94
> 00000110: 0a35390a 390a3639 38390a37 0a39390a                .95.96.97.98.99.
> 00000120: 0a303031 0a313031 0a323031 0a333031                100.101.102.103.
> 00000130: 0a343031 0a353031 0a363031 0a373031                104.105.106.107.
> 00000140: 0a383031 0a393031 0a303131 0a313131                108.109.110.111.
> 00000150: 0a323131 0a333131 0a343131 0a353131                112.113.114.115.
> 00000160: 0a363131 0a373131 0a383131 0a393131                116.117.118.119.
> 00000170: 0a303231 0a313231 0a323231 0a333231                120.121.122.123.
> 00000180: 0a343231 0a353231 0a363231 0a373231                124.125.126.127.
> 00000190: 0a383231 0a393231 0a303331 0a313331                128.129.130.131.
> 000001a0: 0a323331 0a333331 0a343331 0a353331                132.133.134.135.
> 000001b0: 0a363331 0a373331 0a383331 0a393331                136.137.138.139.
> 000001c0: 0a303431 0a313431 0a323431 0a333431                140.141.142.143.
> 000001d0: 0a343431 0a353431 0a363431 0a373431                144.145.146.147.
> 000001e0: 0a383431 0a393431 0a303531 0a313531                148.149.150.151.
> 000001f0: 0a323531 0a333531 0a343531 0a353531                152.153.154.155.
> 00000200: 0a363531 0a373531 0a383531 0a393531                156.157.158.159.
> 00000210: 0a303631 0a313631 0a323631 0a333631                160.161.162.163.
> 00000220: 0a343631 0a353631 0a363631 0a373631                164.165.166.167.
> 00000230: 0a383631 0a393631 0a303731 0a313731                168.169.170.171.
> 00000240: 0a323731 0a333731 0a343731 0a353731                172.173.174.175.
> 00000250: 0a363731 0a373731 0a383731 0a393731                176.177.178.179.
> 00000260: 0a303831 0a313831 0a323831 0a333831                180.181.182.183.
> 00000270: 0a343831 0a353831 0a363831 0a373831                184.185.186.187.
> 00000280: 0a383831 0a393831 0a303931 0a313931                188.189.190.191.
> 00000290: 0a323931 0a333931 0a343931 0a353931                192.193.194.195.
> 000002a0: 0a363931 0a373931 0a383931 0a393931                196.197.198.199.
> 000002b0: 0a303032 0a313032 0a323032 0a333032                200.201.202.203.
> 000002c0: 0a343032 0a353032 0a363032 0a373032                204.205.206.207.
> 000002d0: 0a383032 0a393032 0a303132 0a313132                208.209.210.211.
> 000002e0: 0a323132 0a333132 0a343132 0a353132                212.213.214.215.
> 000002f0: 0a363132 0a373132 0a383132 0a393132                216.217.218.219.
> 00000300: 0a303232 0a313232 0a323232 0a333232                220.221.222.223.
> 00000310: 0a343232 0a353232 0a363232 0a373232                224.225.226.227.
> 00000320: 0a383232 0a393232 0a303332 0a313332                228.229.230.231.
> 00000330: 0a323332 0a333332 0a343332 0a353332                232.233.234.235.
> 00000340: 0a363332 0a373332 0a383332 0a393332                236.237.238.239.
> 00000350: 0a303432 0a313432 0a323432 0a333432                240.241.242.243.
> 00000360: 0a343432 0a353432 0a363432 0a373432                244.245.246.247.
> 00000370: 0a383432 0a393432 0a303532 0a313532                248.249.250.251.
> 00000380: 0a323532 0a333532 0a343532 0a353532                252.253.254.255.
> 00000390: 0a363532 0a373532 0a383532 0a393532                256.257.258.259.
> 000003a0: 0a303632 0a313632 0a323632 0a333632                260.261.262.263.
> 000003b0: 0a343632 0a353632 0a363632 0a373632                264.265.266.267.
> 000003c0: 0a383632 0a393632 0a303732 0a313732                268.269.270.271.
> 000003d0: 0a323732 0a333732 0a343732 0a353732                272.273.274.275.
> 000003e0: 0a363732 0a373732 0a383732 0a393732                276.277.278.279.
> 000003f0: 0a303832 0a313832 0a323832 0a333832                280.281.282.283.
> 00000400: 0a343832 0a353832 0a363832 0a373832                284.285.286.287.
> 00000410: 0a383832 0a393832 0a303932 0a313932                288.289.290.291.
> 00000420: 0a323932 0a333932 0a343932 0a353932                292.293.294.295.
> 00000430: 0a363932 0a373932 0a383932 0a393932                296.297.298.299.
> 00000440: 0a303033 0a313033 0a323033 0a333033                300.301.302.303.
> 00000450: 0a343033 0a353033 0a363033 0a373033                304.305.306.307.
> 00000460: 0a383033 0a393033 0a303133 0a313133                308.309.310.311.
> 00000470: 0a323133 0a333133 0a343133 0a353133                312.313.314.315.
> 00000480: 0a363133 0a373133 0a383133 0a393133                316.317.318.319.
> 00000490: 0a303233 0a313233 0a323233 0a333233                320.321.322.323.
> 000004a0: 0a343233 0a353233 0a363233 0a373233                324.325.326.327.
> 000004b0: 0a383233 0a393233 0a303333 0a313333                328.329.330.331.
> 000004c0: 0a323333 0a333333 0a343333 0a353333                332.333.334.335.
> 000004d0: 0a363333 0a373333 0a383333 0a393333                336.337.338.339.
> 000004e0: 0a303433 0a313433 0a323433 0a333433                340.341.342.343.
> 000004f0: 0a343433 0a353433 0a363433 0a373433                344.345.346.347.
> 00000500: 0a383433 0a393433 0a303533 0a313533                348.349.350.351.
> 00000510: 0a323533 0a333533 0a343533 0a353533                352.353.354.355.
> 00000520: 0a363533 0a373533 0a383533 0a393533                356.357.358.359.
> 00000530: 0a303633 0a313633 0a323633 0a333633                360.361.362.363.
> 00000540: 0a343633 0a353633 0a363633 0a373633                364.365.366.367.
> 00000550: 0a383633 0a393633 0a303733 0a313733                368.369.370.371.
> 00000560: 0a323733 0a333733 0a343733 0a353733                372.373.374.375.
> 00000570: 0a363733 0a373733 0a383733 0a393733                376.377.378.379.
> 00000580: 0a303833 0a313833 0a323833 0a333833                380.381.382.383.
> 00000590: 0a343833 0a353833 0a363833 0a373833                384.385.386.387.
> 000005a0: 0a383833 0a393833 0a303933 0a313933                388.389.390.391.
> 000005b0: 0a323933 0a333933 0a343933 0a353933                392.393.394.395.
> 000005c0: 0a363933 0a373933 0a383933 0a393933                396.397.398.399.
> 000005d0: 0a303034 0a313034 0a323034 0a333034                400.401.402.403.
> 000005e0: 0a343034 0a353034 0a363034 0a373034                404.405.406.407.
> 000005f0: 0a383034 0a393034 0a303134 0a313134                408.409.410.411.
> 00000600: 0a323134 0a333134 0a343134 0a353134                412.413.414.415.
> 00000610: 0a363134 0a373134 0a383134 0a393134                416.417.418.419.
> 00000620: 0a303234 0a313234 0a323234 0a333234                420.421.422.423.
> 00000630: 0a343234 0a353234 0a363234 0a373234                424.425.426.427.
> 00000640: 0a383234 0a393234 0a303334 0a313334                428.429.430.431.
> 00000650: 0a323334 0a333334 0a343334 0a353334                432.433.434.435.
> 00000660: 0a363334 0a373334 0a383334 0a393334                436.437.438.439.
> 00000670: 0a303434 0a313434 0a323434 0a333434                440.441.442.443.
> 00000680: 0a343434 0a353434 0a363434 0a373434                444.445.446.447.
> 00000690: 0a383434 0a393434 0a303534 0a313534                448.449.450.451.
> 000006a0: 0a323534 0a333534 0a343534 0a353534                452.453.454.455.
> 000006b0: 0a363534 0a373534 0a383534 0a393534                456.457.458.459.
> 000006c0: 0a303634 0a313634 0a323634 0a333634                460.461.462.463.
> 000006d0: 0a343634 0a353634 0a363634 0a373634                464.465.466.467.
> 000006e0: 0a383634 0a393634 0a303734 0a313734                468.469.470.471.
> 000006f0: 0a323734 0a333734 0a343734 0a353734                472.473.474.475.
> 00000700: 0a363734 0a373734 0a383734 0a393734                476.477.478.479.
> 00000710: 0a303834 0a313834 0a323834 0a333834                480.481.482.483.
> 00000720: 0a343834 0a353834 0a363834 0a373834                484.485.486.487.
> 00000730: 0a383834 0a393834 0a303934 0a313934                488.489.490.491.
> 00000740: 0a323934 0a333934 0a343934 0a353934                492.493.494.495.
> 00000750: 0a363934 0a373934 0a383934 0a393934                496.497.498.499.
> 00000760: 0a303035 0a313035 0a323035 0a333035                500.501.502.503.
> 00000770: 0a343035 0a353035 0a363035 0a373035                504.505.506.507.
> 00000780: 0a383035 0a393035 0a303135 0a313135                508.509.510.511.
> 00000790: 0a323135 0a333135 0a343135 0a353135                512.513.514.515.
> 000007a0: 0a363135 0a373135 0a383135 0a393135                516.517.518.519.
> 000007b0: 0a303235 0a313235 0a323235 0a333235                520.521.522.523.
> 000007c0: 0a343235 0a353235 0a363235 0a373235                524.525.526.527.
> 000007d0: 0a383235 0a393235 0a303335 0a313335                528.529.530.531.
> 000007e0: 0a323335 0a333335 0a343335 0a353335                532.533.534.535.
> 000007f0: 0a363335 0a373335 0a383335 0a393335                536.537.538.539.
> 00000800: 0a303435 0a313435 0a323435 0a333435                540.541.542.543.
> 00000810: 0a343435 0a353435 0a363435 0a373435                544.545.546.547.
> 00000820: 0a383435 0a393435 0a303535 0a313535                548.549.550.551.
> 00000830: 0a323535 0a333535 0a343535 0a353535                552.553.554.555.


Because the data looks right(?), despite the error prints, I tried
ubiformat again from barebox, then booted linux from SD, and attached
the ubi nand partition in linux... which worked fine.
All volumes and data were there.

Very confused about what's going wrong here.

--

I have since also tried attaching from barebox again, ignoring all the
errors. It does (after several minutes) finally succeed in attaching,
and recognizes all volumes.

Tibault

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

