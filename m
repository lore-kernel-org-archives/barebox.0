Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRIcA-0001wX-Fq
 for barebox@lists.infradead.org; Tue, 09 Sep 2014 10:25:35 +0000
Received: by mail-lb0-f169.google.com with SMTP id p9so7636615lbv.0
 for <barebox@lists.infradead.org>; Tue, 09 Sep 2014 03:25:10 -0700 (PDT)
Date: Tue, 9 Sep 2014 14:38:54 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140909143854.dc0644ebbd7f6c655b636f1b@gmail.com>
In-Reply-To: <20140909082925.GS5352@pengutronix.de>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
 <1410159189-17328-8-git-send-email-antonynpavlov@gmail.com>
 <CAJfOKBxf1qQ4zm12REacELYMCSqye-OcUM45ZULprPNREhVcGQ@mail.gmail.com>
 <20140909082925.GS5352@pengutronix.de>
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
Subject: Re: [PATCH v2 7/7] Documentation: add OpenRISC or1ksim emulator
 section
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Tue, 9 Sep 2014 10:29:25 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Sep 08, 2014 at 09:12:06AM +0200, Franck Jullien wrote:
> > Hi Antony,
> > =

> > 2014-09-08 8:53 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > Cc: Franck Jullien <franck.jullien@gmail.com>
> > > ---
> > >  Documentation/boards/openrisc.rst | 51 +++++++++++++++++++++++++++++=
++++++++++
> > >  1 file changed, 51 insertions(+)
> > >
> > > diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards=
/openrisc.rst
> > > new file mode 100644
> > > index 0000000..0b36712
> > > --- /dev/null
> > > +++ b/Documentation/boards/openrisc.rst
> > > @@ -0,0 +1,51 @@
> > > +OpenRISC
> > > +=3D=3D=3D=3D=3D=3D=3D=3D
> > > +
> > > +or1ksim
> > > +-------
> > > +
> > > +Compile or1ksim emulator::
> > > +
> > > + $ cd ~/
> > > + $ git clone https://github.com/fjullien/or1ksim
> > =

> > You should use this repo: https://github.com/openrisc/or1ksim
> =

> I changed while this applying.

Thanks!

Just in case I have tested barebox with https://github.com/openrisc/or1ksim=
 repo emulator.
It works fine.
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
