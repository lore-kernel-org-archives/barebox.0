Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMfrH-0001Dp-4l
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:51:24 +0000
Date: Mon, 21 Dec 2009 11:50:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221105020.GZ15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210440490.11209@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210440490.11209@localhost>
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
Subject: Re: [PATCH] NAND: Free asprintf()-allocated space upon mtd device
	deletion.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 04:43:50AM -0500, Robert P. J. Day wrote:
> 
> Given that add_mtd_device() invokes asprintf() thusly:
> 
>   mtd->cdev.name = asprintf("nand%d", mtd->class_dev.id);
>   ...
>   mtd->param_size.value = asprintf("%u", mtd->size);
>   ...
>   mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);
> 
> make sure del_mtd_device() frees that in the reverse order.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Ok, applied

Sascha

> 
> ---
> 
> diff --git a/drivers/nand/nand.c b/drivers/nand/nand.c
> index 0a6128c..bcf52bd 100644
> --- a/drivers/nand/nand.c
> +++ b/drivers/nand/nand.c
> @@ -240,7 +240,9 @@ int add_mtd_device(struct mtd_info *mtd)
>  int del_mtd_device (struct mtd_info *mtd)
>  {
>  	unregister_device(&mtd->class_dev);
> +	free(mtd->cdev_oob.name);
>  	free(mtd->param_size.value);
> +	free(mtd->cdev.name);
>  	return 0;
>  }
> 
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
> ========================================================================
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
