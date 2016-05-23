Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4jOg-0000o1-Op
 for barebox@lists.infradead.org; Mon, 23 May 2016 06:31:27 +0000
Date: Mon, 23 May 2016 08:31:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160523063104.GL11148@pengutronix.de>
References: <1463701062.15779.31.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463701062.15779.31.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] rtc: ds1307: Add ds1308 to driver's ID list
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, May 19, 2016 at 11:37:38PM +0000, Trent Piepho wrote:
> As far as the driver is concerned, it's the same as a 1338.  It's too
> bad the i2c drivers can't make use of OF compatible properties with a
> list of compatible devices.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>

Applied, thanks

Sascha

> ---
>  drivers/rtc/rtc-ds1307.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
> index 726586a..ca630ea 100644
> --- a/drivers/rtc/rtc-ds1307.c
> +++ b/drivers/rtc/rtc-ds1307.c
> @@ -106,6 +106,7 @@ struct ds1307 {
>  static struct platform_device_id ds1307_id[] = {
>  	{ "ds1307", ds_1307 },
>  	{ "ds1337", ds_1337 },
> +	{ "ds1308", ds_1338 }, /* Difference 1308 to 1338 irrelevant */
>  	{ "ds1338", ds_1338 },
>  	{ "ds1341", ds_1341 },
>  	{ "pt7c4338", ds_1307 },
> -- 
> 2.7.0.25.gfc10eb5.dirty
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
