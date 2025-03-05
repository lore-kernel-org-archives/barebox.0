Delivery-date: Wed, 05 Mar 2025 14:18:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpoeH-00ACD4-2c
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 14:18:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpoeG-00024u-Dq
	for lore@pengutronix.de; Wed, 05 Mar 2025 14:18:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6X/Ca0+c/23gQqCZvYQY4r8HhC6/wVR0Q+9cLc3QSGo=; b=GPAKT8DAgJ4BaV
	/boCaZ4YnQprdswzpFC7+39Dmy2fxS+354yeC0F/QfjJlGRnqjmovRvcOV2SJGiRU1v8mzLpKql/N
	e/yjYZx2IjE7BQ4HUt5+aqx2DuwKPgpJWqNTvWDX+EZN0zeCC5g7tzZYLz0k35lMDej0oG0Ik76ZG
	0zBzDFh+v4TKEcjutxRd5Ic80jquzaKa+T7wLEz6ALRa0lKu/uBnwRJjNqElzZejTgfodrPlqL1uw
	jdH1VGkgaQQUOBrvGVNfiqEUyhT29nzdFDiHk4MnTVKv3RnN4NRf7xdGHhVOw20g/9slVO1gaVWMr
	hi68VIk6GrrN7LMIJQjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpoe1-00000008ABF-0iIx;
	Wed, 05 Mar 2025 13:18:41 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmxT-00000007rhy-1GHH
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 11:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=6X/Ca0+c/23gQqCZvYQY4r8HhC6/wVR0Q+9cLc3QSGo=;
	b=vOzao/hEla0GLlKYZajpka8N2zACunjbB0oReXzKegvL9M1huqjRi6/ORDSG8FJefy8eejJqOCUWh
	 /4VZGF4YTlAedaeOSvUgShBNuHQu73fIxq4HCKviRnl4jSuqqqA03Ea9XOrLV0+Ii2JsVVQo6fPBCM
	 EmKXfulKMnkHIXGu0oYT2GWYqwsNhEAlhTSJgunVJl0IoW5phOGL6ZQtQXQLbgTmpkclL/RhmoMF6K
	 ZFk4AkX9YTIxF+xL0DmC4xGxvjwVBiAKu9oyfuej87QVCD5PoLU1vpphB2KzUkW1SK5Th4vINCJaHR
	 fVJZAp3FKijUZMbMRaKNlz1Y/gV0MvA==
X-MSG-ID: 3f9d0694-f9b5-11ef-b5ca-0050568164d1
Date: Wed, 5 Mar 2025 12:30:32 +0100
From: David Jander <david@protonic.nl>
To: Martin Wege <martin.l.wege@gmail.com>
Message-ID: <20250305123032.2b2c7768@erd003.prtnl>
In-Reply-To: <CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
	<Z6yxUVTp0vGWqs7Q@pengutronix.de>
	<CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
	<Z8GWfv4oIhB7CDSU@pengutronix.de>
	<3ba4d5f3-9679-4a32-a3e7-a8c958107df9@pengutronix.de>
	<CANH4o6PN3tJC+zLt_eLeKzJ6BVFnGo+vYFDF+9Hjp9x6oz626g@mail.gmail.com>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_033039_758709_DB2264B1 
