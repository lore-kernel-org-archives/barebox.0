Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ru81I-0003vp-Ah
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 19:45:07 +0000
Date: Sun, 5 Feb 2012 20:44:43 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120205204443.60ee2afa@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202051257100.13319@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
 <alpine.DEB.2.02.1202051026020.9491@oneiric>
 <20120205184340.1bddd53a@eb-e6520>
 <alpine.DEB.2.02.1202051257100.13319@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: barebox@lists.infradead.org

Le Sun, 5 Feb 2012 13:00:13 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :

> On Sun, 5 Feb 2012, Eric B=E9nard wrote:
> =

> > This is the case where u-boot is built with SPL thus reoplacing
> > x-load : they always read NAND ID as some XM boards were mounted
> > with Numonyx POP which includes NAND and 166MHz RAM when mot XM
> > boards have a POP with only 200MHz DDR (and in that case
> > manufacturer ID is 0). So even on a XM you need to check the NAND ID
> > to set the right RAM settings.
> =

>   ah, got it.  but what about in a more general case?  what if you
> have a current, accurate definition for an existing board?  then a
> *slight* variant of that board comes along, for which some settings in
> the defconfig file are simply wrong?
> =

>   are there any examples of that in barebox right now?  and if not,
> how would one handle them?  put another way, what if *all* xM boards
> had no NAND?  then we'd be back to my original question, and it's
> still not clear how you'd define that new board for barebox.
> =

if no XM board had NAND, you would simply check the board type using the
GPIO sampled and you wouldn't register the nand (line 305 in
board-beagle.c) and the fact that the nand driver is enabled is not a
problem if the device is not registrered the driver won't be used.

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
