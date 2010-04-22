Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4ud9-0004WJ-5b
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 11:31:40 +0000
Date: Thu, 22 Apr 2010 13:31:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422113137.GL7882@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-6-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271665698-23163-6-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 5/7] board/pcm038: document value written to ESDCFG0
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 19, 2010 at 10:28:16AM +0200, Wolfram Sang wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  board/pcm038/lowlevel_init.S |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)

applied to master.

> =

> diff --git a/board/pcm038/lowlevel_init.S b/board/pcm038/lowlevel_init.S
> index a5ceb26..0001e4f 100644
> --- a/board/pcm038/lowlevel_init.S
> +++ b/board/pcm038/lowlevel_init.S
> @@ -28,6 +28,11 @@
>  	writel(0x15555555, DSCR(8))
>  =

>  	writel(0x00000004, ESDMISC) /* Initial reset */
> +
> +	/*
> +	 * tXP=3D3, tWTR=3D0, tRP=3D2, tMRD=3D2, tWR=3D1,
> +	 * tRAS=3D4, tRRD=3D1, tCAS=3D3, tRCD=3D3, tRC=3D10
> +	 */
>  	writel(0x006ac73a, ESDCFG0)
>  =

>  	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0) /* precharge CSD=
0 all banks */
> -- =

> 1.7.0
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
