Delivery-date: Mon, 08 Jan 2024 13:09:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMoRi-008mdF-0F
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 13:09:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMoRh-0005fn-AQ
	for lore@pengutronix.de; Mon, 08 Jan 2024 13:09:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zK8p/5Qp2F7SB2j86i8jJD0w4GfNNdLYY2RolxnP9/g=; b=y7fce75TYZRNPSWe88un8yK5OT
	2rP4tVHw8vpG9THJf833l90vw5bu9hceiTSglOhSGuEEvHtyVBEFjqZbWGR2BThe3xDdHXP9uI87g
	GSEqcKVMuLxoNEHIZKhmdi5ij5waYWjrYOHLzpXWLAvuIrXO2SSVP0jflYRG+DUGyOn8P0uz3yU4X
	SN5yFgf8BT3Oqkbs5FVQsqIovM0Ftw8vpSqWgHyoJ10XIkx3t6TzSFemsweyc++6PCtkorQSk1+3s
	N1HI8/N5JIfVdFplsGW4OyvQOSgaEPwmyLfIMUB8z4iNHcjaWkJ/fMOTiy/pee+kph8APLyZ1Ixkc
	HKeEtyAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMoQC-004zfB-0x;
	Mon, 08 Jan 2024 12:08:00 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMoQ9-004zeA-02
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 12:07:59 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id 0C2E530F1C5
	for <barebox@lists.infradead.org>; Mon,  8 Jan 2024 13:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1704715671;
	bh=Byx8de/jsY7UyH1Luwr8R55fODHr26W4xncbQ5PBEJ0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=I9IKf2Fht0A3x7JfPcmJSEjfTDSG8SGugWSrY/DZl/G0i3QhRe0pYZn3JWEsYtwPC
	 77moIYddGPSjp/eOMbK4r1zLBW6Eyu7BxGYyl9KA4N9yw/ootBTnwfqfxkR4zt8ZCI
	 OernyErKMu62I8UKsLp7C7PMCL3GY60O9kbBg2XY=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id CC8F930F18D; Mon,  8 Jan
 2024 13:07:50 +0100 (CET)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0101.outbound.protection.outlook.com [104.47.25.101]) by
 fx305.security-mail.net (Postfix) with ESMTPS id 02DB630F1AA; Mon,  8 Jan
 2024 13:07:50 +0100 (CET)
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:13::5)
 by PR0P264MB3424.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:14b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 12:07:48 +0000
