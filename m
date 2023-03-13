Delivery-date: Mon, 13 Mar 2023 15:45:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjQ6-006MQI-3B
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:45:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjQ5-000749-Iu
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:45:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yym+pw3PRilrF3CBaKU7qcyaOFbhgaQcCOwTLNqB4vI=; b=XNCw72anZL/TGZNZNNEvo2MVfD
	drMTbn09+bHhbrjKEhphRLY/J3/WIPz1IMteieXX5zV5Hvs6x2D/vS1RoNM1zDKRG5NP1TGHCDwZT
	3TeDVExSuaay2nD/Arez+waloBxdEu+1QtGdBBT6hUhyZSB9GpbjHfw+Y9DluMdRAoLkr5QzdGQo4
	cBSXfdR1e1i+aH9RvIKQg+LCnekseJTZSTlZCAuaE0YzCO23OWkh8AT4IkAluRvNphHGFrjsfckkv
	QxAdpvGIC4AoQ3F8/qWSSSslxacKy7YQ92pUzfWIZ/k1lnHLvbBCooWdOhL5VLkcREi58x15kybm3
	KwZFROTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjOl-006ArP-Ud; Mon, 13 Mar 2023 14:43:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjOe-006ApA-N7
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:43:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pbjOd-0006dw-GI; Mon, 13 Mar 2023 15:43:31 +0100
Message-ID: <ff749ed6-95d2-8e03-306a-d3aa120c0ed0@pengutronix.de>
Date: Mon, 13 Mar 2023 15:43:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 barebox@lists.infradead.org
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
 <20230210165353.3601175-2-a.fatoum@pengutronix.de>
 <8ab39746-bd15-6b72-f544-df2c12f971bc@wolfvision.net>
 <dc4ee9c6-e336-7073-c0a1-5f076f7429e4@pengutronix.de>
 <a08214bb-8cb0-8fd4-d8c7-3dbbd7e5165a@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <a08214bb-8cb0-8fd4-d8c7-3dbbd7e5165a@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074332_869720_D53FE636 
X-CRM114-Status: GOOD (  23.50  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] of: support of_ensure_probed for top-level machine
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Michael,

On 13.03.23 08:05, Michael Riesch wrote:
> I can sketch a patch that triggers this behavior on a Radxa ROCK3.
> Similar to my board code, this happens in the scope of a board probe
> function. Please find the sketch below.
> 
> Basing on the current next:

[snip]

I see now how this could not work. I dropped the commit introducing
the breakage and redid what I wanted to achieve differently.

Thanks for reporting and sorry for the hassle,
Ahmad

> 
> Board: Radxa ROCK3 Model A
> deep-probe: supported due to radxa,rock3a
> board-rock3 machine: of_device_ensure_probed_by_alias returned -19
> 
> With 2b46c9df976c ("of: support of_ensure_probed for top-level machine
> device") reverted:
> 
> Board: Radxa ROCK3 Model A
> deep-probe: supported due to radxa,rock3a
> rk808 rk8090: chip id: 0x8090
> rockchip_saradc fe720000.saradc@fe720000.of: registered as saradc
> board-rock3 machine: of_device_ensure_probed_by_alias returned 0
> 
> Thanks and best regards,
> Michael
> 
>> [...]
> ---- %< snip ----------------------------------------------------
> 
> diff --git a/arch/arm/boards/radxa-rock3/board.c
> b/arch/arm/boards/radxa-rock3/board.c
> index 4b4e0613d3..771777d4ea 100644
> --- a/arch/arm/boards/radxa-rock3/board.c
> +++ b/arch/arm/boards/radxa-rock3/board.c
> @@ -15,6 +15,7 @@ static int rock3_probe(struct device *dev)
>         enum bootsource bootsource = bootsource_get();
>         int instance = bootsource_get_instance();
>         const struct rock3_model *model;
> +       int ret;
> 
>         model = device_get_match_data(dev);
> 
> @@ -30,6 +31,9 @@ static int rock3_probe(struct device *dev)
>                                 "/dev/mmc1");
>         rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
> 
> +       ret = of_device_ensure_probed_by_alias("saradc");
> +       dev_info(dev, "of_device_ensure_probed_by_alias returned %d\n",
> ret);
> +
>         return 0;
>  }
> 
> diff --git a/arch/arm/dts/rk3568-rock-3a.dts
> b/arch/arm/dts/rk3568-rock-3a.dts
> index 25a0c05737..b8dc46c706 100644
> --- a/arch/arm/dts/rk3568-rock-3a.dts
> +++ b/arch/arm/dts/rk3568-rock-3a.dts
> @@ -6,6 +6,10 @@
>  #include "rk356x.dtsi"
> 
>  / {
> +       aliases {
> +               saradc = &saradc;
> +       };
> +
>         chosen: chosen {
>                 environment-sd {
>                         compatible = "barebox,environment";
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



