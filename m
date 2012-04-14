Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIuid-0005yu-Hw
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 04:36:17 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 316B6FF88B2
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 06:37:18 +0200 (CEST)
Date: Sat, 14 Apr 2012 06:18:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120414041820.GA2074@game.jcrosoft.org>
References: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
 <20120413202303.GT3852@pengutronix.de>
 <F9C551623D2CBB4C9488801D14F864C614BE42@ex-mb1.corp.adtran.com>
 <20120413231206.555628dd@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120413231206.555628dd@eb-e6520>
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
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 23:12 Fri 13 Apr     , Eric B=E9nard wrote:
> Hi Andy,
> =

> Le Fri, 13 Apr 2012 20:38:12 +0000,
> ANDY KENNEDY <ANDY.KENNEDY@adtran.com> a =E9crit :
> =

> > > > 1)  I have a concern that barebox is not mainstream enough yet.
> > > =

> > > Well by using it you could make it a bit more mainstream ;)
> > =

> > Hmmm.  That will be an UP HILL battle for me, I'm sure.  Are there any
> > stats on how many folks / who all uses Barebox currently?
> > =

> we are using it on all our i.MX based SOM (i.MX25/35/51/53), and have
> been using it in several custom product developped (mainly i.MX & AT91
> based, some of them being in production) for customers (in one product
> the bootloader is even still named u-boot-v2 as the code for i.MX27 was
> already in a very good shape at that time ;-)
> =

> In the past, RedBoot was often available in official BSPs and at that
> time some people had the same hesitation to use the community u-boot
> instead of the manufacturer's RedBoot ... and after a few years u-boot
> became the de facto standard bootloader for many official BSP.
> =

> Moreover, some manufacturer's BSP can be quite hard to adapt to a
> custom hardware which is not the exact copy of the evaluation board,
> but of course, for a manager, using an official BSP gives a feeling of
> security and seems to be the obvious choice (even if the official BSP is
> not maintained once it's available and not really validated outside the
> case of one evaluation board) ...
I agree with Sasha and Eric

I've sevral customer using barebox in productoin on AT91, IMX, OMAP and SH
and asking to do not use U-Boot anymore.

and yes we port or re-write the bsp of the vendor in Barebox but you do it
once. After you just have to add board which is really more esaly and less
time consuming.

Some vendor start now to take a look on barebox to propose both BSP U-Boot =
and
Barebox.

I personnaly maintain U-Boot ARM for few years and switch to barebox as to
have the feature and code quality I need it was too much time consuming.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
