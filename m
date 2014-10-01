Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZECj-0004XL-D1
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 07:20:06 +0000
Received: by mail-lb0-f169.google.com with SMTP id 10so207492lbg.14
 for <barebox@lists.infradead.org>; Wed, 01 Oct 2014 00:19:40 -0700 (PDT)
Date: Wed, 1 Oct 2014 11:19:39 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20141001111939.a47affd2340d830a60237d20@gmail.com>
In-Reply-To: <20141001061721.GB4992@pengutronix.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
 <20140925230238.18b41a52be8f3d5cc45d9bc7@gmail.com>
 <1411678015.2207.2.camel@tellur.intern.lynxeye.de>
 <20141001061721.GB4992@pengutronix.de>
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
Subject: Re: [PATCH 00/15] PCI bridges and Tegra PCI stuff
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 1 Oct 2014 08:17:21 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Sep 25, 2014 at 10:46:55PM +0200, Lucas Stach wrote:
> > Am Donnerstag, den 25.09.2014, 23:02 +0400 schrieb Antony Pavlov:
> > > On Thu, 25 Sep 2014 19:04:54 +0200
> > > Lucas Stach <dev@lynxeye.de> wrote:
> > > =

> > > > Ok, I'm sending this out before it gathers any more dust.
> > > > =

> > > > This still doesn't work on Tegra K1 and I also haven't got
> > > > around to finish the rtl8169 network driver, but it seems
> > > > this pile is already a worthwile improvement.
> > > > =

> > > > First 7 patches are general barebox PCI improvements for
> > > > better tracking of PCI resources and handling bridge setup.
> > > =

> > > I have tryed this series.
> > > =

> > > I have got several =

> > >   'BAR does not fit within bus IO res'
> > > messages on qemu-malta. So not all available pci devices were registe=
red.
> > > =

> > I think that's because patch 2 fixes a problem where IO resources would
> > be populated from the host controllers MEM resource. IO resources are
> > now properly accounted.
> > =

> > From a quick look at the code it seems you aren't properly assigning the
> > resource.end for the IO region on malta. Can you please check this?
> > Otherwise please post the PCI debug messages.
> =

> How do we proceed with this series? Antony, could you help debugging
> this?

Lucas is right. Malta's pci controller code assings wrong value for io reso=
urce.end.
I'm examining correspoinding linux kernel code, but I can't point a source =
of the problem just now.

 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