X-CRM114-Status: GOOD (  38.18  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Cedric Blancher <cedric.blancher@gmail.com>, Dan Shelton <dan.f.shelton@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Dear Martin,

On Tue, 4 Mar 2025 22:50:00 +0100
Martin Wege <martin.l.wege@gmail.com> wrote:

> On Mon, Mar 3, 2025 at 9:40=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix=
.de> wrote:
> >
> > Hi,
> >
> > On 28.02.25 11:57, Sascha Hauer wrote: =20
> > > On Fri, Feb 21, 2025 at 12:54:00PM +0100, Martin Wege wrote: =20
> > >> On Wed, Feb 12, 2025 at 3:33=E2=80=AFPM Sascha Hauer <s.hauer@pengut=
ronix.de> wrote: =20
> > >>>
> > >>> Hi Martin,
> > >>>
> > >>> On Tue, Feb 11, 2025 at 01:56:58PM +0100, Martin Wege wrote: =20
> > >>>> Hello!
> > >>>>
> > >>>> Does barebox have support to mount a NFSv.2 filesystem? =20
> > >>>
> > >>> No, not yet. For NFSv4 we would first need TCP support. While we st=
arted
> > >>> to integrate a TCP stack we are not there yet unfortunately. =20
> > >>
> > >> How long is this going to take? =20
> > >
> > > I don't think this will happen anytime soon. It's quite some work and
> > > our bandwidth for adding such a feature without (paying) customer
> > > demand is limited.
> > >
> > > That said, the lack of NFSv4 support is nagging me personally as well=
. =20
> >
> > We had a discussion about this last year, but it didn't result in any
> > upstream code yet:
> > https://lore.barebox.org/barebox/CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnad=
O_HFyHfSi7WFA@mail.gmail.com/
> >
> > One question that I still have, is what do you use NFSv4 for?
> > Is it just for development and your IT is disabling NFSv3? =20
>=20
> No, NFSv4.1 (NFSv4.0 is obsolete due to bugs) offers better
> performance, more flexibility, smaller footprint, better caching
> (delegations), ACLs, SELinux support, and can be tunneled through
> firewalls because it only uses TCP port 2049 and nothing else.
>=20
> >
> > Do you use it in the field? =20
>=20
> Yes, we do
>=20
> >
> > Knowing about the use case helps with prioritizing future work.
> > As it stands, NFS is mostly understood as development feature and
> > it's expected so far that interested users will be able to provide
> > a NFSv3 UDP server in their development network. =20
>=20
> No, NFS is not only a development feature. For example CERN uses NFS
> boot (with patched NFSv4.1 stack) in radiation environments - that
> saves a SSD per embedded machine, which is typically one of the most
> affected pieces from radiation. AIRBUS also uses nfsboot in their
> equipment and flight deck systems.
>=20
> So yes, you would have customers for NFSv4.1 support in barebox.

Just wanted to chime in to amplify this a bit, since we are also using NFSv=
4.2
netboot (though only TFTP in barebox for now):

Your arguments are solid, and make a lot of sense. If you are going to repl=
ace
more and more microcontroller based nodes with Linux capable SoCs, because =
it
makes a lot of economical sense (hardware costs are very similar nowadays, =
and
software development is 10x easier and cheaper on Linux than on a uC), you
will end up inevitably with a lot of Linux nodes inside of a machine or
industrial plant, where you previously had uC's. So, do you want to continue
using 1970's tech (RS485/modbus) or 1980's tech (CAN) to communicate betwee=
n all
those nodes, or will you use Linux's native language (TCP/IP) which also
immediately means another 10x reduction in software development costs of the
networking part? If you choose the latter, you will also get significant HW
cost savings basically for free if you also net-boot (via NFS and/or TFTP).

In other words, why are we not already doing this?

At least we are. We are starting to use Single Pair Ethernet almost everywh=
ere
where there were other field-busses involved traditionally. So we noticed t=
hat
we end up with a lot of boards running Linux connected together via anything
from 10Base-T1L to 1000Base-T1. Replace the eMMC chip on all but one of them
with a cheap 2MiB SPI-NOR flash to load barebox and netboot from one single
board running an NFSv4.2 (and TFTP) server serving the kernel and rootfs for
all the others from a single eMMC, that can be updated with a single RAUC
bundle guaranteeing consistent software and trivially easy updates on all
nodes at once. Not to mention the benefit of trivial repairs because all
boards are basically dumb and don't need to be flashed with software that
matches the machine they are being replaced in, etc...

To be fair though, it isn't strictly needed for barebox to have NFS support
for our use-case, since it suffices to load the kernel (and possibly an
initramfs) via TFTP and mount the nfsroot from the kernel, but IMHO it is
certainly valuable to have basic NFSv4.2 support in barebox. It would
facilitate the use of just 1 protocol instead of 2. I also agree that NFSv3
support in that regard offers little value since you really don't want to b=
ase
everything on this obsolete version with all of its limitations.

But also a bit of caution to be mindful of: Cybersecurity. Of course barebox
can be made to only boot signed fit images, but are there other potential
attack vectors? What if the NFS server needs to be secured with with GSS and
kerberos? Barebox possibly won't be able to access it unless it also suppor=
ts
that.

P.S.: I am currently not subscribed to the barebox mailing list, so I don't
know if this email will get forwarded by the list server.

Best regards,

--=20
David Jander


