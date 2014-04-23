Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wctt8-0002fs-Eh
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:54:47 +0000
Date: Wed, 23 Apr 2014 11:54:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423095424.GK5858@pengutronix.de>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
 <1397290265-21273-10-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397290265-21273-10-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 10/12] imx_keypad: Fix error handling
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Apr 12, 2014 at 12:11:03PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/input/imx_keypad.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
> index e6870df..a1e2055 100644
> --- a/drivers/input/imx_keypad.c
> +++ b/drivers/input/imx_keypad.c
> @@ -392,17 +392,17 @@ static int __init imx_keypad_probe(struct device_d *dev)
>  	struct console_device *cdev;
>  	int error, i;
>  
> -	keypad = xzalloc(sizeof(struct imx_keypad));
> -	if (!keypad) {
> -		pr_err("not enough memory for driver data\n");
> -		error = -ENOMEM;
> -	}
> -
>  	if (!keymap_data) {
>  		pr_err("no keymap defined\n");
>  		return -ENODEV;
>  	}
>  
> +	keypad = xzalloc(sizeof(struct imx_keypad));
> +	if (!keypad) {
> +		pr_err("not enough memory for driver data\n");
> +		return -ENOMEM;
> +	}

No need to check the result from xzalloc. Removed this while applying.

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
