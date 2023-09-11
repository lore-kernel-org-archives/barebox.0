Delivery-date: Mon, 11 Sep 2023 13:48:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffP1-00BRoO-Dv
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 13:48:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffOz-0006KS-7z
	for lore@pengutronix.de; Mon, 11 Sep 2023 13:48:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3khLz2j8F/05CoVs/Q1tbzy1d6C9LIupJZAX3bJ3XSY=; b=dpzsWxq+wEO2aWcvIr+9AiYoha
	PHNeEA1C4FRBRteO7YLoANIpwjqNWD9qCLc7QUJFKwHikx87jqqdvRtENoCEkwbrAwXEOzkIIeRap
	QIl9wUzFzBVqA4FiD7cQ/l52wGijkjYAYZ7YkdE5/Qx8J4mEJTRP1FwxUPmDqlEogYRHWP6ZiOJBO
	vbv5mMiXgDhVbtS5mRAJ1+4V0RY0pdWp6nF0/rNPGQkse9fcYuQnwdTOHqMfdLhBYCyS/R09Qu1Dj
	GaYiXK/LNAn909Z8LvOERM0HF5lqtDwu9QP+JD6oDNTgdu73LUH8b0nrIra3Hhd3VebJFaoDVvhpI
	auhrdFNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffNV-000P8i-33;
	Mon, 11 Sep 2023 11:46:53 +0000
