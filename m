Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SPrIP-00062B-BW
 for barebox@lists.infradead.org; Thu, 03 May 2012 08:21:54 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E00BB104EAD0
 for <barebox@lists.infradead.org>; Thu,  3 May 2012 10:23:15 +0200 (CEST)
Date: Thu, 3 May 2012 10:00:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120503080021.GA3842@game.jcrosoft.org>
References: <CAA4bVAF2pVHxuqUO4b5vU=HKnCUtocLfwVS0MqQiF-vX0Ud8KA@mail.gmail.com>
 <20120503050727.GN16762@game.jcrosoft.org>
 <20120503090301.4afb2f4a@eb-e6520>
 <20120503071709.GH4141@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120503071709.GH4141@pengutronix.de>
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
Subject: Re: improved complete support: the list of available variable name
 completions is dubbed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 09:17 Thu 03 May     , Sascha Hauer wrote:
> On Thu, May 03, 2012 at 09:03:01AM +0200, Eric B=E9nard wrote:
> > Hi Jean-Christophe,
> > =

> > Le Thu, 3 May 2012 07:07:27 +0200,
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > =

> > > On 21:37 Wed 02 May     , Antony Pavlov wrote:
> > > > Hi, All!
> > > > =

> > > > I have tested improved complete support in barebox.
> > > > =

> > > > I have found that the list of available variable name completions is
> > > > dubbed, e.g.
> > > I just test it again on malta
> > > =

> > > # qemu-system-mips64 -nodefaults -M malta -m 256 -nographic -serial s=
tdio -monitor null -bios build/malta-64/barebox.bin =

> > > =

> > > =

> > > barebox 2012.04.0-00049-ga88907a #0 Thu May 3 12:43:17 CST 2012
> > > =

> > > =

> > > Board: qemu malta
> > > registered netconsole as cs1
> > > ## Unknown FLASH on Bank at 0x1e000000 - Size =3D 0x00000000 =3D 0 MB
> > > Malloc space: 0xa0400000 -> 0xa07fffff (size  4 MB)
> > > Open /dev/env0 No such file or directory
> > > running /env/bin/init...
> > > not found
> > > barebox:/ echo $
> > > $net.nameserver     $net.domainname     $cs0.baudrate =

> > > $cs0.active         $cs1.active         $cs1.ip =

> > > $cs1.port           $net.nameserver     $net.domainname =

> > > $cs0.baudrate       $cs0.active         $cs1.active =

> > > $cs1.ip             $cs1.port           =

> > > barebox:/ echo $
> > > $net.nameserver     $net.domainname     $cs0.baudrate =

> > > $cs0.active         $cs1.active         $cs1.ip =

> > > $cs1.port           $net.nameserver     $net.domainname =

> > > $cs0.baudrate       $cs0.active         $cs1.active =

> > > $cs1.ip             $cs1.port           =

> > > barebox:/ echo $
> > > $net.nameserver     $net.domainname     $cs0.baudrate =

> >   ^1
> > > $cs0.active         $cs1.active         $cs1.ip =

> >   ^1
> > > $cs1.port           $net.nameserver     $net.domainname =

> >   ^1                  ^2
> > > $cs0.baudrate       $cs0.active         $cs1.active =

> >                       ^2
> > > $cs1.ip             $cs1.port           =

> >                       ^2
> >  =

> > and you ge the same result as Antony : variables are present twice.
> =

> Same here.
I found a wway to reproduct it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
