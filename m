Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuum2-0000Dn-Me
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:20:20 +0000
Date: Wed, 29 Aug 2018 09:20:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180829072006.vtdkfq6fzlihxlo7@pengutronix.de>
References: <1535472578-22131-1-git-send-email-oleg.karfich@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1535472578-22131-1-git-send-email-oleg.karfich@wago.com>
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
Subject: Re: [PATCH v2] commands: of_property: copy value instead of resizing
To: Oleg.Karfich@wago.com
Cc: barebox@lists.infradead.org, Florian.Baeuerle@allegion.com

On Tue, Aug 28, 2018 at 04:09:46PM +0000, Oleg.Karfich@wago.com wrote:
> Commit 748d1b8 adds the fixup feature to the above command. With this commit an
> unwanted free(data) on the freshly set property value is done if someone tries
> to set the value of an already present property (not the case for a new
> property). Furthermore in fixup mode the pointer fixup->data is freed when the
> fixup function is called more than once. This leads to a hanging system after
> calling of_dump -F many times.
> Fix this issues by copying the data to a new allocated memory area like a new
> property is created.
> 
> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
> ---
> 
> Changes in v2:
> 
>         - slightly different solution like in [1]
>         - consider memory leak when a new property is created. Noted in [2]
>         - also consider hanging system when oftree -F is used
> 
> [1] http://lists.infradead.org/pipermail/barebox/2018-August/034444.html
> [2] http://lists.infradead.org/pipermail/barebox/2018-August/034446.html
> 
> ---
>  commands/of_property.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/of_property.c b/commands/of_property.c
> index d0b923f..31e9b71 100644
> --- a/commands/of_property.c
> +++ b/commands/of_property.c
> @@ -270,9 +270,8 @@ static int do_of_property_set_now(struct device_node *root, const char *path,
>  		free(pp->value);
>  		pp->value_const = NULL;
>  
> -		/* limit property data to the actual size */
>  		if (len)
> -			pp->value = xrealloc(data, len);
> +			pp->value = xmemdup(data, len);
>  		else
>  			pp->value = NULL;
>  
> -- 
> 2.7.4
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
