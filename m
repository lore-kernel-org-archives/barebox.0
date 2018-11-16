Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYqd-0002gn-HD
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:47:29 +0000
Date: Fri, 16 Nov 2018 08:47:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116074715.ssfhmje4xuvy66fd@pengutronix.de>
References: <20181115185700.24823-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181115185700.24823-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] aiodev: mc13xxx: Mark mc13xxx_adc_do_conversion()
 static
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2018 at 10:56:58AM -0800, Andrey Smirnov wrote:
> Mark mc13xxx_adc_do_conversion() static because it is not used outside
> the source file.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/aiodev/mc13xxx_adc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks. More of these please ;)

Sascha

> 
> diff --git a/drivers/aiodev/mc13xxx_adc.c b/drivers/aiodev/mc13xxx_adc.c
> index 4e7204816..d445d1ec6 100644
> --- a/drivers/aiodev/mc13xxx_adc.c
> +++ b/drivers/aiodev/mc13xxx_adc.c
> @@ -75,8 +75,9 @@ to_mc13xx_adc_data(struct aiochannel *chan)
>  	return container_of(chan->aiodev, struct mc13xx_adc_data, aiodev);
>  }
>  
> -int mc13xxx_adc_do_conversion(struct mc13xxx *mc13xxx,
> -		unsigned int channel, unsigned int *sample)
> +static int mc13xxx_adc_do_conversion(struct mc13xxx *mc13xxx,
> +				     unsigned int channel,
> +				     unsigned int *sample)
>  {
>  	int i;
>  	int timeout = 100;
> -- 
> 2.19.1
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
