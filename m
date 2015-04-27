Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ymf5w-00040s-Mz
 for barebox@lists.infradead.org; Mon, 27 Apr 2015 09:12:53 +0000
Received: by lbbuc2 with SMTP id uc2so77121562lbb.2
 for <barebox@lists.infradead.org>; Mon, 27 Apr 2015 02:12:28 -0700 (PDT)
Date: Mon, 27 Apr 2015 12:17:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150427121731.f02ffb50a9b227f619f21f4e@gmail.com>
In-Reply-To: <20150427060059.GV6325@pengutronix.de>
References: <20150426173831.c6246f01a64d316351f3ce54@gmail.com>
 <20150427060059.GV6325@pengutronix.de>
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
Subject: Re: RFC: of_device_id: use pointer for the data field
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 27 Apr 2015 08:00:59 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sun, Apr 26, 2015 at 05:38:31PM +0300, Antony Pavlov wrote:
> > Hi!
> > =

> > Just now barebox' of_device_id struct uses unsigned long type for data =
field:
> > =

> >   struct of_device_id {
> >           char *compatible;
> >           unsigned long data;
> >   };
> > =

> > Here is of_device_id struct in linux kernel:
> > =

> >   struct of_device_id {
> >           char name[32];
> >           char type[32];
> >           char compatible[128];
> >           const void *data;
> >   };
> > =

> > Just all data fields are used as pointers and need 'unsigned long' cast=
ing.
> > E.g. see 'git grep -A 4 of_device_id drivers/' output:
> > =

> >   drivers/ata/sata-imx.c:static __maybe_unused struct of_device_id imx_=
sata_dt_ids[] =3D {
> >   drivers/ata/sata-imx.c- {
> >   drivers/ata/sata-imx.c-         .compatible =3D "fsl,imx6q-ahci",
> >   drivers/ata/sata-imx.c-         .data =3D (unsigned long)&data_imx6,
> >   drivers/ata/sata-imx.c- }, {
> > =

> > Could we use 'const void *' type for data field as linux kernel does?
> =

> Yes, good idea.

Ok, I'll try to prepare the patch in several days.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
