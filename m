Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7iPC-0006Y8-94
 for barebox@lists.infradead.org; Fri, 09 Aug 2013 08:50:43 +0000
Date: Fri, 9 Aug 2013 10:50:19 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20130809085019.GT6104@pengutronix.de>
References: <ce9d0dc069aa93694635e8bd5ac2fbd94bd2fa24.1376020752.git.baruch@tkos.co.il>
 <20130809073237.GA26614@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130809073237.GA26614@pengutronix.de>
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
Subject: Re: [PATCH] net: fix checksum verification
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 09, 2013 at 09:32:37AM +0200, Sascha Hauer wrote:
> On Fri, Aug 09, 2013 at 07:01:24AM +0300, Baruch Siach wrote:
> > Checksum verification on data including its own checksum (as is the cas=
e with
> > IP headers) should give zero. Current code works well for the correct c=
hecksum
> > case, but fails to identify (most) errors.
> > =

> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> > =

> > Untested. From code inspection only.
> > =

> >  net/net.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/net/net.c b/net/net.c
> > index 0bd9084..bd7a578 100644
> > --- a/net/net.c
> > +++ b/net/net.c
> > @@ -41,7 +41,7 @@ static unsigned int net_ip_id;
> >  =

> >  int net_checksum_ok(unsigned char *ptr, int len)
> >  {
> > -	return net_checksum(ptr, len) + 1;
> > +	return net_checksum(ptr, len) =3D=3D 0;
> =

> D'oh. There's a bug indeed. For a good packet net_checksum returns
> 0xffff (all ones in an u16). So the check should be:
> =

> 	return net_checksum(ptr, len) =3D=3D 0xffff;
with

	return net_checksum(ptr, len) + 1

net_checksum_ok returns always something >0 (i.e. success) because both
summands are converted to unsigned, and so never catches an error[1],
does it?

> U-Boot has this instead:
> =

> 	return !((net_checksum(ptr, len) + 1) & 0xfffe);
> =

> From what I see both above should be equivalent so I wonder why U-Boot
> has such a complicated code here. Some compiler optimization or is this
> something I don't see?
This isn't equivalent. The U-Boot code returns 1 iff net_checksum
returns 0 or 0xffff; 0 otherwise.

Best regards
Uwe

[1] well unless unsigned is only 16 bits wide which shouldn't be the case on
all platforms barebox is running on.

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
