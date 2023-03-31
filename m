Delivery-date: Fri, 31 Mar 2023 17:44:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piGvc-004OlQ-TP
	for lore@lore.pengutronix.de; Fri, 31 Mar 2023 17:44:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piGvc-0005Ko-1d
	for lore@pengutronix.de; Fri, 31 Mar 2023 17:44:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B1yEhJ5GcKVnVMJOIPgGnnSZZ8ONGJPQKBvxBoFnxqI=; b=CxCudsYrQGWwAgOqGDZ/T6nJYK
	ruojY7f8p7kytVBrG7MWT8k6v5yC0M+i7+J1butkI/lTWQkLsB+KU+DARkAOGWvLtrU3M30As6s4A
	I99RDjMUS0zcELOzGzFx0Yw9Qn9VPgOLrpXrgxhIBjajnaeoqFrPIL95jKFv/umPtgwDxmUxcuNbF
	3MG+Upu5SlwxLsdSsEDLuEzd+41S78qPIi+PEtftjMpYnznC/pP+Fj7BuTblQd0ThMo5pG1q6G35o
	6peegQGqxLzdLEQ6yYjGTkaUlG/cfU9Ox8gx5dvh3VOMTC5FLkfj8smaeHv6gyRirV0mWc7vb92eG
	nlhVjJWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piGuB-007xWI-1d;
	Fri, 31 Mar 2023 15:43:07 +0000
Received: from mail-db3eur04on0606.outbound.protection.outlook.com ([2a01:111:f400:fe0c::606] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piGu7-007xUA-0d
	for barebox@lists.infradead.org;
	Fri, 31 Mar 2023 15:43:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JqEGMxeRQn5X3IiWrMzcFHYzWy72tbPawxCr0unI7a/U5+RHxVjSgbGFDCaj879JobX9pEW/fEw8ezxVvH7FOmYQjlc+mSUJ7nxIPRpj4YkNKijYyDvWIv92dHR9h9taRHe8It8L9BCTxWTh3ZAYSZjVr6CpvTQR2ARti2afJl6lwSU+KTkd1JBhIJNTGIWPRc82OQilINqvjor63S7XXIvHOSrMUpvHDvNpPX+8Xh4Q8GAxOPNJGKPhmGbFp2ABbqnxHZnS2wwzu/PxhzILwUS3RJk94feS3OpbVvFcXAwNdK5eunOUjjaE7Ps57piNkLm96Qu8XujlLmfJ/cyEoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1yEhJ5GcKVnVMJOIPgGnnSZZ8ONGJPQKBvxBoFnxqI=;
 b=flxLF/HDJy1x2QpIFHUBHdEQlzzfCtjUCHA3lZOjgj1L5YR9CBn5vTpkaK7yPyIF3Hg1SdsyyWDH4j0coWpqntmCfHuIctWw88rNdM87mF4FiBz7C6wjAfrDXmoxpqqghxCAw0s6V+Ut1cNM621Oo/eEHKxiuUSbk7yVluI6uBEJo5x6fqxfOscVPLeVFLYZkKxe5c3NUB8gCVJtqMNsA3+keoKP8En8f6JsIF+kcrio2JdSZrvMX97bckpPveevWf4n9PWOCyAz1FzKeeBWCvzvNWxh23AuIn/2Ma2Ra2oGUKOpYQGZkHILsCaw3EdOXTPgrqbzdY2EXQQexyNkpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1yEhJ5GcKVnVMJOIPgGnnSZZ8ONGJPQKBvxBoFnxqI=;
 b=glzx8qbkxKrIL03/NRW7kbYFpEs8RA/5+mULzWTtO6jjBjexZXv2H0DFKDbmEGbofzVRC/Hp8e5b7zhop5AlyaI2v29OQp0TVNlPirwKPloNIoPPJ9Yaeg0pkQN9i+wnfOx7aC7H9h6sDdtlWd72c/jqo3rjO+QEzetkWWyESaU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB8994.eurprd08.prod.outlook.com (2603:10a6:20b:5b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Fri, 31 Mar
 2023 15:42:56 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%5]) with mapi id 15.20.6222.033; Fri, 31 Mar 2023
 15:42:56 +0000
