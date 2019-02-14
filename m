Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guHQn-00052c-Cz
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 13:52:04 +0000
Date: Thu, 14 Feb 2019 14:51:57 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190214135157.sy2l2x6re3xspohu@pengutronix.de>
References: <20190115103423.5233-1-rhi@pengutronix.de>
 <20190115103423.5233-3-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190115103423.5233-3-rhi@pengutronix.de>
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
Subject: Re: [PATCH v1 3/3] amba: pl011: make locally used functions static
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

the other two patches in this series are on master now, but this one
seems to have fallen through the cracks.

 - Roland

On Tue, Jan 15, 2019 at 11:34:23AM +0100, Roland Hieber wrote:
> This function is not part of a public interface and only used locally.
> 
> Fixes the following build warning:
> 
>     .../drivers/serial/amba-pl011.c:151:5: warning: no previous prototype for 'pl011_init_port' [-Wmissing-prototypes]
>      int pl011_init_port (struct console_device *cdev)
>          ^~~~~~~~~~~~~~~
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  drivers/serial/amba-pl011.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
> index 4c4067d5b5..99b82e3c03 100644
> --- a/drivers/serial/amba-pl011.c
> +++ b/drivers/serial/amba-pl011.c
> @@ -148,7 +148,7 @@ static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
>  	}
>  }
>  
> -int pl011_init_port (struct console_device *cdev)
> +static int pl011_init_port(struct console_device *cdev)
>  {
>  	struct amba_uart_port *uart = to_amba_uart_port(cdev);
>  
> -- 
> 2.20.1
> 
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
