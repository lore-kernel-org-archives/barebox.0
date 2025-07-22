Delivery-date: Tue, 22 Jul 2025 19:00:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueGMD-002cnE-08
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 19:00:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueGMC-0005oy-Aw
	for lore@pengutronix.de; Tue, 22 Jul 2025 19:00:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mnlZfELeQyxkt/fu1GBsPJMLHFbBtbolWHMdikp3zmo=; b=Uy6H6hD1zo6OhiBIoE1cIv8G9K
	ZdrzxQZGsHATdxqpOgXubv8rj7lsIXJxcC2pa+f7WUzs4glYBXWQtuPwAI64daKXrPG38CZC5uEtm
	oBc4X0BGCcw/ihJOwoWXtEjfmrnsrcLh6vrehtwqN2t2GwELedSkyi8RCHbYXeK2phR8v7D2eu6FD
	a5cOQQHXCCj//bpIugU5hfJbrBWy7LBIH4YFeHoAaf+Ssp2B7Nf/gOwuH+Sjf79fEs5Jlys3GMN0s
	XPSPJDNPLmEmoNdGm9cTOBnPmC63YLDXXD0uJI6ULRHxC9ZSYIXU0OEKjY+ZqcJtIhxGc6HV+19Wr
	6ZU9ZKSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGLe-000000034wW-30Tr;
	Tue, 22 Jul 2025 17:00:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueG4f-000000033Mh-1Ukp
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 16:42:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueG4e-0008W8-3v; Tue, 22 Jul 2025 18:42:40 +0200
Message-ID: <b4b3f20f-2fd2-4653-8f1a-dd303e7c5b8e@pengutronix.de>
Date: Tue, 22 Jul 2025 18:42:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 barebox@lists.infradead.org
References: <20250719174737.2035188-2-uwe@kleine-koenig.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250719174737.2035188-2-uwe@kleine-koenig.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_094241_398497_464985DC 
X-CRM114-Status: GOOD (  31.87  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] arm64: rockchip: Add support for QNAP's ts-433 4bay
 NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Uwe,

On 7/19/25 19:47, Uwe Kleine-König wrote:
> The resulting image boots to a prompt using usb booting or when booting
> from eMMC. Networking and USB are working.

Cool stuff!

My comments below.

> Thanks to the fine rk3568 base support this was an easy journey to
> create a powerful bootloader for my NAS. Thanks!

Glad to hear. :)

> diff --git a/arch/arm/boards/qnap-tsx33/board.c b/arch/arm/boards/qnap-tsx33/board.c
> new file mode 100644
> index 000000000000..2611f7a6a9bf
> --- /dev/null
> +++ b/arch/arm/boards/qnap-tsx33/board.c
> @@ -0,0 +1,73 @@
> +#include <common.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <mach/rockchip/bbu.h>
> +#include <bootsource.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +#include <deep-probe.h>
> +
> +static int ts433_usb_device_mode(void)
> +{
> +	struct device_node *node;
> +
> +	/* &usb_host0_xhci */
> +	node = of_find_node_by_path("/usb@fcc00000");
> +	if (!node)
> +		return -ENODEV;
> +
> +	return of_property_write_string(node, "dr_mode", "peripheral");
> +}
> +
> +static int ts433_probe(struct device *dev)
> +{
> +	enum bootsource bootsource = bootsource_get();
> +	int copy_button_pressed = !gpio_get_value(14);

You need to ensure the GPIO controller is probed before you try to get
the GPIO, e.g. by calling

  of_devices_ensure_probed_by_property("gpio-controller");

first.

My preference would be using the input API for this though.

Define a gpio-keys node in the DT, wire the GPIO and then call:

  of_devices_ensure_probed_by_compatible("gpio-keys");
  input_key_get_status(keys, KEY_COPY);

For an example, see commit e44d472d128d ("ARM: boards: protonic-imx6:
prtvt7: Use the input system for key detection").


> +	barebox_set_model("QNAP TS-433");
> +	barebox_set_hostname("ts433");
> +
> +	if (bootsource == BOOTSOURCE_USB || copy_button_pressed) {
> +		/*
> +		 * Configure the front USB socket to USB device (i.e. like the
> +		 * ROM when booting from USB. Add gadget support equivalent to
> +		 * usbgadget -b -A "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)" -a
> +		 */
> +		ts433_usb_device_mode();

If you set dr_mode = "otg" in the device tree, you can just do
otg.mode=peripheral/host in barebox without having to mess with DT directly.

> +		globalvar_add_simple("usbgadget.autostart", "1");

Conceptually, this should be at the end, because it activate the
feature. It doesn't matter here though, I think, because it's only
evaluated later on.

> +		globalvar_add_simple("fastboot.bbu", "1");
> +		globalvar_add_simple("fastboot.partitions", "kernel(kernel)c,initramfs(initramfs)c,dtb(dtb)c");
> +		globalvar_add_simple("usbgadget.acm", "1");

These could have been a built-in init script, but both are fine I guess.

> +		/*
> +		 * exit to a shell, also to give the user the chance to open the
> +		 * console on USB.
> +		 */
> +		globalvar_add_simple("autoboot", "abort");

You could instead set a higher count down time, so a mistaken press
during startup will eventually boot still. For actual flashing use,
first fastboot command or console input will abort the countdown anyway.

> +
> +		/*
> +		 * Don't use emmc to result in a working state even with a
> +		 * borked environment.
> +		 */
> +		of_device_disable_path("/chosen/environment-emmc");

You will want to call globalvar_set("env.autoprobe", "0") as well, so
environment isn't autoprobed by Type UUID.

Cheers,
Ahmad

> +	}
> +
> +	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id ts433_of_match[] = {
> +        { .compatible = "qnap,ts433" },
> +        { /* Sentinel */},
> +};
> +
> +static struct driver ts433_board_driver = {
> +        .name = "board-ts433",
> +        .probe = ts433_probe,
> +        .of_compatible = ts433_of_match,
> +};
> +coredevice_platform_driver(ts433_board_driver);
> +
> +BAREBOX_DEEP_PROBE_ENABLE(ts433_of_match);
> diff --git a/arch/arm/boards/qnap-tsx33/lowlevel.c b/arch/arm/boards/qnap-tsx33/lowlevel.c
> new file mode 100644
> index 000000000000..f852e8d00a2b


> --- /dev/null
> +++ b/arch/arm/dts/rk3568-qnap-ts433.dts
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +
> +/dts-v1/;
> +#include <arm64/rockchip/rk3568-qnap-ts433.dts>
> +#include "rk356x.dtsi"
> +
> +/ {
> +	chosen: chosen {
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &sdhci, "partname:barebox-environment";
> +		};
> +	};

If you choose 6C3737F2-07F8-45D1-AD45-15D260AAB24D as GPT partition type
UUID, barebox should automatically choose it as environment partition.

This would allow you to drop this node completely.

> +};
> +
> +&gmac0 {
> +	/*
> +	 * The Linux device tree uses rgmii-id and that also works iff the
> +	 * matching phy driver (motorcomm) is available. The barebox motorcomm
> +	 * driver however doesn't support the used phy (Motorcomm YT8521) yet
> +	 * and so we have to stick to rgmii and explicit delays for now.
> +	 */

Fair enough.

> +	phy-mode = "rgmii";
> +	tx_delay = <0x3c>;
> +	rx_delay = <0x2f>;
> +};

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



