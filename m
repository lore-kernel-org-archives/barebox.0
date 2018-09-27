Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5QgD-0001GE-1v
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 07:25:48 +0000
Date: Thu, 27 Sep 2018 09:25:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180927072516.GW4097@pengutronix.de>
References: <20180926081029.28103-1-s.hauer@pengutronix.de>
 <87r2hg3470.fsf@grinn-global.com> <87pnx033m3.fsf@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnx033m3.fsf@grinn-global.com>
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
Subject: Re: [PATCH] fs: ramfs: make chunk counting in truncate() better
 readable
To: Marcin =?iso-8859-15?Q?Niestr=F3j?= <m.niestroj@grinn-global.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 26, 2018 at 01:22:28PM +0200, Marcin Niestr=F3j wrote:
> =

> I think I was a little bit too early with review :) Below I have some
> comments.
> =

> Marcin Niestr=F3j <m.niestroj@grinn-global.com> writes:
> =

> > Sascha Hauer <s.hauer@pengutronix.de> writes:
> >
> >> In ramfs_truncate() "newchunks" denotes the number of chunks we
> >> want to have after the call. We decrease that number while iterating
> >> over the existing chunks and decrease it further with every newly
> >> allocated chunk until "newchunks" is zero.
> >> This is a bit hard to read. Instead we drop the decreasing while
> >> iterating over existing chunks and increase "oldchunks" while allocati=
ng
> >> until it reaches "newchunks".
> >>
> >> This is mainly done to make the next patch easier.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >> ---
> >>  fs/ramfs.c | 9 ++++-----
> >>  1 file changed, 4 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/fs/ramfs.c b/fs/ramfs.c
> >> index 09dafe02ae..8ba8d77de9 100644
> >> --- a/fs/ramfs.c
> >> +++ b/fs/ramfs.c
> >> @@ -384,19 +384,18 @@ static int ramfs_truncate(struct device_d *dev, =
FILE *f, ulong size)
> >>  			if (!node->data)
> >>  				return -ENOMEM;
> >>  			data =3D node->data;
> >> +			newchunks =3D 1;
> =

> What is the reason of this instruction? What if 'size' =3D=3D 16384 and we
> do it on freshly opened file (with truncate(fd, 16384)? 'newchunk'
> should be 2 in that case, or not?

Yes, you're right. It should be "oldchunks =3D 1" instead. Then we have:

>		if (!data) {
>			node->data =3D ramfs_get_chunk();
>			if (!node->data)
>				return -ENOMEM;
>			data =3D node->data;
>			oldchunks =3D 1;
>		}

!data we have no chunks allocated. We allocate one and set oldchunks to one=
. When we
do:

>		while (newchunks > oldchunks) {
>			data->next =3D ramfs_get_chunk();
>			if (!data->next)
>				return -ENOMEM;
>			data =3D data->next;
>			oldchunks++;
>		}

In your example above we execute this loop once, allocate the second chunk,=
 oldchunks
will become two which is the same as newchunks and then we go out.

I hope this is correct now ;)

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
