Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4RpT-0001H2-Nl
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 09:36:52 +0000
Received: by mail-la0-f45.google.com with SMTP id hr17so3776314lab.18
 for <barebox@lists.infradead.org>; Tue, 08 Jul 2014 02:36:28 -0700 (PDT)
Date: Tue, 8 Jul 2014 13:48:43 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140708134843.b279bb1f96ebae8cbedd1ace@gmail.com>
In-Reply-To: <20140708062934.GB23282@pengutronix.de>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
 <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
 <20140707182210.GC19147@ns203013.ovh.net>
 <20140708012346.2b0e75d53710d0dc68d5afac@gmail.com>
 <20140708062934.GB23282@pengutronix.de>
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
Subject: Re: [PATCH v5 3/7] PCI: initial commit
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 8 Jul 2014 08:29:34 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Jul 08, 2014 at 01:23:46AM +0400, Antony Pavlov wrote:
> > On Mon, 7 Jul 2014 20:22:10 +0200
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > =

> > > > +static struct pci_bus *pci_alloc_bus(void)
> > > > +{
> > > > +	struct pci_bus *b;
> > > > +
> > > > +	b =3D kzalloc(sizeof(*b), GFP_KERNEL);
> > > =

> > > 	if (!b)
> > > 		return b;
> > =

> > kzalloc() eventually calls xmalloc().
> > xmalloc() calls panic() if malloc fails, so there is no need to check b=
 at all.
> =

> Then let's use xzalloc directly here. I think only the x functions
> should panic on failure. kzalloc should be implemented with
> malloc or calloc.

The PCI series consist much code from original August 2011 patchseries
(e.g. see http://lists.infradead.org/pipermail/barebox/2011-August/004349.h=
tml).

Some things have changed since 2011.

I'll prepare fix patches.
Can we ammend them into the PCI patch series (already in the 'next' but not=
 in the 'master'?)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
