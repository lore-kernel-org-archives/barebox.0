Delivery-date: Tue, 14 Mar 2023 16:00:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc68x-00F0u2-3Y
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 16:00:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc68v-0005kW-Is
	for lore@pengutronix.de; Tue, 14 Mar 2023 16:00:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wJoq72owUlDtYYubMGRWTASwq5ZzfxejFTCZ4rQHiA8=; b=v5HoIKSUH6pGWQSetnVcR8egbu
	hStKOy+F+QU+CMaMqCyaoKEQrRK79QcpnelLhYKblgiB/AVmoIhJ2rmg0sweOi4dUM6jQAI4RFfJV
	Pww40pWw/KlsaOCOE9Sxd5os+Twl+0KbDWHr5bExHBveWJgWzBCIfF6mGCUzyKxaDx35uexFgtT/j
	VF0dA5kP6/a90F2f3KLKp+MY+eNCpC/KCiI8lJD/tMR4AdHo6TuonSEZrTkOxkY32i20UPMR2Ym1N
	oX6cSDfYePmnT0pAjM078/wMFYcwfN7MskT4CJf3z8cax7c5iGxpc0ZeP4lyKUyAYGB2KXlKqDJgy
	hn8PCqgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc67p-00AXAX-34;
	Tue, 14 Mar 2023 14:59:41 +0000
