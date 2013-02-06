Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U39iq-0004wi-UW
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 18:27:54 +0000
Date: Wed, 6 Feb 2013 19:27:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130206182750.GH1906@pengutronix.de>
References: <20130205175927.GD19322@game.jcrosoft.org>
 <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] at91: add boot mode detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

+1 for getting something common. On i.MX we currently use the
barebox_loc environment variable. Not that I you should do the same for
Atmel, but we should come up with something both i.MX and Atmel can be
converted to.

> +
> +	dev = add_generic_device_res("bootloc", DEVICE_ID_SINGLE, NULL, 0, NULL);

I know you are concerned about performance when the single 'global'
device has many variables. I think the performance can be greatly
improved by making sure the global device is the first one to be
registered.

IMO adding a new device for every fart in the system does not improve the
situation.

> +enum at91_soc_boot_from {
> +	AT91_BOOT_FROM_UNKNOWN,
> +	AT91_BOOT_FROM_SPI,
> +	AT91_BOOT_FROM_MCI,
> +	AT91_BOOT_FROM_SMC,
> +	AT91_BOOT_FROM_TWD,
> +};
> +
> +enum at91_soc_boot_media {
> +	AT91_BOOT_MEDIA_UNKNOWN,
> +	AT91_BOOT_MEDIA_SD,
> +	AT91_BOOT_MEDIA_MMC,
> +	AT91_BOOT_MEDIA_EMMC,
> +	AT91_BOOT_MEDIA_AT45,
> +	AT91_BOOT_MEDIA_AT25,
> +	AT91_BOOT_MEDIA_NAND,
> +	AT91_BOOT_MEDIA_NOR,
> +};

Hm. For NAND/NOR the first array does not contain useful information,
for MCI the second array does not contain useful information. For
I2C/SPI both arrays seem redundant.

Why not merge them into one?

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
