Delivery-date: Tue, 14 Mar 2023 17:04:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc78q-00FRS6-Gf
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 17:04:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc78p-00082W-Jb
	for lore@pengutronix.de; Tue, 14 Mar 2023 17:04:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cNq8sY1CwfgUa3MjrHCvX5MGJLQrsn/QdtTP+bSIfNU=; b=VmOw2XhcqufiuebQEKOkb6EKxL
	vCwhMdY8eezRXXHwpLPyBqEGRpemR2Yw3+UVEPeyc17vUpwLfoGH3TMarWRtNW45Aelw9ZXTiVLev
	NoMbrxCYa3WwB3C0fwvykZggwYXTeHtgGc81/55lyfa9u8Xnlg4mNUEeoaMRmT0Lhv4C+M9UTIzps
	tcrxac14YHdrFxaYqmjcpNEQoR4497HsWFzf0YlsOFMdy5oFfS7J4AfG5FXr+7Pzvlyk9awUBxL9t
	pXB5XaKJIGr+FT4uDxGlO4OUcQx5M1q9z56fFzIZYd5pSPsJxR0AeR/r9vhk0QxxmNeRSlB1c2K+W
	lbsXVARw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc77f-00Aixs-0x;
	Tue, 14 Mar 2023 16:03:35 +0000
