Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brKAp-0007F6-CE
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 07:30:00 +0000
Date: Tue, 4 Oct 2016 09:29:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004072937.mwm4mfzx4p7ow4vw@pengutronix.de>
References: <20161004070633.19328-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161004070633.19328-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] pinctrl: mvebu: armada-370 fix gpio name for mpp63
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 04, 2016 at 09:06:33AM +0200, Uwe Kleine-K=F6nig wrote:
> It was found that pin 63 also works as input and so the respective functi=
on
> is renamed from "gpo" to "gpio". The respective commit in Linux is:
> =

> 	a526973e0291 ("pinctrl: mvebu: Fix mapping of pin 63 (gpo -> gpio)")
> =

> which appeared in v4.1-rc3. The devicetrees are fixed accordingly since
> commit
> =

> 	ce5cad51f381 ("ARM: dts: armada-370: Update the mpp63 function in the de=
vice tree on Armada 370")
> =

> which appeared in v4.6-rc1.
> =

> This fixes a runtime warning on the affected machines
> (globalscale-mirabox and netgear-rn104) and makes the pin functional
> again.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pinctrl/mvebu/armada-370.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

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
