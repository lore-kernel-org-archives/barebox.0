Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wji3E-0003Nt-Mn
 for barebox@lists.infradead.org; Mon, 12 May 2014 04:41:21 +0000
Date: Mon, 12 May 2014 06:40:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140512044059.GX5858@pengutronix.de>
References: <1399761724-4109-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399761724-4109-1-git-send-email-franck.jullien@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] openrisc: move ethoc registration to device_initcall
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 11, 2014 at 12:42:04AM +0200, Franck Jullien wrote:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  arch/openrisc/boards/generic/generic.c |   18 ++++++++++++------
>  1 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
> index 9f68007..5c1698d 100644
> --- a/arch/openrisc/boards/generic/generic.c
> +++ b/arch/openrisc/boards/generic/generic.c
> @@ -9,6 +9,18 @@ static struct NS16550_plat serial_plat = {
>  	.shift = 0,
>  };
>  
> +static int openrisc_devices_init(void)
> +{
> +#ifdef CONFIG_DRIVER_NET_ETHOC
> +	add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
> +			   OPENRISC_SOPC_ETHOC_BASE, 0x1000,
> +			   IORESOURCE_MEM, NULL);
> +#endif
> +	return 0;
> +}
> +
> +device_initcall(openrisc_devices_init);

What's wrong with the original console_initcall? Does this solve any
issues?

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
