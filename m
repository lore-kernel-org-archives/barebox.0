Delivery-date: Fri, 17 Dec 2021 13:45:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myCcE-009SW5-Ie
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 13:45:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myCcD-0002ro-6j
	for lore@pengutronix.de; Fri, 17 Dec 2021 13:45:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MFa6UZnI4lD+0UGRn6uHlJ3c/dCBdKsclmcifVjvow=; b=TPJh2VJ+rLtic+
	SnQeOkJwkh//lx5I0Z2HnlTDthaH1gipVFkWmX9BhPQxZ8kIPZT5k55JbnuzCerQT03oXVDZEjAWu
	qqo2v9HVtJyhz3GZ4NKjVdEE4e6q55Me8opF7TRzkN/rMJ+7KKdNSg/h2AwGqtTJEB6Oitt7Ueo+g
	lUKM9o9IVWkupxk72WwZDupfA4GmqtrF04jtZJ72iv52d2YU43G7G/KaqByyOYSI75NDi2xhhY2Ke
	/5dEqL2sqdyNHcZfodmta9nzn/cfwNQWsvwT/PRxY2t0GHb09P1vsny/vWxxJF60glZrxRaGV3Pof
	ReFURrPVgDa3WSVzyJaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCae-00AD48-W3; Fri, 17 Dec 2021 12:44:01 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCaY-00AD2u-By
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 12:43:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id EA3D040380;
 Fri, 17 Dec 2021 13:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639745029;
 bh=OQQt3dj1viScF1ZO/pwmTnS9wRqQ/+FQLPvj1sXUFww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OfTFX0Ef3Lw1Z/BgbRobQGG71ml6HNDzdJ1ql22KqmqtBfPoESDYTAixjWSQ9awNm
 nL1W1TAOdRdol0evlt911qMX+ATEp9Nw9QQ0VZWVV8IBuktOniSae6V3pdjSe3RUA4
 iAeJa17Jup4aS2yImeV8yN0PUFUuijCUF/I0VWGcc3KIGVtj+Oekcz7j01DlP5dJO9
 oFKDLS+yvjelV4nZN3Mh/mBbnErT7gK95JlIGN/AWQU0A7wHoKgEUyNsdw6Ow1jpTy
 O+Ih3k16RCy6FG+4c0v7GThP4W1fbIBgRUpNdUHA3iNlE0hkUy3g6OVvbkpr3944P0
 cqC+HtAWhNm/g==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6ynWQijOYEU; Fri, 17 Dec 2021 13:43:49 +0100 (CET)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 5631940082;
 Fri, 17 Dec 2021 13:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639745029;
 bh=OQQt3dj1viScF1ZO/pwmTnS9wRqQ/+FQLPvj1sXUFww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OfTFX0Ef3Lw1Z/BgbRobQGG71ml6HNDzdJ1ql22KqmqtBfPoESDYTAixjWSQ9awNm
 nL1W1TAOdRdol0evlt911qMX+ATEp9Nw9QQ0VZWVV8IBuktOniSae6V3pdjSe3RUA4
 iAeJa17Jup4aS2yImeV8yN0PUFUuijCUF/I0VWGcc3KIGVtj+Oekcz7j01DlP5dJO9
 oFKDLS+yvjelV4nZN3Mh/mBbnErT7gK95JlIGN/AWQU0A7wHoKgEUyNsdw6Ow1jpTy
 O+Ih3k16RCy6FG+4c0v7GThP4W1fbIBgRUpNdUHA3iNlE0hkUy3g6OVvbkpr3944P0
 cqC+HtAWhNm/g==
Date: Fri, 17 Dec 2021 13:43:48 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YbyGBHs1YWVcgE5X@Hephaistos>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
 <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
 <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_044354_599430_1A4704D9 
X-CRM114-Status: GOOD (  18.22  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi :-)

On Fri, Dec 17, 2021 at 10:46:42AM +0100, Ahmad Fatoum wrote:
 =

> It was backported to stable in v5.10.20. Backport commit is 663a18271.

Sorry my git/google-foo is unsufficient, how do I get my hands on this
commit?

> > So one has to take care of the parent note size being big enough to con=
tain the sum of
> > all length and thse itself must not overlap, right?
> =

> Yes. Device Tree compiler helps here a bit by warning if two nodes on the=
 same bus
> have the same base address.

Okay.

> Open Firmware. It's the original standard that described device trees.

Oh, I wasn't aware, thanks for the information.

> > On the other hand, I could access plenty of space unallocated after the=
 MBR if 1st partition
> > starts at a late sector like 1024 or so.
> =

> Latter is what I usually do.

Okay.

> arch/arm/dts/imx6qdl-prti6q-emmc.dtsi places it on eMMC. Check it out.

Yes, I will do, thank you!

> > And is doing this state thing in a file (for example on the 1st=A0 FAT =
where barebox.env is)
> > for barebox and raux/barebox-state possible or not?
> =

> FAT isn't power-fail safe. It's ok for reading or writing stuff during
> development (e.g. environment), but you really don't want to use it
> for barebox-state that's meant to be power-fail safe.

Okay again, I am convinced about the no-file-in-FAT state.

So, just to be shure for the state OF partition placed after the MBR before=
 1st
MBR partition:

If I have 1st partition's start sector being 2048 I hafe plenty of room
before this after the MBR.

The barebox state OF partition should be in there and I could place it
at

reg =3D <0x300 0xfffff>

because the MBR ends at 0x1ff and the 1st partition starts at
sector 2048 ( 2048*512byte=3D1MB=3D0x10000), is that correct, is the reg
addressing done this way?

Of course a length of 0xfffff is far too much,
just to get a picture. Also to transfer this to an OF partition in a MBR
partition.

The container partition reg =3D <0xc0000 0x40000> in imx6qdl-prti6q-emmc.dt=
si seems
to be directly going to below a MBR partiton starting at 2048th sector
with size 256kB, correct?  =


Thanks for your patience!

Regards
Konstantin

INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, Dere=
k Uhlig
HRB: 111204, AG Hannover


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