Received: from MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::1300:32a9:2172:a2a]) by MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 ([fe80::1300:32a9:2172:a2a%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 12:07:48 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1179a.659be596.ca7.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcfF8ORmt0g5eS3rzI8+dPUVGW5+Nw41loajT3lV4tIopma9lWqEP0dE3VygR22LoM2RSPyaH6SOBnrWs8bB9kM0m7tzSbKSzfA76FbfBz5Ss+4sI4bzPz3dgkI+qHSmsuQAszed8qQrVgDRi4CAUpNWaATaLmiQsKiPSWX5x9OuV3sxnRBPfczf/AiSIIw09/IvVBoUNDIaoVx3Gek6YZxclGnS0rFD1SxVLs1AM/ab6GDxVnIBF+0mNqwWC/ih4lT7takXjlpM6ZgwS4KB3Yl/ZyG1lZSd3H6+3A195mbZF+nqNxxMgbdYLYm9+kjZfhneEaiflgEJmZh9SWvjlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zK8p/5Qp2F7SB2j86i8jJD0w4GfNNdLYY2RolxnP9/g=;
 b=T0vwhpf+IVhz9Iuiem4aabcFc+oC30GBZrERy4l9VkKvXCvMOVi2MN+Muiv9lliLYiF2iOx6vNo4rkuov2XUzXLQsdvl2TUFkYt8zRefoW4DuucKaLO5R323grTpkWXCvXx3jNOi2cPUZFn4em5S0nkjXGt0rx+5sK1rvZqC+ow/6v46ig4m7dDX8c3bQ5V8RuLnX0UWY/wRsYOXaaOWWcqfMmoA8+zu1yAyj4I8mneli15MLTzIpDdfeJbWMpitkdGqyez4e7fYy8AH8FQudMcDrfeFOf6rblDkFAAd+EXbxCyb/XfjpxSA473SBat2dIJ0l5G3Tm6AJ14RNSQ2iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zK8p/5Qp2F7SB2j86i8jJD0w4GfNNdLYY2RolxnP9/g=;
 b=qvOOzKz9C9X0VmCW8XnpmdJ5/kSRWfo0ou1vd1jLLmnLCA2wiQG80lS0qtudalQuNIPCCunNge0MlDDJiM/W9wrYkkbtFBbmG/wVq4t1dbvineRnMQUkkBdjL29cve07cgnGTu+LkeYmfjuqc0ZaVCYJBx53kBZN0uP50on08maDrpdqXVKadst02QfTLOdAonVaWbBKMCDE4NmgTSs3/PhJs1zWoibp7tGXYY0KmnEk29fydB54lJJ0AYGfon6s8wi5RAjX3LzHA82dotBTfPwihvYECcKybcobK8OQ5G4PumZlEmj4jF/j8mGqUYTTu0DbtOTggIFxZS8yZYtAuA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
Message-ID: <8049223e-ab58-9999-4b65-ffc4e4e56a9f@kalrayinc.com>
Date: Mon, 8 Jan 2024 13:07:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-us
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>
References: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
 <20240108102438.1318473-2-a.fatoum@pengutronix.de>
From: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240108102438.1318473-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM9P250CA0014.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:21c::19) To MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:13::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MR1P264MB1890:EE_|PR0P264MB3424:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dcfe497-07e7-49d9-e1b5-08dc10426e12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6pS3YYmoFe7yOSGFK06QyJWuW6tFhI5G5QbiHwVkKdjVMpIRGCw/PsF7EbtaTbLY+3+u4W2FHbgDSgSwPHUeTIeeSzydPx6PS80BG1vJvR41v51BEvTV60SZESRKuDcCeAx6hTJGRk3mob6KCl13q0+6SQMyti6PT6aKupz6wNfKClxACAYXBazYGdYmxp5g5vdUNn+9YIqLuT+abCZ81MLPv9n7hOx0i5f8f4WwaffTusVvI3yTDo8yEdxRob3cepitF4I2cRUH5QTFURGx3x6jhVAN8YET/9ZZr9FxXmtzXzB4dl8luPNyk0SpWpZXqIMquwXjQ1XxSBEqhKVkGouZLdBA9/npqmqqHysgUq+JdultBldoKpbZOk/PrbplCi3HXkSa+XYUhbLgooKb/T7sGhDkfwaFQhg2MjurQCNv6E041zM80Q6MkZK8MNAzH7yoxGXE34JySVw6WUM/VW832iK8nhTL6jHPsITiHI3ClJjDIlWu12vdcMYAFdSrp1hfY59I43f4wbdxU+5W3o+MyvBXewGfX4c9s3r9S9qJjDdIFGihjbu/jqAqqNu03SYwt7Ru63f/DXagWhW6MQmdskFpieaCcBCwV6kVrPMyUbZJhAWq1idI5l6DLkvRy1ko9E12uj9Ugbn4kS69+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(376002)(346002)(366004)(39850400004)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(36756003)(8676002)(8936002)(38100700002)(316002)(83380400001)(5660300002)(4326008)(478600001)(6506007)(53546011)(6512007)(26005)(66556008)(66476007)(66946007)(6486002)(2616005)(41300700001)(2906002)(86362001)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: NAIgLmsIqDE06lMxekk+jhwxQj1FsQFCLFo+XYR07HLKSZvRlyVlUzRS5rB/jlw4i89M0E8b7RzjiLwwhiTeTHxiiW9TKF9lmPmF3PZQ4N+8a9qkxXdO5NUE/VOSvA4Q+QfiZglitw8ij9FoFJRkwfBiJjZDSC0bHp7wt43oq9QxeHclJDANVdegWKEVyB35o023x1WhTb82LUA9fcONyy+vJFNY96Hgn58psOmT1ZeJr4QFrkduD3i9YxUqwIWHGgDqxnGRtAXc1nOiVKsif3XkXsw4zkOLFxjZtJWhtNOSfw2WTlAKeanJnkRZ8N+LkJyWAXhhmgJTw+2gUqEGIcr9sWkslHk7kfNqPRmcUJ5k1ebLrVnJkRMYgngHzmPKmbGHDiKK0BNWvAXc7v4nabhtQge3RSeEg8r784XoxzpPBtX97rbe7JRbehXnRxTDkCle/ssBthXVS7as3dArXqk04LJ/stkXKzLZn3l2huqqLWCAdHH9KobMyonGdTb306Om+nxtTZB4Iz8ZyfMbnmF+Ry/MxbltzpAMAu2X9nDdjRrkGvlKEn8PokoFMF3FIFkJD1jR5RGlap5X+obA4IRlOB8zNsrIKne1czBRi8fgA3Dd59VBajNadg3RNZj1nNPnR9c5xR+cXgJAtCLGzqXuZhpKP9toQtrP8t1F3GOVjfHDQL08M03AkcGpunsZU8EjLxRPgiDTI0ow5nNhwtje7ZtfwWFBRQNpmgcVn5HdiVEnWCzesG5NEWOmBnMTXfqoBcmy3cebe1ezku61VVL1bqhVmnBwcQaus+SpHtPkmaf1sauwMaBz2GCsMtPyHqesQ02WmhCdsgGmg3835JKloCtMe2RFQfDOlx7Aim320F0q5BVc3tb9u/vg/FYT20Q1dHh9zDCoZyFDtMW316hRaF4oU5+K7/yNatQc7w9dk5FR9mABiwPdTMKo8r+p
 Hpub2JJ+pU3+y/v9TF54Wa57iVfTJk6OACPWCxYQxjjUQxNlhf1Pizlfbq8nK/VibMUiidgw1ZT5C4jcfcAchxAWVbx8p1Pi22018TnuTaj2hnqISr5k7MibokMHvqf72zvoQabDoFobAwMCWryu+462oXjtWQ9GMhUTAZfEdmkwrsJMbAiINw2a7naE748d5c55syfRRxhka25BU8cezC79KGf8nmQ+4pus/CV3tfUaf8mk0cgnHjdv/cVwEJpZbAnBX1vOTiz5zOqAJEbEJ9BVy8SIcst20QD0YNeMlvFw1NMBXcfyMoMTVR5BQCEHcqQa2QHNnEAHeyNaXTqxOskaihhVTo3AtCJzsFTVOm6VTglezzU9pcWQSGN1ZutFsB2WZJ0tChT9sZQJKzpLWiM1gdnqhWqKNKpfXBqyVDdO5YWhCVtj9NnbFdrbPhQUXx6wSmigXQjZqKSNLK5qWJ9LoQScTWC6YlFjJcojomAS5Bec1zAEtg8xDkUxjRTqGkuotP1WQ0Q1GwZFTix6vtxu/VBsvlc3VC46p2rS90w/EG/0kOKghtryrMDPT8kfDt2FCKmVc7M8eMpkx7WiINC8rtKgLLvpoP07YGHIro+CT+U4e7H3+rX3K6llWvl56SzmqGrHfRwv9HSw04uRSw==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dcfe497-07e7-49d9-e1b5-08dc10426e12
X-MS-Exchange-CrossTenant-AuthSource: MR1P264MB1890.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 12:07:48.3400
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uya5BXIFdHMU0hkrXF46ZmByiPOyr7SoqUQNhGtqza77PlRjIdHPcnWikFyf4aDr0SNxHCGtdWTSnEpdUef57A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB3424
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_040757_464627_90618528 
X-CRM114-Status: GOOD (  15.10  )
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
X-Spam-Status: No, score=-7.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] kvx: set DMA_ALIGNMENT instead of defining
 dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 1/8/24 11:24, Ahmad Fatoum wrote:
> <dma.h> will take care to define dma_alloc with DMA_ALIGNMENT as
> alignment. As 32 is the default and we for need 64 for kvx,
> define DMA_ALIGNMENT and drop the now duplicate code.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   arch/kvx/include/asm/dma.h | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
> index f35eafba8fae..c6f67e76d024 100644
> --- a/arch/kvx/include/asm/dma.h
> +++ b/arch/kvx/include/asm/dma.h
> @@ -6,11 +6,7 @@
>   
>   #include <common.h>
>   
> -#define dma_alloc dma_alloc
> -static inline void *dma_alloc(size_t size)
> -{
> -	return xmemalign(64, ALIGN(size, 64));
> -}
> +#define DMA_ALIGNMENT	64
>   
>   #define dma_alloc_coherent dma_alloc_coherent
>   static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)

Small typo in the commit msg (`we for`) but otherwise Ack!

Reviewed-by: Yann Sionneau <ysionneau@kalrayinc.com>

-- 

Yann







