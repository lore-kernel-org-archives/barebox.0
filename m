Delivery-date: Thu, 05 Mar 2026 11:13:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5i1-008IQm-15
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 11:13:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy5i1-0001Te-KR
	for lore@pengutronix.de; Thu, 05 Mar 2026 11:13:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZYy83jfeve2EVPFAKx559UrM9TMZN0z8pWJiE4uCwdI=; b=LcGz6YquhstjlPP483LxM2bVQ8
	3sSXT1XUKSeQLQh9bdQObllOWC+qKmbVxqzN6N/dZgYZUg2OOYh0+cEomApHlOAU0E9vKkUAM24fp
	/jFC+0195qMVH59R+7Irn1ZsNyHDSdy1MYjDacunW58RDDjYB/CdPC61EU8nk27Bk/p9MzBpKxttH
	HCPbMbvBArp34V3LuReKcmcswY4KJrps9yJP1ms14jQXReZJM4Xr5TJdDMYk0Iv2bIJdTdYoi2YQJ
	9MkI+jQPXyrw9Gf0b8NZ4RzfjwbSwZx9vYIG6GbbrMJsEigwTmoml5CMwihE2pjr/yDBHIOuw32x1
	GGMCR/Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5hh-00000001WzY-06Da;
	Thu, 05 Mar 2026 10:13:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5he-00000001WzD-3P0u
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 10:13:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vy5hd-0001ND-7f; Thu, 05 Mar 2026 11:13:09 +0100
Message-ID: <0e70659e-8927-4af9-9376-a0a8717543ca@pengutronix.de>
Date: Thu, 5 Mar 2026 11:13:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
 <20260305-b4-sa2-usb-v2-2-cf377c10efd5@clermont.in2p3.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260305-b4-sa2-usb-v2-2-cf377c10efd5@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_021310_855186_74123469 
X-CRM114-Status: GOOD (  15.40  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/3] ARM: socfpga: Enclustra SA2: enable USB1 HS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/5/26 10:55 AM, David Picard wrote:
> Enable high-speed USB 2.0 USB1 controller on Enclustra
> Mercury+ SA2 module.

With Signed-off-by added:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/configs/socfpga_defconfig             | 6 ++++++
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 7 +++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
> index 37555a6297..8f9e34d459 100644
> --- a/arch/arm/configs/socfpga_defconfig
> +++ b/arch/arm/configs/socfpga_defconfig
> @@ -86,6 +86,10 @@ CONFIG_MTD_NAND_DENALI=y
>  CONFIG_MTD_NAND_DENALI_DT=y
>  CONFIG_MTD_SPI_NOR=y
>  CONFIG_SPI_CADENCE_QUADSPI=y
> +CONFIG_USB_HOST=y
> +CONFIG_USB_DWC2_HOST=y
> +CONFIG_USB_EHCI=y
> +CONFIG_USB_ULPI=y
>  CONFIG_MCI=y
>  CONFIG_MCI_DW=y
>  CONFIG_LED=y
> @@ -103,6 +107,8 @@ CONFIG_FIRMWARE_ALTERA_SOCFPGA=y
>  CONFIG_FPGA=y
>  CONFIG_FPGA_BRIDGE=y
>  CONFIG_SOCFPGA_FPGA_BRIDGE=y
> +CONFIG_GENERIC_PHY=y
> +CONFIG_USB_NOP_XCEIV=y
>  CONFIG_FS_EXT4=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_NFS=y
> diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
> index 6334573a77..cd33b38d2b 100644
> --- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
> +++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
> @@ -8,6 +8,7 @@
>   */
>  
>  #include <arm/intel/socfpga/socfpga_cyclone5.dtsi>
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	barebox,deep-probe;
> @@ -205,6 +206,12 @@ Reference:
>  	};
>  };
>  
> +&usbphy0 {
> +	/* HPS_GPIO0, active low */
> +	reset-gpios = <&porta 0 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
>  &usb1 {
>  	status = "okay";
>  	dr_mode = "host";
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



