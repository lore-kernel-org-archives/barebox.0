Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTNF-0001t3-Q6
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 11:55:27 +0000
Date: Fri, 19 Oct 2018 13:55:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019115513.jtfuwxkokqasm6or@pengutronix.de>
References: <20181018114708.19506-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018114708.19506-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] rtc: ds1307: Add ds3231 to driver's ID list
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2018 at 01:47:08PM +0200, Marco Felsch wrote:
> In contrast to the ds1337 the ds3231 has a built-in temperature
> compensated crystal oscillator. The register map seems the same as the
> one from the ds1337, so using it's driver_data is okay.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/rtc/rtc-ds1307.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> index 73d88ba6f2..fed3afb7bf 100644
> --- a/drivers/rtc/rtc-ds1307.c
> +++ b/drivers/rtc/rtc-ds1307.c
> @@ -112,6 +112,7 @@ static struct platform_device_id ds1307_id[] = {
>  	{ "ds1308", ds_1338 }, /* Difference 1308 to 1338 irrelevant */
>  	{ "ds1338", ds_1338 },
>  	{ "ds1341", ds_1341 },
> +	{ "ds3231", ds_1337 },
>  	{ "pt7c4338", ds_1307 },
>  	{ }
>  };
> -- 
> 2.19.0
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
