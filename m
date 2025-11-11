Delivery-date: Tue, 11 Nov 2025 18:29:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIsBm-000E0p-0j
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 18:29:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIsBl-0007RB-Jv
	for lore@pengutronix.de; Tue, 11 Nov 2025 18:29:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gLcW7sWiP1Wy0JNYY5EgqlWV0HQ0gBx9d9MHCXLSbog=; b=EPp9/5nFQHmbI3zZJQSV4nphXU
	B3thz1hn4O78+/monsD8YE/wc9MFG2YSGpsHb++WEBEw4KWE31OPoNnb4A6uokDzRFXRM+fM8JsX9
	0v+r8izj2g7w7UrlAeUPZta4YhyyqfeBlRczDz3k759sIh7BDYjHtySM8NRDCvPfZIS9vECFaN+dp
	bigEwTkRDznDu2cyN8OPINHakICoKqGP6HaiLj0Cud7TB9xZfzOrVfVJ15+Db0FDEky/YeK6/+Sxx
	6pLkJNT6fDYdaxrIgEqI0XY/UUjTTcdfZYcmcRXZyKXgFbjUv+F6I7E3jEsiT4rRBclfMc0b2kmJ4
	umIOhung==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsBJ-00000007XMH-0ha3;
	Tue, 11 Nov 2025 17:29:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsBH-00000007XLa-1QKH
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 17:29:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIsBF-0007LK-P1; Tue, 11 Nov 2025 18:29:21 +0100
Message-ID: <8711cbfe-7919-4675-83cd-9ed7c61f3189@pengutronix.de>
Date: Tue, 11 Nov 2025 18:29:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>, barebox@lists.infradead.org
References: <20251111171622.3528732-2-f.pfitzner@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251111171622.3528732-2-f.pfitzner@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_092923_381436_ABF78416 
X-CRM114-Status: GOOD (  25.83  )
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
Subject: Re: [PATCH v2] ARM: karo-tx6: enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11.11.25 18:16, Fabian Pfitzner wrote:
> We have two baseboards using this SoM mainline sharing the same board
> code that is not yet deep probe compatible, because they expect i2c0 to
> be available at device_initcall level.
> 
> Make the board code deep probe compatible and enable deep probe for all
> boards using this SoM. Out-of-tree board code will need to adapt
> accordingly, so note that in the migration guide.
> 
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>

Sorry, but I haven't looked proprly. :(

You are only changing the two board device trees, so this is not actually
correct...

Either we should add barebox,deep-probe into imx6qdl-tx6x.dtsi and remove
the disables from the board device tree or we leave them as-is and just
drop the migration guide node and adapt the commit message...


Sorry for the confusion.

Thanks,
Ahmad

> ---
>  Documentation/migration-guides/migration-master.rst | 12 ++++++++++++
>  arch/arm/boards/karo-tx6x/board.c                   |  2 ++
>  arch/arm/dts/imx6dl-tx6u.dts                        |  2 +-
>  arch/arm/dts/imx6q-tx6q.dts                         |  2 +-
>  4 files changed, 16 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/migration-guides/migration-master.rst
> 
> diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
> new file mode 100644
> index 0000000000..41b055d7fe
> --- /dev/null
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -0,0 +1,12 @@
> +Release Unknown
> +===============
> +
> +Board support
> +-------------
> +
> +Karo TX6X
> +^^^^^^^^^
> +
> +Deep probe has been enabled for this board. Out-of-tree board code for these
> +SoMs must either ensure devices are available as the in-tree code does or they
> +should add ``barebox,disable-deep-probe`` to their top level device tree node.
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
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


