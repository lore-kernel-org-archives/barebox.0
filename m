Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo1cm-00081q-5v
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 07:14:18 +0000
Date: Fri, 10 Aug 2018 09:14:01 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180810071401.i2wqpnwpegdidhzh@pengutronix.de>
References: <20180809083313.13034-1-u.kleine-koenig@pengutronix.de>
 <20180809083313.13034-2-u.kleine-koenig@pengutronix.de>
 <20180810062247.jlgodzci7xvbtqip@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810062247.jlgodzci7xvbtqip@pengutronix.de>
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
Subject: Re: [PATCH 2/3] libfile: open_and_lseek: enlarge small files enough
 to make lseek possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2018 at 08:22:47AM +0200, Sascha Hauer wrote:
> On Thu, Aug 09, 2018 at 10:33:12AM +0200, Uwe Kleine-K=F6nig wrote:
> > This makes the following do the expected thing:
> > =

> > 	barebox@barebox sandbox:/ ls -l lala
> > 	-rwxrwxrwx              4 lala
> > 	barebox@barebox sandbox:/ mw -d lala 72 0
> > =

> > Without this patch mw dies with
> > =

> > 	lseek: Invalid argument
> > =

> > memset, memcpy and probably others benefit in the same way.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  lib/libfile.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> > =

> > diff --git a/lib/libfile.c b/lib/libfile.c
> > index 83c6399a5b39..01c59cdb80fe 100644
> > --- a/lib/libfile.c
> > +++ b/lib/libfile.c
> > @@ -510,6 +510,24 @@ int open_and_lseek(const char *filename, int mode,=
 loff_t pos)
> >  	if (!pos)
> >  		return fd;
> >  =

> > +	if (mode & (O_WRONLY | O_RDWR)) {
> > +		struct stat s;
> > +
> > +		ret =3D fstat(fd, &s);
> > +		if (ret) {
> > +			perror("ftruncate");
> =

> I assume this "ftruncate" did not happen on purpose, right? Replaced
> with "fstat" and applied.

Right, thanks

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
