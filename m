Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcsig-0007Zz-NO
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 12:25:49 +0000
Date: Wed, 2 Aug 2017 14:25:12 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170802122512.GA16652@ravnborg.org>
References: <20170802070356.8185-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170802070356.8185-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] gpio: clps711x: clps711x_gpio_dt_ids: add missing
 sentinel entry
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony.

On Wed, Aug 02, 2017 at 10:03:56AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/gpio/gpio-clps711x.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
> index d71c606690..e97f468e82 100644
> --- a/drivers/gpio/gpio-clps711x.c
> +++ b/drivers/gpio/gpio-clps711x.c
> @@ -74,6 +74,9 @@ out_err:
>  
>  static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
>  	{ .compatible = "cirrus,clps711x-gpio", },
> +	{
> +		/* sentinel */
> +	}
nitpick.

Please follow the style of the line above - so like this:

	{ /* sentinel */ },
};

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
