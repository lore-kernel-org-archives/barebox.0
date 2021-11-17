Delivery-date: Wed, 17 Nov 2021 13:44:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKIm-00056K-70
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 13:44:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKIl-00086s-3K
	for lore@pengutronix.de; Wed, 17 Nov 2021 13:44:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MqchsbAKbDNxcgr3N93NP4qwTwVaLl1zllxDrEh5b1s=; b=EG1pIjX71wAwbJ/oC3YqbFrboI
	iutEQqdPFIBL/ebaU4mN/3WqfFWlMsnQBLIiyO/tPrvkwc0eXn7aP3USVwrGFVFvTSlO0sitVMvbI
	Bj2Edz6kS+AxeilL4yyes6o76/7tU7AIlPyKF965XgeMQ3lBJ0PJcyZEzImAplpIqnX+xAQyCAQxs
	YkcQmLfbsZAJod+fP7eU/VzZ1dB6SAZ91NFzXNBz7cUahuqjMUf7umXIkEcLByU18R97Sr28JXe4/
	APJm9ZLPpWVfY/EuR0D06YjsQffPYBF0FzHSz2wMOJVdiiSc5FxQ2lks4Xmc7Go+qO/PjB++5qGQ5
	ziAQiZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnKHA-004jes-43; Wed, 17 Nov 2021 12:42:56 +0000
