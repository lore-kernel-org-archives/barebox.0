Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4ueO-0004g2-Qi
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 11:32:57 +0000
Date: Thu, 22 Apr 2010 13:32:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422113255.GM7882@pengutronix.de>
References: <20100419083815.GA32752@pengutronix.de>
	<1271734752-8377-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271734752-8377-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 6/7] clock: fix possible error on overflow in is_timeout
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 20, 2010 at 05:39:12AM +0200, Wolfram Sang wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  common/clock.c |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)

applied to master.

> =

> diff --git a/common/clock.c b/common/clock.c
> index 8eeb917..15df0ab 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -84,8 +84,7 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shif=
t_constant)
>  =

>  int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
>  {
> -
> -	if (start_ns + time_offset_ns < get_time_ns())
> +	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
>  		return 1;
>  	else
>  		return 0;
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
