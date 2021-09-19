Delivery-date: Sun, 19 Sep 2021 09:53:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRrdH-0003LE-Nx
	for lore@lore.pengutronix.de; Sun, 19 Sep 2021 09:53:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRrdG-0005HI-Dx
	for lore@pengutronix.de; Sun, 19 Sep 2021 09:53:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tSQJHQqXZlNYBdhsvpzeQuvhVxt+5ftlxHqHaATyUNY=; b=2Z0YcrzNaQiJbvRUul4/gHjPwa
	udQ6xMwQhp3Aa4ld2h8x8xbVF5nb4hMh/gk6Jk1Z70hidPTayev5QeFx8e77Jq7kXyHfEILyXgUI/
	ksC8YyCfntjFR7qW3+zUs4OKLki1REZEkkWAqRLM0NR1iONFBExMd6Abr477ru/uu/fNHbNobe1fH
	KhN7yCOa+BvVA6Gv1GusAVKqDRHV+ZuNKRVGErX5kNbUi7BKIiInANb2uILnNMAXcQ/9GYrsQ64K+
	jNomZ65v2MU4pWEbSzEt1hC743bgyWo9Ga2vs392KOG/WY/f+/pmbW/PVeNnQnxR34PLxwyOUX2xv
	Qja0x0bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRrba-00GvtB-9b; Sun, 19 Sep 2021 07:51:18 +0000
