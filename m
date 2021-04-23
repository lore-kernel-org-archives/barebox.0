Delivery-date: Fri, 23 Apr 2021 17:53:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZy7o-0006Xm-HJ
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 17:53:48 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZy7n-0000ze-Ha
	for lore@pengutronix.de; Fri, 23 Apr 2021 17:53:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bGOP2VntRnYzV/3W8Jqh9M1R80F3WMVQbMQiXWJfmnw=; b=PjlMasNgijlurnOmPryEZKeDA
	iA5yx/lwYHCQ12L57IarXXDKsOXlYR4gC33NG67SzwxGDLhdwcRiP9SWcXtAmuvQ1l/D2QghD+5pK
	wGgQ9NFocGU4Px1P5j7beGSSVYyxSFvf1OpU0Mbd/buY1x1lGTt9Bk6KEym/brGHhP3A2qEPTmBH/
	JX7L9kOG7NKfi6IzbuPh4bYqTnIazWmaQ4++ouOkF7vHrJNNhKo0qWaw9fyrI8sD/Mags/dkob3En
	C5wb6VFQu7RQZMI6w8MHuF9SlbCRy5tyxgeW59+aeaipG9T46RCa8et0IDh2RQQD4UiU/z1aPGYNd
	oYLHNEbhA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZy6V-001oRY-Rl; Fri, 23 Apr 2021 15:52:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZy66-001oO3-IA
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 15:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=JZWnum134dl9nhmhrhD9UquSkaWuCltNs36qHeTB6C4=; b=PJJe5osVJEZ0DvQWPImqMgpDxJ
 W4Ffb+dwJ0TEWKrXoiH61PYkA8g6WFVudp8pzf1l6DYegsixCkIAe/U1NrxUvwBrwnqVocG7+OPOG
 b/hcrpaPpdgnqQfgIX8C1e6X5RyLw5eeEex27R8adqiujZByR/O8gLWYpFtd3zS02feSGtPjfzCv0
 QfUhVUwVpVFzfW1Tpu+NxVW8e1ZNFCyJiKo0jLSNk8fMk+815YD0CSY0RLardmt8Lvxfz8lJQSM+f
 3k4rWNnfLf/uSfBmWbv4NcLzJSiYB54TujrWCdPE8iG7XE9RSaaiwPgBoiLEl1uFxe+IAY+0vTfIE
 FCzLW05g==;
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZy63-00EWau-Az
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 15:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1619193111;
 bh=fg3Mp+HpA9MtGr5J+ramlaLesmVc8Epc2R69VW7GUmk=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=XwzjWYMnEELmw0cKUlequrHI5LMK0PTGjeubj1WcURjvX5Dh/6p3tYfaCpUDwK+11
 5nZdYXg4/aJFczx3LK8kxrKuBmWhXaVCn/wXYb2+mBI7DHLMwV7VT0OvI4qBnAAGy+
 MDuaTPZdg/hG6GZY6oWwJBeLAsvgTh+IPIznQgJ4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.44] ([95.91.192.147]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MlNpH-1lCxYZ39uH-00lmbW; Fri, 23
 Apr 2021 17:51:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
 <20210423142829.29468-7-o.rempel@pengutronix.de>
 <1acc5ee3-f55b-c558-ea71-97d8e980b1bf@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <509df559-896c-ab55-1e1d-0000a4698c71@rempel-privat.de>
Date: Fri, 23 Apr 2021 17:51:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1acc5ee3-f55b-c558-ea71-97d8e980b1bf@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:X4R2kFNJ3f0ADc5DTKcl6neBrU/fBZWjNaTxgyJetLKVzhSUwJ0
 +jBvKsDZNizCiR+q2LOvA42OVdhh2h9l7Zq5aBNZq/UFZsgYSLlwJgtVXgWJ840gXit8eut
 1b7kmYp6yht0T/l36LiyT9kP3++ffUBAxxU5DZoCDR58so5mz9lKRYzS2cfsA1d4z3RPq4C
 4KnbB8YBJeCL6iDaUhtXQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5Qu8kB/ptQI=:3I0Uiyo/NOqBwlyjekp+cI
 YeM+7F/PAuVwGPM3tZ58onMD/P9+VjoGEdx8Tdld5McxfGze2PlMe+C6e9lon6UK3wdJJBIdi
 9hSSFPIGjNYHUNYeSIwT3RMdnvPGRdpvy1u47PdQ7gO+Tjrm9wDbUzQgJz8dNsKwMssmpuzWN
 uD2T5vOwG2ku3b8UHXRQtPXD8Klk270a3xICd4dbGwTJQJmQDjtwTsWVsmHrDBnme3WWmLJCr
 t7RlGLrRC1jtE67eCVqOeZSRViVnZ+yubmQO/kfI6cnzDC5VnI71HddvjPqsJwKfTihN4l86l
 82Y96/1rxQ3BJOjjBoCZ0slxxvSt/wrtsImiN9bbo1dccQSKdPc3seuLYWvRg/t5NrIjNydyP
 NFHmc7dZE8+GAf5NEPJOliamX/DNzXh7JlriqZoEU+Z3YKQegUHS9HkeFcVeN2mIuDPYfhDUn
 yTT3PV4aND82DgTTNbF/fGR013w6poDMfNiobPKRzTpj26RQobVyow+vGRdUjqSbtSe4oYqAu
 RsuRMReB4+OlcSMJaSlgEtbDwHFhFnh7KZm7q1R/2WJYvhOkDx5CbToxZ/fdnSZEx8rtA0ZWL
 OvjRxn1j7DCIixiTPDw7Yqo5IJDLoFCBuiOSrD/swjfjwNGY8vXAUiojQBCjihD9MxrMLZthE
 FT/od11nYgwJrOPUuTYXcExlEO5ekya7vIYOLvIsEposm6mtmvJKZW5y6NBj+XOMoBMUky4xI
 fDlWNjLeBnN2wEMktu8eyainuRS/wCq5lt59es2QdA+9TILsYWcsKLGoipehqILpBd6Y1GAxU
 Yp2accLDU5kXPJp9WaqdP30jTi/Yq5fqlI6ilDnP1h/naEMHTkrdl9tRXHILw6A4G1KFvmv89
 TEhoMbgAF0ussJrM9V0Ru5fFb9HpWmkLErNRCtZH0X05hvDQbKds9X+V1vl4VLvuQsuMbt+mU
 PnNhdamPdxC/G8mZxeXJFtn9emPrzN0ZBnbpKeEhpg8ZewvesTPPRCutvEjuxsUwkXtC+OCfI
 VFTGFKqIcJg45k9tFxFU0ag1084ILL8rcdlb510mkQ5cIu+zc3KHiSQwDYlOy60xzDeRIsCax
 rG/IVYhwSOeWUJzw9Bmm4uu0W3kSDdKdNdxtNPXNQUM1xMoOm4fNCpD6Jw0N8x4jcm/6oj4O1
 7IAQUprED5IiBGa/7b6lY8VuyRxrGxVdAgD4jx8fWeCxW0XRBjB3aZoUDBraPWPoxdQUVfSLe
 6PkfEuxh7ntWRDV1l
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_085159_716347_B88791B7 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/6] ARM: at91: sama5d3: add multiimage support for the
 microchip-ksz9477-evb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 23.04.21 um 17:29 schrieb Ahmad Fatoum:
