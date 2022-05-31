Delivery-date: Tue, 31 May 2022 10:17:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvx46-00G2JC-Ge
	for lore@lore.pengutronix.de; Tue, 31 May 2022 10:17:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvx44-0000N9-Nd
	for lore@pengutronix.de; Tue, 31 May 2022 10:17:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RR+FdA6mR3dLtUbjqj6RtjGvHqMXTv72m5lD08Mh/Xg=; b=WNs/89cMZ85iq2g8RNjI554J3E
	4QVlw1imdQhlOe60AQ78AG5DARPCaOviNdcdXyfkdiRGq8trBjAlssRZ0OlaPc5fr2iE6kmEFp/BN
	wuPJbZITjkTSb+CeDoBNUIFTk5V0XJmYagcqwlV4jKE1Di7QEb+uq9xfyLypQCKzo2mVXqPmmePRn
	yweR/Vr0mSzMWLJWe/4EW6eO2oJnOpkUg1pT0azvQYX69jzFJQ2YY3mtSEyWoRWoT8BLSZmj2zLKU
	i26QvI4bCY5tY+G4dgFYD+S5ATxDHW3LhWrifG4bdEMu4Gqj79as68fuWYRgahQMwKALMJ/6JUYz0
	B9drD25Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvx2j-009nU7-Ue; Tue, 31 May 2022 08:15:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvx2e-009nTV-Gw
	for barebox@lists.infradead.org; Tue, 31 May 2022 08:15:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvx2c-0008Rt-Fd; Tue, 31 May 2022 10:15:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvx2c-0002Rr-5r; Tue, 31 May 2022 10:15:50 +0200
