Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SInmz-0004uE-M4
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 21:12:19 +0000
Date: Fri, 13 Apr 2012 23:12:06 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120413231206.555628dd@eb-e6520>
In-Reply-To: <F9C551623D2CBB4C9488801D14F864C614BE42@ex-mb1.corp.adtran.com>
References: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
 <20120413202303.GT3852@pengutronix.de>
 <F9C551623D2CBB4C9488801D14F864C614BE42@ex-mb1.corp.adtran.com>
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
Subject: Re: I want to use Barebox
To: ANDY KENNEDY <ANDY.KENNEDY@adtran.com>
Cc: barebox@lists.infradead.org

Hi Andy,

Le Fri, 13 Apr 2012 20:38:12 +0000,
ANDY KENNEDY <ANDY.KENNEDY@adtran.com> a =E9crit :

> > > 1)  I have a concern that barebox is not mainstream enough yet.
> > =

> > Well by using it you could make it a bit more mainstream ;)
> =

> Hmmm.  That will be an UP HILL battle for me, I'm sure.  Are there any
> stats on how many folks / who all uses Barebox currently?
> =

we are using it on all our i.MX based SOM (i.MX25/35/51/53), and have
been using it in several custom product developped (mainly i.MX & AT91
based, some of them being in production) for customers (in one product
the bootloader is even still named u-boot-v2 as the code for i.MX27 was
already in a very good shape at that time ;-)

In the past, RedBoot was often available in official BSPs and at that
time some people had the same hesitation to use the community u-boot
instead of the manufacturer's RedBoot ... and after a few years u-boot
became the de facto standard bootloader for many official BSP.

Moreover, some manufacturer's BSP can be quite hard to adapt to a
custom hardware which is not the exact copy of the evaluation board,
but of course, for a manager, using an official BSP gives a feeling of
security and seems to be the obvious choice (even if the official BSP is
not maintained once it's available and not really validated outside the
case of one evaluation board) ...

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
