Delivery-date: Mon, 21 Jun 2021 13:29:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvI70-00029C-6f
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 13:29:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvI6y-0007nH-TV
	for lore@pengutronix.de; Mon, 21 Jun 2021 13:29:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hh9TQN+aDMEq4ilHOy1YZUZWLb7bi6Zlkid4s9VBg60=; b=ezUSpeCoyV2U1RFxkhrWo1P2Fu
	vm9qnBQITTMvkx9q4V/PF7FiZ9HPq4mS23lANd0X3BeOhu6qXN6FoMdNioNedX0/iR9+vWxvexmWv
	yDXNenJo6LH3WYZjDRnbcT2ul2zjwM7Td2fMqZjecVAw2SIuLYvTPx01ZvDVWmgTtIJMNN8Sv4dmN
	HeHvMv+k6Dhz68qS+mFRBbiWl8jdhIeWxNWdErnZvXA99/T5e7G2tsj+0BlZ/yC4XKfok3OvVaNV4
	Roal2bwB20FkRDSDHqcBd8zfu/rqchQpHtY28chctfBXIvTDNfgMsXf8hcxedzaNYk4OfHUh+6niq
	qJYkTjPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvI5P-003JOC-GP; Mon, 21 Jun 2021 11:27:27 +0000
Received: from mail-eopbgr00049.outbound.protection.outlook.com ([40.107.0.49]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvI5J-003JMu-Em
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 11:27:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCscFuf/Xve9aLrLAsMDSl5PbHP31rl4pFaj+xLt6a2qHx2OiQ7qLobLWzB2KMGvBt1U7V91ht8S8aDh+uFftNkZX/BKBR8/NdpDpZfLs/4htOOI0FVBxgL3vE+EZu4EaR/fTmxjFvw50Vr7t7LK/LiyZJPoPEMuLzDPS+jTD4OFFobPxECODQn2l1jJltGCWRnz3H3S5X6/5BYbLtLTVN8DSk6smbWMVFWYS78cJzaVuiJxBXxkvDWlbFdXVSXkrGMqnkaOQX3Kg4fLLAfa5j0gOZ9Hv8hdQrAdmSK3UcAx1hcueRTxxVqbW4JDgM/wDW7Ni7FaJ0H4YHZ5ZWhUyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PReza/kfMB0CO44LkyiPfLwW07AJ0+7q8/4By+kvAT0=;
 b=IaC4VCdKyYu9KAaBOIbwLtJbnwP7QcaaM4TSwLHafguz2p/iulWb4raJBedeFpibr1CETMY1qHIVHmIBc5d2yHkX9B5bVc254xSNbfAfIvKjQbNFYshYrvl4whsm10wK6u3CqhuWU0wPqdhEgclPsgZG4gGXBEx+OsOsXmmDtWb6zQmoNh6p7cptYubLRb27cKBRefNs3UZVm1ZjcQPKHlUN3APTARMUDSq23fQWWDXPWwNeAYe8bRzjauYHiNeGmiaRDrYiWStqCo5lec1QH9QMyh//uqx5mtAUOTAmlD7CjGaYFJ0XQSRhHS7YWmlOjSNihj5xu6rhxA8ltIly8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PReza/kfMB0CO44LkyiPfLwW07AJ0+7q8/4By+kvAT0=;
 b=nwHj7uJkxcI+Oe16wkDv11IC77MsxhW4vf3QEh4WBdEpIXIbrPTgIrFt5QwH3Cxcd0CO+EGRo6lOIWqUUFmvwtyagLQNdbh83XJ920DbbHSVo22mX5WvQTNqt0LsOeMHjmbERlopVDcb5uPV1nlBXk6+BtsVR4/qUdg2seOSZAg=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB5222.eurprd08.prod.outlook.com (2603:10a6:10:dc::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15; Mon, 21 Jun
 2021 11:27:13 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 11:27:13 +0000
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210617143654.32616-1-michael.riesch@wolfvision.net>
 <20210621043036.GE9782@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <fd3e7d9f-bb78-1cb4-d5af-9dce76f9ea3d@wolfvision.net>
Date: Mon, 21 Jun 2021 13:27:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210621043036.GE9782@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0227.eurprd07.prod.outlook.com
 (2603:10a6:802:58::30) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR07CA0227.eurprd07.prod.outlook.com (2603:10a6:802:58::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.7 via Frontend Transport; Mon, 21 Jun 2021 11:27:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b94ce0d4-c744-4f98-13f2-08d934a7846f
X-MS-TrafficTypeDiagnostic: DBBPR08MB5222:
X-Microsoft-Antispam-PRVS: <DBBPR08MB52222E9326765DF6DDDFD9D6F20A9@DBBPR08MB5222.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QuUbMI9XO7tqL+cwYahATICFj3HdBwk2iChPgz0MDxM8ySV7Zd2H/zQCy0jvd6SRqGJxiKWUrgQ2JhTpBe+jgo21PQB82xZDJKZP8qBGj9hhbDynEo5bf1v9u3jBmlWbFSh8yFFsYBYD9TqKShENMUt3nzE/B365DvHbERLMB8N2KjWSSCgvNJwgrbRVa+4Yt87BfqvyvUr47qV1KRMvyEQzKYH6WGXhCpzQzjeO2fqNQNk0xqHM1YBxvHVKSwCnV+DtW6ybi5JAdxeoLJomYJMiNSlAT5VLkpnW2Po2PDqpQq2+XTIMWVXh6gPIrdTgomQUfaHqKf6/kouGDWEG38vZRXAcxhhUdX0PVht41kXHusHiYeZUduqShmY7WGfbqsYrtBa8Tkx+7KUP2p12VEJLE/RLVFt02BTSKBb1FhpEfXV5K9AhMwZNKDBn2tKh9Vzqrg7Jfy6Y08CJHxpUWjl2jD5aRAaP227iA0jcDbocSnlyvc2PEwllko5dt3hyJk/TxSfRWf+EnTnP87Ht/eR15R7wTRvQ6fXmSqIIeUzCEte7OftP0chrvpaAlbVxfhyMrMI98cG82ZsiTZKLA1GemVuPuVV83XQN3pwyYFVblbDWSr1urGaPy1BHJNbnGgFxBtmMxQBMgm1Dt8S2h5yrWjMZUHGLX6OVQ9gGNPp+y3X3XIScnFFvvWOdiWeeW/wtKe223HIJzYhFhXESYeLTOpDDtgm2Oi1ihBhsiGg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(366004)(39840400004)(376002)(346002)(16526019)(36756003)(66476007)(478600001)(8936002)(38350700002)(5660300002)(86362001)(44832011)(83380400001)(6666004)(52116002)(66946007)(16576012)(186003)(38100700002)(36916002)(31686004)(26005)(31696002)(6486002)(956004)(6916009)(8676002)(4326008)(2906002)(316002)(53546011)(66556008)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGY4K3pncGlhMkc1NmxBUHRjTnA0bVZ5ZGRGelBHcFdkcXo3UVNlYjhTYmwr?=
 =?utf-8?B?YlZFeEpkTEdwdTNJb1NZTUdYSDZITWU4L2YvV0JIVEc5VEV5enUyRWlndjg2?=
 =?utf-8?B?NWQvZjlzUnMvU1JZVHRaa3NHV0xuWmZJT1NsUUJyWFdHVERiMWdtV05Xb1U5?=
 =?utf-8?B?cnlPS29ienZNcC9SK1lrT1NWQzEwZlYzWGVOM3pMMUlZQ2xtdHJCQzlBa0t6?=
 =?utf-8?B?T1dtekM2NXUzL013VUVybEYvM3lIZ2l6b1FFd2MrV0IrYktranVrMXV3NllN?=
 =?utf-8?B?OEpwMEtIcWdPNGtoOGU4SDAzWlVqOVFVejg2R2VEcGdyR2ZMSDEyV0xuVk9u?=
 =?utf-8?B?b0xHelJUbzAzcmhJWmdWZGdsNTBGZ2trRUplR3p3bXY4aFBxR2lwTnN0WXNv?=
 =?utf-8?B?ZFo1d3NNOTdZN0J0MEw4MGc2cCtBTzVOcThDMytNand1aVhkc3pTYlpUM3dL?=
 =?utf-8?B?QVVWM1dQSnlNZWZCb2ZxTWtRSmNKVVkraFFaL0Z5TzdPRW0zL0hHdTFJbmll?=
 =?utf-8?B?clZVQ3NrMmFSR3RrTE40R2FkQ0R4WWlDQnNrUEhTWE5BQVBtNDJINlpMbzhk?=
 =?utf-8?B?M2NCTmFYZU9FR21YOXR6OXhSWUl5dnBPdHlKUHJVYkUrODVHUWFvem82NUor?=
 =?utf-8?B?ZmlzMHJkbCtNQlRFOThWQzJFV0NzSk56a3gzYjlKNUlIT0V6NW0xT3pZbU1J?=
 =?utf-8?B?QmFOeG1WZkhKb2grdm5OTEhtbEdpVmlWTndYQlAwYmFybXltdHZOeUNqNXdE?=
 =?utf-8?B?b09NRUVMeVNUWmptSlF2QzJ3QUFGdVkwZEtYcGZsQ1FiNTRzejJBSzlrQkhm?=
 =?utf-8?B?VmJVVTZxL3E3NWFRUnUwM3JRVUFsbSs3SmFBRmJMTWppaml2UEo5SjNVMTB2?=
 =?utf-8?B?aDBoSGE0TFBHY1lrdlUyUmVOOVR4ZFVvdzhvZWJTdFlIVWRDcEY0RU1JajdW?=
 =?utf-8?B?UEZuUTVjOXE2bG5NN0RPSlZVTytnL09pNE43V1p0Ry84VlFGcW4zTno0cmVF?=
 =?utf-8?B?U0pGelI2ZkNqUlNQWXdlSUJ0eDRmeFVZNFNMcEdFRkhiam1ldkJJSTJIMHRQ?=
 =?utf-8?B?VVkrbndzc0REOWZucTJSQ0gyYVBPaDcwSW96WVZIRTEwM1hFMlBYKythQURz?=
 =?utf-8?B?aEc2U3dOWnJZeTkwRjJiYmNLWTliSVlyOThFNHFjSVNNOEk2Q21HOERXNGpZ?=
 =?utf-8?B?T0pXOXFOQmgrYXR3RHhWVUgrV0c1aTJpVWtvUXdsVjlBU00vRDQ5enZkYzN1?=
 =?utf-8?B?SzQxN3NHN1ZGaTRpcU1LRkdKMERzUVVTWVdqbFJHZXpkUERTV3REVjkrY1U5?=
 =?utf-8?B?VWxkaVRqeEluM3dwbWN3eGN5RWwyMFEwZURialFvdW9tWGhBVGxMZnBNZlRO?=
 =?utf-8?B?ZklKZWE5U1Nndm92NkdCcnBQdkhlSjk0VkMzcnM0eXJkS21RNHA5bWFxUnBQ?=
 =?utf-8?B?WE93QitLWFJ0NzUyYzNOenpyVU9tUDdhM21rRnZKZ29GWjU4QklOcGVrbWxN?=
 =?utf-8?B?SmZrTERGZXJLR0dSa1dIeURxWmVZU1NzZHRVdFR2dml2RkFPSXR5Ty9oRUY3?=
 =?utf-8?B?d3I5UXQxQ01TdEdOaEtxZERsNnJaK2s4eG4rdlFUL0RJeGZUMEpHeExCRWxF?=
 =?utf-8?B?OElNbVNaNW9oRHlKMmRxaml1M1MzZWVEVEUwdUx3UGFQMzVFd0FJK1hla2dF?=
 =?utf-8?B?ZUVxdjZwd1UrVnFIbG1sWHpmMmJFaml2dU1YNE1SZUJYZ3AwSTZmeXZ6Q01J?=
 =?utf-8?Q?pCEaT5OA5HAVO2iVH5Z8JEwCn/6WmnwDAv5399Y?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b94ce0d4-c744-4f98-13f2-08d934a7846f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2021 11:27:13.7399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hZ/uWhhNbkIAzhvTnBwwEeLn9Uo8FQfs/wr9Uv2v4aoE1cN8EBXhZ8r9yNGEeMChaC3smXuFVMPHlgA5GtaPt/yg56d4ln9pUgMcxRP3K+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB5222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_042721_635339_4F58A14E 
X-CRM114-Status: GOOD (  26.67  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: add driver for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

thanks for the review, I'll prepare a v2.

On 6/21/21 6:30 AM, Sascha Hauer wrote:
> Hi Michael,
> 
> On Thu, Jun 17, 2021 at 04:36:54PM +0200, Michael Riesch wrote:
>> +static int rockchip_saradc_read(struct aiochannel *chan, int *val)
>> +{
>> +	struct rockchip_saradc_data *data;
>> +	int timeout = SARADC_TIMEOUT;
>> +	u32 value = 0;
>> +	u32 control = 0;
>> +	u32 mask;
>> +
>> +	if (!chan || !val)
>> +		return -EINVAL;
>> +
>> +	data = container_of(chan->aiodev, struct rockchip_saradc_data, aiodev);
>> +	if (!data)
>> +		return -EINVAL;
>> +
>> +	rockchip_saradc_reg_wr(data, 8, SARADC_DLY_PU_SOC);
>> +	rockchip_saradc_reg_wr(data,
>> +			       (chan->index & SARADC_CTRL_CHN_MASK) |
>> +				       SARADC_CTRL_IRQ_ENABLE |
>> +				       SARADC_CTRL_POWER_CTRL,
>> +			       SARADC_CTRL);
>> +
>> +	do {
>> +		control = rockchip_saradc_reg_rd(data, SARADC_CTRL);
>> +
>> +		if (--timeout == 0)
>> +			return -ETIMEDOUT;
>> +		mdelay(1);
>> +	} while (!(control & SARADC_CTRL_IRQ_STATUS));
> 
> You should do a timeout loop with
> 
> 	u64 start = get_time_ns();
> 
> 	do {
> 		if (is_timeout(start, 100 * MSECOND)
> 			return -ETIMEDOUT;
> 	} while(bar);
> 
> We don't have any way nor need to put the CPU into idle, so we can poll
> as fast as we can.

OK, will replace that.

>> +
>> +	mask = (1 << data->config->num_bits) - 1;
>> +	value = rockchip_saradc_reg_rd(data, SARADC_DATA) & mask;
>> +	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
>> +
>> +	printf("Raw value: %d\n", value);
> 
> Debugging leftover.

D'oh!

>> +fail_channels:
>> +	kfree(data->channels);
>> +	kfree(data->aiodev.channels);
>> +
>> +fail_data:
>> +	kfree(data);
>> +	return ret;
>> +}
>> +
>> +static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
>> +	.ref_voltage_mv = 1800,
> 
> From looking at the downstream dts files this doesn't seem to be SoC
> specific:
> 
> 	&saradc {
>         	status = "okay";
> 		vref-supply = <&vcca_1v8>;
> 	};
> 
> I suggest doing the same here.
> 
>> +	.num_bits = 10,
>> +	.num_channels = 8,
>> +};
>> +
>> +static const struct of_device_id of_rockchip_saradc_match[] = {
>> +	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
> 
> The device nodes in the downstream Kernel also contain some clocks.
> These should be handled in the driver.

I'll see what I can do :-)

Just had a look over the mainstream Kernel device tree. Resets,
interrupts and number of io-channels are also provided there. Now I
think that the interrupts are quite irrelevant for barebox, but should
the resets be addressed as well?

As to the number of iochannels, I think the maximum number should be
provided in the SoC specific struct. Not sure what the value of
specifying the actual number of channels in the device tree is, though.

Regards, Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

