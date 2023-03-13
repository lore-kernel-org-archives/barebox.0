Delivery-date: Mon, 13 Mar 2023 08:07:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbcHC-003YET-Mo
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 08:07:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbcHC-0003v8-4D
	for lore@pengutronix.de; Mon, 13 Mar 2023 08:07:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EpvpWk89NWaxWAUqSYtajwr84uv9XwP1sCRE0Mxm2q0=; b=HbQEYfy4JCSMQwjUrcxSaRpno9
	GMrs9W2bRIxW03a4P43bo72IG+0ZQc0SOdYb99XFj1125fv++svYSjdRZzcHi2syKS5aFopx55vRQ
	KhE4o+AcLdPEsH69F97E4ArLSFnpyXzOjdth9CvlLbareNdRfFGgypzvO/2iMLDadzNdoi31ZD9Rr
	4pLga3P0y/ynTQh6rXilvLffv/mqI9PPpg3/BlnW7GzWzWjiJI/5/B7TfAe+nfyM7iOZF6nQETRyf
	3FQBQNJm9GnlCHJ0aBOZq7Gnj8tV1eXz/h5+0IYuFTAqDUmxWh9II6gWiKc86Y3HqxTiXkJiEQbiM
	e7tB1/fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbcFF-004YAb-PL; Mon, 13 Mar 2023 07:05:22 +0000
