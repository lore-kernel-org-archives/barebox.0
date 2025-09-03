Delivery-date: Wed, 03 Sep 2025 09:06:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthZf-007Ytf-2u
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 09:06:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthZe-0007iP-Iw
	for lore@pengutronix.de; Wed, 03 Sep 2025 09:06:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K5dqJMmjTPfmOF+diQKscihWLtGWthX+XQLPJcWtkTw=; b=hcqkVSk0V15J/6jKQTgNCC7++5
	18Kf4rEGHVCbSb8DTRj7qe/6SvlyERkosuesuQDPFPn8YqIqTcK2/NvTcRMKrYvp6qSdXbTFzpdUK
	hG6aXUX0Ksts3a1osAKDpFlrj2mo4mRY3L6f1sOt5Fbn5kq89puKQVLQvMWaIFEXzt9JSOT4w7lQ1
	lG9cFYvm/fdxuDJm32dhLQNX3ynmGQgNTlY2j/pOUu/ImLyD5w1JJzNiM/mk47uy93xkdiH2DA8Al
	Kf1xk9MZB/DDwXD87iTwjQaxItdUwxDvOL4YPURPc7zZZT4UMC1Hunn0/+dcVwmr0oL19hsX1/KI7
	J18Z27WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthZ9-00000004ume-3XVy;
	Wed, 03 Sep 2025 07:05:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthZ6-00000004uld-38vW
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 07:05:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1uthZ5-0007bX-7l; Wed, 03 Sep 2025 09:05:55 +0200
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uthZ4-003WBp-2w;
	Wed, 03 Sep 2025 09:05:54 +0200
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uthZ4-009vPh-2L;
	Wed, 03 Sep 2025 09:05:54 +0200
Message-ID: <7756967c23e6a1c332f039007676940b195cf645.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>, Ahmad Fatoum
	 <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Michael Olbrich <mol@pengutronix.de>, Richard Weinberger
 <richard@nod.at>,  Marco Felsch <m.felsch@pengutronix.de>, anis chali
 <chalianis1@gmail.com>
Date: Wed, 03 Sep 2025 09:05:54 +0200
In-Reply-To: <878qix3t5w.fsf@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
	 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
	 <87frd83p9h.fsf@waldekranz.com>
	 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
	 <878qix3t5w.fsf@waldekranz.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_000556_789905_36673D22 
X-CRM114-Status: GOOD (  52.74  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 2025-09-02 at 15:01 +0200, Tobias Waldekranz wrote:
> > > > I hope someone (maybe me instead of talking) should do fault inject=
ion
> > > > in QEMU or using kernel APIs and see how broken it can get.
> > >=20
> > > That would be great. Doing it at the VM layer seems very hard, at lea=
st
> > > if you want something deterministic. In the kernel though, it should =
be
> > > easier to know when a filesystem is in an inconsistent state, and inj=
ect
> > > the errors at that point.
> >=20
> > Ack.
> >=20
> > > > they also support XBOOTLDR partitions? At least in barebox, you sho=
uld
> > > > be able to just assign the rootfs partition of the Infix OS the XBO=
OTLDR
> > > > partition Type UUID to have barebox automatically look for the
> > > > bootloader
> > > > spec entries there.
> > >=20
> > > They do support that, yes. However, but that would mean that we could
> > > not use the DPS/DDI partition types that would allow for discovery of
> > > verity data/signature etc.
> >=20
> > I haven't read the spec in full, but after a discussion with Jan (Cc'd)=
,
> > we had an unanswered question about the root verity partition:
> >=20
> > "Contains dm-verity integrity hash data for the matching root partition=
.
> > If this feature is used the partition UUID of the root partition should
> > be the first 128 bits of the root hash of the dm-verity hash data, and
> > the partition UUID of this dm-verity partition should be the final 128
> > bits of it, so that the root partition and its Verity partition can be
> > discovered easily, simply by specifying the root hash."
> >=20
> > Now a UUID is only 128 bits and the partition UUID is supposed to be
> > unique, so splitting a 256 bit hash over two partitions UUIDs means tha=
t
> > in an A/B setup, we can end up with duplicate partition UUIDs if the
> > same update bundle is installed twice.
> >=20
> > =C2=A0=C2=A0 - A and B root partition are identical
> > =C2=A0=C2=A0 - A and B verity super block are identical
> >=20
> > When updating this may prove to be problematic: The system will start u=
p
> > normally (partitions are identical), but when flashing the update, how
> > would the updater easily find out which is the inactive partition that
> > it should write to..?
>=20
> That was a question I had as well. My conclusion, given how they think
> about blspec entries only existing on ESP/XBOOTLDR with split
> rootfs/kernel etc., is that they are not designing for the kinds of
> systems that you and I typically target.
>=20
> > > This is my plan forward as well. We're using the syslinux-flavor of t=
he
> > > same idea at the moment. I like barebox's relaxation of the standard =
to
> > > allow for locating boot entries outside of ESP/XBOOTLDR, without whic=
h
> > > we would be back at the split-rootfs-and-kernel problem. Have you
> > > thought about making this case to the UAPI group to amend the spec?
> >=20
> > I tried to get linux-appendroot upstreamed as first step, but haven't
> > been too successful so far:
> > https://github.com/uapi-group/specifications/pull/136
>=20
> Oh wow, the x86 is strong in this one.
>=20
> Unfortunately I think this is in line with my hunch about the gamut of
> systems on their radar not including our domain (embedded+immutable).

Image-based/immutable systems are very much in their focus:
https://uapi-group.org/docs/

There is a strong preference for UEFI, though, as they see it as the only v=
iable
path to a standardized interface between bootloader and kernel.

That create some tension in areas where some parts of their specs are also =
very
useful for vertically integrated systems like the ones we build (and with o=
ften
don't use UEFI).

> > > Yeah I noticed that, _very_ useful. For Infix, if we end up going wit=
h
> > > LVM, I suspect we won't be able to send all of that info along with t=
he
> > > commandline, and will end up needing to figure that out (again) in an
> > > initramfs - but for most cases I think it would work really well!
> >=20
> > Ah, didn't think of LVM. If mix-and-match is no problem for you, then
> > doing it in the initramfs is a workable solution of course.
>
> I definitely want to avoid mix-and-matching between kernel and
> rootfs. My idea was that barebox could still pass the partition UUID and
> the root hash to the kernel, then the (very small) initramfs would just:
>=20
> 1. Run some LVM probing to find and setup the volume with that UUID
> 2. Run verity setup on the it with the (already signature-checked) root
> =C2=A0=C2=A0 hash
> 3. pivot_root
>=20
> Maybe this is more trouble than its worth, still not sure.
>
> I just seems strange to me that this is fairly common on setups with raw
> flash (via UBI volumes), but for some reason it is never used (at least
> to my knowledge) on systems with managed flash.

With A/B partitions I find it simpler and less error prone to avoid scannin=
g and
just pass the fixed device names already known to the bootloader.

Jan

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


