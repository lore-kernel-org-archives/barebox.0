Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6BM4-0005Cn-2B
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:43:49 +0000
Date: Wed, 11 Apr 2018 10:43:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411084336.rz2zfbufs642mooe@pengutronix.de>
References: <20180410233943.4372-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180410233943.4372-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] pinctrl-vf610: Make use of BIT macro
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2018 at 04:39:43PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/pinctrl/pinctrl-vf610.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
> index 4234263d3..a46b0e2ca 100644
> --- a/drivers/pinctrl/pinctrl-vf610.c
> +++ b/drivers/pinctrl/pinctrl-vf610.c
> @@ -29,9 +29,9 @@
>  enum {
>  	PINCTRL_VF610_MUX_LINE_SIZE = 20,
>  
> -	PINCTRL_VF610_IBE = 1 << 0,
> -	PINCTRL_VF610_OBE = 1 << 1,
> -	PINCTRL_VF610_xBE = 0b11,
> +	PINCTRL_VF610_IBE = BIT(0),
> +	PINCTRL_VF610_OBE = BIT(1),
> +	PINCTRL_VF610_xBE = PINCTRL_VF610_OBE | PINCTRL_VF610_IBE,
>  };
>  
>  struct pinctrl_vf610 {
> -- 
> 2.14.3
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
