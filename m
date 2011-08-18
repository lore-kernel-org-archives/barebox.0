Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qtv7X-0002NV-7L
	for barebox@lists.infradead.org; Thu, 18 Aug 2011 05:26:24 +0000
Date: Thu, 18 Aug 2011 07:26:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110818052620.GP31404@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
	<1313472967-19324-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313472967-19324-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] device: update id support to allow device without id
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 16, 2011 at 07:36:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as in linux use -1 for this
> 
> as example on bus we may have only one device so no need to have
> devname<number>
> 
> for automatic id use -2 now
> udpate all the device that use -1 to -2
> 
> device that really want -1 will have to update later
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
> index 44ac44b..0d26da9 100644
> --- a/arch/arm/boards/a9m2410/a9m2410.c
> +++ b/arch/arm/boards/a9m2410/a9m2410.c
> @@ -131,14 +131,14 @@ static int a9m2410_devices_init(void)
>  	writel(reg, MISCCR);
>  
>  	/* ----------- the devices the boot loader should work with -------- */
> -	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
> +	add_generic_device("s3c24x0_nand", -2, NULL, S3C24X0_NAND_BASE, 0,
>  			   IORESOURCE_MEM, &nand_info);

-1 has a special meaning without being a define, but we should not
introduce another arbitrary numbered special meaning.

But I don't think we want this anyway. In a later patch you convert
all drivers/devices to platform_*_register without having a
platform_device. If we want to go this way we should go it all the
way and have a struct platform_device which embeds a struct device_d.
The 'id' field would then be a part of the platform_device rather
than the device itself.
The 'id' field is only present because we have no better way of
numbering the instances of devices on a platform bus. With PCI/USB
devices this numbering would come from the position on the bus.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
