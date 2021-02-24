Delivery-date: Wed, 24 Feb 2021 09:45:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpnu-0004c2-GO
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:45:54 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpnt-0006yk-L3
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:45:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cjpAHOI958fqs37nA/IcqugZJxiwPGKl8Tc3f8BqoyY=; b=VILQ/YaWs4BT2hc2g1pMWPeBE
	t8+RXb1RMBQWkAsErtrEe7SyIj6sAXb7HMz+Tzj8wbBQB4uoe81M4ii20/Iwi/vag0xno0Og0Mxdd
	klfIg+xYrTV9AQsRC7wx9D4qgBqLQCeF+O6KEdE8o1ywJOq3To4eypCUzhRXBISDxlzOkfJsohGrA
	W0uOgRt6ccA68Wt7PmU1Bt/mMZSVgH0yXOMNulD5M4r/ahj7k5ZoQ+Owi3RcRUUdWegGJ098zllPP
	spTp0ZbKoElnJMTdtEfvRQuhVRUvSpvAtqt71lYVYCLbFJA6ywA/o4afoxg8kEkmmko7YSUt6q4qm
	Nv45xtVKw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpmX-0005hd-NI; Wed, 24 Feb 2021 08:44:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpmS-0005h4-Jl
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:44:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpmP-0006mo-Ro; Wed, 24 Feb 2021 09:44:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpmP-0005zK-IZ; Wed, 24 Feb 2021 09:44:21 +0100
Date: Wed, 24 Feb 2021 09:44:21 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <20210224084421.GG5549@pengutronix.de>
References: <20210223095902.GD5549@pengutronix.de>
 <CAJfOKBx9dhJ2usck1NBv=VViTFHjSLzGjqiQoaSptp1oTPAW9g@mail.gmail.com>
 <20210224100646.41d718b1801959a0b47e3f75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210224100646.41d718b1801959a0b47e3f75@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:44:03 up 6 days, 12:07, 61 users, load average: 0.22, 0.40, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_034424_720361_DC54D826 
X-CRM114-Status: GOOD (  21.35  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 24, 2021 at 10:06:46AM +0300, Antony Pavlov wrote:
> On Tue, 23 Feb 2021 14:13:44 +0100
> Franck Jullien <franck.jullien@gmail.com> wrote:
> =

> > Le mar. 23 f=E9vr. 2021 =E0 10:59, Sascha Hauer <sha@pengutronix.de> a =
=E9crit :
> > >
> > > Hi Franck, Antony
> > >
> > > Are you still interested in barebox support for NIOS2 and openrisc? If
> > > not I would consider removing it. Background is that we are planning =
to
> > > introduce green threads and implement pollers with them which makes
> > > green threads rather mandatory. Green threads need a setjmp/longjmp
> > > implementation that would have to be added for these architectures.
> > >
> > > Keeping the architectures is no big deal normally, but I don't want to
> > > add untested new functionality, also I don't want to implement things
> > > that nobody uses, so if you are still interested it would be great if
> > > you volunteer to implement setjmp/longjmp.
> > >
> > > Thanks
> > >   Sascha
> > >
> > =

> > Hi,
> > =

> > Thanks for asking.
> > =

> > I don't think anyone is using (has ever used ?) Barebox on these archit=
ectures.
> > =

> > I do have a product which uses Barebox and a NIOS2 in the field.
> > It's working for 10+ years already but will never be updated.
> > =

> > I think you can drop support for them. I won't work on this myself.
> > Let's wait for Antony's view on this.
> =

> Hi!
> =

> I experimented with openrisc before widespread use of RISC-V.
> I have never used nios2.
> =

> IMHO we can drop openrisc and nios2.

Ok, thanks for your input. Let's go for it.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