Received: from mail-eopbgr150120.outbound.protection.outlook.com
 ([40.107.15.120] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRrbU-00GvsN-UT
 for barebox@lists.infradead.org; Sun, 19 Sep 2021 07:51:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1Rex7oJAuO+c9ZNm1N4Ne8phMjhlX0mKpoBg2pnCXlRBD7c6UcMnH4LFhVKFYSSqVxSYO4KPedqZpeX9/92gydq/Ckikj7N2gC6egNdlqD4qqo9sTM3UvOiGe5Ogwj5nOClUjIzYlUU1rJJE4JIs7HI1jbBLJbfb2lGDBr11zLpHRoBbp1FwgOzmK54KxyyZAMWME7Z3N3ZqdBwnKXZsetH7S1KfU0Qdp7KidbbNY0rEU1pQjh0xFsn0gN6dIsQvMAiidj8wEEcE/ocxFO4OjWifv8wSlOaiQvUQvim1cQwUmufDe8KsKG0Ql0qp1J18d3mV0in/22TlmAyi6rDLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=8GbB5XnX2Vi1j2uqihiHoIzvPFiupEC/FWdaFYF6aQI=;
 b=EvMBR4ZQppDsnsY+8mz2HCZVeBspoA6ttiWIq8svnu5epsWyJ2j02zy13aWUi+vKj/UXyLr010aAbtfg2I7orxIpWYMBNqdNX6FCBv4bH4CYMmMAtt6PsluuIIV7Laq2VKBN+JCFCF0Z6H7wCbwJRToq7XEsHNUA974AI0QRjqLrk6MjmCt1DbdSUk8QRDOQ78+8Kt37XJraAGtUzcG5/h8USb0f8cq+6yme98trGb2si+Dh8/62c3mRVWSUjHp7hyUAzqk0EDDKABM9ioSZ3xMb5s+ciM9EOFR4UwyZILlIq8gNqqYkDOJZe8iP/BRDXw9ppNAhWXGdwrtk6idf0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GbB5XnX2Vi1j2uqihiHoIzvPFiupEC/FWdaFYF6aQI=;
 b=VP5F+aZOEPQSNCWN8cC7XYKWo7r0BvbaOGkMoP3HqD5h22yaeq3osOkOwJuAHp30gkI6Q3X6nqCrkaGlByhQD850CmXrR8l8Rrt7ybfsEQQ2qfoinbkNn1wld2YZToPAiO1hccXE3dbN3mICL3Qo6epOvsvpo8ZUpm8S61UqKU8=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB9PR02MB7354.eurprd02.prod.outlook.com (2603:10a6:10:25c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Sun, 19 Sep
 2021 07:50:59 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Sun, 19 Sep 2021
 07:50:59 +0000
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
 <e14fb2eb0ea344ac272b823c51ee3a4049a51c33.camel@pengutronix.de>
From: Peter Rosin <peda@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <02b09328-e300-f36e-4cc4-daa7afb47ad5@axentia.se>
Date: Sun, 19 Sep 2021 09:50:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <e14fb2eb0ea344ac272b823c51ee3a4049a51c33.camel@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: HE1PR05CA0166.eurprd05.prod.outlook.com
 (2603:10a6:3:f8::14) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 HE1PR05CA0166.eurprd05.prod.outlook.com (2603:10a6:3:f8::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Sun, 19 Sep 2021 07:50:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25618cb9-7703-416a-7170-08d97b423874
X-MS-TrafficTypeDiagnostic: DB9PR02MB7354:
X-Microsoft-Antispam-PRVS: <DB9PR02MB7354707E6BFBDD6EBB01B5EEBCDF9@DB9PR02MB7354.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8HDliYjEpGwqze316UhBH0g84H72/B9how+x8K7JKlhz/AHMYSToTIMZFagm82/7gra0sRDj7XapSseu6JblKxOmNP+QHXtyTFtpI8xWcnax9IrtLWyckACVSKTeCS2OYH6TWDlK3nPI8MYCU51slNJW6o3n2wF2sZ6sST8fjANUW8FhL5t0F5E7ywBmGxJ06T8KOB9OBtvw6j6zccSiuK0Sfw9Xu11RUJOKwqVhWjZA8b4obn6r7Tlbt+cE/Ghv2Uw8Btj0ZcRm0zH3gIJvg+xZhETjlP6BUM2dQbnMPFOnxEvjCWuqIx01Y5kUXlLMvjb4G8XsoqGXy1XbThRwa+IaY0oL6gTpTyRHMVdRpuKUdU0BzOf/vyo7N1Enfc1GSIriCDZF9KdtmJr2xS/4RKjMleNS7kQom2x60+up98fbhkPensNnjrQ0fOtbvanNJTaCElYsnYR1BWgkeMD8n8wI48/ZUqGBqU4wfwxUzTzEPzpIxkUz3Waetzyxg6xbhGfhn4KlOH6L0rq3SKrAid1W7fvRGASfXfxugpQc4Z8QbJRhUBLs7TuuINUqjv2hA+pO/NeI5aGL8b/Y5cVLTMDI15jkyACtV2SwA5n3vbYrQtPM6i0Atx529JJ0ZbvW5qfPxD/UeRYh60k9TEmGFsbLEe9ZcNJlJj2fZizhqiymbHET6PRR7jcby/DQ03s9MK75l6/ot+yjBq5Evm/4YISHgEToexqcoiYXAEu87RE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(39830400003)(396003)(346002)(376002)(8936002)(110136005)(6486002)(5660300002)(86362001)(6666004)(36756003)(8676002)(316002)(16576012)(186003)(66556008)(956004)(66946007)(53546011)(31696002)(26005)(36916002)(38100700002)(2616005)(4326008)(66476007)(31686004)(508600001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vm5aT05YdzRUemUzdG9wQmJ6LzJOSzROZXJyR2ZVUFl6MVVFbUdlVGZ3SDJK?=
 =?utf-8?B?d2JVSHl6cXR0K1k3TmMwU3d3YWV1Z1B1VGJiRG5TZHg0MVhoMG82VHRkMHU1?=
 =?utf-8?B?TDY5VkRNNWx6RDZCS0JnY0FxbUhEaTlrNkFJdXpob2VCbUpWYjlUdjVDNzQ0?=
 =?utf-8?B?L3lJdmFHU2NNK2gvZDhIdmFHN1puaWFSekZQL1JBc2llcTVjTnFxMTdlL1dT?=
 =?utf-8?B?bEhQb0FldkNUT1FUQ082VHYveFJUWWRoOXRNQ05GNEdaZUFUTDdkMjBTQWpV?=
 =?utf-8?B?MDVEb2JHKzVKK3dHQzE3Yzg0UnZGV1krM1pEaWxzMUhaNE56a1prZS9ZKzFx?=
 =?utf-8?B?dkdhLzVwL1plaU1adEFzZmxrMVRaUU1kRTB1ZHViSHlSS3VUYW5SWnFDZlBP?=
 =?utf-8?B?NDA3RFpTL1JDMHp6eFNxM1ZHL2FzZTVORTFNT2lHZ0VOTDd4YktXTlg2TFo0?=
 =?utf-8?B?K1Q1MnBBeTlnVWVMMzRKdWNrMlVEUGUrRmUrb2JnQUY0MFZRaDU4ZFYrU3RY?=
 =?utf-8?B?MU1CdHN6SUFDZGhYM3hkOVRpeStMMWJDQVBrUlRqNVlWWlhaUVB3ZVR6MXBY?=
 =?utf-8?B?cXkzYnE2OE9INUZLUmVMZUR0NXhKbm5vOFhjT01IcU5qbUwwQW1NVDZiMHVB?=
 =?utf-8?B?czJFZks1MmxmVWc3N2lqTmphSXNKb2ZoTU16VWg5OUl6bi8yd0RyUkRyaVg1?=
 =?utf-8?B?bnN6c0ZDRnJGbTd6ZkJORSs1eTBSVG1LbkxTTG94RkZsMmJhU2RGWURqb1E0?=
 =?utf-8?B?aWpNcXZzZFFtMlkxY2JoSnVQeDNFU2dzY0hYWHRHejlJNWxqekx0U3crMHRr?=
 =?utf-8?B?eVFuZWhGSmtRMFA1K0MwWDIySWRTcjNGRWw2alNSTGcyTTZ4c1c0RjJ0SmR4?=
 =?utf-8?B?S1hnbzZDVGhmSXNtWmliK01vMGdzWjl0UHlPeXNnbFNWb3IxK3ROa2JBcG9j?=
 =?utf-8?B?cWwwV3BuSnRyL0NNN3dhcUZsQldRcVY4czlnemt6bDhNZVYxRzIzKzcxakpp?=
 =?utf-8?B?RGg2eTM0STIvUVVGY29yREtxNlNad0RxNmoyQzArSFZOTlRWMVdBQWs0cit3?=
 =?utf-8?B?Z3VueERkQnl2bzNLRkh3Uk1FUHlQSFRjS0V3SkxWbU5FTlF2anpXUFlmY0NC?=
 =?utf-8?B?ME9Gdk5xeTJBbm5tSm5QcU5QTkt5cDVpWGxodCtGM05aNXd6SHlwQlZkTHJS?=
 =?utf-8?B?QVBWUkpVSnJIcDBXV3RHb0VGejNWMzJFK2tEMjNDTExmZEg3MVcvSUxSVTBy?=
 =?utf-8?B?aGZET2R0elRwNFNURjFFNTlEOU9yT1BPcjBSaWZ4YW9zLy91WjM2cjBxUEVv?=
 =?utf-8?B?QktCY3RoWkIzcjQwZU1YdUt0TFZ1SHA1NDhISkZBQXd3Tk1xQ0RSWVdjc1Rq?=
 =?utf-8?B?MXVQcWw0K3dJNHhkb01GbHVUeGdvSVQrbWdsNkRmZzJhUmpsVkVYalR2aC9w?=
 =?utf-8?B?WVZpbGFHcnVlRmdUdnNiMDVxTWczditXUlZUYitQN2NXZUJDNFZ2TElzbVda?=
 =?utf-8?B?cW5tZXgrVGNVS1N0cnhCZUh6dFlZUGM0Ui9zY0h3eFphTUsvMWp2R0gyMVlX?=
 =?utf-8?B?b1haSmw1YXoyNlQveXdhTVNRb1lxMGpCNkVvUWQzWnc0Z282TlRSN0RjZHVU?=
 =?utf-8?B?UmU2ZW0xcHhxYkc4c1JTdVE3SzdxeDFVQTBnWUUrdno3cE5ZT1lWM1VYNklV?=
 =?utf-8?B?QmRKYUs2eCtzOFk0blFIRnhIMFZSU2oyQjdKL08xWkxXUklDS2xMSDRVUEg4?=
 =?utf-8?Q?sMBSFlrVyf8LYQNHBZ+ykGnKjQW7S77t3BOrCR5?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 25618cb9-7703-416a-7170-08d97b423874
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2021 07:50:59.5918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XIIIlN+R8FqE2pvB8MtUq6qdIMT1pbkLg4L6KaT6RgXRaZZqcJImtnxq8JBaCaXN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB7354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210919_005113_255547_826BB7C1 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] Revert "ARM: mmu: use client domain permissions to
 support ARMv7 eXecute Never"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-09-19 09:06, Rouven Czerwinski wrote:
> Hi Peter,
> 
> while this may break for your board, it fundamentally introduces the
> possibility to speculate out of the RAM area on speculation happy

I'm aware of that. For me, speculation is not an issue since *any*
rogue code running on the embedded device in question is a major fail.

Also, from the cover letter:

"I'm going to follow up with patches. I very much realize that
these patches are most likely not acceptable as-is, but I do
include them since they are probably the best description of
where the problems are."

> processors. Are you calling into SAMA5D3 ROM code somewhere? If so an

*I* am not calling anything. Maybe the board code for sama5d3xek is,
but I have no idea as it's not "my" code. How can I figure out if it
does?

Cheers,
Peter

> exception can be added similar to the handling for the HAB code
> (arch/arm/cpu/mmu_early.c):
> 
> 	if (IS_ENABLED(CONFIG_HABV4) && IS_ENABLED(CONFIG_ARCH_IMX6))
> 		map_region(0x0, SZ_1M, PMD_SECT_DEF_CACHED);
> 
> which allows calls into the NXP boot ROM to retrieve the HAB status.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

