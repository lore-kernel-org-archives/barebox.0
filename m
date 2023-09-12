Delivery-date: Tue, 12 Sep 2023 07:47:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfwF1-00CK9o-LY
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 07:47:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfwEz-0000Sm-H8
	for lore@pengutronix.de; Tue, 12 Sep 2023 07:47:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K+4cOkhFb6DQOelrRBZUDyTQIGoK1zFSY4i9JG5vsFk=; b=1nxMrTk2hYX9BlRdrg03502OwF
	p7m2y+tAeQ3Kd+UMqWQCN40Evcd4EgNzdRwz7bzUcVYyPNUmZhDq7juT/jmCcL1NoHNETmgXWvjkw
	Q7HaBKTryGxSxxRieDF5CKWF1yJc7IGfZkhD5CEdGjhIJXM+br859prAJ8sxqjKEWYCxjzcBJaNCO
	BculauevMKUIQ1xlN67dBh05u297BI7Jc9yzeiZ6hRqFPyK1LBa/XW+OzYK05HP039qVwLrABe9EU
	ssLS/AeEcJjPyhslil+sCHkM0oH6XW1OXpkjqJozS/Gf0PNmqESA7x4wcwt82YRgcvbSq+BKutJxA
	w6dtCZ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfwDh-002Dec-1B;
	Tue, 12 Sep 2023 05:45:53 +0000