Received: from mail-vi1eur04on0608.outbound.protection.outlook.com ([2a01:111:f400:fe0e::608] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbcF9-004Y9b-9k
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 07:05:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMzlbzXXyDdQs2xjAbC/iFMoqMmcExeCsamnzTHU3zxe+jIKXgi0bORvc5cPjalTK5dGn/PCznlzLKaCHgf/zip2BSVfQk85Hdjv09mDc8fIFfC/iKaQZ/HgG2VUzgwbhiYuMxsRLrf13IMH3s4uPXxrgxZXGfVvGW3pKSqSNKhsyS+Kj49VjEdMQkZcexbgtHQLUyasstqWNtioG6f5vpwuICsT7f59DFmV+I/OvR5w2XYdHCW9iJPnn8S33iOZ5oZLUz1gq5hm6OZ+uKWntPClQJIEQpiZyuCIDZYVQ7EOC4hoENeyeLn1v4SciC1x1Tfv0xAtby7Rc4N71fe+xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EpvpWk89NWaxWAUqSYtajwr84uv9XwP1sCRE0Mxm2q0=;
 b=SlcQd/36JwRH0C+CnH+mIbp3b3IcRe7417Uf0O9xVZsMfidsPV/uMwHEMhfjUHjRQymoIKjqOKAiiWaKzPblW4oXy/iUqJtrcOgOaiSigCHq579XvyMAmXWal2vhff/EnbuqUX5/bQfyvNjjwSPrmZGhVqvHwH7X68zvhSESvK5ofEegw43nk5e5iu9gFBucELyrw25L5mOx89eQQBvrwoeTTipAoqNtoUpacMUTZFLcNrVcvgfn/XX5HwN0OndYcBIkNZmkm2kPNHtOQNt6EEu0AkTDav46NWgiscXiuOrPZ5sy5Fbh5AAKcAi2Suoh5iI1HtSabI1dGvN0njSEgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EpvpWk89NWaxWAUqSYtajwr84uv9XwP1sCRE0Mxm2q0=;
 b=M7k1DBmj8G802Qxs5Ca5fEhuLld+6XpZftUWzBYqJuVLs05vJk/df+jzDABybTDo7+0MA6o69I/09B3QDeS5za7fZqthbHr+4mrhOvfv2soWi/JkW74X6oO0BNVz43+MC6pGrIPTuWuALR9tN8lImLjuW5TRQVqRHRQfOxS3K+k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS2PR08MB10054.eurprd08.prod.outlook.com (2603:10a6:20b:649::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 07:05:06 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 07:05:06 +0000
Message-ID: <a08214bb-8cb0-8fd4-d8c7-3dbbd7e5165a@wolfvision.net>
Date: Mon, 13 Mar 2023 08:05:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
 <20230210165353.3601175-2-a.fatoum@pengutronix.de>
 <8ab39746-bd15-6b72-f544-df2c12f971bc@wolfvision.net>
 <dc4ee9c6-e336-7073-c0a1-5f076f7429e4@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <dc4ee9c6-e336-7073-c0a1-5f076f7429e4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0128.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::7) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS2PR08MB10054:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f2a37bc-78ed-4bc7-8165-08db23914660
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Yj+deBU6ES1BPWIa7Z5wdhogifJuSUGxLmrXzkmwKjUwuEB9NtTlF+BdqtQlBUCrp69nlC/59wvJ4c4IIfUUuc4FzwtE6cdr+4dOvpe0CSVaRBgSnPjg8dtMqF9SAWK+Sv8107wBTAhsPRoQtcXXsdm5qzFnsrx68tGjuQS9j4geCkaKajk258pHilEptHjjBrMrFHtXsJSXG8WIMf1RhyBNvO02wqa2SQVyuGi3b0JFWe2K/+BUcAgNqOLnJ5MzTwi6KP7Nze299Itn0U114UbeCjSNiDaMxvjRO6XtdJF+lRAE8iuPgOxgsThUB9G4GCPufA6fDvLxA+k0HNsmAXZRQ+ZCv5vPlef+s7plf+qrOzwmGJPrvTU6ORUPIOtSD0auhrmHLdwI0v8EWhRWSn4ejXbIjFPjoorSe+UnTsW3pNJa9qXdg5hJ6/Ai3UhyTK50N4mSyNBQQvWZ74s7BeM8ABmCyio2Be7WUBnvAyDo4AAgUYLWkw0JSJhECIuvjOcwdGB+bqhTR+luGihSWDB7pGpKYKLwLDYMDa1b1m/Xgg0cxJnBc1v667c7F7zmPZ0qGZuDcVkxiLsBXO1zXspaNotkmhOcVzxaPVIWzjDpOABoiMkahn25307qZTEpJ6WhfdiSPlxRdaPfcgpPQ9B+Pe/IEg2yj3MXr2grpyNzzngvRmtX+J0xUGYaGkxZT9vrjHs3syVG42jOztoDjCEd8caJW7ouafNwMpQr+sw=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(136003)(376002)(39840400004)(366004)(451199018)(2906002)(31686004)(36756003)(44832011)(5660300002)(66556008)(66946007)(41300700001)(8936002)(66476007)(8676002)(38100700002)(86362001)(31696002)(316002)(478600001)(186003)(2616005)(53546011)(6486002)(6506007)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?SkhidE9MV3NRRTBFR0g3U1cvSU16Wk5RaHhEcms0cDVrelR2SGYwL0s2elRX?=
 =?utf-8?B?SU5VTlZ0TEs0MGtaMnBocGtPODBVdFFrdFpCdmlxbjdmRXR6Tmx6bFZiOGFH?=
 =?utf-8?B?ZXdMbGVxTTkxRjhnWk9RTXVpbG0zTEpRRHk1ZWR3TzArT2drbW9nRXF3SzR2?=
 =?utf-8?B?VmxQQUFuWktSRkpjVzgvMlpIY3J6TmpEV1NkLzdHa0ZOaUpGTEIwQ2RBaXNI?=
 =?utf-8?B?ZlNQZG5WM2s2dnVCTGNET0c3bWdSYkovY210MklLbEpjSU0vNHBXWE1pc3d0?=
 =?utf-8?B?NGhBVVlrTU9XZDUwYVpML0toVzNqYWRCVzlWZTJoMDN6NDAwNGV6Z0RBRXhj?=
 =?utf-8?B?OTFXMXIyd3dabUh5WUtVNHczN2xybmYxcmhsWW4wUThDYm1JWDAxY1d6dFhk?=
 =?utf-8?B?NDJ2Z3NkYlFuSm05Yk55aGFYSjExK1UwcjlzU2pvdW1vb2N5S04rc1NsM05W?=
 =?utf-8?B?ME9LY3B0eGY2M2RPbnhUNHZLZDhzTmQrakhXTEpHQzZkbjM4UEVLeVF5aXRZ?=
 =?utf-8?B?UmZpMFp5Z00wT3o0SHhWVEFSaEh6b24xOFhmTFVYaFRpTmxGNjNybjFCZ0lZ?=
 =?utf-8?B?bDJIWXFoMWdJNEpjT1R1b3RWVmpiYWovc0tGOGZHV2pNTTlMNmZsV3djNUV2?=
 =?utf-8?B?ekFrdzZSZXZ5dUN4REEyTFhRL012amZRN1RmTlpGamZGeWtSdGRRVWxBbmZI?=
 =?utf-8?B?Tit2VmFiY3VpZ0FkemdCY3B1ZFFmSXpmQmVTSWo4WDZXRVRMRDI5SmNZWmJ3?=
 =?utf-8?B?RThSeFo1WFpWcVJidHJuT2hmazBabTRZWXg3OVV4bzg2UTNkZ0t5azdkalNt?=
 =?utf-8?B?YVhFR0Qya3BIT0I3b0cxczZvYjM2WTZxWjJwWVZpOXZqWExObit5MGpVNmFx?=
 =?utf-8?B?ajRDdVRRb0pDNlZkK0E3dUFoSVhOMnM4eC9pTjNHVWJRdUl5bFMwaEduRUVm?=
 =?utf-8?B?MUplWHBXRFF0M1YvWFNRbHEvYms2ek53bWdKaU42RVgwaG9pbzVvVHNYQk9o?=
 =?utf-8?B?NTNTU21GZnkwZU5IdDdKQmZqaGpJZE5VZjEyUHZKaXE5eE0rUUplOXRFZ0lT?=
 =?utf-8?B?ei9QUUQ3eU96dyt4bEtTWkJ2MWFVMnBYaWdWS1pINFMvdmxjbzU2TG92SEV3?=
 =?utf-8?B?N0dvRHd4TW1NbE5sWWFvQm9MT2ZLY1dBQmhuc1BsK0pXbXRYU09lWVVIWXZh?=
 =?utf-8?B?ZmQ3eEt3Sms2UG5sVlFhNm9OWUhWbTByZjdMOS9VSWpiWC84aTMwN3JjRkdZ?=
 =?utf-8?B?bnJKTGw5RXJ1eTBYWjdGZ3M1emc1c2t6Vmh2UzJ4dGY1SlM2NHc2M2F0QXZp?=
 =?utf-8?B?ajcxY05QeXZJeXFZbHZQNzkzZHNHWGRqdEJ1ZGlFRnpmYlV2Y2lOR0pSaGlo?=
 =?utf-8?B?enhocHlmOXp6bmNuTUlJa1RMZU1pZG0xcXZYOW1uR3hsUmZUenRMVC9zczhx?=
 =?utf-8?B?Zm9ybk91V09wUjFkKzNvcUdMV0FRc3MrY0YxNE12R0Fsbkh2bzBRMUo4TmVs?=
 =?utf-8?B?ZE5peHFoM0FicE9DUno5Ni9CbzU1UXMwcndGeXI4TXh5T3lhQ2NhWkQxL3pL?=
 =?utf-8?B?c0Z3QjVTMU9Kb3hxTVNZZkZzSHNNdUpLZnVIYTFIMURVR1oxSGwzT0hJQVZJ?=
 =?utf-8?B?cEtWbTdNWmxwc0Q5SmZkOS9LdDFYZ2F2VGJmYjBmaXJzWkJEaDdEMnp1NVZH?=
 =?utf-8?B?eTEwTG9yQisyY0VkZ1JaQUc3Y3JNL25VTnJSamR2aHB3THRqazdvT0N4eHJF?=
 =?utf-8?B?YXNFazNnWnJQQ3BDM0I5WE1sUmQrOStMaHpSTHlyYTZDMmRva3hKb2tTNmha?=
 =?utf-8?B?RlJKS0doM1hESUJWSEV0ck9aU09ZTXZoVHpWeUR6bjA2VWxpNUFUT0NIaTds?=
 =?utf-8?B?KzlkZStwa2VDZHBxL3Z5Y2pOVWpHMHUva2pORDJsOUV3a00xUnpQY3lKQk1l?=
 =?utf-8?B?TGQxUEh2WVJuOUdVWUNKMFkxZTBrWW9hNkZlMVhrVm1wSVk0SC9NanpyU09H?=
 =?utf-8?B?bVdNWFJiVzY3MFVyclUwcWwwTW9wZHNsZnQ0Vm1IRlJWZjVDeG05a2kzdXln?=
 =?utf-8?B?bTJ6TS9hL3VPT2hvNDZjL0FuMm5HL3E0d29lRUZoak1aandLV25jNUJWcm11?=
 =?utf-8?B?VmE5Wlc2QnB2U3RMaXdZSjRFaUk0aHBENkdWZ0xjZlR3cmpOamlrbjRSYWVk?=
 =?utf-8?B?VzhMbTBTWHFJbzhsRmJwczdVUGdTTk84K0VoTEpVNlExTExJeTMxd005dEwz?=
 =?utf-8?Q?kZp0uq++4QHomY8JP+4lRgW24yagpGH55MsZ92loSk=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2a37bc-78ed-4bc7-8165-08db23914660
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 07:05:06.2578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wq+V8IUS7+IaGsVXiYnYchre8RXTOHiDlFq4kV0REA9yamxHQUDcXgPg1JQWMQ1FRzwJs+9inFS3OGlZtljsMpBkFP8xdBiILnS6Bg8LdpY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_000515_768211_38D93E39 
X-CRM114-Status: GOOD (  17.81  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] of: support of_ensure_probed for top-level machine
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 3/10/23 17:19, Ahmad Fatoum wrote:
> On 10.03.23 15:46, Michael Riesch wrote:
>> Hi Ahmad,
>>
>> On 2/10/23 17:53, Ahmad Fatoum wrote:
>>> Creation of a machine device for the top-level node has special casing
>>> in of_probe(). Export of_platform_device_create_root(), so it's possible
>>> to ensure probe of the machine device. This is required when doing
>>> of_devices_ensure_probed_by_dev_id with the machine compatible.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> This patch breaks my board code that calls
>> of_device_ensure_probed_by_alias() in the probe() of the board driver.
>> The function always returns -ENODEV.
>>
>> Do I have to adjust my (downstream) board code somehow?
> 
> Not sure. I'd need to reproduce. Is there an easy way to adjust a mainline
> board to get the same behavior? Is your downstream board code inside a
> board driver probe function or is it raw in an initcall?

I can sketch a patch that triggers this behavior on a Radxa ROCK3.
Similar to my board code, this happens in the scope of a board probe
function. Please find the sketch below.

Basing on the current next:

Board: Radxa ROCK3 Model A
deep-probe: supported due to radxa,rock3a
board-rock3 machine: of_device_ensure_probed_by_alias returned -19

With 2b46c9df976c ("of: support of_ensure_probed for top-level machine
device") reverted:

Board: Radxa ROCK3 Model A
deep-probe: supported due to radxa,rock3a
rk808 rk8090: chip id: 0x8090
rockchip_saradc fe720000.saradc@fe720000.of: registered as saradc
board-rock3 machine: of_device_ensure_probed_by_alias returned 0

Thanks and best regards,
Michael

> [...]
---- %< snip ----------------------------------------------------

diff --git a/arch/arm/boards/radxa-rock3/board.c
b/arch/arm/boards/radxa-rock3/board.c
index 4b4e0613d3..771777d4ea 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -15,6 +15,7 @@ static int rock3_probe(struct device *dev)
        enum bootsource bootsource = bootsource_get();
        int instance = bootsource_get_instance();
        const struct rock3_model *model;
+       int ret;

        model = device_get_match_data(dev);

@@ -30,6 +31,9 @@ static int rock3_probe(struct device *dev)
                                "/dev/mmc1");
        rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");

+       ret = of_device_ensure_probed_by_alias("saradc");
+       dev_info(dev, "of_device_ensure_probed_by_alias returned %d\n",
ret);
+
        return 0;
 }

diff --git a/arch/arm/dts/rk3568-rock-3a.dts
b/arch/arm/dts/rk3568-rock-3a.dts
index 25a0c05737..b8dc46c706 100644
--- a/arch/arm/dts/rk3568-rock-3a.dts
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -6,6 +6,10 @@
 #include "rk356x.dtsi"

 / {
+       aliases {
+               saradc = &saradc;
+       };
+
        chosen: chosen {
                environment-sd {
                        compatible = "barebox,environment";


