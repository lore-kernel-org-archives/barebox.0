Delivery-date: Tue, 02 Sep 2025 21:12:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWR8-007NfY-1T
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:12:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWR6-0006uS-Pp
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iS6gB5EH6yI/hgGsw5b6yEVxGSaNOds4AqHSy0gn1Fg=; b=CwiiGA6ZlxBM3de7YHNEvu/w8c
	6Sgns6scsQ3YT0vY640OS+P15R1CdEiBdBk7GnpHEvjgiFtyW3vXqIOErCiwY4JK4FPp9GykEY3Mp
	XYSx5mi0ohqF4CPdA5TeXscXmsF1aAgGFelsjiAsq4KB3dMDZgt1do5I3PAP6NupLlnBtQHLP5shC
	G7sveAKLNgwJGOF+jnBLEkIni51u2ZduhzKLrA0vBBfDRiE2JOcn89dQXmLFTpsNnjWiLTS+ob2L5
	Qis811EPdX9/cY9BjDG0QLY4ofZqtIDP72NXuLnaCM2/8qItIEk/goH8b63N7HgrqAWivXfIQLmnH
	BCBnjPyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWQc-00000001dYq-18FU;
	Tue, 02 Sep 2025 19:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utS65-00000000OAK-2Xg7
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 14:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1utS62-0006K3-Nz; Tue, 02 Sep 2025 16:34:54 +0200
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1utS61-003PPY-36;
	Tue, 02 Sep 2025 16:34:53 +0200
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1utS61-009MIE-2a;
	Tue, 02 Sep 2025 16:34:53 +0200
Message-ID: <13ed39c286a4dfcccfc3cfa30e987b782a4e800d.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Tobias Waldekranz
	 <tobias@waldekranz.com>, barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>,  anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Date: Tue, 02 Sep 2025 16:34:53 +0200
In-Reply-To: <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
	 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_073457_646715_9DAD5A21 
X-CRM114-Status: GOOD (  21.69  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 2025-08-29 at 13:24 +0200, Ahmad Fatoum wrote:
> > 2. Barebox is a much higher quality code base to work in than
> > =C2=A0=C2=A0=C2=A0 U-Boot. I'm sorry, but it just is.
> >=20
> > Barebox would thus take the place occupied by systemd-boot in many
> > distro setups. So why not go with systemd-boot?
>=20
> Sidenote: Something that been irking me for ages is the over-reliance
> on FAT in systemd-boot. Could the FAT on a file system level break
> by inopportune power cuts? We go to great lengths with barebox-state
> and redundant buckets on raw partitions to avoid this and it leaves
> me asking: Was I wrong to mistrust FAT or is a sudden power cut during
> file system write operations not as much a concern for their users?
>=20
> I hope someone (maybe me instead of talking) should do fault injection
> in QEMU or using kernel APIs and see how broken it can get.

For the kernel, there is:
https://docs.kernel.org/admin-guide/device-mapper/log-writes.html
https://github.com/josefbacik/log-writes

Perhaps this could be used via the sandbox build or even QEMU to produce su=
ch a
log. Then, you could use the userspace tool to reproduce all intermediate s=
tates
and check that they are consistent.

Doing this has been on my wishlist for ages, but I've never gotten around t=
o it.

Also in this area, I've wondered for some time if an alternative implementa=
tion
of FAT would be possible which does a strictly ordered commit of a new meta=
-data
tree on unmount. As there are two copies of the top-level FAT, it might be
possible to do that atomically by using a careful ordering of writes. By no=
w,
FAT is basically only used as a boot partition, so trading performance for
reliability might be a good idea. :)

Regards,
Jan

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