Received: from mail-db8eur05on2069.outbound.protection.outlook.com
 ([40.107.20.69] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnKH4-004jde-PZ
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 12:42:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i8T1EcluMM4mTPQB8QC9a+U+z4JbTAiccRG1BLC1FfPKJCqGVGnVER+ga5GRKKOTbFOtEp0nYC2xOvJVW2kvA1PMJYlLjf/dB3mByhqkn6K59uGQHHfxkTTUgUgoA2TsAoXObFglUaKvMo2W8rUXs3MNQCNGZZpy8f3WzBAvl4H3nHfvk9sX7PVLtqUS/PnQRgUsaP0xXMmG7V4VDyHU7IaY/8xrHy2QDe8Nqol2VcbBvFkPvTgRujQ4R4JN8WL55d0+9uYRmynkDJLgh2Avow3cnpmefO/tMLCmDhfblMujihkMKUoCRZenaJ8bim7n4JTZJFASvwT0PV1j/vQQAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vo7N+KIoM4zmWoeAhMrZdnDQF5h+xgZbyMUKPCLsPyg=;
 b=IZmWe/ByK/Hx2Kz3lCkE+soXsnD9S0y4e3M9ZOhckdsC37lLcQMpZKLn0qDBDXaAyPG9MDxsPeIOtc1c0BbOMesVhkRfDNkRx19tAhHOx1RWIY6cbpgN4u9LVvsBg4Ly2QiXl+jr2ejTpfPWFm5STy24RluIfuA5i/sKhP+sNYjyd4SRrjlBxfPWza6T0uHCeSLuNwCe4Ns9bk0TpmJSVOTpn5efzPGRh8T1lm5Fev1C2jiMMgV4vumJbFpmLbcooLhANmowfUIkoLRtErsXAMGAlNBBrsMLJWiDfvDYj8Zdf2mGcOHAI1z0MBZLfo+zCDk0jMqabZ7PVadGbMJ0lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vo7N+KIoM4zmWoeAhMrZdnDQF5h+xgZbyMUKPCLsPyg=;
 b=jwRWiWMT9Ihv6aBn4m+2t6DaA8K4KNPLLc+YwEHvU8mRUwTNsCB2J3PXlaHtMVjlzEw/QS0URGP+M8Jmg4facw0y7d1gb4GTOmfQGF7VWQMIky8NFRwRGzEa/MFcfZQj6eVVHjM1/AxAffgn/FFs0ofPmXpopA+03SC7vEjk0s8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB4393.eurprd08.prod.outlook.com (2603:10a6:10:c7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Wed, 17 Nov
 2021 12:42:44 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4690.027; Wed, 17 Nov 2021
 12:42:44 +0000
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
 <20211111140316.1646962-4-michael.riesch@wolfvision.net>
 <20211115075453.GD25698@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <b73c12b9-8c4d-29cf-8b7d-60eba56f964b@wolfvision.net>
Date: Wed, 17 Nov 2021 13:42:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211115075453.GD25698@pengutronix.de>
Content-Language: en-US
X-ClientProxiedBy: ZR0P278CA0007.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::17) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from [IPv6:2a05:1141:1c9:7c00:2971:328c:3026:3149]
 (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0007.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:16::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.27 via Frontend Transport; Wed, 17 Nov 2021 12:42:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5af02988-5298-4386-8994-08d9a9c7c025
X-MS-TrafficTypeDiagnostic: DBBPR08MB4393:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4393874404D57EF5A5C40610F29A9@DBBPR08MB4393.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ta+XQtt9hCBt2AE43jaxFr/lTt6nfWP17kc5yKFY4XFGEDhAjw5oFBnu6IDmcK0YtaZwTUYS5dc1Qd0tFq/aU8uJVy9c7AAnVRK5HuimYEfmDZVwHjJ2N9ograDfG67AuR8vdHOQ0nufj9je/e2u5ei6DcBwV6UbU/kNX7snr3pWiWE9kdZbDNsztlFHVAEn6xs4LoFE75oXphMYN46unvx9ldUcKYMCuPDUNtTAcUrNffACZobUL0VGOKm1zBji2tsQRVH/c8iofoRSsiFBEQQoX04rOoT0DEhVfitu8TtC5c7wIYTmdCdGY02VdWNQC0KCL7rFd5xBrwAW+w6JTbQjGuwE0Kzei7zxcGwwRZnFSTgirqBsIpPt8IHwGdzZzSOh4WRnJaWMyGKhbo7wJaeT8/+EVlWo9Fhh7Fa4biJnT7AQRiACfX1AfAfDlyny//1WBtFxBKjs7lG0gTzRO8L2phG0tBgAeBGsyhqReTfeZgs3g+wdgkXeb8fGVY56LFmQp6BtkmgqOHVc66u643YnwFT8OWQl7bdYFRDpUzvM5RRuP1gdwrAAtECBYhM8lqqppwiYKVpuGAgEqAZSm60lUz8ls+msjaAh1J1RuPB1UzvFNL8NYhIUR9tebSaJs4kSiOFevFgLZoq14C5NYoIVy6DqADP+eMYtOgR9LF9dSLa9G3yk2W+rEejbmDqQq5yPywmtvQ2zlTmLsM1tQ9kdumLhUwZwtG0gsKbgKtc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(346002)(366004)(136003)(376002)(396003)(6916009)(36756003)(186003)(316002)(4326008)(52116002)(38100700002)(508600001)(44832011)(2906002)(66476007)(2616005)(66946007)(66556008)(53546011)(86362001)(31686004)(5660300002)(31696002)(83380400001)(6486002)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akp3QzRhOHRSblF5YXY0Z29kV09PVWllYmNJZGdDK1FZeHRNNjZIVWZCZjdi?=
 =?utf-8?B?eWYvMS83L3cxZW9xVFJPYzcvTWRHSWZlRzNlYyt6aGFuckRCWXFwc2RJbHR2?=
 =?utf-8?B?QW43TGtsN2UxeFQ4WC93aFVySEFoQWNyc3RFZ05rdmh2dnNhM1hBNVNSWU8z?=
 =?utf-8?B?TmQ3YUQ0ODNER0hvdFNwK0FiOXN2bHZkVmJRbmJSeDZTaGNQbkIvbUo3ZzU5?=
 =?utf-8?B?OUNWQVFrd2ZTeDlPVXlzM2ZiN0xldVlYZWo4U09odjJTZmZjRkdrYlZBMWkz?=
 =?utf-8?B?ZGVJVnJ3WHVaaWhqUW9NVEswNnE2ZkNGUmUvTG1ncCtvRVhZVSttYXBTNjc5?=
 =?utf-8?B?aGpnY1Y2OVhnZjdScEt0K2gwSE1QSmJVeW1ENVZWcDFsWmUvWHdLY1VVbERU?=
 =?utf-8?B?cWNhcE5hQmZ1Vzc0T3lJR00vb3VLUlpoM05vN3J5Y3VFdWtzSFhUWWViVTFz?=
 =?utf-8?B?dEhKeUF5dHR5bnViSDFuYjFsMHQ5SlhIUThkZE9jZkdwVnFaSHZnazljeGw3?=
 =?utf-8?B?elQyVG9sVlVIT0JLclhrVGNGL2tGTTZyVHFGRE8vSEhlL3Fxa1dEWWVuK1NT?=
 =?utf-8?B?dVlTRmw2b3EyTGVzVUhrRDNhRWFja2k4TTVnWlNza2hVaU80K0tGdmRJbmJ0?=
 =?utf-8?B?aXM0WVB0ZUYyNThlZFdmbUE5c3NQOEQzS2ZCRlYzZVRYOXltR0I1b1MvKzlI?=
 =?utf-8?B?d0ZCYldDU21DTnFpVCtJeDh6UHRyTE5rUTAxaW5EVEl6cUhWYWNwbk1Ib0Q0?=
 =?utf-8?B?U3dMOW03K1ZtU2pEa1RkT05yN1FMSUZZWlRpMzNXR3dsZDhvV1cvSzJMOUZG?=
 =?utf-8?B?OFg4aUNwLzUwQjlPZTd2UnlodzV5N1loUWpsQTlndEllZC9HODBPckhJZG12?=
 =?utf-8?B?b2tEbnpMQzhuRDI1YjF0TUdXUDRST20xNkZqc0MxaE1MazllbTYxcUxSVGwr?=
 =?utf-8?B?bzVSdEFOWExpRGMrQi9rQVNHa3NOZmFuOHlVQkYrSGtZUnNSdjJuaTVReTVn?=
 =?utf-8?B?bGZ5aGZSMkJsVWVoQkppaEFtTHhlOTYxdy9HSVVlYm1hdk9GVmQrazZQZC9T?=
 =?utf-8?B?WlZaNHdIUlpndDBJcGdCU2FxODl2dVV3UXdYVFJReVY2OW9JZnpIL01ydFZQ?=
 =?utf-8?B?R2szWkJOQlA0L2pCdENITmZZZlRrZ0NHaVJXT0RaOXBqTCtNMTFIdHliajI3?=
 =?utf-8?B?bjNacnpoUDlPL1hIMitaTlJXckJ5VEJuR3M4cTRYQ09EUC9HQlhhYTlxR3gr?=
 =?utf-8?B?MThYT1ozRkNiQ09ZODFzNlZmRWEwNkxPMHYyenFZczJucGE1em9RdjlBKzRm?=
 =?utf-8?B?alZRM1VXRVcwL1B0L0VaK0RsdWFJeTVpbWNHc2plZmtRVnhqcDlkOVUvQWRz?=
 =?utf-8?B?eEwvMWhDRXp0WU90Tm1BTjJRZEZlR0pRSk5GZGhJb1BNVm51dTZ3aXNZN3pH?=
 =?utf-8?B?RnFNYXhBd0ZNRkNZQkFhOEZ4QUpTN2EwQnFyZEF5NXdYcVo1MEl2ZUo0Vnhx?=
 =?utf-8?B?OW96c0tKZTZoQXZXN0ticGkzQXlmRWRFRTBrVkljVTdjblVaM2JhUlpkTHhU?=
 =?utf-8?B?dWliVWpRRE5RY25QM0t2cS9zanpDb2JqQjh4OTdVM1BrRWdaRHhKdDdRTWVM?=
 =?utf-8?B?eHZZZHFLYnZzWk9jempDejU3bUF0d3VTaWpRUWVOdmFtYktLQXB1Zlc4QThZ?=
 =?utf-8?B?RDV4eEFwenVIL2Uza3Y4SmlMMFgxQkIrV0RJMlh0RThLY2lyNnV3R21kT0Vn?=
 =?utf-8?B?czRwM1R2d3BYaEFoUWlrNi9VZmpSb083ME4xMU5qeHRZb1k1d3JYdkxIRjZ0?=
 =?utf-8?B?N3NkeDBOU25wdXZhM2huOVVhQS9KSEhXMktuTTl3UmVwMER6RmduZDFPNWpB?=
 =?utf-8?B?NGdPN2Fab2c4b3dPbWora0FNYUlQMmhhd3dzcDlyTEM4ZEJKN1lKQ1pIb29U?=
 =?utf-8?B?T1B6dk5uU2RhTmRXNTVPdjNXeU5hRGUwWFJiYXFXL1BJR0ZtVHgyM2JIc1d0?=
 =?utf-8?B?ZUJWb0pCQ0x2WFVac3VrT3FsY2o5eVdBN3Z1U3RubkJIL1FpMEJOTExoMENv?=
 =?utf-8?B?ZldWTVdXTFhFN0JvbjBVYUtDWDFhVjVlZ3l5OG5jVGlqTkVTTTVnRVFEa1lG?=
 =?utf-8?B?QU4rZEQyUjNqNHhvT3ZCV1RCY1o1NmdWYzh0dnZ5aGNGQ2VtZndkL1VRT0FZ?=
 =?utf-8?B?RzdDTXpGT1p4NFBzaEF5dWhLOVh4eG9ORDBnaDQyaytOdkJkYkVhTzdGTG1i?=
 =?utf-8?B?S3lzeFNwM0plRXR4aTBTQkg1bDhLY2Z5WUNhN1pneG9iWVhQWTFPMFQrRTUx?=
 =?utf-8?B?V0VSUFNURElHd2lFN3JTS1JRa0l3ZjNBdCs1V0p6S0U3WkMzR1JrZz09?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 5af02988-5298-4386-8994-08d9a9c7c025
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2021 12:42:44.1005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bUJzKkviSh4a7zCVTYe402q94oPD9uUji7iyv8kmxR4OnjBnTDo34p3sB5vE2a1sVYoUQZXhZdskW/JFAwBuW8n0qc6srmEfAmCQQuPnXXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_044250_983988_4C6D8BCE 
X-CRM114-Status: GOOD (  16.39  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] pinctrl: rockchip: use alias rather than full of name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 11/15/21 8:54 AM, Sascha Hauer wrote:
> On Thu, Nov 11, 2021 at 03:03:16PM +0100, Michael Riesch wrote:
>> Do not rely on GPIO controllers being named "gpioX". Instead, use the
>> alias to match the controllers to the GPIO banks.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>>   drivers/pinctrl/pinctrl-rockchip.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
>> index 1fdb9a913..0e706c51d 100644
>> --- a/drivers/pinctrl/pinctrl-rockchip.c
>> +++ b/drivers/pinctrl/pinctrl-rockchip.c
>> @@ -888,7 +888,7 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
>>   		bank = ctrl->pin_banks;
>>   		for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
>>   			name = bank->name;
>> -			if (!strncmp(name, np->name, strlen(name))) {
>> +			if (!strncmp(name, of_alias_get(np), strlen(name))) {
> 
> Please use of_alias_get_id(np, "gpio");

OK! v2 in preparation.

Best regards,
Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