Date: Tue, 31 May 2022 10:15:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ore@pengutronix.de
Message-ID: <20220531081550.GS1615@pengutronix.de>
References: <20220530162016.1052586-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220530162016.1052586-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_011552_760088_F0A50815 
X-CRM114-Status: GOOD (  26.54  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: rpi: reinstate support for multiple variants
 with same DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 30, 2022 at 06:20:16PM +0200, Ahmad Fatoum wrote:
> Raspberry Pi support contains custom board code to allow the same DT to
> be used across different board model for a given Raspberry Pi
> generation. For this to work, barebox may not deduce the model specific
> init from the device tree compatible, but instead detect it
> automatically. This was broken in the commit changing the board code to
> the driver model, so reinstate it.
> 
> Fixes: c062cd5cf47d ("ARM: rpi: validate devicetree compatible instead of changing model name")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 110 ++++------------------
>  1 file changed, 19 insertions(+), 91 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 41ef7d16773e..05d59ae6bf97 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -423,7 +423,7 @@ free_priv:
>  	return ret;
>  }
>  
> -static const struct rpi_machine_data rpi_model_a[] = {
> +static const struct rpi_machine_data rpi_1_ids[] = {
>  	{
>  		.hw_id = BCM2835_BOARD_REV_A_7,
>  		.flags = RPI_OLD_SCHEMA,
> @@ -436,12 +436,6 @@ static const struct rpi_machine_data rpi_model_a[] = {
>  	}, {
>  		.hw_id = BCM2835_BOARD_REV_A,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_a_plus[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_A_PLUS_12,
>  		.flags = RPI_OLD_SCHEMA,
>  	}, {
> @@ -450,12 +444,6 @@ static const struct rpi_machine_data rpi_model_a_plus[] = {
>  	}, {
>  		.hw_id = BCM2835_BOARD_REV_A_PLUS,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_b[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_B_I2C1_4,
>  		.flags = RPI_OLD_SCHEMA,
>  	}, {
> @@ -467,24 +455,12 @@ static const struct rpi_machine_data rpi_model_b[] = {
>  	}, {
>  		.hw_id = BCM2835_BOARD_REV_B,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_b_i2c0[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_B_I2C0_2,
>  		.flags = RPI_OLD_SCHEMA,
>  	}, {
>  		.hw_id = BCM2835_BOARD_REV_B_I2C0_3,
>  		.flags = RPI_OLD_SCHEMA,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_b_rev2[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_B_REV2_d,
>  		.flags = RPI_OLD_SCHEMA,
>  		.init = rpi_b_init,
> @@ -497,12 +473,6 @@ static const struct rpi_machine_data rpi_model_b_rev2[] = {
>  		.flags = RPI_OLD_SCHEMA,
>  		.init = rpi_b_init,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_b_plus[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_B_PLUS_10,
>  		.flags = RPI_OLD_SCHEMA,
>  		.init = rpi_b_plus_init,
> @@ -514,12 +484,6 @@ static const struct rpi_machine_data rpi_model_b_plus[] = {
>  		.hw_id = BCM2835_BOARD_REV_B_PLUS,
>  		.init = rpi_b_plus_init,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_compute_module[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_CM_11,
>  		.flags = RPI_OLD_SCHEMA,
>  	}, {
> @@ -528,21 +492,9 @@ static const struct rpi_machine_data rpi_compute_module[] = {
>  	}, {
>  		.hw_id = BCM2835_BOARD_REV_CM1,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_zero[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_ZERO,
>  		.init = rpi_0_init,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_zero_w[] = {
> -	{
>  		.hw_id = BCM2835_BOARD_REV_ZERO_W,
>  		.init = rpi_0_w_init,
>  	}, {
> @@ -550,7 +502,7 @@ static const struct rpi_machine_data rpi_model_zero_w[] = {
>  	},
>  };
>  
> -static const struct rpi_machine_data rpi_2_model_b[] = {
> +static const struct rpi_machine_data rpi_2_ids[] = {
>  	{
>  		.hw_id = BCM2836_BOARD_REV_2_B,
>  		.init = rpi_b_plus_init,
> @@ -559,45 +511,21 @@ static const struct rpi_machine_data rpi_2_model_b[] = {
>  	},
>  };
>  
> -static const struct rpi_machine_data rpi_3_model_a_plus[] = {
> +static const struct rpi_machine_data rpi_3_ids[] = {
>  	{
>  		.hw_id = BCM2837B0_BOARD_REV_3A_PLUS,
>  		.init = rpi_b_plus_init,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_3_model_b[] = {
> -	{
>  		.hw_id = BCM2837_BOARD_REV_3_B,
>  		.init = rpi_b_init,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_3_model_b_plus[] = {
> -	{
>  		.hw_id = BCM2837B0_BOARD_REV_3B_PLUS,
>  		.init = rpi_b_plus_init,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_compute_module_3[] = {
> -	{
>  		.hw_id = BCM2837_BOARD_REV_CM3,
>  	}, {
>  		.hw_id = BCM2837B0_BOARD_REV_CM3_PLUS,
>  	}, {
> -		.hw_id = U8_MAX
> -	},
> -};
> -
> -static const struct rpi_machine_data rpi_model_zero_2_w[] = {
> -	{
>  		.hw_id = BCM2837B0_BOARD_REV_ZERO_2,
>  	}, {
>  		.hw_id = U8_MAX
> @@ -606,27 +534,27 @@ static const struct rpi_machine_data rpi_model_zero_2_w[] = {
>  
>  static const struct of_device_id rpi_of_match[] = {
>  	/* BCM2835 based Boards */
> -	{ .compatible = "raspberrypi,model-a", .data = rpi_model_a },
> -	{ .compatible = "raspberrypi,model-a-plus", .data = rpi_model_a_plus },
> -	{ .compatible = "raspberrypi,model-b", .data = rpi_model_b },
> +	{ .compatible = "raspberrypi,model-a", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,model-a-plus", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,model-b", .data = rpi_1_ids },
>  	/* Raspberry Pi Model B (no P5) */
> -	{ .compatible = "raspberrypi,model-b-i2c0", .data = rpi_model_b_i2c0 },
> -	{ .compatible = "raspberrypi,model-b-rev2", .data = rpi_model_b_rev2 },
> -	{ .compatible = "raspberrypi,model-b-plus", .data = rpi_model_b_plus },
> -	{ .compatible = "raspberrypi,compute-module", .data = rpi_compute_module },
> -	{ .compatible = "raspberrypi,model-zero", .data = rpi_model_zero },
> -	{ .compatible = "raspberrypi,model-zero-w", .data = rpi_model_zero_w },
> +	{ .compatible = "raspberrypi,model-b-i2c0", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,model-b-rev2", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,model-b-plus", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,compute-module", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,model-zero", .data = rpi_1_ids },
> +	{ .compatible = "raspberrypi,model-zero-w", .data = rpi_1_ids },
>  
>  	/* BCM2836 based Boards */
> -	{ .compatible = "raspberrypi,2-model-b", .data = rpi_2_model_b },
> +	{ .compatible = "raspberrypi,2-model-b", .data = rpi_2_ids },
>  
>  	/* BCM2837 based Boards */
> -	{ .compatible = "raspberrypi,3-model-a-plus", .data = rpi_3_model_a_plus },
> -	{ .compatible = "raspberrypi,3-model-b", .data = rpi_3_model_b },
> -	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_model_b_plus },
> -	{ .compatible = "raspberrypi,model-zero-2-w", .data = rpi_model_zero_2_w },
> -	{ .compatible = "raspberrypi,3-compute-module", .data = rpi_compute_module_3 },
> -	{ .compatible = "raspberrypi,3-compute-module-lite", .data = rpi_compute_module_3 },
> +	{ .compatible = "raspberrypi,3-model-a-plus", .data = rpi_3_ids },
> +	{ .compatible = "raspberrypi,3-model-b", .data = rpi_3_ids },
> +	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_ids },
> +	{ .compatible = "raspberrypi,model-zero-2-w", .data = rpi_3_ids },
> +	{ .compatible = "raspberrypi,3-compute-module", .data = rpi_3_ids },
> +	{ .compatible = "raspberrypi,3-compute-module-lite", .data = rpi_3_ids },
>  
>  	{ /* sentinel */ },
>  };
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

