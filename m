Delivery-date: Mon, 17 Oct 2022 18:39:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okT9U-00Bka8-GQ
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 18:39:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okT9S-0006P9-Hm
	for lore@pengutronix.de; Mon, 17 Oct 2022 18:39:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fLkCDdJIGwIFQ05E9nrpL3Mi+oOwRNll2WuASUE9nog=; b=1baisoruVsOgHk4iC8o0KndnV8
	yoUXeWMHyayQWEkM2gMHQZ2ojwYpgZYKZ8uBI59jTG46BH41WL6RjPSpUO3Ri2cCNGqm6Hf0xulUH
	ZRhhudV3xvte85umQ+mz/3zT0l7cBHjt5fekQqr078NsV6BsL+bTba461XskdWphunWiV8MlxkFeY
	PPN+Z+Bbj/dxR0pamoEczYa26hAF4rCs9ag3n8HyGNtq8p4fFX9/dOvSYl9U3GzshnSLaZqLfFCkF
	bMtKABdALUgAX9INXoHrz9WP2cWfhu1fGdrCQOfFqA+j5QIjBrazL32wH/ip6vwRa+BADnJOOLJXa
	VwEkAEzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okT84-00Dmt7-GT; Mon, 17 Oct 2022 16:38:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okT7z-00Dmry-Fz
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 16:38:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1okT7x-0006BY-IZ; Mon, 17 Oct 2022 18:38:09 +0200
Message-ID: <779a876b-0d5a-7f21-46cf-223a2f0df9ba@pengutronix.de>
Date: Mon, 17 Oct 2022 18:38:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20221017161818.333094-1-m.felsch@pengutronix.de>
Cc: =?UTF-8?Q?Hans_Christian_L=c3=b8nstad?= <hcl@datarespons.no>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221017161818.333094-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_093811_560264_67E2532A 
X-CRM114-Status: GOOD (  23.23  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next 1/3] ARM: i.MX8MP: EVK: convert to board driver and
 enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.10.22 18:18, Marco Felsch wrote:
> Convert the driver to the board driver mechanism. While on it enable the
> deep-probe support and add a comment about the ENET1_RGMII_EN bit
> setting.

Cc += Hans, who reported the same issue on Github.

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/nxp-imx8mp-evk/board.c | 21 ++++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
> index 8f1c247109..57c41aa8d8 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
> @@ -6,6 +6,7 @@
>  #include <asm/memory.h>
>  #include <bootsource.h>
>  #include <common.h>
> +#include <deep-probe.h>
>  #include <init.h>
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
> @@ -14,15 +15,12 @@
>  #include <gpio.h>
>  #include <envfs.h>
>  
> -static int nxp_imx8mp_evk_init(void)
> +static int nxp_imx8mp_evk_probe(struct device_d *dev)
>  {
>  	int emmc_bbu_flag = 0;
>  	int sd_bbu_flag = 0;
>  	u32 val;
>  
> -	if (!of_machine_is_compatible("fsl,imx8mp-evk"))
> -		return 0;
> -
>  	if (bootsource_get() == BOOTSOURCE_MMC) {
>  		if (bootsource_get_instance() == 2) {
>  			of_device_enable_path("/chosen/environment-emmc");
> @@ -39,10 +37,23 @@ static int nxp_imx8mp_evk_init(void)
>  	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
>  	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
>  
> +	/* Enable RGMII TX clk output */
>  	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
>  	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN;
>  	writel(val, MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
>  
>  	return 0;
>  }
> -coredevice_initcall(nxp_imx8mp_evk_init);
> +
> +static const struct of_device_id nxp_imx8mp_evk_of_match[] = {
> +	{ .compatible = "fsl,imx8mp-evk" },
> +	{ /* Sentinel */ }
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(nxp_imx8mp_evk_of_match);
> +
> +static struct driver_d nxp_imx8mp_evk_board_driver = {
> +	.name = "board-nxp-imx8mp-evk",
> +	.probe = nxp_imx8mp_evk_probe,
> +	.of_compatible = nxp_imx8mp_evk_of_match,
> +};
> +coredevice_platform_driver(nxp_imx8mp_evk_board_driver);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


