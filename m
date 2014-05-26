Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f171.google.com ([209.85.217.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WotYD-0002N3-Bj
 for barebox@lists.infradead.org; Mon, 26 May 2014 11:58:46 +0000
Received: by mail-lb0-f171.google.com with SMTP id 10so4251334lbg.30
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 04:58:19 -0700 (PDT)
Date: Mon, 26 May 2014 16:09:33 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
In-Reply-To: <1401097557.4829.20.camel@weser.hi.pengutronix.de>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox@lists.infradead.org, Sam Van Den Berge <sam.van.den.berge@tass.be>, Daniele Lacamera <daniele.lacamera@tass.be>, Daniele Lacamera <mlists@danielinux.net>

On Mon, 26 May 2014 11:45:57 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Sonntag, den 25.05.2014, 13:58 +0400 schrieb Antony Pavlov:
> > Hi all!
> > =

> > I have adapted barebox for work with picotcp network stack.
> > =

> > Picotcp is not a small piece of code so I can't easyly send
> > a patch to the barebox maillist. I have put results of my work on githu=
b,
> > see mini-howto below.
> > =

> > This picotcp integration is a dirty hack in many ways.
> > We need additional effors for adapting barebox and picotcp
> > for more easy joint operation.
> > =

> > Please express your opinion on my work. I'm awaiting your comments.
> > =

> You forgot to mention one important thing: Why is this change beneficial
> to barebox?

1. For end user barebox in many ways behave like linux shell console

   We have files, standard shell commands, environment etc. It is very conv=
enient!

   But current network code breaks this illusion (e.g. you can't ping a bar=
ebox running board).
   The details of network subsystem realisation shape barebox user network =
modus operandi.

   Adding full-grown but tiny network stack to barebox makes barebox' behav=
iour
   (from user's point of view) more close to linux shell console.

2. tcp

   IMHO __optional__ TCP support can be beneficial for bootloader.
   E.g. I would like to use widely used telnet protocol for network console.

   See also U-boot mod (https://forum.openwrt.org/viewtopic.php?id=3D43237),
   http-server enabled U-Boot, less than 64K!

3. ipv6

   Current IPv4 address space is near totaly exhausted
   (see https://www.icann.org/news/announcement-2-2014-05-20-en).
   I suppose with the lapse of time IPv6 will be used even in bootloaders :)
   picotcp gives you IPv6 just now.

4. several simultaneously running network interfaces support

   Imagine a small cluster system.
   The processors of this cluster are connected via special interconnect, a=
nd only one
   "master" processor has ethernet connection to the surrounding world. wit=
h current
   "single active network device" conception you can't use barebox for conn=
ecting "slave" cluster'
   processors to the surrounding world using "master" processor as a gatewa=
y.

> Please don't 4get me wrong this is in no way a criticism on your work.

My current picotcp integration is a quick-and-dirty hack. It is below criti=
cism!

> I only skimmed through the branch as of now and can't really comment on
> the change. So please help me out: do you feel the code is
> leaner/cleaner than the existing barebox network support?

It is very difficult to compare existing barebox (u-boot) network code and =
picotcp.
Picotcp is much more capable!

Picotcp need some work for cleaning. I think that on average barebox code i=
s more clean
that picotcp code (there are too many #ifdefs, some compiler warnings, form=
atting),
but IMHO it is not very difficult to make it cleaner.

> Or what's your motivation for this?

See my points above. In the end adding full-grown network stack will make b=
arebox
more favourable for users:

  1. new barebox users with linux shell experience will be happy to see hab=
itual 'ifconfig',
'route' commands instead of manipulations with environment variables.

  2. new network stack eventually can result in new applications for barebo=
x.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
