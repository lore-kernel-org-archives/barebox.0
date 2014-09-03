Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XP4L7-0007RU-Ts
 for barebox@lists.infradead.org; Wed, 03 Sep 2014 06:46:46 +0000
Date: Wed, 3 Sep 2014 08:46:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140903064620.GC5352@pengutronix.de>
References: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
 <1409656080-19280-4-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409656080-19280-4-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 3/3] at91sam9g45: add device tree gpio clocks
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 02, 2014 at 01:08:00PM +0200, Rapha=EBl Poggi wrote:
> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/mach-at91/at91sam9g45.c |    5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sa=
m9g45.c
> index d19d26a..8c020fa 100644
> --- a/arch/arm/mach-at91/at91sam9g45.c
> +++ b/arch/arm/mach-at91/at91sam9g45.c
> @@ -201,6 +201,11 @@ static struct clk_lookup periph_clocks_lookups[] =3D=
 {
>  	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
>  	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioDE_clk),
>  	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioDE_clk),
> +	CLKDEV_DEV_ID("fffff200.gpio", &pioA_clk),
> +	CLKDEV_DEV_ID("fffff400.gpio", &pioB_clk),
> +	CLKDEV_DEV_ID("fffff600.gpio", &pioC_clk),
> +	CLKDEV_DEV_ID("fffff800.gpio", &pioDE_clk),
> +	CLKDEV_DEV_ID("fffffa00.gpio", &pioDE_clk),

Same comment here as to the i2c clocks: Can you use
clkdev_add_physbase(), like this:

	clkdev_add_physbase(&pioA_clk, 0xfffff200, NULL);
	clkdev_add_physbase(&pioB_clk, 0xfffff400, NULL);
	clkdev_add_physbase(&pioC_clk, 0xfffff600, NULL);
	clkdev_add_physbase(&pioDE_clk, 0xfffff800, NULL);
	clkdev_add_physbase(&pioDE_clk, 0xfffffa00, NULL);

at91rm9200-gpiox clkdevs can be removed then.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
