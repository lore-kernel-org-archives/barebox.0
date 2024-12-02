Delivery-date: Mon, 02 Dec 2024 18:34:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIAJv-003Aj8-1w
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 18:34:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIAJv-0000Vi-C1
	for lore@pengutronix.de; Mon, 02 Dec 2024 18:34:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LjgS8wtVXUACrnAvdE/U28S9caygLpoargHJF7OpMjg=; b=icJUPqil2xgevBm2/6kKFwvoNi
	PwYCPQkXmIGd43JhX2mp2kYIov2tZ7iVHCQ4cqtngd3VJCpACwMxSnr9jdBIy/r5jNw8nSEPt/eYO
	rYABwFOeH5yj6gcSJnpUt3BotPz4ntKgt57BnI0MnW2BsNazz6AniqogJknETP3YxdaCNio5GWqf4
	6TOPA5kF5CJGMY6TvV74hgHSwEAoCTBTDe/kgY6vCDt4BCTOS/B6sZ3XyOOv0hggBhr8CtyNINsjO
	e5DRYDgcTD4PrKvPKz0rfFbJJrOY2jovsXjAs1gza+Jcnk9N1QvNfh/Jz0rfbRWdgjcMsTl+9TdJ+
	gWpdiL9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIAJN-000000071oj-0NIv;
	Mon, 02 Dec 2024 17:34:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIADC-000000070ol-0dAx
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 17:27:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIADA-0007Lv-Ru; Mon, 02 Dec 2024 18:27:52 +0100
Message-ID: <55706027-0392-4431-acdc-394f056a0f52@pengutronix.de>
Date: Mon, 2 Dec 2024 18:27:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dang Huynh <danct12@riseup.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
References: <20241202-pt2-init-v1-1-bd1ebdc747e0@riseup.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241202-pt2-init-v1-1-bd1ebdc747e0@riseup.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_092754_193308_2B96C62E 
X-CRM114-Status: GOOD (  22.95  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: Add support for Pine64 PineTab 2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Dang,

Thanks for your patch. It looks good, but some minor comments below.

On 02.12.24 17:35, Dang Huynh wrote:
> The Pine64 PineTab 2 tablet is basically the Quartz64 but as
> a finished product.
> 
> There are (currently) two revisions, v0.1 and v2.0.
> 
> v0.1 was sent to developers and there are a few units around
> (probably less than 10?)
> 
> v2.0 is the consumer available version, this version changed the
> display reset pin and hooked WLAN/BT chip to a GPIO.
> 
> There are currently no easy way to detect both revisions. For now,
> we'll only support v2.0.

This is outdated. The patch supports both, but not with the same image.

> +	barebox_set_hostname(model->shortname);

Good idea, otherwise the hostname autogenerated from DT would
contain a period (invalid character for hostnames).

> +	if (bootsource == BOOTSOURCE_MMC && instance == 0)
> +		of_device_enable_path("/chosen/environment-sd");
> +	else
> +		of_device_enable_path("/chosen/environment-emmc");
> +
> +	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc0");
> +	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc1");

Don't you want to set BBU_HANDLER_FLAG_DEFAULT depending on whether you
booted from SD or eMMC?

> +#include <arm64/rockchip/rk3566-pinetab2.dtsi>
> +#include "rk356x.dtsi"
> +
> +/ {
> +	chosen: chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &environment_sd;
> +			status = "disabled";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &environment_emmc;
> +			status = "disabled";
> +		};
> +	};
> +
> +	memory@a00000 {
> +		device_type = "memory";
> +		reg = <0x0 0x00a00000 0x0 0x7f600000>;
> +	};

barebox can autodetect this at runtime. I think you can safely drop this.

> +&sdhci {
> +	no-sd;

This property is already in the upstream kernel DT.

> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		environment_emmc: partition@408000 {

Why did you choose address 0x408000 in particular?

> +			label = "barebox-environment";
> +			reg = <0x0 0x408000 0x0 0x8000>;
> +		};
> +	};
> +};

> +config MACH_PINE64_PINETAB2
> +	select ARCH_RK3568
> +	bool "Pine64 PineTab 2"
> +	help
> +	  Say Y here if you are using a Pine64 PineTab 2

One config option is enough and just generate both images always
and merge the help text from the old options.

> --- a/images/Makefile.rockchip
> +++ b/images/Makefile.rockchip
> @@ -31,6 +31,8 @@ image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
>  
>  $(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
>  $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
> +$(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2_V0, start_pinetab2_v0, pine64-pinetab2/sdram-init.bin, pinetab2-v0)
> +$(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2_V2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)

Just use CONFIG_MACH_PINE64_PINETAB2 here. Also please enable in multi_v8_defconfig
and rockchip_v8_defconfig for CI coverage.

Thanks,
Ahmad

>  $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
>  $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
>  $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
> 
> ---
> base-commit: 7a3cb7e6fd6338144972b7c83675fb5c709ea6f8
> change-id: 20241202-pt2-init-7122fe34f0d6
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


