Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S2eAT-0007iN-NY
 for barebox@lists.infradead.org; Wed, 29 Feb 2012 07:41:46 +0000
Date: Wed, 29 Feb 2012 08:41:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120229074141.GR3852@pengutronix.de>
References: <1330435887-1556-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330435887-1556-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] drivers/serial: trivial regression fix
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Tue, Feb 28, 2012 at 02:31:27PM +0100, Robert Jarzmik wrote:
> Fix commit "serial pxa: fix unregister", which forgot a
> semicolon, breaking serial_pxa compilation.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Applied, thanks

Sascha

> ---
>  drivers/serial/serial_pxa.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
> index 1365413..adfbe82 100644
> --- a/drivers/serial/serial_pxa.c
> +++ b/drivers/serial/serial_pxa.c
> @@ -168,7 +168,7 @@ static int pxa_serial_probe(struct device_d *dev)
>  	cdev = &priv->cdev;
>  	priv->regs = dev_request_mem_region(dev, 0);
>  
> -	dev->priv = priv
> +	dev->priv = priv;
>  	cdev->dev = dev;
>  	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
>  	cdev->tstc = pxa_serial_tstc;
> -- 
> 1.7.5.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
