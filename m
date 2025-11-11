Delivery-date: Tue, 11 Nov 2025 13:13:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vInF9-0009Bw-0U
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 13:13:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vInF8-0007gs-H8
	for lore@pengutronix.de; Tue, 11 Nov 2025 13:13:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EcQnXvGrexasgDXyBVCUcH5++TpVXLjxreu6bOMZqEk=; b=pvd50lKxF4LFvmZXzTySI5hUDB
	+EaulVHGs19KzOmHdbv1tZR0v4ShfBZnAZHtjRis2tA1siYHBRlgW/fN2b8T2XSJ+/plFlwtv4IoH
	esptppcOslTEpX87MVTMReimpaO7wgIVOyaaclNCuoyQBLdfZbcGENLxS/7D0QGM6r93dQTDmVMBL
	Fx88NXFpsEJjEayi8hPSL5BTk2YlbtWo4MNW1zaGheLSslZisSUrh+3fDHp8rl3O66Z9ysu4ulYB1
	nyOqXfZbNgBFz9IZvwn1JFA/GYeFk77HvI2SgAbNyGHbTtDcAxselrrgE9fPlj8NufWX+9ZqVcbtX
	cv1+nmZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vInEd-0000000797W-3w4R;
	Tue, 11 Nov 2025 12:12:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vInEa-0000000796j-3AfV
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 12:12:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vInEY-0007bU-Lp; Tue, 11 Nov 2025 13:12:26 +0100
Message-ID: <4b544666-9d5d-42b2-b542-90250e1145cf@pengutronix.de>
Date: Tue, 11 Nov 2025 13:12:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>, barebox@lists.infradead.org
References: <20251111114915.1289377-2-f.pfitzner@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251111114915.1289377-2-f.pfitzner@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_041228_804916_729B2C98 
X-CRM114-Status: GOOD (  22.78  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: karo-tx6: enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/11/25 12:49 PM, Fabian Pfitzner wrote:

Please write commit messages, e.g.,

We have two baseboards using this SoM mainline sharing the same board
code that is not yet deep probe compatible, because they expect i2c0 to
be available at device_initcall level.

Make the board code deep probe compatible and enable deep probe for all
boards using this SoM. Out-of-tree board code will need to adapt
accordingly, so note that in the migration guide.



> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> ---
>  Documentation/migration-guides/migration-2025.11.0.rst | 4 ++++
>  arch/arm/boards/karo-tx6x/board.c                      | 2 ++
>  arch/arm/dts/imx6dl-tx6u.dts                           | 2 +-
>  arch/arm/dts/imx6q-tx6q.dts                            | 2 +-
>  4 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
> index a9c7abb66e..fa8140f615 100644
> --- a/Documentation/migration-guides/migration-2025.11.0.rst
> +++ b/Documentation/migration-guides/migration-2025.11.0.rst
> @@ -18,3 +18,7 @@ Karo TX6X
>  The barebox update handler for this SoM no longer unconditionally updates
>  /dev/mmc3.boot0, but instead it now updates the inactive boot partition
>  on /dev/mmc3 and then sets it as active allowing for power-fail safety.
> +
> +Deep probe has been enabled for this board. Out-of-tree board code for these
> +SoMs must either ensure devices are available as the in-tree code does or they
> +should add ``barebox,disable-deep-probe`` to their top level device tree node.

This will probably not be part of v2025.11.0, can you add this (with a
heading) to Documentation/migration-guides/migration-master.rst instead?

It will then land in the appropriate release.

Thanks,
Ahmad

> diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
> index 43e23f00cd..1924660c11 100644
> --- a/arch/arm/boards/karo-tx6x/board.c
> +++ b/arch/arm/boards/karo-tx6x/board.c
> @@ -54,6 +54,8 @@ static int setup_pmic_voltages(void)
>  	int bus = 0;
>  	uint8_t reg;
>  
> +	of_device_ensure_probed_by_alias("i2c0");
> +
>  	adapter = i2c_get_adapter(bus);
>  	if (!adapter) {
>  		pr_err("i2c bus %d not found\n", bus);
> diff --git a/arch/arm/dts/imx6dl-tx6u.dts b/arch/arm/dts/imx6dl-tx6u.dts
> index 1055de9d80..c23673d729 100644
> --- a/arch/arm/dts/imx6dl-tx6u.dts
> +++ b/arch/arm/dts/imx6dl-tx6u.dts
> @@ -8,6 +8,6 @@
>  / {
>  	model = "Ka-Ro electronics TX6U-801x Module";
>  	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
> -	barebox,disable-deep-probe;
> +	barebox,deep-probe;
>  };
>  
> diff --git a/arch/arm/dts/imx6q-tx6q.dts b/arch/arm/dts/imx6q-tx6q.dts
> index c2aacfc415..daf9549ea5 100644
> --- a/arch/arm/dts/imx6q-tx6q.dts
> +++ b/arch/arm/dts/imx6q-tx6q.dts
> @@ -8,6 +8,6 @@
>  / {
>  	model = "Ka-Ro electronics TX6Q Module";
>  	compatible = "karo,imx6q-tx6q", "fsl,imx6q";
> -	barebox,disable-deep-probe;
> +	barebox,deep-probe;
>  };
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



