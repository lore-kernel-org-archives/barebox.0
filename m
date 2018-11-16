Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYvk-0004S8-HG
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:52:46 +0000
Date: Fri, 16 Nov 2018 08:52:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116075232.bgbgqjwomgvzukft@pengutronix.de>
References: <20181110075954.32746-1-linux@rempel-privat.de>
 <20181110075954.32746-4-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181110075954.32746-4-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 3/5] video/ssd1307fb: fix potential memory leak on error
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 10, 2018 at 08:59:52AM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/video/ssd1307fb.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> index d68f0c505..1fd1a3cfb 100644
> --- a/drivers/video/ssd1307fb.c
> +++ b/drivers/video/ssd1307fb.c
> @@ -548,8 +548,11 @@ static int ssd1307fb_probe(struct device_d *dev)
>  	/* clear display */
>  	array = ssd1307fb_alloc_array(par->width * par->height / 8,
>  				      SSD1307FB_DATA);
> -	if (!array)
> -		return -ENOMEM;
> +	if (!array) {
> +		dev_err(&client->dev, "Couldn't not allocate an array\n");

Please do not add messages in allocation failure pathes. When we get out
of memory it's not really interesting where it happened, at least not
when it's not the culprit itself. It would rather be interesting who ate
all your memory before.

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
