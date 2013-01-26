Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzE0U-0003lG-Kp
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 22:13:51 +0000
Date: Sat, 26 Jan 2013 23:13:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130126221348.GS1906@pengutronix.de>
References: <1359185288-10372-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359185288-10372-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] spi: fix compiler warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 26, 2013 at 11:28:08AM +0400, Antony Pavlov wrote:
> Fixes:
>  drivers/spi/spi.c:59: warning: no previous prototype for 'spi_new_device'
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  include/spi/spi.h |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index d6570a4..fa76e9b 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -342,6 +342,8 @@ spi_transfer_del(struct spi_transfer *t)
>  
>  int spi_sync(struct spi_device *spi, struct spi_message *message);
>  
> +struct spi_device *spi_new_device(struct spi_master *master,
> +				  struct spi_board_info *chip);
>  int spi_register_master(struct spi_master *master);
>  
>  #ifdef CONFIG_SPI
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