Received: from mail-db5eur02on20631.outbound.protection.outlook.com ([2a01:111:f400:fe12::631] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfwDe-002Dd7-0L
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 05:45:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZkE840DLTK/wJMdhaqNCZaKHnlhaxwcrJ1yWYqMJtHEqlw/RFfpolst2vgLmYddYkGpf6yK1Ufwps3HNm5OnsHIWWxXxBy5zn6N+SIazt7BOaSOqYyyD9s8eqVzfY4LG+KtduBKD1fRMiewA8WhsMEAxfm3x+5J1NZpujm+AZ3eS4yiQOJiDGbn6M+a2DMt5VbcNy968ASRDtrUzko/rwvdJk8tjAH3c98c1k9WvKKvuMdx7k4ZYJW8E1you74uxMEJkTxdLsZphixcp0CBE+P7LxuKj5mFuGGWb5/2WeIVifXpWXZFGgK7AtyXFlQsunH4GcxEdD7LFLwBqGrCdDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K+4cOkhFb6DQOelrRBZUDyTQIGoK1zFSY4i9JG5vsFk=;
 b=kWBZaxMnGvLpRsFSyzPZc1Vj7IG3zOjtOIr72d3KRIbBr0Vyq4bIvD6yLkMjIZGDZzWJf0426noDYRN1v/efNtb9hw5TflINDt782WB2DEriBsLiBrKl56qk6NI3tyHBM2m5TBA8nSQtb/KN3tkJxNUVllcFV1mkFHWf3OEAoMT8jcnaTuEfkzQAyicUApqwcRvyyox62Cfq9RrADcFUqGH1ngxk8J55TPqRqnV1nX8CdSgS3ByFFcXAz8nf26x7Tgb3bxmLsvlISUhjzbRfJLAeKtpSd9g2ZHCXD6w1QFjiUZUKrRImsokkSa61n6H5vTaO8DEvTyd5Akd6tmd94Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K+4cOkhFb6DQOelrRBZUDyTQIGoK1zFSY4i9JG5vsFk=;
 b=b/vpI50rvxSTbyBeSURpXZnB5tHbr44kPIjI2e5E3IwMZRS+oLh81b9s3ygjDMOEDFE6fODSLlqhobYqrDthxF4QoCcq2nZHeAKPERpQwGjAXQHnzpzlv0Z13HvyrsPA4aoU35JmBNP0k+iQAr1o95bWACrAewxGs27Pp1EcMJ4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com (2603:10a6:803:100::13)
 by DB9PR08MB8386.eurprd08.prod.outlook.com (2603:10a6:10:3d9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 05:45:39 +0000
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::5e0a:9e47:1a13:a755]) by VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::5e0a:9e47:1a13:a755%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 05:45:39 +0000
Message-ID: <0483b90f-52a4-5d3b-674e-fa7b935c04cc@wolfvision.net>
Date: Tue, 12 Sep 2023 07:45:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-1-f8235d811f6b@wolfvision.net>
 <20230908135323.GK637806@pengutronix.de>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230908135323.GK637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0062.eurprd04.prod.outlook.com
 (2603:10a6:802:2::33) To VI1PR08MB4544.eurprd08.prod.outlook.com
 (2603:10a6:803:100::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR08MB4544:EE_|DB9PR08MB8386:EE_
X-MS-Office365-Filtering-Correlation-Id: de658c2d-6a50-4a3c-ee63-08dbb3537e67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ks7QmR+COVYgU2XlxXYEDOF3nT69aqXrMZWMSN5nzZV5WZIubQj3iWpl476Kyk7gTEESWK6ucw90rzLLEFJecJtIfcA7LqttaPeXfBjcwCqXNShPjuLG5eRvbAlYUMGiQ8QFE8NsWPLURT3UMPpKJ6T9YxpKiN7Gxm+34Fs3LT/ExB7Nmnd1lTgSspjsV7WYAT3YU1AemC3Z2vcm5o1ShsSFnv6wn8azuH6k8PNqPAf8XXeRoftPl1I5MuFi6hOb2/BCiPmH75ltUbCBs2cWPt3MW0h+XKvBghEOh8xgtOY+NxcFVLiGKo/eAEi/NDIwUdP4/VRFLc7lew1PAIha3K7U67e4S8fbFPUX4Yf3s9siR8+K5P/yElaE7GPWJoAg0GzS1emLoiGBDebLCIUIusgnT55EDOPzdatrSnR7L2aQf6P1dk1RcvwqfeoNC/vgCAlH4j8VGySUSPb7RA9hjZ4MhRA7F8hrYPs2vygwl4yiabTmdbPjzx/8z2W5/Su5be0KkwzotWes3YL6KHNsmqiLntBPPXgswGwFS5ucHg7LQUmqfn/hmtA0TDke/HY/YqQRJ7qywl4DWlKTCkamFh81MAWVMSrlABKwLIxqZhlkBX4fjIjrvh4iJifKVTqMjSsNCiUP6cNCEvpmzk5hNQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB4544.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(136003)(39850400004)(396003)(376002)(1800799009)(186009)(451199024)(66476007)(41300700001)(26005)(86362001)(31696002)(66556008)(316002)(6506007)(6916009)(2906002)(36756003)(478600001)(66946007)(6486002)(6512007)(38100700002)(36916002)(6666004)(2616005)(83380400001)(31686004)(44832011)(5660300002)(8936002)(8676002)(4326008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWVBTHNnQ1hGcW5tWXVZNlJ2ZjQrcldOcVFQOHlicllkUVNlVVRHZjNjalp4?=
 =?utf-8?B?d1VjTDB3VjhuSnFXbXA3TFRrRzA0bmtzWXRYMm9ZeFBDVkdMeW5QL2FlZklS?=
 =?utf-8?B?WS9XQjR5d1dXNGlralU1RWlUSmFqUnd4UGRQcTBLMFR1a1cwOFJXbWp5SzR3?=
 =?utf-8?B?cjMvZ0lsTzVic3ByL0crOHduV2VkUXFCbDFzeVllbFM3NkJnZHJtU3FCYjBL?=
 =?utf-8?B?a2ZyaElscGJhS1hFR3BEVHYwVmczUUNwaXFHNXY2VnhMUzdzMXg0Y0JaemdV?=
 =?utf-8?B?a0tRRzhlVzNhemxhR25tMGEwMm9kUEpta29sYXFUMzd0eVVxeGErWk9hTGJ2?=
 =?utf-8?B?MCtXOHZUd0wxQ2x3UkNiZ2RPRk54T0dGaE1yTklFcDQ2UStnZ3RtNlV4OEJt?=
 =?utf-8?B?THQ0d3IvOFlQZWxpQ1F5endoUlFMUVptZWk0RVZITXJ5QTdxU2VuS3dod09j?=
 =?utf-8?B?ZmxkR09LczZCcHBmcnB0TWVuRzRSQkZDUHVhM0d6ZjcwbDFoY2JBRjJPTmVj?=
 =?utf-8?B?aEhVcjRJSzRjZEdjNVpoZnR0ZGp2aHBEY09URTFYb0R0UUVDVng4Ym9wYmtP?=
 =?utf-8?B?ZmRBSUJ1dFp3Sy9rUk5kQ1Y5dThVdDhrVDNneE9iUUg5VVhTZnp6R21rNVZJ?=
 =?utf-8?B?TDFPYXBoUGlFdjJUZ3ZuRE80bU5udFNrQldUWlo0Z0FiYmF1WG04enBXL3gy?=
 =?utf-8?B?ZC91SjlWZUNyUS9ZLzhLWmZzNTdKWnF4Ym1UbXgySzdKWDJvcTRCQnBJS2NZ?=
 =?utf-8?B?UkcweGVRcFRTWVcwMTVBMkdQR09jNVdwT1RsY1g3bXNvOGR0U0s2eWsyUlJ0?=
 =?utf-8?B?L2VDZ1B3UmFPWWp0cmlDSW5LWmxYOGJOaUU0Y2V1OXcySDU4SjRPMUJQSEtU?=
 =?utf-8?B?eGEvUjZIYW9EWk1tS0c3M3BuN0hwTUVFeEV6M0N0bzlmZXM5SitOc3h1bEVN?=
 =?utf-8?B?dzVjbHU3RzVlTHlydDdyanJGdFNVbFZmTnpaSVgxelA5NjRBazQzTWtlKy96?=
 =?utf-8?B?cFU4YVN1UFpvSmxlQkhqNXhPTzZjOHlPOVdocDFqU0x2NWVWUTc5ckRlK3Rw?=
 =?utf-8?B?Z2NoamhFdW4rU3p2QU0zM1NCdkI5cHFjY002L2NFZGc1ZXAvendEbll0dlZy?=
 =?utf-8?B?RXYwZVFiNFNhWG5HNjhhSE5IUVUvZUR4dnQ2ck5Sb1NGN3kycHN3YndYYmky?=
 =?utf-8?B?VG90VkJuK0IrbmVXdmdqVXdWNlJaUlQ0VUFkRVQ3emZYaWxpZmpNSnVEMXMy?=
 =?utf-8?B?ZkdlVGcycER6L3NBUm8rakpqbE1yQjN6bitSeWxaOFBZaTYzUVFIajdvNjl1?=
 =?utf-8?B?RXBmaXBxWEsxT3FCaHQ0NHJLRHpJTUhNMVNrV3MvMlpZNTdkaUd3YlRkVStN?=
 =?utf-8?B?alpsREp0WVNXYkU3YWFIYW92QlhiT1hENG1wa1NGVkh1YktNUTMzYUpmOUpL?=
 =?utf-8?B?MXlZb2VZTGpQd3JQUVlCV3dscnF4UVRDTDk3Q0dZY2R5dEl1bG80eFRKUE5S?=
 =?utf-8?B?bjI0SEI5cFcrZnFTYTJERWhjL2dSTTVOSFUxNVJPbzVkOHJqL0M2RWtWb3Q2?=
 =?utf-8?B?NE9zNjhqMm4xNHJCaDREckcwZGRON2JiNXR0enVxbzduY0ljUSs2dkgwWWJq?=
 =?utf-8?B?c2pHaDZDK2dkRitTbXJDKzFKODBQQUUwRnQ1VWJ6WklCVGdvaDlZQ1FhOWl0?=
 =?utf-8?B?K3ZvSjJiOHk0c0oxY3FQdlRmUCtuZGg1RVg3ODBocE8zYUZ4ODRTbE1QV0dp?=
 =?utf-8?B?TmI1aHNEZlFjQm5KYUE5dy8zQmtZVUNyU210Q25ycHJSRTFISFhnU1dRSFp6?=
 =?utf-8?B?UEF1VU5nRDh6TEF4aEw2VnJFY2sxbmM3d3ZScVdLaDU1aWxZTkhmYk5XZW9i?=
 =?utf-8?B?UHZocGIyUDh4ZnJFbG4zQ1MyVjQ4MU1NY25XK251L2RqaWovVi9zU1BpWGpS?=
 =?utf-8?B?bjB3d2VxankzeVdPNHpoNHIybGNNUWVWUk9sS2tvcTloV0d5d2VqMVRnTVZG?=
 =?utf-8?B?NGtnNDNrMFU4Qm1Db0ZXN0tQQVgxT3VkT2F0SCs1S0pWQXdrU0tDU2FDQXJw?=
 =?utf-8?B?TUYrdjg3Ujl5N0FJaWVNYWJ1STJnbm9LcUhjZDhKQWRhek9yOXJTRFl2Y0JP?=
 =?utf-8?B?b1JBdUhDM1MvcEE4TjRHbDdXZVZPNHhJam9ZUjZNd1E2V2JrZUtvdjRPYzJr?=
 =?utf-8?B?SWc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: de658c2d-6a50-4a3c-ee63-08dbb3537e67
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4544.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 05:45:39.0772
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LXJY5GyTQ3MNZeb/NQJOPkIWbJAcJZyRlkO8px/xEFloxGwXjdTPNFbGcSdKBiAwgyJy4O82yG3/t1z4idM7LRNwBewAGixlZYeJO3BKFeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8386
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_224550_233003_2F3A57B6 
X-CRM114-Status: GOOD (  14.38  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] i2c: rockchip: fix i2c stop condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



Am 08.09.2023 um 15:53 schrieb Sascha Hauer:
> On Fri, Sep 08, 2023 at 12:16:46PM +0200, Gerald Loacker wrote:
>> The i2c bus gets disabled without sending a stop condition. This violates
>> i2c timing on the clock line. Fix this and include all related functions
>> (rk_i2c_send_start_bit, rk_i2c_send_stop_bit, rk_i2c_disable) onto the same
>> level.
>>
>> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
>> ---
>>  drivers/i2c/busses/i2c-rockchip.c | 21 ++++++++-------------
>>  1 file changed, 8 insertions(+), 13 deletions(-)
>>
>> @@ -387,6 +376,11 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
>>  		struct i2c_msg *msg = &msgs[i];
>>  
>>  		dev_dbg(dev, "i2c_xfer: chip=0x%x, len=0x%x\n", msg->addr, msg->len);
>> +
>> +		ret = rk_i2c_send_start_bit(i2c);
>> +		if (ret)
>> +			break;
>> +
>>  		if (msg->flags & I2C_M_RD) {
>>  			ret = rk_i2c_read(i2c, msg->addr, 0, 0, msg->buf,
>>  					  msg->len);
>> @@ -394,6 +388,9 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
>>  			ret = rk_i2c_write(i2c, msg->addr, 0, 0, msg->buf,
>>  					   msg->len);
>>  		}
>> +
>> +		rk_i2c_send_stop_bit(i2c);
>> +
>>  		if (ret) {
>>  			dev_dbg(dev, "i2c_write: error sending: %pe\n",
>>  				ERR_PTR(ret));
>> @@ -402,9 +399,7 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
>>  		}
>>  	}
>>  
>> -	rk_i2c_send_stop_bit(i2c);
> 
> I believe this is wrong. A stop bit should only be sent after the last
> message, not after all messages.
> 

Your're right. This was just because the repeated start does not work
consitently in our case. I'll come up with another approach.

Gerald

> Sascha
> 


