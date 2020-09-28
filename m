Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvXl-0000vi-RI
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:58:28 +0000
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
 <20200928155041.32649-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d2dbec26-229d-4d91-75f6-a1cc31fc6084@pengutronix.de>
Date: Mon, 28 Sep 2020 17:58:25 +0200
MIME-Version: 1.0
In-Reply-To: <20200928155041.32649-2-m.felsch@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 01/18] video: ssd1307fb: fix VBAT supply id
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>



On 9/28/20 5:50 PM, Marco Felsch wrote:
> The regulator id should be given without the "-supply" suffix else the
> core is searching for "vbat-supply-supply".
> 
> Fixes: bf8f62d334 ("video/ssd1307fb: add support for VBAT")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/video/ssd1307fb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> index 0709399358..994f43dc5c 100644
> --- a/drivers/video/ssd1307fb.c
> +++ b/drivers/video/ssd1307fb.c
> @@ -421,7 +421,7 @@ static int ssd1307fb_probe(struct device_d *dev)
>  		goto fb_alloc_error;
>  	}
>  
> -	par->vbat = regulator_get(&client->dev, "vbat-supply");
> +	par->vbat = regulator_get(&client->dev, "vbat");
>  	if (IS_ERR(par->vbat)) {
>  		dev_info(&client->dev, "Will not use VBAT");
>  		par->vbat = NULL;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
