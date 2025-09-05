Delivery-date: Fri, 05 Sep 2025 20:34:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uubGr-008XZi-0G
	for lore@lore.pengutronix.de;
	Fri, 05 Sep 2025 20:34:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uubGp-0006er-Ne
	for lore@pengutronix.de; Fri, 05 Sep 2025 20:34:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3za8enAiBOJxqQZYVpDmJRbliyCvvZw1YgfuY3gagA=; b=LFQtk2GMbLRkfzIGzNW24B3iOh
	WynErG5yWAFzV/ZuqkjF78wYfJB8HGIhXH0srq9qu7zJoD1wdgO/CNZBD/ttKiuErLu0YbML7ISK0
	nN92SkVNyRnWIaUlsbMXtrsZZ+3OfNmD5GFfJYqAJAHysDB0NUPIewatUgsAaM/4tGtQIK/BxQHYP
	18HGdhd+YgYvLbCdCZcYR5TBjJVVZ8Q7rmofc/UFyGz2PLr+zEwVIHYcCqfEoiakCmdKohIdY3xsS
	VNnfjzpgMj1f3iXjOAcBgJjWaPc+ww3x5PRfzgf1p97ijFjIpct2O/R1jDi0P2JdRW0hyWcrHv/g/
	esQ20Spg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubG4-00000003ozc-3Knd;
	Fri, 05 Sep 2025 18:34:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXfc-00000002TZW-0Oot
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 14:44:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1uuXfZ-0004AF-Fh; Fri, 05 Sep 2025 16:44:05 +0200
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uuXfZ-004O9W-0F;
	Fri, 05 Sep 2025 16:44:05 +0200
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uuXfY-00C5Bq-2v;
	Fri, 05 Sep 2025 16:44:04 +0200
Message-ID: <f2d9c764a78dab660862a4405e65110d6160e673.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>, Ahmad Fatoum
	 <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>,  anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Date: Fri, 05 Sep 2025 16:44:04 +0200
In-Reply-To: <871pon47d3.fsf@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
	 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
	 <87frd83p9h.fsf@waldekranz.com>
	 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
	 <28a00db6c1bdf69f93e6ef7210e11c5dfa368411.camel@pengutronix.de>
	 <874itk4jzn.fsf@waldekranz.com>
	 <234808b66fb792f4b9ab50654dd3c018e90db6b8.camel@pengutronix.de>
	 <871pon47d3.fsf@waldekranz.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_074408_136986_0A56832D 
X-CRM114-Status: GOOD (  44.76  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 2025-09-03 at 22:19 +0200, Tobias Waldekranz wrote:
> On ons, sep 03, 2025 at 08:50, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> > On Tue, 2025-09-02 at 23:34 +0200, Tobias Waldekranz wrote:
> > > On tis, sep 02, 2025 at 16:46, Jan L=C3=BCbbe <jlu@pengutronix.de> wr=
ote:
> > > > On Tue, 2025-09-02 at 11:03 +0200, Ahmad Fatoum wrote:
> > > > > > Yeah I noticed that, _very_ useful. For Infix, if we end up goi=
ng with
> > > > > > LVM, I suspect we won't be able to send all of that info along =
with the
> > > > > > commandline, and will end up needing to figure that out (again)=
 in an
> > > > > > initramfs - but for most cases I think it would work really wel=
l!
> > > > >=20
> > > > > Ah, didn't think of LVM. If mix-and-match is no problem for you, =
then
> > > > > doing it in the initramfs is a workable solution of course.
> > > >=20
> > > > If you are thinking about LVM, you may want to take a look at how A=
ndroid is
> > > > using dm-linear for "dynamic partitions":
> > > > https://source.android.com/docs/core/ota/dynamic_partitions/ab_laun=
ch
> > > > https://source.android.com/docs/core/ota/dynamic_partitions/impleme=
nt
> > > >=20
> > > > This is also related to virtual A/B:
> > > > https://source.android.com/docs/core/ota/virtual_ab
> > > >=20
> > > > The components are "snapuserd" and "dm-user" (which was not merged)=
:
> > > > https://lpc.events/event/11/contributions/1049/attachments/826/1562=
/2021%20LPC_%20dm-snapshot%20in%20user%20space.pdf
> > > > https://lwn.net/Articles/838986/
> > > >=20
> > > > I'm not sure what they use at the moment...
> > >=20
> > > Very interesting, thank you!
> > >=20
> > > I get why they want something like that for Android, but it does feel
> > > quite daunting to deploy for the systems I typically work on.
> > >=20
> > > If one was to ignore the business of background-merging of COW data
> > > etc. and was just looking to have a way of allocating volumes from
> > > persistent storage, do you see any advantages with Android's metadata
> > > format and/or tooling over that provided by the LVM2 project?
> >=20
> > LVM2 in general is quite complex.
>=20
> Oh yes, full LVM support would be mind-bendingly complicated in a
> bootloader. I am aiming for an extremely small subset:
>=20
> Being able to parse a VG made up of a single PV, containing LV's made up
> of only linear segments.

OK, I've never tried to figure out how much work such a subset would be.

> > Some people don't like that it's not easily
> > possible to know (in udev/systemd) when all volumes are found and set-u=
p, making
> > boot time dependencies difficult.
>=20
> I see. Is that because, in contrast to most other devices, userspace
> needs to initiate device creation? Are Android dynamic partitions better
> behaved in this respect?

The complication arises because one VG can have multiple PVs. So you have a
userspace component which scans new block devices to see if they are PVs an=
d
assembles them into VGs. As "new" block devices can come in late on discove=
rable
busses, you're not sure if some more might appear of if an incomplete VG wi=
ll
never be done.

For our embedded case, you can limit yourself to a strict nesting: one phys=
ical
partition can contain multiple dynamic partitions. So you when that specifi=
c
physical partition shows up, you can synchronously setup all dynamic partit=
ions
(or fail due to an error). So there's no waiting and scanning of block devs
appearing at runtime.

Perhaps there's a way to do LVM probing synchronously as well, but if so, I=
'm
not aware that that's supported.

> > The Android metadata (or something similar)
> > seems to be simple enough to implement in a bootloader. So, as we only =
need a
> > small subset of the full LVM functionality on embedded devices, perhaps=
 there's
> > space for a lightweight alternative? :)
>=20
> Agreed, I am not exactly thrilled about needing a parser for the LVM
> ASCII metadata format in Barebox :)
>=20
> Android dynamic partitions undoubtedly seem much better from that
> perspective.
>=20
> Here is my concern with it: wouldn't going this route mean that you have
> to either (a) build your own tooling for working with Android dynamic
> partitions, or (b) have some semi-automated way of extracting the
> existing tooling from the Android source tree? In contrast, the LVM2
> package is just a config option away in both Buildroot, PTXdist, and
> Yocto.

Yes, it would mean custom tooling. Building Android tools externally seems =
a lot
of pain (just look at what's needed to build fastboot and adb).

My idea is probably more of a long-term plan or wish. ;) One neat trick of =
the
android partitioning ("virtual A/B") is that they can temporarily use space=
 from
the data partition to hold the newly installed system until it's confirmed =
good.
Doing that with LVM would mean using the thin provisioning device mappers.

Regards
Jan
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


