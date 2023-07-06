Delivery-date: Thu, 06 Jul 2023 07:25:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHHUo-00HEsB-S6
	for lore@lore.pengutronix.de; Thu, 06 Jul 2023 07:25:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHHUm-0007jk-9K
	for lore@pengutronix.de; Thu, 06 Jul 2023 07:25:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5DNHLxNnm9aMkRUEW7Wanw/INCRmZzjA6DrWw1rLFts=; b=lYg/40F56XDt3taCw4e4FC4XP9
	fQpuFSd6anD8/XCNyrozu5TYwe+GfIA6bpUbPDOnAeBPmt2Vhc9Vyrt5X9OPK/7iniDm6wT6k0idl
	PJ79qpqHey8tsqF3+6j6He8HLFdZbl0jb0d8kAO8Cq3N6YYHWnKM9Ty2tzF8wdaptpbH2bfvONF7w
	fkJU+HJdq2fA+nHxXAhlrlH3TYrTKsvGy5TbzEt7OUaAmHLBnSrGOVa3DEWCdB5bzCzH27UPwd2KO
	0wnp3wPxyjX6zMpfRC1s2Z+R959Q+io8IQbEMDpUfhQZSQUSNVDtA3TjwODzODDKsW2zG2HXG7w69
	o87angig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHHTd-000U5b-09;
	Thu, 06 Jul 2023 05:24:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHHTZ-000U4x-0Q
	for barebox@lists.infradead.org;
	Thu, 06 Jul 2023 05:24:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qHHTX-0007Qk-69; Thu, 06 Jul 2023 07:24:19 +0200
Message-ID: <6aa34f8b-bdb7-b1e8-e8b1-c9d53a25dc77@pengutronix.de>
Date: Thu, 6 Jul 2023 07:24:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230706050343.558251-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230706050343.558251-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_222421_195076_79573F3C 
X-CRM114-Status: GOOD (  20.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] ARM: at91: add support for SAMA5D3 - Ethernet
 Development System Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 06.07.23 07:03, Oleksij Rempel wrote:
> Microchip Technology SAMA5D3 Ethernet Development System (EDS) Board
> (DM320114) is an MPU-based platform for evaluating Ethernet Switch and
> PHY products. Compatible Ethernet Switch and PHY Evaluation Boards
> connect to the SAMA5D3 EDS Board via either an RGMII or RMII connector.
> The Microchip Technology SAMA5D3 EDS Board is not intended for
> stand-alone use and has no Ethernet capabilities when no daughter board
> or an USB Ethernet adapter is connected.
> 
> For more information see:
> https://www.microchip.com/en-us/development-tool/DM320114
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Few suggestions below. With these addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +SAMA5D3_ENTRY_FUNCTION(start_microchip_sama5d3_eds, r4)
> +{
> +	void *fdt;
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		dbgu_init();
> +
> +	fdt = __dtb_z_at91_microchip_sama5d3_eds_start + get_runtime_offset();
> +
> +	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);

sama5d3_barebox_entry(r4, fdt);

This way you don't hardcode memory size and you can use $bootsource, $bootsource_instance
in barebox proper.

> diff --git a/arch/arm/dts/at91-microchip-sama5d3-eds.dts b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
> new file mode 100644
> index 0000000000..870d7905be
> --- /dev/null
> +++ b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/dts-v1/;
> +#include <arm/at91-sama5d3_eds.dts>
> +#include "sama5d3.dtsi"
> +
> +/ {
> +	chosen {
> +		environment {
> +			compatible = "barebox,environment";
> +			device-path = &mmc0, "partname:0";
> +			file-path = "barebox.env";
> +		};
> +	};
> +
> +	memory@20000000 {
> +		device_type = "memory";
> +		reg = <0x20000000 0x10000000>;
> +	};

You should be able to drop this and rely on the atmel,sama5d3-ddramc driver.

> +};
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index b803a1185d..b7db8665aa 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -604,6 +604,16 @@ config MACH_MICROCHIP_KSZ9477_EVB
>  	help
>  	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
>  
> +config MACH_MICROCHIP_SAMA5D3_EDS

Can you enable this board in at91_multi_defconfig?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



