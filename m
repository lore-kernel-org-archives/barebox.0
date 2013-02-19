Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7hgm-0003Ab-6E
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 07:32:32 +0000
Date: Tue, 19 Feb 2013 08:32:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130219073230.GV1906@pengutronix.de>
References: <1361181488-12901-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361181488-12901-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH] at91sam9260/9g20ek: use -EINVAL for invalid gpio on
 atmel_mci
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

Hi Fabio,

On Mon, Feb 18, 2013 at 10:58:08AM +0100, Fabio Porcedda wrote:
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9260ek/init.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index 77ca6bb..dc2976a 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -156,6 +156,8 @@ static void at91sam9260ek_phy_reset(void)
>  static struct atmel_mci_platform_data __initdata ek_mci_data = {
>  	.bus_width	= 4,
>  	.slot_b		= 1,
> +	.detect_pin	= -EINVAL,
> +	.wp_pin		= -EINVAL,
>  };

Is this for master or for -next?

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