Received: from mail-ve1eur01on0601.outbound.protection.outlook.com ([2a01:111:f400:fe1f::601] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc67l-00AX9I-1h
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 14:59:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EZ0f5q/hV8QjyJeX7wbfsTkJZmaUcn7ShDhUShOuP01/yoKlsI4+hgbzn5tr5/kqKdqBU8k0tasdE3S3uAOXDCBjYT3dSpPgqhDyc4TTu3MDC2xO/FjRfaC4f/3dfHPFcUoPdwQUM+Ozkkj7rdPHTUoxS+n/h8OO7wq8VaPlGpKbLRiquvXVWsXuy83sSMVx2jJD02VPHp3/zqWm0ws7UffjoTVIy4IiV4ij50zXkTIYffkTTiNs+k3CTD169F3NokBYRI719VkGnudQXv8MHIcZixiZKRVcuoO1EVy7jjYoR6DgP6BvN2jW3rlpBfD+yXDpmfTXjM3/UwIEJGHBqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJoq72owUlDtYYubMGRWTASwq5ZzfxejFTCZ4rQHiA8=;
 b=WyKECwKapw7jcpsPckl1fLzSGcHZtyzStqSDbNje3akaN//O69RjY/osXqNL4gPnllunQlGc4qDxqvSUbwk/P+7LU7EGSFW2hFELHUpKksdBFBOIzKKGvddxHQf/kQqoLJVmqCcas2GCbMtouGB1zHzpZugL8+sRsPUaB0wIeuFxMsj2KNGJBxTbMLT31IJ5a53+ew3OLG36MnFofcb66lZ/V/LMwuZhrsQww1KNVHegzOAeX2MA40R2xapCOfKmImMC+MMaoOFvb1XG3ROL3sxTZ2stWpH4ybLozUFcBQKtqFfYjnPjz0ze21Up8Py55LmkcSa0ZVCPonyc8b1nOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wJoq72owUlDtYYubMGRWTASwq5ZzfxejFTCZ4rQHiA8=;
 b=ThLIlAcMLWzUKWPSiO4UwAXtIPZdb8aXANLmGgQH1AeOTFJFR9Cik1ZBALMpZd0KJh8kNnn5mS1lO51tMaUB4uzrYb28BsmVCvxpQwSAejuyEAsIAuhczZfmJTPwU1bH8Dx/h4pBaOXgQvFLb8BoAO40PvVBcqkO6U26FeHtc5A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GV2PR08MB9158.eurprd08.prod.outlook.com (2603:10a6:150:e0::9)
 by DU0PR08MB9535.eurprd08.prod.outlook.com (2603:10a6:10:44d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 14:59:31 +0000
Received: from GV2PR08MB9158.eurprd08.prod.outlook.com
 ([fe80::64dc:3fec:c1e9:d8a4]) by GV2PR08MB9158.eurprd08.prod.outlook.com
 ([fe80::64dc:3fec:c1e9:d8a4%8]) with mapi id 15.20.6178.026; Tue, 14 Mar 2023
 14:59:31 +0000
Message-ID: <2b5df3a5-37f1-44f2-12f4-1bb6f2a0f379@wolfvision.net>
Date: Tue, 14 Mar 2023 15:59:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
 <20230310094222.2538259-8-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230310094222.2538259-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0202CA0002.eurprd02.prod.outlook.com
 (2603:10a6:803:14::15) To GV2PR08MB9158.eurprd08.prod.outlook.com
 (2603:10a6:150:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR08MB9158:EE_|DU0PR08MB9535:EE_
X-MS-Office365-Filtering-Correlation-Id: 19b6b942-a0be-48d6-32ee-08db249cb737
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	HpXSdtuCN0azTaglGIsml0829bv2fWwB6Sn/reaGhrOfCCd8gJLVZ6qe+WBk99wZZ9AeFhifWqCexQjfvHkyEGQ+aGum/QszvQ1+6KK7zRpdPOta+b8seqwBrTwbq+LKAlptAhZloPZT919N/lhr9GpQT2HK5UjzFx8tV5NsM6poIF9ixZuacpSedsFhGo+ARBQ6Cwjf+rKNoFP4qaNaC7WStl6RUZld1UF6auyL5hYxGqmd8MBjd/Htm9Nrg5j4+2yxZlV3D3YWIPGk/HjzYvsI/3rhO2u6GRWXpmxqGhIxB1CgQWtBYGtPa8NPFi4LsBX6ucaIBhWzYFh9FyCMkEGfVsGYesb4H0JeCcTe1zaBpoJW41nwBgktkblz3x/jURTh3qZkeFfhp6geJZCAgfYyd+X+vi1xCoNXkjkgaMsZerT3CMcKow3a04wbpTGdDm9uznhVkYi7CacB+efqKqQ5eDsA82cKGS5at6XH7NRi0bGiCz5/Jac9Dxafy+1n9AeoikiaB+CKNZ6ojmq/M0oeShI+34lG0Te23mcBHEcryBj1QtAIYKPEI0N+GRaaqn6XYt2uyN7abir1CBxwrWI7mAcBIbAmRIY++fD/xwHDMz6m7wBrKt+wxZsBkMFkJH51rq1BzDP7Q7Qf7qgS6yoMM4T0rj/sUBGtN0xmh19KB0M7QMLf9u8xxQKvpHy0tPhUaR+gnZ5SIGHJ6wmZMe5hznn/WHTZlDFP+GJi7KQ=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR08MB9158.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(376002)(39850400004)(396003)(136003)(346002)(451199018)(2906002)(36916002)(41300700001)(8676002)(66556008)(36756003)(478600001)(66476007)(316002)(86362001)(66946007)(31696002)(110136005)(38100700002)(6486002)(5660300002)(44832011)(53546011)(6506007)(6512007)(26005)(2616005)(31686004)(186003)(8936002)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?cHVJVGphUVZRYU45Ty9Nb0R4YlhPZHJrRzBjcDZRUWVYK20zbnBhOVp0czZy?=
 =?utf-8?B?Njhrd2NWTHFhSno5S2VwdEdrTnlQNWIwcUdJN3pmWG1OMWt3TFptWnFrOUR6?=
 =?utf-8?B?OTFabzUyTlAzSE1CajYxOWhYN1JYeFZuNUZ0amFQa2QzVXpBKzdDVDJ4NmE5?=
 =?utf-8?B?QStWMmw4cGU0YnZaV1JGQllMZ0I5WHptemNGaGJKRThLeUNvcE5ZbkJpRnhC?=
 =?utf-8?B?amlxOVRtam4zRUx5VWQ0VWtkZElBVnR6MFVXb1NCRWI0TzNoL0JOMnVDWlF4?=
 =?utf-8?B?WStkbllGK0pxRUNnVldablBVVmV5bXRaNWNuaVZ4RlRlVmlHQnh4WkVxTjJj?=
 =?utf-8?B?WVpEUXRCNmxNbU1Ib3hab3JFV2NPNVh4LzhlcnpXS1Z6YWlIRDNlcnpnZ2lp?=
 =?utf-8?B?cml4ZHFpSXhQWlowSXNnNERScWlFS1hmREZZOWtzS1V1Uko1SGZ3YjdFRG04?=
 =?utf-8?B?NHA3ZFVtYzIwcVMrRzRUNlp2SXI4QUZzQTZIMjRPSnQ0RXlVdllFOXhWd1BN?=
 =?utf-8?B?UmpEclh1OEtVSlpTaXdxcGp1aFRLR0xzOGtoM1NLbTBhUUVqR1k5NG1OUnFl?=
 =?utf-8?B?T2pmeFZlV0x1VW8vNVB2NDJrUEIvUkJuVTM0RTVWMUQ4MnE0UFh1U3A4V3JO?=
 =?utf-8?B?em83U1lMbmtzYlVTb3hkLy9MZEJYRW1wZ1dGb1g5T3lGTTdGakFwZGw3elJm?=
 =?utf-8?B?SmtwSDVRSjVaQjlUZ2FXWkU5NlBuV01YQmxXTElqa0pGd0Q0djZqRW1XM09t?=
 =?utf-8?B?eG04ejloS2E4Q3l2UHJoemdsUDdzOTk5eEFtRHhsTWE3Mk1DNWp4TlNidTJa?=
 =?utf-8?B?M21KZnMrUTB6UnJnNFhZMlRVYnJXaGRLRkZsUFZCWFE5alV4VVpMWHZXdFFO?=
 =?utf-8?B?YjhubXRIUm5xTWRvV1UycUhydUFXdmE1aklzOEhNcnFtVHA5TVRXU1R0TGNQ?=
 =?utf-8?B?eW1wU05MS3BCKzN4dEx4ZmFSSytzTGNHcjQwSnNJY1lFMUUxZFhMR24rTzNW?=
 =?utf-8?B?TDcrdGUrUjU4MFFjNTk4alMxN0hVQTg2V3l6SndrUVYvaEVxV3JaeE90SWNy?=
 =?utf-8?B?M2VJTGd6aXNQbElNdkJUQ3JCNzA4Ujg2VjBQRjBWZjFiUHduZmVHS2hNcHZU?=
 =?utf-8?B?QkdZYnk0Rk5FNk13OW9jbE8zUTI5R0tnS3RYcWZKanpwR0trVWxKbHczMUhl?=
 =?utf-8?B?LzJYRThzS0IxK3ROYXMzcHhFY1FpZWVScEZrKzhPUDVwOXJxSTBjdW15SFB6?=
 =?utf-8?B?WTgzMFpKZUlvSGJ3QmVmRkpkMlhqRVBMa0UrdnJVbEpFcTF1eGZnWFB1LzhO?=
 =?utf-8?B?SHVDUXZia2FMbjBzOWdhdWVyVHZYWHV4RCtrWEhJTUtybFFGY0pTWU5WNWg5?=
 =?utf-8?B?amlCaFp5T1A4L2JYdGVGcUxrU1lPRVpaZGlmYXlmOG9GYU1HcXpzVlpwVkpj?=
 =?utf-8?B?enFJaTBkc3RQK2grS2dQajJURVZWNGtPMGJuNUM1Zk9GaWRZTXBORkU1QzA3?=
 =?utf-8?B?ajkrQkFFZERyZUxGUExsWm0wQzR0OEk1UVhNdHhndEVLaERIQmQrR2FqVjFR?=
 =?utf-8?B?c3FKZlFLT3N5UXlkZGVYemw0bGlreTRqa1V5MmVNb2NLVWJnSXNSUFg0cmlF?=
 =?utf-8?B?TUxiMTBrM01pOUMrcmlTTTdHR3FGSDF2U0pKVUkxcldLc0p0UDJFc2ZoMEI0?=
 =?utf-8?B?aXcySFNldDhhTkxmaTJmbmpsQjBFK3NCcUJoVUdoUXpYeENudXJwTUN1ckt3?=
 =?utf-8?B?QWVvV1Fqa285ZGF2UEIrUjB3T0Vkdk5POUFWSFdSUXNJZExVd1gvNkNoWmZo?=
 =?utf-8?B?WDFldnpMU3E0bnBPY2lHRWtLSmo1TzhRSnR3OUtWUVN3OG1Uc2VQb2pwR3M5?=
 =?utf-8?B?VmFFUFdOWkJhN1FMWXlzajBseVBxZktWV3NLTTd1MFB6bUw2VUVEbUZDQ0RY?=
 =?utf-8?B?UzlrSjFHb3Bxb3lXM0k0WFhYQ2hkVkNNQzVEaFd6SzVYdnIzc0JKWWlRd1FN?=
 =?utf-8?B?OXY1WkJmMm1VS1RpZEp2YXlZWGRNcklFTHlyVlkwUmV4d2pObjJBYXpNWnBv?=
 =?utf-8?B?ZmtoeElvWVlFcHN6YXN2eU9LNUxPTG8zQ3k4aHJlT083S2NMeEVyQmo5V1px?=
 =?utf-8?B?SVdXUmRDREpQSG1EcWlBTlB3cGR4bTZPeS9pT0ZvaWMwR1Q1TGp3S2JkRFNa?=
 =?utf-8?Q?GrhjpwwB1CEDnwzfA/RScgo=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 19b6b942-a0be-48d6-32ee-08db249cb737
X-MS-Exchange-CrossTenant-AuthSource: GV2PR08MB9158.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 14:59:31.1653
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C44foFM9ErCnBYbOAeoH9iQpLvwIQWH/OyD3gpeGgsdWMijxGaQJtKr+fWtNnwnQxAvFItFsUgMapUxAAhkpmyBf748Sz5j5D93yWaTkTFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_075937_776805_0CD2CF83 
X-CRM114-Status: GOOD (  21.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 7/7] of_overlay: Add option to apply overlay to live
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 3/10/23 10:42, Sascha Hauer wrote:
> The of_overlay command currently only supports applying overlays to the
> Linux device tree. Add an option to apply an overlay to the live tree.
> Using this option will apply the overlay and also triggers rescanning
> the device tree in case new devices have been added.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/of_overlay.c | 38 ++++++++++++++++++++++++++++++++++----
>  1 file changed, 34 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/of_overlay.c b/commands/of_overlay.c
> index b3660b4bf1..1d68e31ef2 100644
> --- a/commands/of_overlay.c
> +++ b/commands/of_overlay.c
> @@ -17,10 +17,20 @@ static int do_of_overlay(int argc, char *argv[])
>  	struct fdt_header *fdt;
>  	struct device_node *overlay;
>  	size_t size;
> +	bool live_tree = false;
> +	int opt;
>  
> -	if (argc != 2)
> +	if (argc < 2)
>  		return COMMAND_ERROR_USAGE;
>  
> +	while ((opt = getopt(argc, argv, "l")) > 0) {
> +		switch (opt) {
> +		case 'l':
> +			live_tree = true;
> +			break;
> +		}
> +	}
> +
>  	fdt = read_file(argv[optind], &size);

of course this is not the intended usage, but "of_overlay -l" (i.e.,
skipping the overlay argument) throws an exception.

>  	if (!fdt) {
>  		printf("cannot read %s\n", argv[optind]);
> @@ -32,7 +42,14 @@ static int do_of_overlay(int argc, char *argv[])
>  	if (IS_ERR(overlay))
>  		return PTR_ERR(overlay);
>  
> -	ret = of_register_overlay(overlay);
> +	if (live_tree) {
> +		ret = of_overlay_apply_tree(of_get_root_node(), overlay);

If I pass a meaningful argument ("of_overlay -l path_to_my_overlay"), I get

ERROR: of_resolver: __symbols__ missing from base devicetree
cannot apply oftree overlay: Invalid argument
of_overlay: Invalid argument

in return. The base device tree does not contain any __symbols__
sections indeed. How can I activate the generation of this section?

Thanks and regards,
Michael

> +		if (!ret)
> +			ret = of_probe();
> +	} else {
> +		ret = of_register_overlay(overlay);
> +	}
> +
>  	if (ret) {
>  		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
>  		goto err;
> @@ -45,9 +62,22 @@ err:
>  	return ret;
>  }
>  
> +BAREBOX_CMD_HELP_START(of_overlay)
> +BAREBOX_CMD_HELP_TEXT("Register a device tree overlay file (dtbo) with barebox.")
> +BAREBOX_CMD_HELP_TEXT("By default the overlay is registered as a fixup and the")
> +BAREBOX_CMD_HELP_TEXT("overlay will then be applied to the Linux device tree.")
> +BAREBOX_CMD_HELP_TEXT("With -l given the overlay is applied to the barebox live")
> +BAREBOX_CMD_HELP_TEXT("tree instead. This involves probing new devices added in")
> +BAREBOX_CMD_HELP_TEXT("the overlay file.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-l", "apply to barebox live tree")
> +BAREBOX_CMD_HELP_END
> +
>  BAREBOX_CMD_START(of_overlay)
>  	.cmd = do_of_overlay,
> -	BAREBOX_CMD_DESC("register device tree overlay as fixup")
> -	BAREBOX_CMD_OPTS("FILE")
> +	BAREBOX_CMD_DESC("register device tree overlay")
> +	BAREBOX_CMD_OPTS("[-l] FILE")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> +	BAREBOX_CMD_HELP(cmd_of_overlay_help)
>  BAREBOX_CMD_END


