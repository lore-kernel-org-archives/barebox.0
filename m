Delivery-date: Fri, 23 Apr 2021 17:59:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZyDR-0006Z8-49
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 17:59:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZyDP-0001lF-Vu
	for lore@pengutronix.de; Fri, 23 Apr 2021 17:59:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qlOfYqyZ2QH2ndjD03HAgSw8VUehdjfafAONUryC06A=; b=pJiw5YWVOCu87iG6z4x2LzYJk
	VW18xJOh6GwWAYzw2kTOJnKW7lyGEW6etH5Wx423aXhC0fi0CenbtcBj2x0WTs6fW0dsYqzHgIu3v
	Au6OG+ECyElUpeGmMzxk149ya4Zlb99BYAMxOR+UzCisotRpb2PYLAN7thQifSU+Av5zkIb9Vx6kj
	3eQobkroiZfrQoKdTD/CpErFFl7LKhREGJjkDml2fyKhQ5OENtHQfMVcKGALlRezDdMOi/RdzyFKC
	kHcStri7f79r3WB6QHWcU4LRjGEiQKhpx09agHNmCdTLNLzOTlk3akFfXLKXiwCfrBRynXjh5W9Py
	irGOM2GOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZyCN-001pUp-Ee; Fri, 23 Apr 2021 15:58:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZyCG-001pUD-EM
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 15:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=4qa3gxNRGw365UP+5Y03iZOnkWLzhTlRrhk2NLJWxCc=; b=YhY6CXbX44GM+s/5P7mKsShXjD
 dwT0UE+xll9pjtrw6aPCr04+N/b4hIw5Y+I2Cdauwt3hxvpb4ggAoWRivAQe14fZZdfdS7t3NLCsn
 KYS/yNKEaaKJgTCJDMR7LJzrNREiAlOhjADeUGU2nWak7AiD61OXb/4UWrhJpLG6J7toFrygxSITp
 1hIpWWp9bhLL2VT3y81fehd2EYx7RXMMlVAzC7YRj3a7MnIrV+AwxDXVxawFLFfkRrzS37gYcVHEv
 p7/IYYBHBg0yu/cHcp+eo/n4rx99xGz/eBYUEKWNv7yKR/6FsgsoZc3ALwtPUniyE+RMX5dODiveP
 RGwxeJog==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZyCC-00EWs8-JO
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 15:58:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lZyCB-0001gg-Cs; Fri, 23 Apr 2021 17:58:19 +0200
To: Oleksij Rempel <linux@rempel-privat.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
 <20210423142829.29468-7-o.rempel@pengutronix.de>
 <1acc5ee3-f55b-c558-ea71-97d8e980b1bf@pengutronix.de>
 <509df559-896c-ab55-1e1d-0000a4698c71@rempel-privat.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6f7700fc-f93f-874a-4838-949b6769b2cb@pengutronix.de>
Date: Fri, 23 Apr 2021 17:58:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <509df559-896c-ab55-1e1d-0000a4698c71@rempel-privat.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_085820_675065_78D39C0B 
X-CRM114-Status: GOOD (  19.22  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/6] ARM: at91: sama5d3: add multiimage support for the
 microchip-ksz9477-evb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 23.04.21 17:51, Oleksij Rempel wrote:
> Am 23.04.21 um 17:29 schrieb Ahmad Fatoum:
>> Hello Oleksij,
>>
>> On 23.04.21 16:28, Oleksij Rempel wrote:
>>> -ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
>>> +SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r4)
>>>  {
>>>  	void *fdt;
>>>
>>> -	arm_cpu_lowlevel_init();
>>> -
>>>  	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
>>
>> You should be able to drop this as well as the dbgu_init() after,
>> because first stage already did it.
> 
> In case first stage was compile with same configs: yes.
> In case first stage didn't prepared uart, the second stage will freeze
> and first attempt to put any char.

Hmm, given that they are separate file, they could indeed be mismatched.
Ok, nothing to change then :)

Thanks for getting this to work!
Ahmad