Message-ID: <2b65b588-aa9c-b6c7-a020-807ccea5dc58@wolfvision.net>
Date: Fri, 31 Mar 2023 17:42:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20230328074037.1202993-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::24) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB8994:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ab68368-1d08-4058-e7f7-08db31fe98db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	NDxWvoXlvd4o/9GwZIlABRBLAFM229QDB/XuvFLOtGyuzHx1mJNjRK52hqV6UQz4IEM8VtzD+RrifZRjvC8Q27QFWD0aSUo0YP5dHSg+eTJWmzdTw/w7BkDCEIDCQFKuWi5XVvFOql2hTun2rHRvuA5zKkmbaNi6iNzk79a8GBWEIRCpPiOeHA5uuZThkacSBjaBTvOzOjZZ9J9ItFtZqNPZVBp9csEVhxc94eDJWYQyn7poA8YeQNguwV5msjA5CPwv7aI4uNKuJmyphNTh5Y+zlNHgAmW61//lsl/g/2A6vMbQAj7hDSDCO4AifpfFKx4MD0Zu2kKVIrov5Xd7Co1nJ+W/ckCd2PPsqN8miwNfsC6CUStjtfFYeilqHVeo0Q+T9bj/jSDdvvABsTJSrXWVinisn7ZbUcoxlqKlabQALOfDtkPTRLdJdh4WTUu3yXBl2SHbO/E2oGth+AMRHop4C5qYCm+vkr3ZO+zw73tTqVQTrywjeUWsit/II5s6bsorlvvxEFfk2Crc+fj/dIKBS0ZOlf+r4Jo8jPsbko5Sw/UScXeu8TR0L7mU35uUiSfDF0zONlB/iGP80joDmWI8qBCGi4qOv2OZtav3tf+Lsp3CVvbXTvrjFiOLX7FY35yAJRgBtzm/GCgWFeut/A==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(366004)(396003)(376002)(39850400004)(346002)(451199021)(31696002)(86362001)(36756003)(31686004)(53546011)(5660300002)(2616005)(83380400001)(6506007)(6512007)(44832011)(8936002)(186003)(41300700001)(6486002)(6916009)(2906002)(66556008)(8676002)(478600001)(38100700002)(66946007)(66476007)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?Zm9uaUVtbHhjY1Q2TXNYQ29hOTdQVm5WUFpmNTg5eEY1VVhpWktyK1U0UTFH?=
 =?utf-8?B?R3dVUEtIWnJSUzJUQkpxRkZvTkM1cVVCZFpvSlEyRXg2L2dMZFE1S3VPR1NG?=
 =?utf-8?B?SFE1djE4aFJ1dzdHZkF0ZFlxR3R2MjFvdkhuc0pRNUl6NmpHYVhVeDVKUHdw?=
 =?utf-8?B?MGhINWtiZjB4YnN0RGEvS2JEb1I0R2VIUXljb1kvb3Z6L2NlZThjTDg5Nkht?=
 =?utf-8?B?SHRoL3lCaG02SUtzZ1I0OWJUbmJCOExQWkNnQ3RaZlo2Qmw0SERkOGFhZmw5?=
 =?utf-8?B?UjhTSVpxVmxHNTZiWWFva2pya25hYjcwQVE0bTZlUS9nRGduck81U2h6Qi9I?=
 =?utf-8?B?TW9YSnQ5alhiZkFMTzRRLythSEQ0ZkkvclhvdkVMbWgwa0hiMzExWnNQY1ZV?=
 =?utf-8?B?bnJkWEhWbnlhVXI5MHZFakp1WnVIZHYzR3hBdDU2czUzWDhUbkVXRjFjVUR6?=
 =?utf-8?B?bzM4SUllYVpWVGhJL3JkODdYWHR1Zkh3OGJyQVh1VkJBUGt1ZE82NUtNSldL?=
 =?utf-8?B?QkFZTVl5NnJmcTFaWDlIVXJTME40czh6VXhjN0dsRXpVdjk1RmdNd3VhQzZy?=
 =?utf-8?B?c25pU01nS1FyVnJBK2FjR05oTGEvdGYxTDF5UERTc0NHQUxuUFdYeG9RaGx4?=
 =?utf-8?B?UnRzYUpzNnRkVXJpa0s5Zlgyay9PTGtUbHA3RkJzWVI5UEVqR3ArbzJjd0Rn?=
 =?utf-8?B?allOSEd2QUNSY3VudlUrdm1xZ1RreVdsSEo5WDNwclBQc1N5bTBjMkgwLzdD?=
 =?utf-8?B?aDFadFZLSkFtakVLcjBZRXdvQWdoTHF6TEpYOWE2TnRSVHJic1dpVk5GSEdI?=
 =?utf-8?B?aFpyaTAySmNLSEVHTzh4VEZFbk9jZzRsSmlDS1UzQ3JSeEc1aUNuamhlaVhQ?=
 =?utf-8?B?d0Y0c1VGUHlkK3ZVTWcwcU5vUUdpOGg1d2JvM3c0UEY1d2NrUXdRTDErcjFF?=
 =?utf-8?B?UFFVeXZwWERMVVNxdnhiM01wL1hhQkFESk5ZT1RPdGU3dHJyc1N3NFdKcThv?=
 =?utf-8?B?Sy9HeHJtcFhWS1VROWMzYm9PdFlGUXpDcTNtQjNUa1JaLzBsdVNTQTRTV0Za?=
 =?utf-8?B?VGwvb1lkbEtwZ3J0YTREanFDbmV5YUwyS2FlYTQ5MFpod2N6NVQ3TkFzZFZl?=
 =?utf-8?B?dVdxb3FKMzZmQnowS0ZDR1hicmlpN2R4UmNOVWNKVU8wNTJqakt0THlYclEr?=
 =?utf-8?B?b2tPOSszMFN6cG95N21iYTB4RWYxTm05c2hUZTNDTHN3cDdkcUszQk5ubkRR?=
 =?utf-8?B?NEZyeDJZMlB0NVRWUkpvSUtveDcyZGNmYmZzdVkyMi9iSkp2MTZMLzcrL3JH?=
 =?utf-8?B?emNpWkV0VkRXL3BiYlhaOFFjbU90MTluekJ3N3czSjVCUHlTeEhPN1JWS3M2?=
 =?utf-8?B?M0FqYzEzcFlZa0pSRFlmNlFSeXhnbHRXRHRscnRtMWkyN0lPSVV1U202Yksw?=
 =?utf-8?B?ZTgvS1FlRURTN0xzNXQ5SE16cVd4U3VucGpsSGxwa0NBVkZaRyt3U2pXTHlV?=
 =?utf-8?B?VHRjbFNNUGRWSmFIcSsyV1c3c25LQlBaUndFVU05R1YrTE1iaGlVWHlnTHNZ?=
 =?utf-8?B?VStXU2xRZHRsVUh0L21TM2ZMTktIU01icFR2dTRIUFkvcGVXSkFBUGpIOWxz?=
 =?utf-8?B?aENURHlFb2Zvb0w1UFprQW5kbHVtNURKQU4xVVp0NWNIa0QybVdWWUZNVk8z?=
 =?utf-8?B?MWpOY0F0dnhERnhlVDNjVnczMWRKaG12TklHTlZsaitYMm9QNEhWdVRmUkFG?=
 =?utf-8?B?QnF6aVhUOXBkKysyUVNmSXFoOVpUNTFzU2VXT3ZZdnNDeTQzREQ4a01ubnpV?=
 =?utf-8?B?MmgwWU1ad0hmdFB6OVdVVmpZb0lybVZCem9SU0pTNTA3aC9ZM1BzVGlwcWlO?=
 =?utf-8?B?QnVtWUJDMzg3YmVYcjBCK2xFU2lFME1hMEt1WFJIS1l2b1RwME5tNlpuakp5?=
 =?utf-8?B?alZxWll4ZWhjamxXNWh4c2FiVG8yMlk3T2xHQXIzcFVCcWVSL2JOSElnKy9H?=
 =?utf-8?B?R2FEZFgwV3krN2hhMWgremhnNmdnNXp5MFM1TW1HRFRrdDlXL0E2MVFpWC93?=
 =?utf-8?B?Umc1M2VNZlRhU3dkMXdvSzE2OExzR2VodWo5S21tNEgrazVIeFJsMXFFV0sx?=
 =?utf-8?B?QzNuMkZvcm9rOFRTY1RYUHZvMEtBNGZEblBRai9qeGlmdDdFdnBzbXRaU25Q?=
 =?utf-8?B?b1hCMnhGQm1ZYXlrT2xkekxQUG1vR3lOVmU5cVQwU1hrVTZDaXhTVFdORzJ3?=
 =?utf-8?B?MFlQSVhYMnNWRE14RHBqWEdJalpnPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ab68368-1d08-4058-e7f7-08db31fe98db
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2023 15:42:56.0338
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FdhOD2dpaOo3J+mKnQycaeagu1SAxL5Z+YevNghdeZgE4bW5WSijlFCJY2rfJ2uRveNzEIx2uN4Jq2GMtfI+NVMZQTiOpxakcF+olhPezRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_084303_460526_B57FED13 
X-CRM114-Status: GOOD (  24.57  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] ARM: Rockchip: Read amount of memory from DDR
 controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 3/28/23 09:40, Sascha Hauer wrote:
> This series adds support for reading the amount of memory from
> the DDR controller. This helps on boards which come with
> different amounts of memory like the Radxa Rock3a.
> 
> This series also fixes issues with an upstream TF-A firmware. With this
> the IRAM where the bootsource is stored is no longer accessible in
> normal mode. We have to read its contents before starting the TF-A.
> For this it became necessary to add a common barebox entry function
> for rk3568, to get a common place to read the IRAM contents.

Nice, thanks for your efforts! Now it should be possible to remove the
memory nodes from arch/arm/dts/rk356*, right?

I tried this on a ROCK3A with 8 GB and the memory calculation returned
the correct result. There are now two ram devices

   `-- mem0
      `-- 0x00000000-0x10fffffff (   4.3 GiB): /dev/ram1
   `-- mem1
      `-- 0x00000000-0xef5fffff (   3.7 GiB): /dev/ram0
   `-- mem2
      `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem

that start at SZ_4G and 0xa00000, respectively.

However, after loading the kernel the system hangs:

Loaded kernel to 0x100000000, devicetree at 0x101970000

Is this a bug in barebox or is something special required to boot the
kernel from SZ_4G?

Best regards,
Michael

> 
> Sascha
> 
> Changes since v1:
> - Call relocate_to_adr_full() from board code to make sure the
>   fdt from the relocated binary is used, not from the original
>   binary
> - Add patch to pass a NULL fdt to TF-A
> 
> Ahmad Fatoum (2):
>   ARM: Rockchip: implement memory read out from controller
>   ARM: Rockchip: make bootsource logic generic to all SoCs
> 
> Sascha Hauer (4):
>   ARM: dts: rk356x: Add DMC controller node
>   ARM: Rockchip: Add rk3568 specific barebox entry function
>   ARM: Rockchip: rk3568: use rk3568_barebox_entry()
>   ARM: Rockchip: Do not pass device tree to TF-A
> 
>  arch/arm/boards/pine64-quartz64/lowlevel.c    |  30 +--
>  arch/arm/boards/radxa-rock3/lowlevel.c        |  31 +--
>  .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |  31 +--
>  .../arm/boards/rockchip-rk3568-evb/lowlevel.c |  32 +--
>  arch/arm/dts/rk356x.dtsi                      |   5 +
>  arch/arm/mach-rockchip/Makefile               |   3 +-
>  arch/arm/mach-rockchip/atf.c                  |  34 +++
>  arch/arm/mach-rockchip/bootrom.c              |  51 ++++
>  arch/arm/mach-rockchip/dmc.c                  | 232 ++++++++++++++++++
>  arch/arm/mach-rockchip/rk3568.c               |  29 +--
>  include/bootsource.h                          |   1 +
>  include/linux/sizes.h                         |   3 +
>  include/mach/rockchip/atf.h                   |   2 +
>  include/mach/rockchip/bootrom.h               |  32 +++
>  include/mach/rockchip/dmc.h                   |  86 +++++++
>  include/mach/rockchip/rk3399-regs.h           |   1 +
>  include/mach/rockchip/rk3568-regs.h           |   1 +
>  17 files changed, 469 insertions(+), 135 deletions(-)
>  create mode 100644 arch/arm/mach-rockchip/bootrom.c
>  create mode 100644 arch/arm/mach-rockchip/dmc.c
>  create mode 100644 include/mach/rockchip/bootrom.h
>  create mode 100644 include/mach/rockchip/dmc.h
> 


