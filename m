Delivery-date: Fri, 09 Jun 2023 08:45:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vsi-00GqZo-Mu
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:45:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Vsf-0003vI-Pn
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:45:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0T2lIS5VPRovID45f4k52+EsfJglyTLPYSUjflF2vjk=; b=ZZKcGjEZa7QFFrLc1QRax8rC6a
	bJA066I5kcd/fLdZY6NnTTT8jeKn8R11rMeCd58TMxcjvl/KTBYrfyxxCjVFriFJqJWdToLRHjGSA
	emIWUX/qvrNRIuVuiyuTnM1MVLtHKzoWQR2+Q4KfcpOmJ3/Zr9i6KsqlBlH2MDM2hM25khLbe2Jve
	tQIMKd3YOaN6l6e3fmaCCqUAaIsbi19vcLC2E/2fX8yiiozhhsP6f9vJ5giYx6w2pGzzxVwpRvezR
	/cH7uDnHDcxW31RaPdMPcUyXSKLtjJwDvROqmbNUqsdoE3oGEORpGj9aV5KKKdS6KEEwx/lam5Jzj
	RHEOGLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vre-00BwAA-0U;
	Fri, 09 Jun 2023 06:44:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Vra-00Bw8Y-22
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:44:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VrZ-0003Tg-AI; Fri, 09 Jun 2023 08:44:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VrZ-0008IN-2o; Fri, 09 Jun 2023 08:44:45 +0200
Date: Fri, 9 Jun 2023 08:44:45 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230609064445.GP18491@pengutronix.de>
References: <20230608065805.3095109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230608065805.3095109-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_234446_667758_3AE5E635 
X-CRM114-Status: GOOD (  29.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: state-example: fix use with Phytec phyFLEX
 i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 08, 2023 at 08:58:05AM +0200, Ahmad Fatoum wrote:
> The state-example.dtsi was added 5 years ago and while the binding is
> still applicable, the imx6q-phytec-pbab01.dts device tree that it
> extends when USE_STATE_EXAMPLE is defined has changed in a way that
> breaks use of the state nodes.
> 
> Do the necessary to restore the examples to working order:
> 
>   - Reference the NOR partition inside of the fixed-partition container
>     it's inside now
> 
>   - Resize the NAND, so the last 1M of the barebox 16M partition can
>     be used for state. Also use the fixed-partition container that
>     has been added in the meantime.
> 
>   - Use phandles or label-relative paths, so we get build errors
>     if the path changes again in future
> 
> There's still a WARNING: state_nor: Failed to initialize desired amount
> of buckets, only 2 of 3 succeeded, but that can be fixed separately.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I don't know how to fix the warning. Setting backend-stridesize = <64>
> didn't help. I've CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
> ---
>  arch/arm/dts/state-example.dtsi | 41 +++++++++++++++++----------------
>  1 file changed, 21 insertions(+), 20 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/state-example.dtsi b/arch/arm/dts/state-example.dtsi
> index 490ee7840b24..4572168336ae 100644
> --- a/arch/arm/dts/state-example.dtsi
> +++ b/arch/arm/dts/state-example.dtsi
> @@ -89,28 +89,29 @@ state_eeprom: state_eeprom {
>  
>  };
>  
> -&ecspi3 {
> -	flash@0 {
> -		backend_state_nor: partition@120000 {
> -		};
> +backend_state_nor: &{ecspi3/flash@0/partitions/partition@120000} {
> +};
> +
> +/* Reduce barebox partition size from 16M to 15M */
> +&{gpmi/partitions/partition@0} {
> +	reg = <0x0 0xf00000>;
> +};
> +
> +&{gpmi/partitions} {
> +	backend_state_nand: partition@f00000 {
> +		label = "barebox-state";
> +		reg = <0xf00000 0x100000>;
>  	};
>  };
>  
> -&gpmi {
> -	backend_state_nand: partition@500000 {
> -	};
> -};
> -
> -&i2c1 {
> -	eeprom@50 {
> -		partitions {
> -			compatible = "fixed-partitions";
> -			#size-cells = <1>;
> -			#address-cells = <1>;
> -			backend_state_eeprom: state@400 {
> -				reg = <0x400 0x400>;
> -				label = "state-eeprom";
> -			};
> +&som_eeprom { /* On I2C1 */
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#size-cells = <1>;
> +		#address-cells = <1>;
> +		backend_state_eeprom: state@400 {
> +			reg = <0x400 0x400>;
> +			label = "state-eeprom";
>  		};
>  	};
>  };
> @@ -125,4 +126,4 @@ backend_state_usdhc: state@0x80000 {
>  			label = "state-sd";
>  		};
>  	};
> -};
> \ No newline at end of file
> +};
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


