Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqmEn-0003ay-PM
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 14:25:38 +0000
Date: Mon, 16 Jul 2012 16:25:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716142524.GN30009@pengutronix.de>
References: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
 <1342432439-27455-2-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342432439-27455-2-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [PATCH 1/2] tx51: ensure eth phy resets properly by driving
 reset pin explicitly.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 11:53:58AM +0200, Christian Kapeller wrote:
> 
> diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
> index 096683a..d862a68 100644
> --- a/arch/arm/boards/karo-tx51/tx51.c
> +++ b/arch/arm/boards/karo-tx51/tx51.c
> @@ -205,6 +205,12 @@ static inline void tx51_fec_init(void)
>  	}
>  
>  	/*
> +	 *Turn off phy power, be cautious and wait
> +	 */
> +	gpio_set_value(TX51_FEC_PHY_PWR, 0);
> +	mdelay(20);

Does this fix the mentioned regression due to iomuxing or is this
another issue?

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