> 
>>>
>>>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
>>> diff --git a/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h b/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
>>> new file mode 100644
>>> index 0000000000..6f829282c6
>>> --- /dev/null
>>> +++ b/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
>>> @@ -0,0 +1,88 @@
>>> +/* SPDX-License-Identifier: BSD-1-Clause
>>> + *
>>> + * Copyright (C) 2014, Atmel Corporation
>>> + *
>>> + * SAMA5D27 System-in-Package DDRAMC configuration
>>> + */
>>> +
>>> +#include <mach/at91_ddrsdrc.h>
>>> +#include <mach/ddramc.h>
>>> +#include <mach/sama5d3_ll.h>
>>> +
>>> +static inline void sama5d3_xplained_ddrconf(void)
>>> +{
>>> +	const struct at91_ddramc_register conf = {
>>> +		.mdr = AT91_DDRC2_DBW_32_BITS | AT91_DDRC2_MD_DDR2_SDRAM,
>>> +
>>> +		.cr = AT91_DDRC2_NC_DDR10_SDR9
>>> +			| AT91_DDRC2_NR_13
>>> +			| AT91_DDRC2_CAS_3
>>> +			| AT91_DDRC2_DISABLE_RESET_DLL
>>> +			| AT91_DDRC2_ENABLE_DLL
>>> +			| AT91_DDRC2_ENRDM_ENABLE
>>> +			| AT91_DDRC2_NB_BANKS_8
>>> +			| AT91_DDRC2_NDQS_DISABLED
>>> +			| AT91_DDRC2_DECOD_INTERLEAVED
>>> +			| AT91_DDRC2_UNAL_SUPPORTED,
>>> +
>>> +		/*
>>> +		 * The DDR2-SDRAM device requires a refresh every 15.625 us or 7.81 us.
>>> +		 * With a 133 MHz frequency, the refresh timer count register must to be
>>> +		 * set with (15.625 x 133 MHz) ~ 2084 i.e. 0x824
>>> +		 * or (7.81 x 133 MHz) ~ 1039 i.e. 0x40F.
>>> +		 */
>>> +		.rtr = 0x40F,     /* Refresh timer: 7.812us */
>>> +
>>> +		/* One clock cycle @ 133 MHz = 7.5 ns */
>>> +		.t0pr = AT91_DDRC2_TRAS_(6)	/* 6 * 7.5 = 45 ns */
>>> +			| AT91_DDRC2_TRCD_(2)	/* 2 * 7.5 = 22.5 ns */
>>> +			| AT91_DDRC2_TWR_(2)	/* 2 * 7.5 = 15   ns */
>>> +			| AT91_DDRC2_TRC_(8)	/* 8 * 7.5 = 75   ns */
>>> +			| AT91_DDRC2_TRP_(2)	/* 2 * 7.5 = 15   ns */
>>> +			| AT91_DDRC2_TRRD_(2)	/* 2 * 7.5 = 15   ns */
>>> +			| AT91_DDRC2_TWTR_(2)	/* 2 clock cycles min */
>>> +			| AT91_DDRC2_TMRD_(2),	/* 2 clock cycles */
>>> +
>>> +		.t1pr = AT91_DDRC2_TXP_(2)		/* 2 clock cycles */
>>> +			| AT91_DDRC2_TXSRD_(200)	/* 200 clock cycles */
>>> +			| AT91_DDRC2_TXSNR_(19)	/* 19 * 7.5 = 142.5 ns */
>>> +			| AT91_DDRC2_TRFC_(17),	/* 17 * 7.5 = 127.5 ns */
>>> +
>>> +		.t2pr = AT91_DDRC2_TFAW_(6)	/* 6 * 7.5 = 45 ns */
>>> +			| AT91_DDRC2_TRTP_(2)		/* 2 clock cycles min */
>>> +			| AT91_DDRC2_TRPA_(2)		/* 2 * 7.5 = 15 ns */
>>> +			| AT91_DDRC2_TXARDS_(8)	/* = TXARD */
>>> +			| AT91_DDRC2_TXARD_(8),	/* MR12 = 1 */
>>> +	};
>>> +	u32 reg;
>>> +
>>> +	/* enable ddr2 clock */
>>> +	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_MPDDRC);
>>> +	at91_pmc_enable_system_clock(IOMEM(SAMA5D3_BASE_PMC), AT91CAP9_PMC_DDR);
>>> +
>>> +
>>> +	/* Init the special register for sama5d3x */
>>> +	/* MPDDRC DLL Slave Offset Register: DDR2 configuration */
>>> +	reg = AT91_MPDDRC_S0OFF_1
>>> +		| AT91_MPDDRC_S2OFF_1
>>> +		| AT91_MPDDRC_S3OFF_1;
>>> +	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_DLL_SOR);
>>> +
>>> +	/* MPDDRC DLL Master Offset Register */
>>> +	/* write master + clk90 offset */
>>> +	reg = AT91_MPDDRC_MOFF_7
>>> +		| AT91_MPDDRC_CLK90OFF_31
>>> +		| AT91_MPDDRC_SELOFF_ENABLED | AT91_MPDDRC_KEY;
>>> +	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_DLL_MOR);
>>> +
>>> +	/* MPDDRC I/O Calibration Register */
>>> +	/* DDR2 RZQ = 50 Ohm */
>>> +	/* TZQIO = 4 */
>>> +	reg = AT91_MPDDRC_RDIV_DDR2_RZQ_50
>>> +		| AT91_MPDDRC_TZQIO_4;
>>> +	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_IO_CALIBR);
>>> +
>>> +	/* DDRAM2 Controller initialize */
>>> +	at91_ddram_initialize(IOMEM(SAMA5D3_BASE_MPDDRC), IOMEM(SAMA5_DDRCS),
>>> +			      &conf);
>>> +}
>>> diff --git a/images/Makefile.at91 b/images/Makefile.at91
>>> index 00fa4cab27..7c32049270 100644
>>> --- a/images/Makefile.at91
>>> +++ b/images/Makefile.at91
>>> @@ -14,6 +14,11 @@ pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
>>>  FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
>>>  image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
>>>
>>> +pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071_xload_mmc
>>> +MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0xffff
>>> +FILE_barebox-microchip-ksz9477-evb-xload-mmc.img = start_sama5d3_xplained_ung8071_xload_mmc.pblb
>>> +image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb-xload-mmc.img
>>> +
>>>  pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
>>>  FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
>>>  image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
>>>
>>
> 
> 
> --
> Regards,
> Oleksij
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