Received: from mail-db5eur01on060f.outbound.protection.outlook.com ([2a01:111:f400:fe02::60f] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffNS-000P8F-39
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 11:46:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vi+L+mf8xBq/EJ6kirP7nuYw5z1cQ43WB+FDDn/uT732SbKehdDutH1CqlBQVK8fEKYUBrE5xZz65701I0RiiOWSfWahFd+Z64wyr3tJDGenKi5xODFw6yBDk+4pYPXeYtE3ilN5zuHmtjbycD3dBuM8IIZxkSYnFxflFE8TOPMz32OBJgDYv7gUfEsnVyerxB3rUeu9G4xwwU3gXGjMb36gnLAjAAC+nnEdxsokL0XaeB7RCVEVunHfPe9xMjrsfm83CnGeVd+gpHvYFY4jp+rxDD9EMrtafHK4b1MAy5C9JI9AzfiMqPdOYlpDjrANvDDb5KsnhU5UMWzRX9PGqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3khLz2j8F/05CoVs/Q1tbzy1d6C9LIupJZAX3bJ3XSY=;
 b=JTjKuCqouKDCo0o4YGvLJld32pQJmwi1mT8PFB+m1xklpNqWIDKC4xID9B3kRHI9saV5ZXFEvVvLSGgQcKhwNyvJEwIyoxbjil/OI6dnxT20BEmYjTN7gnDol37kEiNY/hcajXLr8wc+ou2YGvsfA95ZAws1DQ225Sw2SPUDiH61gcOSroDYrc77smfEciMTeJ+Tj2zt3TSP+RD59sLdRwXM3gKO8V0iFrznF+9IMQjg+8MZhb567nN28INrMJz3Y/sCPXDSwoP6f+dx6Di1Y/ypRWhxm2CJGfHp//GO8nb0Bh+h4KcrwCAEN4ZvdEHOrSSTq/GPTqQEuCu2ANWpaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3khLz2j8F/05CoVs/Q1tbzy1d6C9LIupJZAX3bJ3XSY=;
 b=Y+uumhmNRbiXXx7V5zREM9i2MptxHWSeEuIMZaN8+EGSiYAj4X7Eg3wYUN3vbo/Ss5rBS51L1Xq+n7wxZ74LtnjXBlhaA91VyvC7w5HZdr+foesKCszRVx4r64GD1pzf2tLtRCxcd6674q3JU2At+vznh21LUZWVBYeEOOex7V0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com (2603:10a6:10:cf::22)
 by DU0PR08MB9298.eurprd08.prod.outlook.com (2603:10a6:10:41d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 11:46:41 +0000
Received: from DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476]) by DBBPR08MB4539.eurprd08.prod.outlook.com
 ([fe80::eece:e868:23c8:9476%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 11:46:41 +0000
Message-ID: <d42f521a-08b3-14c2-3883-917259632bd2@wolfvision.net>
Date: Mon, 11 Sep 2023 13:46:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
 <20230908-bugfix-i2c-rockchip-v1-2-f8235d811f6b@wolfvision.net>
 <20230908115132.GG637806@pengutronix.de>
 <20230908115540.GH637806@pengutronix.de>
 <20230908131305.GI637806@pengutronix.de>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230908131305.GI637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0274.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::47) To DBBPR08MB4539.eurprd08.prod.outlook.com
 (2603:10a6:10:cf::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR08MB4539:EE_|DU0PR08MB9298:EE_
X-MS-Office365-Filtering-Correlation-Id: 569a0aa5-e575-48cc-fdab-08dbb2bcc396
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RSbNn3epEuyEFLhPOJXzTzxFsC88Gw8z9prI4Cfc8hqh6A6mPjw8chtSwBdmvBxaoqT1nlbET3nPPLDSDy++Mrh4tQn3tPT+zi5FByVuZLMY1V+dHmdjq8RASsFjK8onn5UWSxEnTrsoBoKeujawFjHCA6NZIyrkJaWox/EtVIlHHQliVhQK2NmJEuOx9BPdtkWgJPSRz36DdJJIKg9OVZoJ0BCrlvtPuuA/+h0qNX4Dj75WzoX09khaNGdfbfN+D/TYQdguQlFYo4umDKz6iksw92A/trqmRb0BiNS2rQ+NY0o4kpLtjs5+H1j92tlYZ1hbWOGi9nNhfk+jFjohCy9Po1gfAuUhCXt59KjuOtpQqjrOxcOBcpwSCfwDlHjmsmgAj2tXHsY18QJtwDAmr8iXcuBO221kukL7miBshtjK2REmn1GozvEFCgmu0OwE+QlsmYJqSSXTBpxG8yTlfXZGgPxFxX8KeE/FqgyhnQnJB1zRs6r8ZSHN+6SaLnoSZM4/fqQYtfMu6d9NPC0G2hy1wiH8yiwHLYTB8xkBsWnq4QgF+wgGp+6dZ8py0Zbp5WRHg7NEy6yqrubQrp46QBr2bPtJT5bOLKp2xHtCBYVITfEw7xG4881eSdy/yVaCK7O0Plt5iWVc5YAklIn3HQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4539.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(376002)(366004)(396003)(136003)(346002)(1800799009)(186009)(451199024)(6506007)(6486002)(36916002)(6666004)(6512007)(478600001)(83380400001)(26005)(2616005)(2906002)(44832011)(66476007)(66556008)(66946007)(6916009)(316002)(41300700001)(5660300002)(4326008)(8676002)(8936002)(86362001)(31696002)(36756003)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0lxdDFuaU1TRGp1bm5Wd0Z5NjY3Z1RiRlF4OUdtckwrV1FOak1YR2g5WDlB?=
 =?utf-8?B?Q244UmZZM3d0d0l0NnV1UzExK2oybzN1d2NpOE16WjBqNllBZnJaa3c3SEdJ?=
 =?utf-8?B?cEJrTG42UTNKaVcvcE9IcnAyQjhRd0FuVlJnQnAydk1EcW93RG5hSUowaXFX?=
 =?utf-8?B?eWVvcXQySHljMHJGTnBqelo4SVp0clQ5alpQNnNIRVJqakVQRXlCaEVBUTZQ?=
 =?utf-8?B?RmZQeWVSU25WZ2hWZmdVRUNSbzJPcUZtckk0M1FkN3Q1dktQb1Q3b0lsbW1x?=
 =?utf-8?B?L1NSOGI0UE5zaDV5eWpvQ2xvWjNIOVlHUzVqWE9zUDZueGQxZUJUY2I2anF4?=
 =?utf-8?B?N0FqdVZGaU1HbXVIRVFka0N3ejdyYlUrNjVadXlhbnI5K214b1FianIwcGp4?=
 =?utf-8?B?RU1HS0s2czRnRXJ1dmhVQlg1UzBLRlN0MC9DaHlsN3FGbkljZEtKa2I5a2lO?=
 =?utf-8?B?ZFF1cVA0bm5UYVhiTWlVa083SkhPTG9rQUdGMm05dmh4VXU0ek1RbWdTMHVx?=
 =?utf-8?B?TjQreWNoUDBmamZkY2FpaGJKQ0NFZDAwN0V6dVl3NGErb09ENXlrR1R4OHhh?=
 =?utf-8?B?eWNVSUNEMGY3WHBqT0ljbjA3YXZ6cVplSlBpek91VlpheVdZTis4OS9MOThN?=
 =?utf-8?B?T2ZVUDRKaHBRYmxyUnplTDRNdDhiT2hDbzgxNW9SZ2pwQWhmcGU2NlZCSmho?=
 =?utf-8?B?MHdPSVJzT3JtelVubGlaNGpxRXpjZUo4eW9mVnZLNExGMHRwQ1l0aTNkVDRL?=
 =?utf-8?B?UmZmNFA5NERqNjhDdldPREN0Uk5NTDlvL2ttYm9VeFhKc21tMjYrcHlDaGt3?=
 =?utf-8?B?a0JFNDU4OGUxVEMrUG00eFFrQ2dZYi9OQW9tOUhHazZYcHVOWlI4OWVWMzFw?=
 =?utf-8?B?NWN1V3dXQ0VXcHpGNGRBS0k5OUowMmxZaHVwSjNNZTBQTlZwZGxScS9wSE8z?=
 =?utf-8?B?am1US3hhdlBzZ3JPMGVwQzhHOHA5V1RaaEhWWWxBVXJsbmxNKzVrY2xuQ3Ev?=
 =?utf-8?B?bDFYVWdrdDg3K3EyTGtIU2sxcCsrcEg2QkFTU0hmZGQ3WWVLY2JyOWhValZD?=
 =?utf-8?B?U3daUzBsdTM5dWYwV3RTcWUzKzZvR29rUWtGbHNBUWFSUE9PdEhxU05Hc28y?=
 =?utf-8?B?ZzFndzZPR3BYdnVEcDZmTHVYU01PRkJ2U2s0M0tkdXhlOXlMTHlYa3ZCUHFp?=
 =?utf-8?B?ZTVqa3NtOHh1NVNiWTN0VHduUTEvUXowdlJzMUxzQk9QaDBmUkRCSHJSRlhN?=
 =?utf-8?B?TUpsMEZIcU4wQmdDeXhJbTZCM2I0Vk8yOGVZZlZsKzNmS2NUcHNWMHpqem44?=
 =?utf-8?B?ZjdlUHJ3RVN6WE9vREozZXBYZmhwMFduejQrZjNjcEJXcXNkUmpxOTM5dW1L?=
 =?utf-8?B?T1dpT2VpM3YrblNVZnRKL3ZlNWVFUHJBTk5DdENmd1hBY054a0VSWnlpYjlh?=
 =?utf-8?B?eWtSOXk4NVZudmp0Zm53eTBRNVVWSkN6L3ZJUjFwUHhBdDcxNkpvdEJ2dm93?=
 =?utf-8?B?T1FhbkYrVVRkc1dXOFQ0OHlYeUxhMTcyWVJ6MmQ5dDZydVJVb0sxZjVHK3Zn?=
 =?utf-8?B?TUFyazZsSmNSTHFpWjBpRzZ6d1NJWlZpODdZUnR3S25tY1p4Q1lySXNNQ1Jq?=
 =?utf-8?B?QlV6bEdCRWdUUU0yZUs4NDFBNXJQOUtkL2RzdXVKT1IwdGlDS2VrWTh5eXg3?=
 =?utf-8?B?VFZVNVpTSUlxeWFXZkh4eHRPd1VxR0wzbVZmaVBiRWoyL3p3Ym96TWZqY3hw?=
 =?utf-8?B?dVFoS1FIUHZWQU5Ba3U4UUF6aGNndEVoZmt4SXZrRUlycCs2VlNXcko4Tmo1?=
 =?utf-8?B?NnpxMmJiU2RKYmdrTVUrZFh6NXBrVU1YYlJHazlrS21XWGI3WEdQSXFYcDBU?=
 =?utf-8?B?Sy9RMjl1N0dXYjZQOG9uTlAvZG9aclp3QitXWTd4TjVKS1g4ZEVHQnlXdVpR?=
 =?utf-8?B?aWRXRXo3VFd0VFJqbE5RS293Q3E5N0ZSSDVPZ2lBZWhXYUprNzF4R3Z1amdm?=
 =?utf-8?B?c2ZlejZTcnlLUjhqVXhaTWZteUVxZTgrUFEyVno3WHVzRXdaZG9iUzVmOHVm?=
 =?utf-8?B?WCsxSzlvVTVldVJmVVp5ZCtTb0RxYUUwVDBQY2FTQXhFSHMvOHh1THIwSno0?=
 =?utf-8?B?OUkvZ0lnd2NtakJ5a1FodW43azk4V0o5Vk9NVTdOaG1iVVBZWXJJNEUzcFAr?=
 =?utf-8?B?OXc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 569a0aa5-e575-48cc-fdab-08dbb2bcc396
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4539.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 11:46:41.1058
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WoZhbJ48kzwTM0s8kekpW/acT434gv3U+GJtCTQBJfE/XmFDL6IlIipxfSi6WJTbRlf9tmvRODf2GQHXRyVWWv3XqoPYWjGYDBfsks4GhEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_044651_077543_43A36E74 
X-CRM114-Status: GOOD (  17.55  )
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
X-Spam-Status: No, score=-105.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] i2c: rockchip: ignore i2c transfers when another
 transfer is running
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

Am 08.09.2023 um 15:13 schrieb Sascha Hauer:
> On Fri, Sep 08, 2023 at 01:55:40PM +0200, Sascha Hauer wrote:
>> On Fri, Sep 08, 2023 at 01:51:32PM +0200, Sascha Hauer wrote:
>>> On Fri, Sep 08, 2023 at 12:16:47PM +0200, Gerald Loacker wrote:
>>>> It may happen that an i2c transfer is requested by a callback although
>>>> there is an other i2c transfer running. In this case do not interrupt the
>>>> transfer and return with an error.
>>>>
>>>> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
>>>> ---
>>>>  drivers/i2c/busses/i2c-rockchip.c | 14 +++++++++++++-
>>>>  1 file changed, 13 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
>>>> index 1bca3e9913..a869b9d0b7 100644
>>>> --- a/drivers/i2c/busses/i2c-rockchip.c
>>>> +++ b/drivers/i2c/busses/i2c-rockchip.c
>>>> @@ -369,7 +369,19 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
>>>>  {
>>>>  	struct rk_i2c *i2c = to_rk_i2c(adapter);
>>>>  	struct device *dev = &adapter->dev;
>>>> -	int i, ret = 0;
>>>> +	struct i2c_regs *regs = i2c->regs;
>>>> +	int i, ret = 0, val;
>>>> +
>>>> +	val = readl(&regs->con);
>>>> +	if (val & I2C_CON_EN) {
>>>> +		val = readl(&regs->con);
>>>> +		if (val & I2C_IPD_ALL_CLEAN) {
>>>> +			dev_dbg(dev,
>>>> +				"i2c_xfer: %d messages dropped due to pending interrupts\n",
>>>> +				nmsgs);
>>>> +			return -EAGAIN;
>>>> +		}
>>>> +	}
>>>
>>> Can you have a look how this can happen? Normally this should only
>>> happen if you have a heartbeat LED behind a I2C GPIO expander or some
>>> other unusual setup. Adding a dump_stack() next to the dev_dbg() call
>>> might give a clue.
>>
>> I just realized you sent some ksz9477 along with this series. Are you
>> using that in I2C mode? In that case it could be the periodic link check
>> that does I2C accesses in the background.
> 
> Assuming that this is indeed your problem I have just sent a series that
> could fix this issue. It's untested yet, please give it a try.
> 

Yes, this solves the problem of interrupted I2C transfers from the
periodic link check and also makes the ksz9477 patches obsolete. Thanks!

Gerald

> Sascha
> 


