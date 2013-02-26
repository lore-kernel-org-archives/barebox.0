Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UALA3-0006GP-F9
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 14:05:40 +0000
Date: Tue, 26 Feb 2013 15:05:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130226140537.GX1906@pengutronix.de>
References: <1361871667-28214-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361871667-28214-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] serial/Makefile: drop out of date comments
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2013 at 10:41:07AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/serial/Makefile |    6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 893e282..16a54c2 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -1,9 +1,3 @@
> -# atmel_usart.o
> -# ns9750_serial.o
> -# s3c4510b_uart.o
> -# serial_max3100.o
> -# serial_pl010.o
> -# serial_xuartlite.o
>  obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
>  obj-$(CONFIG_SERIAL_AMBA_PL011)			+= amba-pl011.o
>  obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
> -- 
> 1.7.10.4
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
