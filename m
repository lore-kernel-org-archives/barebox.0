Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WClpa-0002FW-Bn
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 08:03:07 +0000
Date: Mon, 10 Feb 2014 09:02:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210080244.GD17250@pengutronix.de>
References: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 01/11] net: net_read_uint32: assert that only 32 bit
 are read
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 07, 2014 at 10:28:03PM +0100, Uwe Kleine-K=F6nig wrote:
> On some architectures (e.g. alpha, amd64, arm64, ia64, s390x, mips64)
> sizeof(ulong) is 8 which made net_read_uint32 actually read too much and
> even returned the wrong value on big endian machines.
> (Note the second issue isn't that critical though, because the only
> architecture from the list above that uses big endian byte order is s390x
> ...)
> =

> Also change the argument to void * because the pointer is not necessarily
> properly aligned.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied this series, thanks

Sascha

> ---
>  include/net.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/include/net.h b/include/net.h
> index a4cfec712374..8388e2f12ebe 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -269,11 +269,11 @@ static inline IPaddr_t net_read_ip(void *from)
>  }
>  =

>  /* return uint32 *in network byteorder* */
> -static inline uint32_t net_read_uint32(uint32_t *from)
> +static inline uint32_t net_read_uint32(void *from)
>  {
> -	ulong l;
> -	memcpy((void*)&l, (void*)from, sizeof(l));
> -	return l;
> +	uint32_t tmp;
> +	memcpy(&tmp, from, sizeof(tmp));
> +	return tmp;
>  }
>  =

>  /* write IP *in network byteorder* */
> -- =

> 1.8.5.2
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
