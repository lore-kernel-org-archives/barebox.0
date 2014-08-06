Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEsL6-0004Vx-4U
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 03:56:36 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 26E3BFFA356
 for <barebox@lists.infradead.org>; Wed,  6 Aug 2014 05:56:15 +0200 (CEST)
Date: Wed, 6 Aug 2014 06:00:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140806040033.GG19147@ns203013.ovh.net>
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

On 21:53 Sun 03 Aug     , Antony Pavlov wrote:
> =

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

not a fan of python and this will make it mandatory for build as it's only =
for
doc today

for me no

Best Regards,
J.
> =

> Here is an another solution:
> =

> -               echo ".int " $compatlen
> +		echo ".byte " $(printf "%08x" $compatlen | sed "s/\(..\)/0x\1\n/g" | t=
ac | xargs | sed "s/ /, /g")
> =

> --=A0
> Best regards,
> =A0 Antony Pavlov
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
