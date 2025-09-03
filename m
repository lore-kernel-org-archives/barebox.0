Delivery-date: Wed, 03 Sep 2025 08:53:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthMr-007YZQ-1O
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:53:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uthMq-0005KT-6L
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:53:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qwGGqAINbCh8pt+fXysXQK8iM7rf1mWv1/9kBvPRG70=; b=BZHETy8+H2/IUy5G9Qg5APeat+
	lU0rlSaA9D/cdJrUnD3p2qEYFoPyJUdQX5IUfJ8GjFl6Ia/7AeKS4t68CxAkUlgoiJ4FAtvBO4Ht1
	ocdmb1OxbqSaHCBzHKPEHObkG5MnHH8TOU4QVv0j7uXNMvMv28TIxsiHYzirlW+uAi9fBrGwZFb16
	T3A7t1OQfgxinIip5zYEHO0vdZkB+XGJ4mI8J3Z8u/+iXJXcc63YlnhldpSROUE26EzniZNw4r54x
	AVtwlC6mmgjzTrSrZPM4pF2w9b7RODuirL26f1V2EtWKg5QQvOjz8rdcuRQUNUA8Z5rYhATF3k+0q
	G7AFf0Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthMK-00000004oLf-1H39;
	Wed, 03 Sep 2025 06:52:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthJl-00000004nE5-10o6
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:50:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1uthJj-0004h8-Cn; Wed, 03 Sep 2025 08:50:03 +0200
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uthJi-003W5w-39;
	Wed, 03 Sep 2025 08:50:02 +0200
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uthJi-009u9H-2Y;
	Wed, 03 Sep 2025 08:50:02 +0200
Message-ID: <234808b66fb792f4b9ab50654dd3c018e90db6b8.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>, Ahmad Fatoum
	 <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>,  anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
Date: Wed, 03 Sep 2025 08:50:02 +0200
In-Reply-To: <874itk4jzn.fsf@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
	 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
	 <87frd83p9h.fsf@waldekranz.com>
	 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
	 <28a00db6c1bdf69f93e6ef7210e11c5dfa368411.camel@pengutronix.de>
	 <874itk4jzn.fsf@waldekranz.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_235005_285725_66994155 
X-CRM114-Status: GOOD (  30.46  )
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

On Tue, 2025-09-02 at 23:34 +0200, Tobias Waldekranz wrote:
> On tis, sep 02, 2025 at 16:46, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> > On Tue, 2025-09-02 at 11:03 +0200, Ahmad Fatoum wrote:
> > > > Yeah I noticed that, _very_ useful. For Infix, if we end up going w=
ith
> > > > LVM, I suspect we won't be able to send all of that info along with=
 the
> > > > commandline, and will end up needing to figure that out (again) in =
an
> > > > initramfs - but for most cases I think it would work really well!
> > >=20
> > > Ah, didn't think of LVM. If mix-and-match is no problem for you, then
> > > doing it in the initramfs is a workable solution of course.
> >=20
> > If you are thinking about LVM, you may want to take a look at how Andro=
id is
> > using dm-linear for "dynamic partitions":
> > https://source.android.com/docs/core/ota/dynamic_partitions/ab_launch
> > https://source.android.com/docs/core/ota/dynamic_partitions/implement
> >=20
> > This is also related to virtual A/B:
> > https://source.android.com/docs/core/ota/virtual_ab
> >=20
> > The components are "snapuserd" and "dm-user" (which was not merged):
> > https://lpc.events/event/11/contributions/1049/attachments/826/1562/202=
1%20LPC_%20dm-snapshot%20in%20user%20space.pdf
> > https://lwn.net/Articles/838986/
> >=20
> > I'm not sure what they use at the moment...
>=20
> Very interesting, thank you!
>=20
> I get why they want something like that for Android, but it does feel
> quite daunting to deploy for the systems I typically work on.
>=20
> If one was to ignore the business of background-merging of COW data
> etc. and was just looking to have a way of allocating volumes from
> persistent storage, do you see any advantages with Android's metadata
> format and/or tooling over that provided by the LVM2 project?

LVM2 in general is quite complex. Some people don't like that it's not easi=
ly
possible to know (in udev/systemd) when all volumes are found and set-up, m=
aking
boot time dependencies difficult. The Android metadata (or something simila=
r)
seems to be simple enough to implement in a bootloader. So, as we only need=
 a
small subset of the full LVM functionality on embedded devices, perhaps the=
re's
space for a lightweight alternative? :)

Jan
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


