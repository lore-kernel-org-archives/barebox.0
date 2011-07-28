Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQsN-0004Kl-Oc
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:43:48 +0000
Date: Thu, 28 Jul 2011 15:43:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110728134345.GX20587@pengutronix.de>
References: <1311858854-23434-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311858854-23434-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM pcm043: New RAM timings
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Thu, Jul 28, 2011 at 03:14:13PM +0200, Teresa G=E1mez wrote:
> Update RAM timings with extended row cycle delay.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/pcm043/lowlevel.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/l=
owlevel.c
> index eff96f9..bbe586b 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -146,7 +146,7 @@ void __bare_init __naked board_init_lowlevel(void)
>  	writel(0x00000304, ESDMISC); /* was 0x00000004 */
>  =

>  	/* set timing paramters */
> -	writel(0x00255417, ESDCFG0);
> +	writel(0x0025541F, ESDCFG0);

Does this work on all boards or is this an update for newer sdrams?

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
