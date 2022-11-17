Delivery-date: Thu, 17 Nov 2022 08:30:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ovZLW-00A2gL-Ol
	for lore@lore.pengutronix.de; Thu, 17 Nov 2022 08:30:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ovZLU-0007WI-TR
	for lore@pengutronix.de; Thu, 17 Nov 2022 08:30:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CA2PZmdMUSOT7SX9xQk6m8Ftxa0u9FQuwmJf61v4Xv0=; b=EeP60gNDW08Fat3fOQ3sh6MAqH
	DwB19Gfhz2KN8+edCLX3ADfQbRvrmeW6/9nDeS99m4yMDnZob09+H9GvFkxpOh0htFRb3beyeIyCX
	UbVZCY1/uT3xqTk1KpbLTegQPDkn/XdoyFLRn1k5x98W187TWJH9aeIgEwrDZiL/r62CfC2O1unaw
	zOAnsXG+85avmxDyCG6ChYt/hplWxEundEGpn+lq9GvOxTGTL88+tWeYXO40keVO80935J4wdmLzn
	2bXLY7c2sybrZI7a48m6ep1mnsynKbm/3nlFPBz29frUkg+p+7R8bh0KhBU3BHhHGs00xrLbuMceH
	2geWpYkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovZHq-00BEkg-UC; Thu, 17 Nov 2022 07:26:15 +0000
Received: from mail-db3eur04on062a.outbound.protection.outlook.com ([2a01:111:f400:fe0c::62a] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovZHl-00BEio-M6
	for barebox@lists.infradead.org; Thu, 17 Nov 2022 07:26:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfkvrGvIGOOPVtaDq+aa9uB4wW+LJ0VmaQ6H9zMmLp5viA1bsvh+hHbGPc7znSL66d/t5lvxsVTFySK0FrHC+CjZ/JT5bMyi/baymlCqGbEqZbUmr4tofXElJq0CtqQUYHsZhbXPHGAKquzcYCm43vpuIiltZJhRj68NrpeWY4bm9aCTEH4nhblRncIZ9P86GzzHQ5vG5/qTb9k37ndIFeuaEEp47c2G1NZvBuY7BQHmxZiUCSkiawKgsF18GZPEDYeGTcNQZ2o6xFDnm/TEZneX+faDnpCsafHvB9K5Ra8TXs3gw+/JbogWzHT+s1xVP2N1jND4LKOTBQ2p5smnvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CA2PZmdMUSOT7SX9xQk6m8Ftxa0u9FQuwmJf61v4Xv0=;
 b=BFmtFMQC4PsFbloK+NOLVp3oepm5Cr3I2ebctS7ctptVJ2c6kPvxyZ5LLFpjwv3A9nXIZB56gJH/f37XmOKesh9mEZ4zU0cc1knhyE7B6IMBdSfDYi8H+1A7BE1wI56YyxV2ZfI2hjVHRZ7b2osK0IEiXEvjnDjnLT2fpUGVJ9mTUaa/jm0zRIU55Z6ilhAdv8jk2MPGxPYjXSyVFVbrXoTIYmNbdGoztl59Zl36GtP6ZYiCwNcgRg/jop1+HCBhPrUxb2nfVxgrHO7DH6F8+aEb8KJ/exl4fcSa3Mjdd6JeSBPxPwdJP7f7LsTUTwzTRZxEGqA5xOqF6WrYAttjGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CA2PZmdMUSOT7SX9xQk6m8Ftxa0u9FQuwmJf61v4Xv0=;
 b=H3GAvvQ2YZxSaeUgJ0viG1Eqqj3n+RoEQzWF/p/+DHu0MsExeTqczdkX0T311NGNdJ1XYztxVSq+twNrBcWD5/u8n4SP99topyEho+OkK2Om4d0kv+2kZR2E8R0E6Yc6Q+0ImCyo+Qj81MNGwPEHfugjYlwHhBHq31MCIpBF1OM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM9PR08MB5938.eurprd08.prod.outlook.com (2603:10a6:20b:2da::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Thu, 17 Nov
 2022 07:26:02 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637%2]) with mapi id 15.20.5834.007; Thu, 17 Nov 2022
 07:26:02 +0000
Message-ID: <52d826a4-4b41-fcc3-0482-44763d8833aa@wolfvision.net>
Date: Thu, 17 Nov 2022 08:25:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
 <20220724190006.2160802-6-a.fatoum@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20220724190006.2160802-6-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0258.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::25) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM9PR08MB5938:EE_
