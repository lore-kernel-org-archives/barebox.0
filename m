Delivery-date: Thu, 24 Jun 2021 17:15:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwR4R-0005Ig-GD
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:15:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwR4Q-0003p7-Aa
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:15:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K84G57fu9TBD5sqAfg38RJay8Ou7zShuXIEb/z+h3vY=; b=qBkTc54MhLjoZ5dqgnOp+abmZr
	/OTD0VJFbGIYEvGhyQiLtqiuSyQ13BkwMQ3QESetvQivl8gBKfrxF0H8hBjbrhlCzMjlp7yg8XBLf
	TlIjI2UpjvCFBZCM0D9Gm64RcT/ZzHAWePM3HS2qgtPLR2dX6GCMqMVPvx+Yo08IRNmOK2vXffl9j
	o2/lOakibXuwEmAgZDjpFo6OLo2lnQI3LNil2VPB1PTF3f/bY8COmUw8FiHKqNuA416ccNr1QUiRO
	xM9blkvimnSjFFGg5BfGD4VTxaCMq4jOwJIVAx4fGwwVaqV2h4G8F8/kDYKgeAHdEH2HrlzUOQJ6c
	A5PCMaUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwR2v-00FDOM-43; Thu, 24 Jun 2021 15:13:37 +0000
Received: from mail-eopbgr70050.outbound.protection.outlook.com ([40.107.7.50]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwR2p-00FDMt-Vj
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:13:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTsVfP88oapJQy3R/1hf7sWkCHCPBFDoVSyoidINha1k5VS19QVsLEcQ4I64Tk7Rm2AH23ISLN8+KHOPNyY2VtkHRWL1RIoVOls+dIdOeOcE8n73nEm07Tj711i25J+6lKu13LVRnxOegU/SjjciNuuKTB+URcnDuLWrkHirCxR3nsaZzwFoByODNFjLCHJSPisly7zBk3XphDLO/b/IUYm4/rYWv87Xlf6KM0TCVOmhd9krozwr5gCByZJr10GM66f7mmtrBZLozorOaIcBQx+6RG9BlJw1v0wawqtg6iF5IvXMAghH8aFbRQZSh4w5bSte24yfEu02kIoRqMRXWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GO/cx6JQbHP8biuFsnXx9mvNYmfk/Rvr1pOhcivhsho=;
 b=JWTnFYsEXl2UHYl3fxE1Nyvtm2l1//YUXmkqb64pkNGK/OJqKTa5Vwn3towjNbVnZjbTqPMbcBFuahKqbcmNCzWRibBBcB0V1IOJEZ3G2Edy4btwU60JlMhWgYQ9owdLF+lQBg7YRvrW9RTfInLZ91nb0rX1/7N5CgnS1RUkMDyzCxg9ivwB/FDNcgyFCNXXmhC51DOxRVpwWN9LC+LtU4o016sE7cmkQTwmcxE/I/G+QPwJcuWeqIPyjcZuDZf/l8YJDriXJrlCf6y6wdzILzOjdWwfuxiWr2t47Gbtz1peWn+5nUysnWSKtc9c13l2xiIuC3dLtm94+oUtZkIM/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GO/cx6JQbHP8biuFsnXx9mvNYmfk/Rvr1pOhcivhsho=;
 b=SyhIt39SQNjzjM82BXHIIjmrIWrc/Mxg3tiotHc76htFl6wA6Uv3C/tHe+zOToJmcIuAeCYDfBQbi/9TZPBbrW6O4Le986WRHCJbzR5cQ3c6ln0idk74RQuOfQtELpk00xsXim6NAVMvRBFirDPnDqUC9iLRw49sOUM7uOla1sQ=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB7005.eurprd08.prod.outlook.com (2603:10a6:10:2c5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Thu, 24 Jun
 2021 15:13:26 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Thu, 24 Jun 2021
 15:13:26 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20210623075201.5328-1-michael.riesch@wolfvision.net>
 <20210623075201.5328-3-michael.riesch@wolfvision.net>
 <d65e99bc-b934-8dd2-0040-e9843a206099@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <fc9a8498-c6b5-14c9-c906-6f2199cbe517@wolfvision.net>
Date: Thu, 24 Jun 2021 17:13:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <d65e99bc-b934-8dd2-0040-e9843a206099@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR08CA0100.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::26) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 VI1PR08CA0100.eurprd08.prod.outlook.com (2603:10a6:800:d3::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.19 via Frontend Transport; Thu, 24 Jun 2021 15:13:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2f5e852-18fd-415f-c00a-08d937229d81
X-MS-TrafficTypeDiagnostic: DB9PR08MB7005:
X-Microsoft-Antispam-PRVS: <DB9PR08MB70054E2F5102A7590B7DC8DCF2079@DB9PR08MB7005.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: twewNmCm5zWWvxQFY75jInxibNoEjcBq/JqUZGZ3fuJiWiXAj/rotqUQGFN4lRq1LCS3/WgTc0ux4Kgvl2ukzW1CRh6WMWTjuRBiCyb8zuTxkgVOFxu73Sah5anjaFVz7aBCDF/PSVh055EXFAz9zuLeFh7DHyC42kCS7/0B1azBkBgVk9exLpYDh0EZYqOIU8AKpRJJ9ReaRq2ClDIduHiRrmLBLdwfZ4loWW/NNTDV2EHe7aCp4QXpvdp7DB7ZWJtqKYHoAltTQDfX9vBUnlsuo6IdGmT4RlWmwN+g1LqkZcRnkYyH7ssswQ7mhPcujY/fv0FA3AUNEBJJ22pzi0jey14Hw7F0HdoAsQ74CB3O9Z5kme8GkVmn66uNih8xtmCHQi/vxtKsx7kL1ZgDG4WyE/jFeeeCiqN7L8xiUOp8myN5Mk0DB9+8be9Y1pJO9Djcr7e5q0BIOdsR8ZQz2t9slB415VECwi2DclivRNAV3MNmyDQzeczyvITXN/LPxSwbNM0od9U4zaTXC/oAEaxOaZnwur0FYBi00dKHNUnZCyuxtQbO4SldZ65KpserP8Mu6ulUDimvv/TaoSqlXa+Qy4YsQhdmoqk+E247H3CFl+OyJaFGPh2JRZiRYjWZBTmd+Vx94okvXQI1UkrLnuxeCWVFJDQnfVW9fm8yRADg07qkw5q8BL05OvwFgDGFiCEGKDXt+vpASfNj99m+/xNKtT1aGu1B6DpH0CgWogPLnZXL1zKmFbfOm3vmqR6617JlpCFhVEpXBURGW1FwZf+h0BXXkXK46MrxgkYOTfa1cm9ps9B3gb/IebIzpL3R3jy0xQb7sEsdlzN4fmM001Cb8jLdG+l9rePMsPdCaA4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(136003)(39830400003)(346002)(66946007)(53546011)(66476007)(66556008)(16526019)(186003)(36916002)(86362001)(52116002)(16576012)(8676002)(316002)(83380400001)(8936002)(26005)(31686004)(19273905006)(6486002)(2616005)(966005)(478600001)(956004)(2906002)(44832011)(36756003)(5660300002)(38100700002)(38350700002)(31696002)(43740500002)(45980500001)(563064011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yk9hZXlCSDM3QktiQkZuaUUzQWlqSWo3bVlteXlGSUhsNVBwOCtKV1NCT0w4?=
 =?utf-8?B?N2liTkZVaUVmcFh1cHEyM2dhYVI2Z0trdURwZ25DdDZpRTU2QzQwS00vVEo3?=
 =?utf-8?B?N3d2ajM0QXVETVY4NlFOYU1jbmRScTdxVERxZTBRWU5jekdIWVFwbTB1VGx3?=
 =?utf-8?B?RnhsWEdTSEowOWw0QzE4aFV4NU5RWXNBNmVDbFN1dmI1djdDbmtDd2pITnBR?=
 =?utf-8?B?R1QwTUpOVmJWYnJQM2d5eFA2Q2xBZG91aVppd25mR1NjSmZDRkFaK3I3K0NP?=
 =?utf-8?B?TWxHYkpaOHB6WjRKdEZEeENocVdnV0p4dTNmRzZCa09pb25ram8wRzk5UlVS?=
 =?utf-8?B?OXJzNHZzWjlKaDcxdHA2UjNaRk1XVVV2V1dNQmdubjdzckxQQTNEZmNsQTVn?=
 =?utf-8?B?RHBzVjBYTWtEcnJnZ3RwbkZHT3FNK3ozS0pWQW50QVIrRTNZZ2dwZFcyMmxE?=
 =?utf-8?B?VHlsaUEvRUdXVmJnc2R3T3dqelcxMHZYcU43NTlSSElZamxuaTJkZkQ1WHp0?=
 =?utf-8?B?Z21Ga1ZlNmE5SmRpdmhFenp5WlNTNHh2OWZyZk9MSjJ6ekx0WkVRT2R3SUVV?=
 =?utf-8?B?ZTkyWXNYNVFoakZwaW4xRW16N1VOazFRWTUvSFlNMnNlWEl3cmZFWWFiU3NY?=
 =?utf-8?B?S0JXRFVmRDRpeWtocGkyZUYvZ1ZSVlBybHpud044bG9NQ3pHVTMrc2V4UlVY?=
 =?utf-8?B?bnV3Ym4wODJqSW1uWC9ZQ29zN1l0TmxIdmdFQWhrOFloWklGaFhPQ2g5T1Qz?=
 =?utf-8?B?S2F1UjQxT0w3TmROTHVYWW8xYUtsd0k1ay83ZGg3YjJVMmI2U3lCRHI2QVBS?=
 =?utf-8?B?SkVmVXlWdEZuZDQrS0dxSDBtNlpoK3plV0w4VlBVK3Ird0Q2NDgyV1pKVDdK?=
 =?utf-8?B?YWpIVFM4RlF4STd5bnBGU2VIUjhSd1J2dXFTWlVwa0NPQmNFeG80dWV2SXFG?=
 =?utf-8?B?WGNIaUcrUGM2d1dMUThjeDRFZ3NVUzd6bkZXZlpjNklVRE9mL3B6MjJmSEZ0?=
 =?utf-8?B?cmhYNkZSS1lqbUx0OTI0TmFqWk9wOTFjdytoM3lIcFNvQTRaUXd0bmNSRCtX?=
 =?utf-8?B?K051SnRlT0xIQUloYzJJdU9LTDcxaktpcndnLzhPWnVmYjBOVTFDemRnK1c4?=
 =?utf-8?B?a0U5SDQrNUNQd1dTMmQ2UlhyRHZWbVU0c2tUL1dTYU1yL0hCV2tvWWN0RDRU?=
 =?utf-8?B?RW81OTRUSVNzbXBjYyszMkcrdUwvSTFrODN6b0R4K3VVcW1WblQ1bTFkZmI0?=
 =?utf-8?B?Q21NOXlWV1J4UzhldHRRS1RhZkZlNWVEMXNwa3VNUVpGaElJc09TNGlnakxE?=
 =?utf-8?B?djNoNFV6aks0bHQrNlRVSXFzYjRaTXRwRXVOK3dkTzd0WDhHU1VDM3doNXZM?=
 =?utf-8?B?QUpQRjRMbmRKbmZRd1hwK2UxZzd6ZDhEaFRHYXJNbnR1N2JkN20yRGxzMExQ?=
 =?utf-8?B?bE8wRlFSTlNYa1NQanRsSW93WmpYSTlYRWxrSHllOFgrNmdqcDYzNjZ1NENT?=
 =?utf-8?B?K0ZjbWh6ZFhuNXpsd29LMjRtSUZlOEMzMytHMFlmM1ZjRXdNNUFpYUlhOVpE?=
 =?utf-8?B?NUt5SWpjT3BlLzlQbkZST3hnazdvRHRmYlVubTZqcDZXcnd0YU5QMndVUXZS?=
 =?utf-8?B?K0tIbjBaeEZWMm9JMjQ1Wk1weWtJUkhpVTVtT2pWWG9VNUZFMHZSYk5SbkVG?=
 =?utf-8?B?S3UrVmtzclQ3M3hNYWd5Mlg5TVU3QzdWL1l6d1ZwbW5PVzl6bTliVFBkMUtC?=
 =?utf-8?Q?1YYrr3WRF8MnMWLICoKTlgDvfCDN2VZ1OBpFU3f?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a2f5e852-18fd-415f-c00a-08d937229d81
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 15:13:26.2166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EsWx/VuYo4ckRRzj3KW+14pHcY39gZ2mkR4CDu2H7fHtG9qdnAAMsEFJsTcAq5T7UmDO0f2GR0NFVX/b+94BX/GVC5SU2Oe+o3QAmIyRmiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_081332_165308_2ED9817F 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] arm: rk3568-evb1: add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

Thanks for your review, I'll prepare a v3 as soon as I have time.

On 6/23/21 10:24 AM, Ahmad Fatoum wrote:
> 
> 
> On 23.06.21 09:52, Michael Riesch wrote:
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>> v2:
>> - add initial version
>>
>>  arch/arm/dts/rk3568-evb1-v10.dts |  5 +++++
>>  arch/arm/dts/rk3568.dtsi         | 12 ++++++++++++
>>  2 files changed, 17 insertions(+)
>>
>> diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
>> index ca6f9c280..b8b4c85bf 100644
>> --- a/arch/arm/dts/rk3568-evb1-v10.dts
>> +++ b/arch/arm/dts/rk3568-evb1-v10.dts
>> @@ -485,3 +485,8 @@
>>  &uart2 {
>>  	status = "okay";
>>  };
>> +
>> +&saradc {
>> +	vref-supply = <&vcca_1v8>;
>> +	status = "okay";
>> +};
>> diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
>> index 34d0b8a08..8a75a7e96 100644
>> --- a/arch/arm/dts/rk3568.dtsi
>> +++ b/arch/arm/dts/rk3568.dtsi
>> @@ -817,6 +817,18 @@
>>  		status = "disabled";
>>  	};
>>
>> +	saradc: saradc@fe720000 {
>> +		compatible = "rockchip,rk3568-saradc";
>> +		reg = <0x0 0xfe720000 0x0 0x100>;
>> +		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
>> +		clock-names = "saradc", "apb_pclk";
>> +		resets = <&cru SRST_P_SARADC>;
>> +		reset-names = "saradc-apb";
> 
> Keep in mind the driver you added does _not_ trigger this reset.

Duly noted. I considered implementing the reset in the driver (see
v1-thread) but did not arrive at the conclusion that the reset is really
required here.

Regards, Michael

> 
>> +		#io-channel-cells = <1>;
>> +		status = "disabled";
>> +	};
>> +
>>  	pinctrl: pinctrl {
>>  		compatible = "rockchip,rk3568-pinctrl";
>>  		rockchip,grf = <&grf>;
>> --
>> 2.20.1
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

