Delivery-date: Wed, 21 Sep 2022 14:36:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oayxk-00BJmK-Ms
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 14:36:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oayxi-0000Sl-9i
	for lore@pengutronix.de; Wed, 21 Sep 2022 14:36:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zq0wdYMi7iFQtdzoOVipBYuWXToF8lrpKNf1Gt+7juc=; b=ojiKhIei24mz6LLyyzgBrBxNkm
	g/ngRhmfWQuOuhADhqyiHNSoiGZ6MVKQJY9Ooh9+JhlKItbPpC4LX6ACewcRtUwBF2e5UIUVNznQh
	CDRyJvVjPVeAfZimqM8TIBIpHpWUFQNQxDTUx873yZKLCr2kD10e3jFQk8D/j5mdgCFDiDGnHlOIR
	1bdlirlbAL3ODR0umPJbNz/5j8rcdmDT2M6MuOzdt7jVXR0FjNIFFufzWs/6GjMeBZPwPUctRfX0I
	XCamqSsAHCiUf+tsJEw/8G7dM9DKTThYDumFAC1YeXbrNa0C1QwSBTr8oe0VhadSa9y7l7I7c4pG9
	QDfzZY1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaywB-00BIWB-2K; Wed, 21 Sep 2022 12:34:47 +0000
