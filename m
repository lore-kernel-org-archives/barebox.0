Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7Laf-0004zQ-U9
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 07:24:30 +0000
Date: Fri, 31 Aug 2012 09:24:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120831072428.GK26594@pengutronix.de>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
 <1346335217-9686-5-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346335217-9686-5-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 4/5] i2c: adapt the i2c-imx driver to mpc85xx machines.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 30, 2012 at 03:00:16PM +0100, Renaud Barbier wrote:
> A function to calculate the frequency divider and digital filter sampling rate
> for the 85xx processors is added to the i2c-imx driver. Hence, this driver is
> used on IMX and 85xx machines.
> 
>  
>  /* This will be the driver name */
> +#ifdef CONFIG_PPC
> +#define DRIVER_NAME "i2c-mpc"
> +#else
>  #define DRIVER_NAME "i2c-imx"
> +#endif

Can we run a s/imx/fsl/ over the driver in the first step?

>  
>  /* Default value */
>  #define IMX_I2C_BIT_RATE	100000	/* 100kHz */
> @@ -61,6 +66,7 @@
>  #define IMX_I2C_I2CR	0x08	/* i2c control */
>  #define IMX_I2C_I2SR	0x0C	/* i2c status */
>  #define IMX_I2C_I2DR	0x10	/* i2c transfer data */
> +#define IMX_I2C_DFSRR	0x14	/* i2c digital filter smapling rate */

s/smapling/sampling/

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