Received: from mail-vi1eur04on0618.outbound.protection.outlook.com ([2a01:111:f400:fe0e::618] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc77b-00AiuV-36
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 16:03:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AngXuJNcp2mvPuY/+XCWQDtEDg/3x39cv7hLVet5aQA5Ra+Yipy7/Dk0nr2pTSwk4cQFN3yaLUQSG2lz7uTOzEMH24fA1aRr5m/Lw7iP67kc/PViuOHUNKM96A08Bt3Pf4dQ8HHOTFFyEujr1JozQRACePDogKv1ADCFkB5rbavl6D+cs7/Aka3AUWZfjXhPlR+v6N47MOxGRKXuRqRe+aJEhYGji2gjnTVFtWREBhoWnzFWtgVBhWQdxuKnswp/UK1e1UHMiFXED25ijlpfLrAZLh9huEuR72InRZ+PHviWDNNHyOGLHybFyMebYngKRbn0A6ZDAD9jrWyyXOnABA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cNq8sY1CwfgUa3MjrHCvX5MGJLQrsn/QdtTP+bSIfNU=;
 b=VwtwPBo8ap49MoxUPIu9BmYxkEUiiuE45t1XnuAxF9H7J0e76SPw3qxR4akthMmOLNWrTqvUdkOglbHhJRFEmD5ksoIBWapfn9VCbIohNo3iRhPyFToNMg67f+Dypo0BlSEKsd3o0W6w3o+8RktpqFZGh9K9dX5UIe+lDzN77bsToXjUhHKiK/mWXeOG7nPNUk1yx236lGxm3TcohBC7lbJdcg89FHlmNC4nY74e0cGu60d2F4icyT2gkcZ2dDJTmkGJjBmihkooMMqb4QWSEzhTzLY1SERc3yVH3M7TLb4uu5ZtAQlKmwP2DquMazIB4d6tYdUPx6blWSk6+1I2qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cNq8sY1CwfgUa3MjrHCvX5MGJLQrsn/QdtTP+bSIfNU=;
 b=fqHfeeCWhLCM0RSj8XeAg3+rAko0edl8GSIHjp0FANu2mDk15rq6K+XOA6shbNRkdrm8d/NfPU9H2jkKisND63qNr9aKpMKigsF0vC4uhX2oNCn6Sj8v+SNXbN80kafgxAunxXmZMTUweBM+qgdtMs0nfgNttkh6urA9h0TQEiY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GV2PR08MB9158.eurprd08.prod.outlook.com (2603:10a6:150:e0::9)
 by DB4PR08MB9381.eurprd08.prod.outlook.com (2603:10a6:10:3f3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 16:03:27 +0000
Received: from GV2PR08MB9158.eurprd08.prod.outlook.com
 ([fe80::64dc:3fec:c1e9:d8a4]) by GV2PR08MB9158.eurprd08.prod.outlook.com
 ([fe80::64dc:3fec:c1e9:d8a4%8]) with mapi id 15.20.6178.026; Tue, 14 Mar 2023
 16:03:27 +0000
Message-ID: <ffe76913-ad42-b142-416e-72770e7ae513@wolfvision.net>
Date: Tue, 14 Mar 2023 17:03:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
 <20230310094222.2538259-8-s.hauer@pengutronix.de>
 <2b5df3a5-37f1-44f2-12f4-1bb6f2a0f379@wolfvision.net>
 <20230314154904.GK7446@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230314154904.GK7446@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR09CA0069.eurprd09.prod.outlook.com
 (2603:10a6:802:29::13) To GV2PR08MB9158.eurprd08.prod.outlook.com
 (2603:10a6:150:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR08MB9158:EE_|DB4PR08MB9381:EE_
X-MS-Office365-Filtering-Correlation-Id: c3e3129d-e8cb-4482-cbb7-08db24a5a5bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	bfi8lpxOBlnczq5XdwbcXL6FM2TaFUeQNOTQYfwwrvMIzb07+M48GrO0LzVcd3sak9ljWYFs57mwLUhodyuA8ZKsG5MLkvYCPV3Q838hRg8xB0WRisKjYaXyesyX1MpFVJPKBsowqo2RwkYANx7MZ6zmrFBHhId+ZWWYBnlb/mTqcaSnsNT8RBZ5F7XyssFzdOB4Wwjc2cCJWar8jfh29u+5If2Njx/Rxl/PrCuBdzlRu8l79W1/f/zPDwKaij+6l6FHXogJZYSEQ7JK+eqyEIFGurOwdfWM8qmQL6f2fw7Rbv1pt4rBsxgKPl9jqThrsOf3w5vljsGWIePs2meXxmYcwtjjw5IRkA6ciNceczMnPn4xh1Tx4SSCdgBLuMTlEhVh5QP8yNOTncUSPL4HjomJgiZLI+R4wEZ1EwrMhgyDEkAOCnKs+r7TIqc8fVtUtYU2/6kW0BLrndA0Lvysx7ENEuhVbfnXdnLetGgvyt+9xaVgqVRpNMmrFJhM0NkwzHZQRc6SzpPD0fdvc7flAUAsm3pTeLK58rBchcusu4fT1WtiWIIRCUC24TIaQopUhDb9BccbvvXXgTTky4KyNuNP6IqvA/rfTv5wUdFQEZ1p7hWuTewMt5unhdNWI1bgNXcFPM3z4WgIvrPDBqcfumbZlfxszsmFg4m5Rx/PF8yatl9TohwPl0wJrQKY20aIHYFKD/XTb/uxUHxfdmeKga6He9JhEt0pwRBiA7SpcZY=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR08MB9158.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(376002)(366004)(39840400004)(346002)(451199018)(2906002)(83380400001)(31686004)(6486002)(36916002)(6512007)(26005)(6506007)(36756003)(44832011)(5660300002)(53546011)(2616005)(316002)(186003)(31696002)(8936002)(86362001)(41300700001)(66556008)(4326008)(66946007)(6916009)(38100700002)(66476007)(8676002)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?dERqQjlpTXVIZ1R4RnNDQWdWdjJub2xNKzBLY0UxR2lTV2h3OVBpOEVHa0kv?=
 =?utf-8?B?MHp4WXduTGpGdzV2VCtvRE5nZWdPZitVelQxK093cjZOVVBXSkQ5aW8zM3d4?=
 =?utf-8?B?ajlZTVdQTmk2cS9CbjkwbW1iUVF2a1R6TDVKb3d4SG4ybTdxclFXNUx3Y0J0?=
 =?utf-8?B?UHlqdFM0aFBCLzRsZnhaRW5aSWVyZ3ZCOXREYU9qNmRCdUtwTGJLcGpVZnlh?=
 =?utf-8?B?U2V0dXd5djRnWXFRMkMrWFRTM0oyaktpZHM5VWtIVVNrU0pvd2ovdy9RNE5Q?=
 =?utf-8?B?OFQxSFdTOGI3SjhGZVZySE05THpwRTR6WWxVeHNGSDVaNnMyalR2NStwa2tz?=
 =?utf-8?B?UVo1bi9pdVdTOUpEYjUwRjArZ2d5YkJjeWpLb05ic1JnME9zK2E2dXpjckhw?=
 =?utf-8?B?RkF6SVZ6MW5aaGxqSGR5STFPUWMrbUFaT1JQcDJBUlBoV1RGT0Y4VTB4ME9M?=
 =?utf-8?B?QVpBTHNNRHpwamxHdG1jRThDNy82L2owNlBjK2RKT3Q0N01kb1VwU1A5S0ZZ?=
 =?utf-8?B?L3AxUEFrNzhyZFFWOW1oZDl5L1h2SjgvRkQyeXNIK3IrSzYwSTJkK3dHTTNV?=
 =?utf-8?B?cVptMHVOSGpiaWJHV0ZpOXQwMmpiZnJGNGNiSWRiNExmMkM4U1N4cnlSU04x?=
 =?utf-8?B?WC9BU0JDMFBrVjlFQTk0L1JaZUZmU1ZzeXJBemZQdTgrOVpMdWhibkNOM0t5?=
 =?utf-8?B?djRvNnByZHRBcENMWjVXUFJwOVlqQVZZeklBUDR1ZVdxYldyMDFQbDRJMGdq?=
 =?utf-8?B?S2dCMFBtUWhFdC9DaEhoaWhFMDdna2podCt5OUdTVnY4aEFiaUFiU21HZDA4?=
 =?utf-8?B?ZG0rQ3FMNktLMTdxT2kvdWphQURESi9aS2lBb2VmakZDMVV0NVBSNWJoRDFH?=
 =?utf-8?B?bjNRQ3ZsT3FueXJyeVRPL3J4NEVxTkt2V3FxZmR3WWNFOXJycFVGNU5Bazc0?=
 =?utf-8?B?SGdHVFJtakkxaU1XME93MDRmSGZXbHhTTVE2QUd3dE9mb0Z3MmkyZUxRSjJi?=
 =?utf-8?B?VG1FWWVaZ2pTbzA1empGbjUrQTcxeWo1SXVYMlVOSEhQcmhEQlk0cTJtZFh5?=
 =?utf-8?B?R1luTWJsd3RnSEp0QjZiWUxxWU5hczd4MVhyeFFnWnZvZkpvcnpSMlF4Rjg1?=
 =?utf-8?B?YzRuc0JDTnlxeUtBZkJqN1BFNStTcXBDWFkyUXp3T0xMTnh0Yk8rUTh5VlFp?=
 =?utf-8?B?ZitGaERlRm9ReC9SblNMcDBxVDN6TDNVZmE1MWhXSTQ2M2lpRFRTR29Jemtp?=
 =?utf-8?B?R0tlWVcwL0R2RWV3RWpiWFZGekJmRFV0WElTVXNBUzlWVGduSHp6MnZQQWVi?=
 =?utf-8?B?U1BSRWhMUnpUeS9CNWJVU2c1d0FRTmRhL3BHTFV4WjJmS05ZV2ZReExDd1pr?=
 =?utf-8?B?T2g2SEJhVDY2b1FYQzdkTGN1UUIyYXh3U3pBaTM0VlByQXVHTzBTbVJVaU93?=
 =?utf-8?B?bTEydUhYS2xyUFlsbHlaZld1QVVVK2g4N2ZsTHdKUm9pM1hkUjVUU1lXUmZq?=
 =?utf-8?B?dEc4OXFCVHlIck1nK2lYQzlSZGpJSFdobG1BZlZkN0ZYelpDTXN3VFl4NVRW?=
 =?utf-8?B?M3d5b3RXM3Z6Yk9vYzkwaE5oQmZKYTV0czVya3orUi9ZY0NsREhxVjRFTGkx?=
 =?utf-8?B?dmFyZHBHR2lBMGtpTHN3V1J1d3lYUFcrS1dLeDlFbm84d2ttZkhnOWRWbWpu?=
 =?utf-8?B?VGIwVjlYZkpQZHY0cHJTdzBjZ3psVk9jQmwxTGhqaENwTW9mVWZXaHZLcmVK?=
 =?utf-8?B?ZzcrWXpRZTFGNmcxQkJERWM2VnMyNXZ1MGJFZ045N25rOFFwT2RQOU1EUGZZ?=
 =?utf-8?B?Vi9EZ0hodnN3a3ZFbCs5dU5LMm1tM0hBM3RLK08wQTNTd0VDWlFwcThGanlt?=
 =?utf-8?B?RGlmUFE0RVBBWmhIWEY3aEx0bElGQjNPS240bXpSRmpKT0s2Rkx6cVU5MHlG?=
 =?utf-8?B?M3NYbjNrTzdxaGVTMkdUNTZHQ05OM2tuUjVxbVlIQUo2anRlWldYQ3JLeE9a?=
 =?utf-8?B?ZjdkZ0VuRENySW9QSmZDRTJFM1gxbVBnN25BOExiQXR4dWNOcndHSU03N0Jl?=
 =?utf-8?B?UWFsdGl2c1VPWUJSQVR4NFZpdzdmSkRjNmxNMHF2VGM2YWxLQVFMczlMSlpC?=
 =?utf-8?B?V2pKMCs4dzUxNmFLZWRzOTB6djN3dFBYOXNKZ2w5TlpGb2k3THZsQ3c0SERQ?=
 =?utf-8?Q?ovdnvUn7uKFn50zKihTfNgk=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e3129d-e8cb-4482-cbb7-08db24a5a5bd
X-MS-Exchange-CrossTenant-AuthSource: GV2PR08MB9158.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 16:03:27.3032
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hbXHu6cSBCNbE5jMqwoapJOh21quRXm3NNRoItuICBnYfyRmWEZVe4izsb+fdPLGaCkqYJvOL24UTMqx85pdfftIKWFoA9PNhSCPDpWBOcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB9381
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_090332_231497_FF93813A 
X-CRM114-Status: GOOD (  18.46  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 7/7] of_overlay: Add option to apply overlay to live
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 3/14/23 16:49, Sascha Hauer wrote:
> On Tue, Mar 14, 2023 at 03:59:29PM +0100, Michael Riesch wrote:
>> Hi Sascha,
>>
>> On 3/10/23 10:42, Sascha Hauer wrote:
>>> The of_overlay command currently only supports applying overlays to the
>>> Linux device tree. Add an option to apply an overlay to the live tree.
>>> Using this option will apply the overlay and also triggers rescanning
>>> the device tree in case new devices have been added.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  commands/of_overlay.c | 38 ++++++++++++++++++++++++++++++++++----
>>>  1 file changed, 34 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/commands/of_overlay.c b/commands/of_overlay.c
>>> index b3660b4bf1..1d68e31ef2 100644
>>> --- a/commands/of_overlay.c
>>> +++ b/commands/of_overlay.c
>>> @@ -17,10 +17,20 @@ static int do_of_overlay(int argc, char *argv[])
>>>  	struct fdt_header *fdt;
>>>  	struct device_node *overlay;
>>>  	size_t size;
>>> +	bool live_tree = false;
>>> +	int opt;
>>>  
>>> -	if (argc != 2)
>>> +	if (argc < 2)
>>>  		return COMMAND_ERROR_USAGE;
>>>  
>>> +	while ((opt = getopt(argc, argv, "l")) > 0) {
>>> +		switch (opt) {
>>> +		case 'l':
>>> +			live_tree = true;
>>> +			break;
>>> +		}
>>> +	}
>>> +
>>>  	fdt = read_file(argv[optind], &size);
>>
>> of course this is not the intended usage, but "of_overlay -l" (i.e.,
>> skipping the overlay argument) throws an exception.
> 
> Okay, will fix.
> 
>>
>>>  	if (!fdt) {
>>>  		printf("cannot read %s\n", argv[optind]);
>>> @@ -32,7 +42,14 @@ static int do_of_overlay(int argc, char *argv[])
>>>  	if (IS_ERR(overlay))
>>>  		return PTR_ERR(overlay);
>>>  
>>> -	ret = of_register_overlay(overlay);
>>> +	if (live_tree) {
>>> +		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
>>
>> If I pass a meaningful argument ("of_overlay -l path_to_my_overlay"), I get
>>
>> ERROR: of_resolver: __symbols__ missing from base devicetree
>> cannot apply oftree overlay: Invalid argument
>> of_overlay: Invalid argument
>>
>> in return. The base device tree does not contain any __symbols__
>> sections indeed. How can I activate the generation of this section?
> 
> Please enable CONFIG_OF_OVERLAY_LIVE. Maybe we can improve this a bit to
> make this clearer somehow / somewhere,

This seems to do the trick, thanks! A bit of documentation would be
great, though.

Thanks and best regards,
Michael


