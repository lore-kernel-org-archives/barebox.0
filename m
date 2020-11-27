Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiZXG-0008Fp-AG
 for barebox@lists.infradead.org; Fri, 27 Nov 2020 08:55:23 +0000
Date: Fri, 27 Nov 2020 09:55:20 +0100
Message-ID: <20201127085520.GE11843@pengutronix.de>
References: <20201126175553.16934-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126175553.16934-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH v2 1/4] ARM: at91: sama5d2: giantboard: fix typo in
 SPDX-License-Identifier
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ukl@pengutronix.de, rhi@pengutronix.de

On Thu, Nov 26, 2020 at 06:55:50PM +0100, Ahmad Fatoum wrote:
> s/Identifer/Identifier/
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2: no change
> ---
>  arch/arm/dts/at91-sama5d27_giantboard.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
> index 2ba3ff217101..99fc5a8d4dd3 100644
> --- a/arch/arm/dts/at91-sama5d27_giantboard.dts
> +++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifer: GPL-2.0-or-later OR X11
> +// SPDX-License-Identifier: GPL-2.0-or-later OR X11
>  /*
>   * at91-sama5d27_giantboard.dts - Device Tree file for SAMA5D27 Giant Board
>   *
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
