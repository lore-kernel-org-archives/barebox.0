Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZtDU-0004IN-1F
 for barebox@lists.infradead.org; Thu, 20 Dec 2018 07:58:01 +0000
Date: Thu, 20 Dec 2018 08:57:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181220075747.z32zarcpenlp23zn@pengutronix.de>
References: <20181219080403.13737-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: Re: [PATCH 01/10] serial: clps711x: Change compatible string
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Dec 19, 2018 at 11:03:54AM +0300, Alexander Shiyan wrote:
> This patch changes compatible string for CLPS711X serial driver
> to "cirrus,ep7209-uart" for conform with linux kernel.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/serial/serial_clps711x.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied all, thanks

Sascha

> 
> diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
> index fa6342346..9a9ae24c0 100644
> --- a/drivers/serial/serial_clps711x.c
> +++ b/drivers/serial/serial_clps711x.c
> @@ -182,7 +182,7 @@ out_err:
>  }
>  
>  static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
> -	{ .compatible = "cirrus,clps711x-uart", },
> +	{ .compatible = "cirrus,ep7209-uart", },
>  };
>  
>  static struct driver_d clps711x_driver = {
> -- 
> 2.13.0
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