X-MS-Office365-Filtering-Correlation-Id: 989c6764-3cbc-4235-cdb3-08dac86cfb19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	e1CXRjIaAuLVrRlqUZVmxkKyuWGDyCYGPvNR+qWX3R6PpARRWl8kFEbB/hi4+zFLwuSK8uXDY6epJLNv9gnuNcW3wSxUrTG1ywm5yhUnl+4qUQ78T3ckOW4wmS2oWSHXinFFjMYtV7iz7aSxPRVRbCTRvX85plzTaWrydjWsWrrdfr2KfVsVInlO6yb4QZrbmS6VADDf4QbxwtSH4kTF+ugjvYVn+0LDTx1BSBMx/+D9r9oUCoRaqt8qNxNWboaxlH6Wz8Z0/B4q6zShKESKLf6cx5ovd/GExdc0NymzuAW+UzsrPR2dPuAo5MvPvuWfTtiPKR4ZQ+su62NUEpAGm1v0pHqU6vE3pHlvX7jBxjZ/j5/UYnWy2VwJnKSk70ShAqEUspaDPPFyXoBuN/vrdqSo9vHaPOIM4d4hh0DfhPoQwrX68ESEfRc13DGIuEAaKw5lAjgeYCCthpcPN+L919BLtP/AOsh1Dav314kCP/Qaqil/AHTYAxPoNCHZPVeluE2vveBExf4mq8XiOIFo5uZVtPpCejM+VABZXKhzPgfYjMcObuZUnyIC7HhTqc178+p7nkd3ZdnXA6luwM0ZamxEuecRJPNlERgWEl4cCOsCez8Kbzv36K0RafkNE49F9X/Rp9bfHjNpZDuo4Rd9TL15BEKp9P41siTEEOqCrQC6OOCN3PkBUWu1+hlanQJg0cJ8GkBx+DDUXyOZGFeFoJKLxTBLIdsiGB3BlkLfL7kkZnQWRWDpE678Xn/vaKtz
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(376002)(39850400004)(366004)(396003)(451199015)(53546011)(52116002)(6506007)(6512007)(6666004)(44832011)(26005)(8676002)(66476007)(8936002)(66946007)(66556008)(38100700002)(36756003)(5660300002)(186003)(2616005)(41300700001)(38350700002)(478600001)(36916002)(6486002)(86362001)(31696002)(316002)(31686004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?RVJOZHBsMXd4WWl4TWNZR3M0RHVOdzNPS28yN0JVbG80ei9lV1M4ZXNDSXhp?=
 =?utf-8?B?VHFBSnZ2bDdXQi9uc3NUTjJEVXZ6WWkra21yL2ZuaS9JaHFGMlhJRlJsbnNv?=
 =?utf-8?B?Rkk1bFoyUnNCY0ZKV1lUVDQvT1d4Wk9vYjFrMXZZUjBlUThlWnNmM1ltZ3Br?=
 =?utf-8?B?aTh3SkNIL0V6Y01HVXAxS1JFOUJYYlJYalRJTFVIYTNTV1BxYVlVdnJ5Mnlp?=
 =?utf-8?B?SVVaNjFkSS9IcWFzSWl3ZHZRZzlzalg0YnNqM000TEc3b0ZPcTh3UnJVV2Zy?=
 =?utf-8?B?ZWNzK2dwQUlrVm1sT2lhUmtyVkc5K1pVU3hiekdUb1RGYlpCL0VSanJlS2JI?=
 =?utf-8?B?NHFwUlg2eWx2WWN0a29mVVhWWmE0SnNTN0hYMDQxd24zYUQrZmpVVDlOc05z?=
 =?utf-8?B?VDNDWWNtM1E3RGxzTno0Z215SVJSelg4SnFEa0kvczNKd0dyVXdWMzdwVmVN?=
 =?utf-8?B?ekp3Umh4d3dUSXEwdFkrb0V6aDVzaElwTjMyc1l3ZlhrZWpmdUVhajFuWVBD?=
 =?utf-8?B?MjdaNGZseml5ZGtRVVZsdEcvemhTeEFmSW95Uy9FNHJmYTlVVCs5Um1tRmw5?=
 =?utf-8?B?eFlXS0kzYkpGTEo0Ynh6VUM1Rmh2L1U4QUxXeUpLK0haY082SE1vZ0xRZXJ3?=
 =?utf-8?B?ZkpDaWlOTndOOCtTU05TeVlBc3A4MlJhU3hVdlcxY0s1dWRFeEV1MGdHNDQx?=
 =?utf-8?B?am5UeEE0TENOTWd2RTdhNTF3YXZVM1RUdU1GU1JSMEF4Sy92dEtpNER1ajBn?=
 =?utf-8?B?NDB3cEw5Q21VeTJLSjM0ckxnVExndVovMjY2Y0hiNmhCZzNYWC9HZ0VQdHFm?=
 =?utf-8?B?MXQ5cFFzWDcxS2VmRUswZDVzZmd6NzdVSkR2M2U2eElXOEJ1cFJad3hCdkc1?=
 =?utf-8?B?WjVuRG5PaDNkOHdKc0dtR0VleEdkZWQyWEN4UFd1RGVGSnlBblhMMzRCYzJW?=
 =?utf-8?B?TGtRUDBlcWcvTDAvL1cvclN4T1BKdUJ2SzZocklFVHJNa0daOU0rQXJNVWd5?=
 =?utf-8?B?QnFXUlVYNjNHb01TWjQ1a1NvWnZGYnRCYUtsWlh6azllWE5MQzFuRy9BYTEv?=
 =?utf-8?B?cjJnQTB0WEZqdGJOcFZJSTdsTDd2Q0tSL2lpdWZwOVNQR25CKzFOM29UVW00?=
 =?utf-8?B?N1JWTm1PMTZCZ2ZwaFMrWmRKeEZWTzVBOFB1OGQrdEROVGVjT1laRzVaRkZ5?=
 =?utf-8?B?cFpXUmxIb2NVTGlDbk1UUG9YTGJhR0JPNVh2UnZpUnNLc2xOS2xNL0xia1hO?=
 =?utf-8?B?R05RRkU4YUd5dnUyOTBTNjlFNnZUUmUxcG55OTFxNVg5V1MwdmpzT3c2TWsz?=
 =?utf-8?B?VWFaSyt2eERjeEZlWThTaHFIeHFSeWIwR3VFUGpPUnhTK21nMmUza3hPS1hZ?=
 =?utf-8?B?TERBa3pNZlhkbHhzM3lGY3BieEtrVkplU1VYRHArc3dPaC9uOFBaUjRNckZm?=
 =?utf-8?B?Sm5ILzJYRkM1QjlMRUMrT2g5NFp5K3ZtakhHd3BCYnMvbG90TThZWjVsQTBL?=
 =?utf-8?B?R2hnYnZEUW5LSXcxNGRxOG9RQ1BsZmI1RjNpL3JnUG82NEkwdlduTlF3QXZE?=
 =?utf-8?B?WlJNSzZEUXhoSG1NWGZka1RsZzBFdmtHdGU0ZWNFQlF0amtxZlQwelRGL2ts?=
 =?utf-8?B?TnhvUkd2MU1HNWh1eGZFMHJVQUxmR1ZNd0NGRTlEeC8wV0F3QytFRnh0dU9y?=
 =?utf-8?B?U3RMZ25BZlBZblh4RjJJWjY0OENGd09mem1ONW4ya21MMFJDeWIzSnJib3Fw?=
 =?utf-8?B?dTFlaktJOFA2bjlVTXJEZ2hudklRM1daWEJnRWxjK05MUHU4VEp4MlFBZ0dB?=
 =?utf-8?B?eXp5NFoyUTRYVms5Ni9kNGx5VU9VUHlaT09CWEozWkwxSFk2dDBrTVRzVlp6?=
 =?utf-8?B?cEVEV041TGVZcXlCN0ZlWFJqMEJzYXFBdVhIdTZCZDRIT2d6NU5kS1JUWjc5?=
 =?utf-8?B?NGQxZG01Qk5xTjFjYm43bFlOTEJTbURqeG5LakFxSEllRkE5bnVsQ2ZZd05H?=
 =?utf-8?B?RE9mQWF4MjZSZGdMQTJoZjFMQnFaMFdQNEZFSUpuUzhHUVZMRWdhRDdweGtn?=
 =?utf-8?B?STdkMVIrc2lac2FnOXl5YW91V1hUOWxZVnRreDM4Mmh4NndsWWpNOHh2YlVO?=
 =?utf-8?B?Y0daN2E1bUExMlM3eEMwWkNDb1ZjQnZBbGtoTWJxWHpNbElhbm4rdjg5Zzk0?=
 =?utf-8?B?dXc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 989c6764-3cbc-4235-cdb3-08dac86cfb19
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 07:26:02.2235
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lb38p1bsYafDtICn2kC/3pDrRRPmv344kP4ZVpyofSzsGZ9/Qf3GZTCo8hCHXud7uu4G7g2uamxDG1ny4uetdfm3yV2OjVulVsoFFEBCadQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB5938
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_232610_110838_B9FB0082 
X-CRM114-Status: GOOD (  13.97  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 6/6] regulator: add Rockchip rk808 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

I was tracking down some strange behavior and found something:

On 7/24/22 21:00, Ahmad Fatoum wrote:
> [...]
> +static struct rk_regulator_cfg rk809_reg[] = {
> +	{{
> +		/* .name = "DCDC_REG1", */
> +		.supply_name = "vcc1",
> +		.ops = &rk817_buck_ops_range,
> +		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
> +		.linear_ranges = rk817_buck1_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
> +		.vsel_reg = RK817_BUCK1_ON_VSEL_REG,
> +		.vsel_mask = RK817_BUCK_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(0),
> +		.enable_mask = ENABLE_MASK(RK817_ID_DCDC1),
> +		.enable_val = ENABLE_MASK(RK817_ID_DCDC1),
> +		.disable_val = DISABLE_VAL(RK817_ID_DCDC1),
> +	}}, {{
> +		/* .name = "DCDC_REG2", */
> +		.supply_name = "vcc2",
> +		.ops = &rk817_buck_ops_range,
> +		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
> +		.linear_ranges = rk817_buck1_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
> +		.vsel_reg = RK817_BUCK2_ON_VSEL_REG,
> +		.vsel_mask = RK817_BUCK_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(0),
> +		.enable_mask = ENABLE_MASK(RK817_ID_DCDC2),
> +		.enable_val = ENABLE_MASK(RK817_ID_DCDC2),
> +		.disable_val = DISABLE_VAL(RK817_ID_DCDC2),
> +	}}, {{
> +		/* .name = "DCDC_REG3", */
> +		.supply_name = "vcc3",
> +		.ops = &rk817_buck_ops_range,
> +		.n_voltages = RK817_BUCK1_SEL_CNT + 1,
> +		.linear_ranges = rk817_buck1_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
> +		.vsel_reg = RK817_BUCK3_ON_VSEL_REG,
> +		.vsel_mask = RK817_BUCK_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(0),
> +		.enable_mask = ENABLE_MASK(RK817_ID_DCDC3),
> +		.enable_val = ENABLE_MASK(RK817_ID_DCDC3),
> +		.disable_val = DISABLE_VAL(RK817_ID_DCDC3),
> +	}}, {{
> +		/* .name = "DCDC_REG4", */
> +		.supply_name = "vcc4",
> +		.ops = &rk817_buck_ops_range,
> +		.n_voltages = RK817_BUCK3_SEL_CNT + 1,
> +		.linear_ranges = rk817_buck3_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk817_buck3_voltage_ranges),
> +		.vsel_reg = RK817_BUCK4_ON_VSEL_REG,
> +		.vsel_mask = RK817_BUCK_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(0),
> +		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
> +		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
> +		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
> +	}}, {{
> +		/* .name = "DCDC_REG5", */
> +		.supply_name = "vcc9",
> +		.ops = &rk809_buck5_ops_range,
> +		.n_voltages = RK809_BUCK5_SEL_CNT,
> +		.linear_ranges = rk809_buck5_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
> +		.vsel_reg = RK809_BUCK5_CONFIG(0),
> +		.vsel_mask = RK809_BUCK5_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(3),
> +		.enable_mask = ENABLE_MASK(1),
> +		.enable_val = ENABLE_MASK(1),
> +		.disable_val = DISABLE_VAL(1),
> +	}},

The RK809 features an additional BUCK converter (DCDC_REG5), here on
index 4 of the array...

> +	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(1), ENABLE_MASK(0),
> +		   DISABLE_VAL(0), 400),
> +	RK817_DESC(/* "LDO_REG2", */ "vcc5", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(1), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(1), ENABLE_MASK(1),
> +		   DISABLE_VAL(1), 400),
> +	RK817_DESC(/* "LDO_REG3", */ "vcc5", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(2), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(1), ENABLE_MASK(2),
> +		   DISABLE_VAL(2), 400),
> +	RK817_DESC(/* "LDO_REG4", */ "vcc6", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(3), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(1), ENABLE_MASK(3),
> +		   DISABLE_VAL(3), 400),
> +	RK817_DESC(/* "LDO_REG5", */ "vcc6", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(4), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(2), ENABLE_MASK(0),
> +		   DISABLE_VAL(0), 400),
> +	RK817_DESC(/* "LDO_REG6", */ "vcc6", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(5), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(2), ENABLE_MASK(1),
> +		   DISABLE_VAL(1), 400),
> +	RK817_DESC(/* "LDO_REG7", */ "vcc7", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(6), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(2), ENABLE_MASK(2),
> +		   DISABLE_VAL(2), 400),
> +	RK817_DESC(/* "LDO_REG8", */ "vcc7", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(7), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(2), ENABLE_MASK(3),
> +		   DISABLE_VAL(3), 400),
> +	RK817_DESC(/* "LDO_REG9", */ "vcc7", 600, 3400, 25,
> +		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
> +		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
> +		   DISABLE_VAL(0), 400),
> +	RK817_DESC_SWITCH(/* "SWITCH_REG1", */ "vcc9",
> +			  RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
> +	RK817_DESC_SWITCH(/* "SWITCH_REG2", */ "vcc8",
> +			  RK817_POWER_EN_REG(3), ENABLE_MASK(3), DISABLE_VAL(3)),
> +};
> +static_assert(ARRAY_SIZE(rk809_reg) == RK809_NUM_REGULATORS);
> [...]
> +static struct of_regulator_match rk809_reg_matches[] = {
> +	MATCH(809, DCDC_REG1, DCDC1),
> +	MATCH(809, DCDC_REG2, DCDC2),
> +	MATCH(809, DCDC_REG3, DCDC3),
> +	MATCH(809, DCDC_REG4, DCDC4),
> +	MATCH(809, LDO_REG1, LDO1),
> +	MATCH(809, LDO_REG2, LDO2),
> +	MATCH(809, LDO_REG3, LDO3),
> +	MATCH(809, LDO_REG4, LDO4),
> +	MATCH(809, LDO_REG5, LDO5),
> +	MATCH(809, LDO_REG6, LDO6),
> +	MATCH(809, LDO_REG7, LDO7),
> +	MATCH(809, LDO_REG8, LDO8),
> +	MATCH(809, LDO_REG9, LDO9),
> +	MATCH(809, DCDC_REG5, DCDC5),

Here, BUCK 5 is at index 13...

> +	MATCH(809, SWITCH_REG1, SW1),
> +	MATCH(809, SWITCH_REG2, SW2),
> +};
> +static_assert(ARRAY_SIZE(rk809_reg_matches) == RK809_NUM_REGULATORS);
> [...]
> +static int rk808_regulator_probe(struct device_d *dev)
> +{
> +	struct rk808 *rk808 = dev->parent->priv;
> +	struct rk_regulator_cfg *regulators;
> +	struct of_regulator_match *matches;
> +	int ret, i, nregulators;
> +
> +	switch (rk808->variant) {
> +	case RK805_ID:
> +		regulators = rk805_reg;
> +		matches = rk805_reg_matches;
> +		nregulators = RK805_NUM_REGULATORS;
> +		break;
> +	case RK808_ID:
> +		regulators = rk808_reg;
> +		matches = rk808_reg_matches;
> +		nregulators = RK809_NUM_REGULATORS;
> +		break;
> +	case RK809_ID:
> +		regulators = rk809_reg;
> +		matches = rk809_reg_matches;
> +		nregulators = RK809_NUM_REGULATORS;
> +		break;
> +	case RK817_ID:
> +		regulators = rk817_reg;
> +		matches = rk817_reg_matches;
> +		nregulators = RK817_NUM_REGULATORS;
> +		break;
> +	case RK818_ID:
> +		regulators = rk818_reg;
> +		matches = rk818_reg_matches;
> +		nregulators = RK818_NUM_REGULATORS;
> +		break;
> +	default:
> +		dev_err(dev, "unsupported RK8XX ID %lu\n", rk808->variant);
> +		return -EINVAL;
> +	}
> +
> +	ret = rk808_regulator_dt_parse(&rk808->i2c->dev, matches, nregulators);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Instantiate the regulators */
> +	for (i = 0; i < nregulators; i++) {
> +		ret = rk808_regulator_register(rk808, i, &matches[i],
> +					       &regulators[i]);

... but here it a 1:1 mapping between matches and regulators is assumed.
In technical terms, board go brzzz.

I moved the DCDC_REG5 regulator description to index 13 for a quick fix.
If this is the desired solution, I can spin a patch. What do you think?

Best regards,
Michael

> [...]


