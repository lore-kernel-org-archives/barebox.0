Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBgg7-0006w7-4e
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:20:51 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <ukl@pengutronix.de>) id 1WBgfl-0000l0-Fq
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:20:29 +0100
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <ukl@pengutronix.de>) id 1WBgfl-0006Pz-En
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:20:29 +0100
Date: Fri, 7 Feb 2014 09:20:29 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140207082029.GC17045@pengutronix.de>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-3-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391704854-3141-3-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/9] nfs: skip over stale rpc packets
To: barebox@lists.infradead.org

Hello,

On Thu, Feb 06, 2014 at 05:40:47PM +0100, Uwe Kleine-K=F6nig wrote:
> When a former transaction was aborted by hitting Ctrl-C the old reply mig=
ht
> still hang in the ethernet controller making all further transactions fai=
l.
> =

> So just skip over old replies.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> An alternative would be to drain the ethernet queue before a new request =
is
> sent. Don't know how that works and I don't see much benefit, so I didn't
> try to find out :-)
> ---
>  fs/nfs.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/fs/nfs.c b/fs/nfs.c
> index 717326435189..e9a6eede06bd 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -275,8 +275,13 @@ static int rpc_check_reply(unsigned char *pkt, int r=
pc_prog, unsigned long rpc_i
>  =

>  	memcpy(&rpc, pkt, sizeof(rpc));
>  =

> -	if (ntohl(rpc.id) !=3D rpc_id)
> +	if (ntohl(rpc.id) !=3D rpc_id) {
> +		if (ntohl(rpc.id) < rpc_id)
> +			/* stale packet, wait a bit longer */
> +			return 0;
> +
>  		return -EINVAL;
> +	}
I have thought about this once more. Just compare using < is very lax
and fails when rpc_id overflows. I suggest to use

	if (rpc_id - ntohl(rpc.id) =3D=3D 1)

instead. (Or draining the eth queue.)

Will fix accordingly in a v2 once I addressed all concerns.

Uwe
 =

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
