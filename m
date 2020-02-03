Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWpD-0001U1-FF
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:11:20 +0000
Date: Mon, 3 Feb 2020 09:11:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200203081117.kodexugwxzs5ai3a@pengutronix.de>
References: <20200129112251.11515-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129112251.11515-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ubsan: use a big if block in Kconfig
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <ahmad@a3f.at>

On Wed, Jan 29, 2020 at 12:22:51PM +0100, Uwe Kleine-K=F6nig wrote:
> A side effect (which was the motivation for this change) is that the
> config item CONFIG_UBSAN_ALIGNMENT doesn't appear in configurations that
> have CONFIG_UBSAN disabled.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  lib/Kconfig.ubsan | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 09f4a0ab8ab8..22958f48011e 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -9,9 +9,10 @@ config UBSAN
>  	  Compile-time instrumentation is used to detect various undefined
>  	  behaviours in runtime.
>  =

> +if UBSAN
> +
>  config UBSAN_SANITIZE_ALL
>  	bool "Enable instrumentation for all of barebox"
> -	depends on UBSAN
>  	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
>  	default y
>  	help
> @@ -23,7 +24,6 @@ config UBSAN_SANITIZE_ALL
>  =

>  config UBSAN_NO_ALIGNMENT
>  	bool "Disable checking of pointers alignment"
> -	depends on UBSAN
>  	default y if HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	help
>  	  This option disables the check of unaligned memory accesses.
> @@ -33,3 +33,5 @@ config UBSAN_NO_ALIGNMENT
>  =

>  config UBSAN_ALIGNMENT
>  	def_bool !UBSAN_NO_ALIGNMENT
> +
> +endif
> -- =

> 2.24.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
