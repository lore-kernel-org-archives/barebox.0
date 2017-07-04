Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSH4C-0001We-No
 for barebox@lists.infradead.org; Tue, 04 Jul 2017 06:12:12 +0000
Date: Tue, 4 Jul 2017 08:11:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170704061133.jow6aixpw5mp5m4c@pengutronix.de>
References: <20170703161922.GA24614@ravnborg.org>
 <20170703201746.GA15480@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170703201746.GA15480@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] clk: fix clk_get error handling
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On Mon, Jul 03, 2017 at 10:17:46PM +0200, Sam Ravnborg wrote:
> If there is no OFTREE support of_clk_get_by_name failed with
> -ENOENT, which caused clk_get to bail out.
> This had the effect that nothing was printed on the serial console
> with at91sam9263-ek.
> =

> Fix this by modifying the logic to explicitly check for -EPROBE_DEFER
> like we do in the kernel.
> =

> Fixes: 90f7eacb ("clk: let clk_get return errors from of_clk_get_by_name")
> Cc: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  drivers/clk/clkdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 6b1666355..939b067cc 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -181,7 +181,7 @@ struct clk *clk_get(struct device_d *dev, const char =
*con_id)
>  =

>  	if (dev) {
>  		clk =3D of_clk_get_by_name(dev->device_node, con_id);
> -		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENODEV)
> +		if (!IS_ERR(clk) || PTR_ERR(clk) =3D=3D -EPROBE_DEFER)

Hmm, I don't remember which was the failure I saw that lead me to create
this patch. Probably I wanted to see EPROBE_DEFER.

Looking into the tree of functions that can be called from
of_clk_get_by_name I didn't find a function that returns ENODEV.

But consider a clock provider that tries to give you the clock and
triggers a EIO or ETIMEOUT. IMHO this should be given to the caller
instead of continuing with clk_get_sys. So I suggest

-		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENODEV)
+		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENOENT)

instead of your patch.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
