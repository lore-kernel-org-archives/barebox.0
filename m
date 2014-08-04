Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEBoH-0004FK-Sf
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 06:31:54 +0000
Date: Mon, 4 Aug 2014 08:31:27 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140804063127.GI6146@pengutronix.de>
References: <1406958354-12051-1-git-send-email-antonynpavlov@gmail.com>
 <1407082665.7251.1.camel@polaris.local>
 <20140803215338.3b436b58bf5d796c46dd23bd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140803215338.3b436b58bf5d796c46dd23bd@gmail.com>
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
Subject: Re: [RFC] gen-dtb-s: make metadata binary fields always little-endian
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 03, 2014 at 09:53:38PM +0400, Antony Pavlov wrote:
> On Sun, 03 Aug 2014 18:17:45 +0200
> Jan L=FCbbe <jlu@pengutronix.de> wrote:
> =

> > Hi,
> > =

> > On Sat, 2014-08-02 at 09:45 +0400, Antony Pavlov wrote:
> > >  =

> > >                 compatlen=3D$($FDTGET -t s "$dtb" / compatible | wc -=
c)
> > > -               echo ".int 0x640c8005"
> > > -               echo ".int " $compatlen
> > > +               echo ".byte 0x05, 0x80, 0x0c, 0x64"
> > > +               python -c "print(\".byte 0x%02x, 0x%02x, 0x%02x, 0x%0=
2x\\n\" % ($compatlen & 0xff, ($compatlen >> 8) & 0xff, ($compatlen >> 16) =
& 0xff, ($compatlen >> 24) & 0xff))"
> > =

> > Rather than adding a build-time dependency on python, maybe we should
> > just handle this in C?
> =

> We use sphinx for documentation generation so we already have dependency =
on python.
> =

> Here is an another solution:
> =

> -               echo ".int " $compatlen
> +		echo ".byte " $(printf "%08x" $compatlen | sed "s/\(..\)/0x\1\n/g" | t=
ac | xargs | sed "s/ /, /g")
yet another alternative:

awk -v var=3D$compatlen 'BEGIN { for (i =3D 0; i < 4; ++i) ba[i] =3D and(rs=
hift(var, 8 * i), 0xff); printf ".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\n", b=
a[0], ba[1], ba[2], ba[3]; }'

It's not shorter, but maybe a bit more obvious what it does.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