> Hello Oleksij,
>
> On 23.04.21 16:28, Oleksij Rempel wrote:
>> -ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
>> +SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r4)
>>  {
>>  	void *fdt;
>>
>> -	arm_cpu_lowlevel_init();
>> -
>>  	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
>
> You should be able to drop this as well as the dbgu_init() after,
> because first stage already did it.

In case first stage was compile with same configs: yes.
In case first stage didn't prepared uart, the second stage will freeze
and first attempt to put any char.

>>
>>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
>> diff --git a/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h b/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
>> new file mode 100644
>> index 0000000000..6f829282c6
>> --- /dev/null
>> +++ b/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
>> @@ -0,0 +1,88 @@
>> +/* SPDX-License-Identifier: BSD-1-Clause
>> + *
>> + * Copyright (C) 2014, Atmel Corporation
>> + *
>> + * SAMA5D27 System-in-Package DDRAMC configuration
>> + */
>> +
>> +#include <mach/at91_ddrsdrc.h>
>> +#include <mach/ddramc.h>
>> +#include <mach/sama5d3_ll.h>
>> +
>> +static inline void sama5d3_xplained_ddrconf(void)
>> +{
>> +	const struct at91_ddramc_register conf = {
>> +		.mdr = AT91_DDRC2_DBW_32_BITS | AT91_DDRC2_MD_DDR2_SDRAM,
>> +
>> +		.cr = AT91_DDRC2_NC_DDR10_SDR9
>> +			| AT91_DDRC2_NR_13
>> +			| AT91_DDRC2_CAS_3
>> +			| AT91_DDRC2_DISABLE_RESET_DLL
>> +			| AT91_DDRC2_ENABLE_DLL
>> +			| AT91_DDRC2_ENRDM_ENABLE
>> +			| AT91_DDRC2_NB_BANKS_8
>> +			| AT91_DDRC2_NDQS_DISABLED
>> +			| AT91_DDRC2_DECOD_INTERLEAVED
>> +			| AT91_DDRC2_UNAL_SUPPORTED,
>> +
>> +		/*
>> +		 * The DDR2-SDRAM device requires a refresh every 15.625 us or 7.81 us.
>> +		 * With a 133 MHz frequency, the refresh timer count register must to be
>> +		 * set with (15.625 x 133 MHz) ~ 2084 i.e. 0x824
>> +		 * or (7.81 x 133 MHz) ~ 1039 i.e. 0x40F.
>> +		 */
>> +		.rtr = 0x40F,     /* Refresh timer: 7.812us */
>> +
>> +		/* One clock cycle @ 133 MHz = 7.5 ns */
>> +		.t0pr = AT91_DDRC2_TRAS_(6)	/* 6 * 7.5 = 45 ns */
>> +			| AT91_DDRC2_TRCD_(2)	/* 2 * 7.5 = 22.5 ns */
>> +			| AT91_DDRC2_TWR_(2)	/* 2 * 7.5 = 15   ns */
>> +			| AT91_DDRC2_TRC_(8)	/* 8 * 7.5 = 75   ns */
>> +			| AT91_DDRC2_TRP_(2)	/* 2 * 7.5 = 15   ns */
>> +			| AT91_DDRC2_TRRD_(2)	/* 2 * 7.5 = 15   ns */
>> +			| AT91_DDRC2_TWTR_(2)	/* 2 clock cycles min */
>> +			| AT91_DDRC2_TMRD_(2),	/* 2 clock cycles */
>> +
>> +		.t1pr = AT91_DDRC2_TXP_(2)		/* 2 clock cycles */
>> +			| AT91_DDRC2_TXSRD_(200)	/* 200 clock cycles */
>> +			| AT91_DDRC2_TXSNR_(19)	/* 19 * 7.5 = 142.5 ns */
>> +			| AT91_DDRC2_TRFC_(17),	/* 17 * 7.5 = 127.5 ns */
>> +
>> +		.t2pr = AT91_DDRC2_TFAW_(6)	/* 6 * 7.5 = 45 ns */
>> +			| AT91_DDRC2_TRTP_(2)		/* 2 clock cycles min */
>> +			| AT91_DDRC2_TRPA_(2)		/* 2 * 7.5 = 15 ns */
>> +			| AT91_DDRC2_TXARDS_(8)	/* = TXARD */
>> +			| AT91_DDRC2_TXARD_(8),	/* MR12 = 1 */
>> +	};
>> +	u32 reg;
>> +
>> +	/* enable ddr2 clock */
>> +	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_MPDDRC);
>> +	at91_pmc_enable_system_clock(IOMEM(SAMA5D3_BASE_PMC), AT91CAP9_PMC_DDR);
>> +
>> +
>> +	/* Init the special register for sama5d3x */
>> +	/* MPDDRC DLL Slave Offset Register: DDR2 configuration */
>> +	reg = AT91_MPDDRC_S0OFF_1
>> +		| AT91_MPDDRC_S2OFF_1
>> +		| AT91_MPDDRC_S3OFF_1;
>> +	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_DLL_SOR);
>> +
>> +	/* MPDDRC DLL Master Offset Register */
>> +	/* write master + clk90 offset */
>> +	reg = AT91_MPDDRC_MOFF_7
>> +		| AT91_MPDDRC_CLK90OFF_31
>> +		| AT91_MPDDRC_SELOFF_ENABLED | AT91_MPDDRC_KEY;
>> +	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_DLL_MOR);
>> +
>> +	/* MPDDRC I/O Calibration Register */
>> +	/* DDR2 RZQ = 50 Ohm */
>> +	/* TZQIO = 4 */
>> +	reg = AT91_MPDDRC_RDIV_DDR2_RZQ_50
>> +		| AT91_MPDDRC_TZQIO_4;
>> +	writel(reg, SAMA5D3_BASE_MPDDRC + AT91_MPDDRC_IO_CALIBR);
>> +
>> +	/* DDRAM2 Controller initialize */
>> +	at91_ddram_initialize(IOMEM(SAMA5D3_BASE_MPDDRC), IOMEM(SAMA5_DDRCS),
>> +			      &conf);
>> +}
>> diff --git a/images/Makefile.at91 b/images/Makefile.at91
>> index 00fa4cab27..7c32049270 100644
>> --- a/images/Makefile.at91
>> +++ b/images/Makefile.at91
>> @@ -14,6 +14,11 @@ pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
>>  FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
>>  image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
>>
>> +pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071_xload_mmc
>> +MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0xffff
>> +FILE_barebox-microchip-ksz9477-evb-xload-mmc.img = start_sama5d3_xplained_ung8071_xload_mmc.pblb
>> +image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb-xload-mmc.img
>> +
>>  pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
>>  FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
>>  image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
>>
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

