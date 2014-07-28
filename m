Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBjDi-0001vt-IL
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 11:35:59 +0000
Received: by mail-la0-f51.google.com with SMTP id el20so5268843lab.38
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 04:35:33 -0700 (PDT)
Date: Mon, 28 Jul 2014 15:48:16 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140728154816.ffef1bd5c16236d0b518d5f8@gmail.com>
In-Reply-To: <20140728061604.GX23235@pengutronix.de>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
 <1406454448-10645-10-git-send-email-antonynpavlov@gmail.com>
 <20140728061604.GX23235@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 9/9] Documentation: add QEMU Canon A1100 barebox mini-howto
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 28 Jul 2014 08:16:04 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sun, Jul 27, 2014 at 01:47:28PM +0400, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  Documentation/boards/digic.rst | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > =

> > diff --git a/Documentation/boards/digic.rst b/Documentation/boards/digi=
c.rst
> > new file mode 100644
> > index 0000000..e2c49b6
> > --- /dev/null
> > +++ b/Documentation/boards/digic.rst
> > @@ -0,0 +1,16 @@
> > +Canon DIGIC
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +Canon PowerShot A1100 IS
> > +------------------------
> > +
> > +Running barebox on QEMU
> > +^^^^^^^^^^^^^^^^^^^^^^^
> > +
> > +QEMU supports Canon A1100 camera emulation since version 2.0.
> > +
> > +Usage::
> > +
> > +  $ qemu-system-arm -M canon-a1100 \
> > +      -nographic -monitor null -serial stdio \
> > +      -bios barebox.canon-a1100.bin
> =

> Is it possible to run it on a real camera? How?

We need the dancingbits utility from CHDK project for generation binary ima=
ge for real camera
(see https://github.com/c10ud/CHDK/blob/master/tools/dancingbits.c).

This utility is licensed GPLv3+.

Can I put it into barebox.git/scripts?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