Received: from mail-am7eur03on2064.outbound.protection.outlook.com ([40.107.105.64] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayw6-00BIVN-Gm
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 12:34:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aIP0BWvNN0cWBBCclCqCxZL3mRt+HI5V78BXqK/RAAr8unFBszljoOQOXL6lwpz0cd2pebzP3TJAqMLIQefq/s16VaSxUY96/WzLPS54h5CT6Y/enQ+Zn73nckVGmpl3KQBK+8ZR2g+4momqwaXMD06evptK9Ke7deygtqoLLikL0jUjhg1TFI8KaRWBAKUb+E7bBr79T+3+tCVSi3KCVWQgLTIMykedCopselnZ592XIia9tXUlFCzwI6yoHfHtuLq431NO1fl5Tx6Q4+RqHs09z9eC9qkCWiJOKChVYiLSk6zAerRUf3lBzz7OxzW6TJkleH+Ox1CfFO7/M4KKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zq0wdYMi7iFQtdzoOVipBYuWXToF8lrpKNf1Gt+7juc=;
 b=mNVQdbVKX4YU84QDKK+JA+1+7QaxIq2D8MCn4XFl9NqUgLFTV/5YgXHzaYE5gsHITqdtMAsWMuoDdzb9QP/EL60zM3CCyzmMQoKHfwRIMOZfK9DmAeGH7efViLBSJz7eLgJCVRW2OknuqwHeuO9uklJ6gUUS++Wk/z/57PC/orAD/G38EjQzYhG/daS9fLob3xnAAjX/ej68mxOf0eJb/AxfmgUBFFSRGvk6ohtkbX7KGLIGRPFvCUds5Hx5Qcgp4LqbHSbhZcddnQECbHieoLedH8WC6aedrV6J+o0u2QeKk5zpsdGYWueYIhngqiRQaMXrUL3Zw+3Mab2UD1CmPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zq0wdYMi7iFQtdzoOVipBYuWXToF8lrpKNf1Gt+7juc=;
 b=IgohIgM8/bglF6+F+BBj4vIVKHOuOH+W/IybG5UWu/FJg9KLIHyWbKiuHbn0voC7/f0UlDncDklqLJLbQyHl+6J3KRj83+/JEyTUxBgKTmugt5TZPyiFmZRzvN9eW2Xu+1r8HfB/Dj2lOT7oWO+Li5IehzCxF67YNOqe7hxP7lw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM8PR08MB6515.eurprd08.prod.outlook.com (2603:10a6:20b:369::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 12:34:38 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 12:34:38 +0000
Message-ID: <93af97cb-bf91-8931-c554-654d8bb61b07@wolfvision.net>
Date: Wed, 21 Sep 2022 14:34:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-7-michael.riesch@wolfvision.net>
 <20220921091724.GB986@pengutronix.de>
 <f78a05c7-3142-626c-3b02-f969c729b40f@wolfvision.net>
 <20220921122146.GD986@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20220921122146.GD986@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0202CA0008.eurprd02.prod.outlook.com
 (2603:10a6:803:14::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM8PR08MB6515:EE_
X-MS-Office365-Filtering-Correlation-Id: e99d36ce-5f48-4a63-e203-08da9bcda61a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Yuv3c7MhGE42bk7zBtHBIc8z09oQboLaXc/AwUEvA+dXP17zIWZy55kqUr5akJtfPbfm6HxEyDjkFN7DGiscVb+N6DRSdUhHXwbk1zAmV9gqlxJM5MaB55pd9HqBP+yMi4CvVJFvtL+HDxSB8p0xOL2bV2FJwoP/X1FkKl2QCThaw0irbWdvf2BgXMpUCLIeFKUR+j1cQT/tQf6pusip4t95Xk9C5X/ewlXno363eu9k81ALQiLoShIQSFQ0r+iznADSyg6HIyYPokl1vEvTKWuse3epEyOsqdN1DoTNrg/a26ZlRrAAGMgbziQw2Tw1A1fWGx7UtU3ZTED8KtEcIv3/Upv2FylJaXh/c71yNJfr3uZIfPP/gpubl8hWj4rTKc0EmFTcBaLulTmXpbNkxedvREr6/SFUVh2TMkm3OwRvjNyDiPXVw/IvOdgqxkXg8hct1Um4WwzViiip9mAJ+5g3j6Oq/8qFasLJNO+KMMTnxLnbMTSPLsRvUW2NWai04qPFMhayxd5fJTEFPIyV8LYj2teCO2aITL7+tQLEJ6N/aXW4Wh2Y050354OnNwALjBMqd82K3UXj9rjC46eIIlxJhCjWs2eP9kED0G4eiOQ4E8l0FyEqpjIOTy7iDPGqrL1m3wMviPMhvWOuXMyutKqXwNppb6JTnB8a9GsYOHiEVppRCORT8AqUXRh6Le/t9FNKpt0uMnFt0QlpdRPJYoLSMvja38i2CZpIaqe6t1vD5SmcuHlZDxP+jdq7zRYFu2L4hd71abSrIVngvEsPb7VsAZmWSO12P0nCJdxxgnH5FzgiUsAqR5yD6necd2D1bAXPZYHFvmfKR4APclfJrA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(39840400004)(376002)(366004)(136003)(451199015)(316002)(186003)(83380400001)(38100700002)(2616005)(38350700002)(41300700001)(66946007)(44832011)(478600001)(8936002)(8676002)(4326008)(6486002)(52116002)(53546011)(26005)(6512007)(36916002)(6506007)(5660300002)(66476007)(66556008)(6916009)(31686004)(2906002)(36756003)(86362001)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?d01VNEExb2dDV2hQTDdubTM1cXFOS0RYTUJOS0Y2YnpKcC95K3ptZ2J6NG0r?=
 =?utf-8?B?NExiWURrYWhMcWxGR0VyeS9GczQrL2tqWG16UFZTcjVVUGdncEIwWFlzZkg4?=
 =?utf-8?B?YXUrYVdyeTJzVEExZmRiQTl1MlFta0tLMWFERjNkaTZrckpmSDdVS1VzU0tk?=
 =?utf-8?B?bXYvSFhVc3BkNXUya3hSMjVpT2poWnJ1dXVEcGtsWHVLcElrZ3ZIWVpjWGQr?=
 =?utf-8?B?aHRiTnJOc3E4Sjd1RW40ajZIR2hPM3FUdTRJSmpxYjFRMStUTFQyMHVQTUY5?=
 =?utf-8?B?TDM3WXpQZU11TGVZNytJN1NmYnNadWdFcWFQaXZPTjgyL2lKblVQOHd2VktV?=
 =?utf-8?B?MG9hRDQ4MXR6aUJ2RUlXd2V2SG1UcWVXclZ2aVFub3NHeEphempsRXVDUmxE?=
 =?utf-8?B?VkVGTS9BMUJ4c001ZkMwVGxIRk9pTVRDREZiL3NSZ1N3Mm1TTnJVR0NVbkRz?=
 =?utf-8?B?ZFFNV3ZBNHI0bmFDUzFOWXRQZFpGNFNFdkkvaExPOFpIZkszbk1icU1IMUdE?=
 =?utf-8?B?TFJvUHVhcEtYRCtYcHE5L2lLVlBrREtQUXNCWXo5Y2VDeXczN010UnVaU016?=
 =?utf-8?B?eVNueWhOTENUbVFSVS9na2lGVWRwbklaNERzZEJDZFNkOEZjN3lFUkZkSU5p?=
 =?utf-8?B?VDcyNVJCZitBZnA2ajcvL1I0K3grZUVhcjR2Ri9vU1VndTR2YjdLTUFTRFp6?=
 =?utf-8?B?b1Zpd0RETUJwdEZocE8wT3p5WC9GYTZzTjNsT3dHZS9MTG1ScGNnNXhYOTE4?=
 =?utf-8?B?UzBoSGY5K1pqV1VlTDUyN0VIdFhJSGEzME9yTE9mMHNnUjFCNzlYVmlTR01y?=
 =?utf-8?B?RjFJSFJobnNuVFZDSkZldG5vOGtDdHF6eGJSUStCSEJSemdJYlJlc0F4UkVV?=
 =?utf-8?B?eTJvSUwyNlQ5bVJvbkpNako0ODF3OVlzV0hONFZXVzAwcHEzL0s1UThuaDMw?=
 =?utf-8?B?TzEwL1FmQlFZY3N1c1hFQmc5UDJZdC94NmpPcVcwRFhoYzlIWjJnaXJkMWJS?=
 =?utf-8?B?aEkxYTVaSzV4ekdZZi80YzhOOWdYNzBhU2JmWDJZS1Z2aERSbzZ6c1luUjVU?=
 =?utf-8?B?TTZ5M0EyMCs3MG9IUytBdlRRS1FVR1o2d3RDWjNQaGEvQzVCZ0szalRyN3d1?=
 =?utf-8?B?dmpsaWFSemk5ZVJHcU5VQWQ2UDlGUjhSRlZBMUtqaFhEOGpqUS85UkVXcGdu?=
 =?utf-8?B?T1RpUEZWTXZNMXZPNGZzcnZEWHJBTU8vTGl2WDh6aEV6V2NSTmxMd1dWSVFE?=
 =?utf-8?B?eHJubDMyczZZTG4wcW5mdUlwdzJscm1IdkJTSmpYQS9aMVJpVyt3RU1vRVZo?=
 =?utf-8?B?bXFUTngvODdOQ0RtOGhYV2NFY1YvRkNUOGNIRG9vM2FDRzhFM3dRQkE2WkdR?=
 =?utf-8?B?MW1rN3RKckFKNk1ZU1U2QlQvTnVwZWxQQUFhb3lwTnNJYld1MFFsUWRIbmxD?=
 =?utf-8?B?TmdFaDhoNW91VWUrTFU0bkgxbGFVdVNTOTRMcUpqcEk1RERvWWFKeHhac1pU?=
 =?utf-8?B?WjlFWUQ2UnhVRm5Kd0RmZFU3OUxhQUp3NWtZZTJyVllxYldlYTJNdDFEMm5V?=
 =?utf-8?B?THJ6Y2VGYmkyazJhdCsxbDRvM2tLY0UzZzRMNktkQzNkaHhpK1p5QTEzQnVp?=
 =?utf-8?B?RmthYlUxVmxsblNiVXhuRGM2NDBKbVVyWlVlT2RLb2tVOTRrOFIwb3Iyd0VV?=
 =?utf-8?B?cjJOTlBmZTdYc2ZXcTFlaHRNM21hdm9tT2d6MUdVNnFlOWpyME4yYk93aFFF?=
 =?utf-8?B?YVloY2JqTWdiRVE1Mi9iWFBTUjg3NFBoTE5Na2FURjRNRlpEWWlLdVZ5Y1F4?=
 =?utf-8?B?OXlJdnF2MkNidlhZTVFNWk5lNjdkSG90UmFFYWhjellpRzdqTEZpK096RHpw?=
 =?utf-8?B?UVJLWWVKdm1VTWtaejlNUncvSmYrWE9KQjYvK0JENlFaZHB3cm9IZCtWeDli?=
 =?utf-8?B?SC84NkI5UUE2MlI4VjIvbTlCTkJ4bWF0QTdycDgvRW5seDNrdTF3UzVDcUh6?=
 =?utf-8?B?a0s0OGJ3UzV1Qjh3dU1zZy9UWWNvcXhjQ2g3VTA4ZVY0cHYvUjQ5VHpya2E1?=
 =?utf-8?B?YjVjOVlGcmt5TksySVNJTEJ2MDJLZmdTUFV2SXREY1pjVEFsVnljc0tjejBX?=
 =?utf-8?B?THJHb3RLRDhOZTVPRmlVaVp3NlJueTNXaEtwa3JXOHFJc0h3T1pNbXlFNWo1?=
 =?utf-8?Q?1ArILGDcCVu16+Unzj+/vIw=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e99d36ce-5f48-4a63-e203-08da9bcda61a
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:34:38.4507
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +OcmgWSCg3NfHqjB+7GLyzPJXokRIP7pibpQmmvnchDJBo+Vi904Jk0V51kdAKfq8feAwJ9Rfbx/Ibcc7AwLaP404W/y07UEf6Max51pS3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6515
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_053442_602031_2C793436 
X-CRM114-Status: GOOD (  23.08  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] arm: rockchip: rk3568: refactor common
 rk3568_start method
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 9/21/22 14:21, Sascha Hauer wrote:
> On Wed, Sep 21, 2022 at 01:57:25PM +0200, Michael Riesch wrote:
>> Hi Sascha,
>>
>> On 9/21/22 11:17, Sascha Hauer wrote:
>>> On Mon, Sep 19, 2022 at 01:39:47PM +0200, Michael Riesch wrote:
>>>> After the removal of the IO domain configuration code, the low-level
>>>> initialization is the same for all RK356x boards. Add a common
>>>> method rk3568_start to remove this code duplication.
>>>>
>>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>>> ---
>>>>  arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +----------------
>>>>  arch/arm/boards/radxa-rock3/lowlevel.c        | 27 ---------------
>>>>  .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 33 +------------------
>>>>  .../arm/mach-rockchip/include/mach/rockchip.h |  1 +
>>>>  arch/arm/mach-rockchip/rk3568.c               | 24 ++++++++++++++
>>>>  5 files changed, 27 insertions(+), 88 deletions(-)
>>>>
>>>> diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
>>>> index b295885522..e1beb3e624 100644
>>>> --- a/arch/arm/boards/pine64-quartz64/lowlevel.c
>>>> +++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
>>>> @@ -1,39 +1,11 @@
>>>>  // SPDX-License-Identifier: GPL-2.0-only
>>>>  #include <common.h>
>>>> -#include <linux/sizes.h>
>>>> -#include <asm/barebox-arm-head.h>
>>>>  #include <asm/barebox-arm.h>
>>>> -#include <mach/hardware.h>
>>>> -#include <mach/atf.h>
>>>> -#include <debug_ll.h>
>>>>  #include <mach/rockchip.h>
>>>>  
>>>>  extern char __dtb_rk3566_quartz64_a_start[];
>>>>  
>>>> -static noinline void start_quartz64(void *fdt)
>>>> -{
>>>> -	/*
>>>> -	 * Image execution starts at 0x0, but this is used for ATF and
>>>> -	 * OP-TEE later, so move away from here.
>>>> -	 */
>>>> -	if (current_el() == 3)
>>>> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
>>>> -	else
>>>> -		relocate_to_current_adr();
>>>> -
>>>> -	setup_c();
>>>> -
>>>> -	if (current_el() == 3) {
>>>> -		rk3568_lowlevel_init();
>>>> -		rk3568_atf_load_bl31(fdt);
>>>> -		/* not reached */
>>>> -	}
>>>> -
>>>> -	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
>>>> -			  fdt);
>>>> -}
>>>> -
>>>>  ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
>>>>  {
>>>> -	start_quartz64(__dtb_rk3566_quartz64_a_start);
>>>> +	rk3568_start(__dtb_rk3566_quartz64_a_start);
>>>>  }
>>>
>>> Here __dtb_rk3566_quartz64_a_start is accessed before setup_c() has been
>>> called. That is not allowed, see the patch I just sent.
>>
>> Does the refactoring make sense to you in general? Can I change it to
>>
>> ENTRY_FUNCTION(start_my_fancy_board, r0, r1, r2)
>> {
>> 	setup_c();
>> 	rk3568_start(__dtb_my_fancy_board_start);
>> }
> 
> Well it's not only setup_c() but also the relocate_to_adr_full() or
> relocate_to_current_adr() part that has to be called before setup_c().

Ah OK! Thanks for the clarification.

> At that point there is not much left to factor out to a common function.
> 
> Unless you want to turn this into preprocessor macros (and I don't
> recommand doing that) my suggestion is that we just live with this bit
> of code duplication.

OK, patches 6+7 can be dropped, then.

Best regards,
Michael


