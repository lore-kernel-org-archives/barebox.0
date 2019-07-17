Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngBY-0006PD-H3
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 09:25:18 +0000
Date: Wed, 17 Jul 2019 11:25:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190717092514.crbcl5vpymanvf3c@pengutronix.de>
References: <20190716103557.17446-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716103557.17446-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] OF: gpio: Add special quirk to parse regulator
 flags
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 16, 2019 at 12:35:55PM +0200, Oleksij Rempel wrote:
> To make fec work with devicetree on imx28-evk, partially port following
> kernel patch:
> 
> |commit a603a2b8d86ee93ee2107da8ca75fd854fd4ff32
> |Author: Linus Walleij <linus.walleij@linaro.org>
> |Date:   Sat Dec 30 16:26:36 2017 +0100
> |
> |    gpio: of: Add special quirk to parse regulator flags
> |
> |    While most GPIOs are indicated to be active low or open drain using
> |    their twocell flags, we have legacy regulator bindings to take into
> |    account.
> |
> |    Add a quirk respecting the special boolean active-high and open
> |    drain flags when parsing regulator nodes for GPIOs.
> |
> |    This makes it possible to get rid of duplicated inversion semantics
> |    handling in the regulator core and any regulator drivers parsing
> |    and handling this separately.
> |
> |    Unfortunately the old regulator inversion semantics are specified
> |    such that the presence or absence of "enable-active-high" solely
> |    controls the semantics, so we cannot deprecate this in favor
> |    of the phandle-provided inversion flag, instead any such phandle
> |    inversion flag provided in the second cell of a GPIO handle must be
> |    actively ignored, so we print a warning to contain the situation
> |    and make things easy for the users.
> |
> |    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/of/of_gpio.c | 35 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)

Applied, thanks

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
