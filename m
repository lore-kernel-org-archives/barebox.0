Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC9ZQ-0005Pn-Ul
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 15:11:54 +0000
Date: Sat, 8 Feb 2014 16:11:19 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140208151119.GL17045@pengutronix.de>
References: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391808493-27328-4-git-send-email-u.kleine-koenig@pengutronix.de>
 <20140208065128.GM9671@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140208065128.GM9671@ns203013.ovh.net>
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
Subject: Re: [PATCH v2 04/11] nfs: shorten and simplify rpc_add_credentials a
 bit
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Feb 08, 2014 at 07:51:28AM +0100, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 22:28 Fri 07 Feb     , Uwe Kleine-K??nig wrote:
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> keep the hostname I use it on nfs for export filter
Which hostname? There is only one "used" in code that is commented out.

Best regards
Uwe
 =

> Best Regards,
> J.
> > ---
> >  fs/nfs.c | 26 +++++---------------------
> >  1 file changed, 5 insertions(+), 21 deletions(-)
> > =

> > diff --git a/fs/nfs.c b/fs/nfs.c
> > index 76d8c0595db4..54dda261c0b1 100644
> > --- a/fs/nfs.c
> > +++ b/fs/nfs.c
> > @@ -224,34 +224,18 @@ out_overflow:
> >   */
> >  static uint32_t *rpc_add_credentials(uint32_t *p)
> >  {
> > -	int hl;
> > -	int hostnamelen =3D 0;
> > -
> >  	/*
> > -	 * Here's the executive summary on authentication requirements of the
> > -	 * various NFS server implementations:	Linux accepts both AUTH_NONE
> > -	 * and AUTH_UNIX authentication (also accepts an empty hostname field
> > -	 * in the AUTH_UNIX scheme).  *BSD refuses AUTH_NONE, but accepts
> > -	 * AUTH_UNIX (also accepts an empty hostname field in the AUTH_UNIX
> > -	 * scheme).  To be safe, use AUTH_UNIX and pass the hostname if we ha=
ve
> > -	 * it (if the BOOTP/DHCP reply didn't give one, just use an empty
> > -	 * hostname).
> > +	 * *BSD refuses AUTH_NONE, so use AUTH_UNIX. An empty hostname is OK =
for
> > +	 * both Linux and *BSD.
> >  	 */
> >  =

> > -	hl =3D (hostnamelen + 3) & ~3;
> > -
> >  	/* Provide an AUTH_UNIX credential.  */
> >  	*p++ =3D htonl(1);		/* AUTH_UNIX */
> > -	*p++ =3D htonl(hl + 20);		/* auth length */
> > +	*p++ =3D htonl(20);		/* auth length: 20 + strlen(hostname) */
> >  	*p++ =3D htonl(0);		/* stamp */
> > -	*p++ =3D htonl(hostnamelen);	/* hostname string */
> > -
> > -	if (hostnamelen & 3)
> > -		*(p + hostnamelen / 4) =3D 0; /* add zero padding */
> > -
> > -	/* memcpy(p, hostname, hostnamelen); */ /* empty hostname */
> > +	*p++ =3D htonl(0);		/* hostname string length */
> > +	/* memcpy(p, "", 0); p +=3D 0; <- empty host name */
> >  =

> > -	p +=3D hl / 4;
> >  	*p++ =3D 0;			/* uid */
> >  	*p++ =3D 0;			/* gid */
> >  	*p++ =3D 0;			/* auxiliary gid list */
> > -- =

> > 1.8.5.2
> > =

> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
