Delivery-date: Mon, 03 May 2021 14:40:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXrz-0003B5-JI
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:40:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXry-0006Ri-OV
	for lore@pengutronix.de; Mon, 03 May 2021 14:40:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BYAnZ6kGRPvAm9Rf6sYxkAzTd4gc3TKQfvOEUwRYs9g=; b=qzL+UJt3i6vrmOdC1qoZ4iZdS
	etgGp6ogh6IIypEIiQ7Beqk4yDGjQXpJL/dLNrUX9DlfKUUZ5DU0SFMPSZG1zRK9Z2ICYRCstdLPz
	TqTEZAADSb/l681c6Pfjfu4sTep0nwkCjgDkrdz7DJ73fPOUm5WZyrJgAIZhpjZEJgCgYHC8qXa9U
	CQNeglCvfdbmrMx0RvoOYjLx6SArPyEKzem5Wl5OsoY1vCV7G9ze/GXYLC/qUbzncBRTChwV1Z2GG
	PevjCufRboO/fBS8ASS4m/fIK4aUeuGowf9gA8cN68eVmKUQ0qcEvhWuz232IyT3RGIVvxUxEOG9S
	Gok3zpxHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXqu-00DsR0-ST; Mon, 03 May 2021 12:39:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXqn-00DsQg-7n
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=8b0RER0knateedOyPIph45930K6G4L7c01QvIUnehU8=; b=1bGHUO7jAwD+rGANSGtAwSiFuh
 Bt7VTCSwO/qDPCXLyzlzgtTW4vYIp4p9+dYZgEo78azn2A6Na3YPUYDRO7NGQGlza6qVMZXLSJACD
 txYKBpK+EOJo0XdoB69uQVP/Z1shrmlTTtJO8lnZyEXmgHvyGl9ihjak/ytfjSlUNzGG6Djpw64m8
 gsHAF4kq3jpMCHZH0Zi2wvNjEhBchSYLA9oubEcovInGgNohyIsr4bliJ8b6q2foBpgwcDmYcYCbR
 BArJ2fypfS0vIf6aI0/Xdb74wEBe0nSgzFTzOu4uG83MyMw60J1yy3D/WjqIIVL+HrQpmBnCDFMXE
 GF28s3wA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXqk-0033po-IC
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:39:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ldXqj-0006OI-0A; Mon, 03 May 2021 14:38:57 +0200
To: Yunus Bas <y.bas@phytec.de>, barebox@lists.infradead.org
References: <20210503122550.2951035-1-y.bas@phytec.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <764115d0-c22e-8c22-4533-1a11e48d3748@pengutronix.de>
Date: Mon, 3 May 2021 14:38:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210503122550.2951035-1-y.bas@phytec.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_053858_634265_D99B3EF1 
X-CRM114-Status: GOOD (  22.02  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: imx6qdl: pfla02: Update spi-nor naming for
 kernel compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Yunus,

On 03.05.21 14:25, Yunus Bas wrote:
> The kernel NVMEM-subsystem prevents the usage of duplicate partition names.
> Change the SPI-NOR partition names to be compatible with the kernel
> driver.

I don't mind the change, but I can't follow the reasoning.
These are MTD partitions, so they shouldn't have been registered with the NVMEM
framework in the first place?

Cheers,
Ahmad

> 
> Commit 72ba815bf6fe ("ARM: dts: phycore-imx6: change mtd-partition names for
> compatibility with kernel") applies the change for phyCORE SOMs. The
> same applies for phyFLEX-modules.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> index e1aa3183b..6df8d247b 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -21,7 +21,7 @@
>  
>  		environment-spinor {
>  			compatible = "barebox,environment";
> -			device-path = &som_flash, "partname:barebox-environment";
> +			device-path = &som_flash, "partname:nor.barebox-environment";
>  			status = "disabled";
>  		};
>  
> @@ -54,28 +54,29 @@
>  /delete-node/ &{/memory@10000000};
>  
>  &som_flash {
> +
>  	partitions {
>  		compatible = "fixed-partitions";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  
>  		partition@0 {
> -			label = "barebox";
> +			label = "nor.barebox";
>  			reg = <0x0 0x100000>;
>  		};
>  
>  		partition@100000 {
> -			label = "barebox-environment";
> +			label = "nor.barebox-environment";
>  			reg = <0x100000 0x20000>;
>  		};
>  
>  		partition@120000 {
> -			label = "oftree";
> +			label = "nor.oftree";
>  			reg = <0x120000 0x20000>;
>  		};
>  
>  		partition@140000 {
> -			label = "kernel";
> +			label = "nor.kernel";
>  			reg = <0x140000 0x0>;
>  		};
>  	};
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

