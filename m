Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6xWD-0005VP-R5
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 06:46:51 +0000
Date: Wed, 7 Aug 2013 08:46:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130807064626.GF26614@pengutronix.de>
References: <1375782787-494-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1375782787-494-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 1/4] ARM: OMAP: Pass TEXT_BASE address to
 mk-am35xx-spi-image
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 06, 2013 at 11:53:04AM +0200, Teresa G=E1mez wrote:
> Pass the TEXT_BASE to the mk-am35xx-spi-image as the
> default address does not fit for AM33xx.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied this series.

Thanks,
 Sascha

> ---
>  arch/arm/Makefile |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index d80c12c..4eced78 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -160,7 +160,7 @@ KBUILD_IMAGE :=3D barebox.ubl
>  endif
>  =

>  quiet_cmd_am35xx_spi_image =3D SPI-IMG $@
> -      cmd_am35xx_spi_image =3D scripts/mk-am35xx-spi-image $< > $@
> +      cmd_am35xx_spi_image =3D scripts/mk-am35xx-spi-image -a $(TEXT_BAS=
E) $< > $@
>  =

>  barebox.spi: $(KBUILD_BINARY) FORCE
>  	$(call if_changed,am35xx_spi_image)
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
