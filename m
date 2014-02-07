Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBgdN-0006tP-PO
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:18:02 +0000
Date: Fri, 7 Feb 2014 09:17:39 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140207081739.GB17045@pengutronix.de>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-7-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391704854-3141-7-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/9] net: new function net_read_uint64
To: barebox@lists.infradead.org
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>

On Thu, Feb 06, 2014 at 05:40:51PM +0100, Uwe Kleine-K=F6nig wrote:
> From: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
This was added by mistake. Sascha, can you please drop it and use my
pengutronix.de address instead. Ditto for the S-o-b line and patch 7 in
this series.

Thanks
Uwe
 =

> This is needed for nfs3 support as some types became bigger compared to
> nfs2.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  include/net.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/include/net.h b/include/net.h
> index 8388e2f12ebe..6c86947d9ca3 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -276,6 +276,13 @@ static inline uint32_t net_read_uint32(void *from)
>  	return tmp;
>  }
>  =

> +static inline uint64_t net_read_uint64(void *from)
> +{
> +	uint64_t tmp;
> +	memcpy(&tmp, from, sizeof(tmp));
> +	return tmp;
> +}
> +
>  /* write IP *in network byteorder* */
>  static inline void net_write_ip(void *to, IPaddr_t ip)
>  {
> -- =

> 1.8.5.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
