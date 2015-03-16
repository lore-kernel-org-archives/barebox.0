Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo68.mail-out.ovh.net ([46.105.63.100])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXSz4-0003kt-4M
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 11:14:59 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 706BEFFA6A3
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 12:14:35 +0100 (CET)
Date: Mon, 16 Mar 2015 12:14:32 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316111432.GE26127@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
 <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
 <20150313160826.GC24510@ns203013.ovh.net>
 <1426501162.3330.25.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426501162.3330.25.camel@pengutronix.de>
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
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:19 Mon 16 Mar     , Jan L=FCbbe wrote:
> Hi Jean-Christophe,
> =

> On Fr, 2015-03-13 at 17:08 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:41 Fri 13 Mar     , Jan L=FCbbe wrote:
> > > On Fr, 2015-03-13 at 15:28 +0100, Jean-Christophe PLAGNIOL-VILLARD wr=
ote:
> > > > > It's not the job of barebox to define security policies, it must =
fit
> > > > > well into the larger security design, which may require compromis=
es.
> > > > =

> > > > I disagree, disable by default non secure feature is require to pass
> > > > secure boot certification
> > > =

> > > Is there a specific certification you are targeting?
> > =

> > yes but can not give details all under NDA, a book of more than 500 pag=
es
> > for bootloader/linux/kernel & co
> =

> OK, that's unfortunate. Still I'd like to have some documentation on the
> overall design of Barebox's verified boot. That doesn't mean you have to
> write it all by yourself. ;)

I'll already pass the certification but it's a nightmare.

I wish to have a mainline version that can pass it
> =

> > > How do you intend to handle console access in verified boot mode?
> > > Allowing access to md/mw would break any security.
> > =

> > it's already mainline for month, check password support
> > =

> > as I put it in production more than 1 years ago
> > =

> > or simple disable input console all time, the code is here
> =

> So currently we have:
> 1) use password
> 2) disable console
console enable
but require a password to unlock

I've on an other hw HMAC for envfs to ensure envfs is not tempenred with.
I've on an other HW where we encrypt in in AES CBC or AES-XTS (this one not
yet in production in qualification)
> =

> Later I'd like to have optional support to switch barebox into a
> "non-secure" or "developer" mode at runtime, which would make hardware
> secrets inaccessible. That could be triggered when a prompt appears or
> when booting for a different source (such as USB fastboot).

yeah, I like the idea but for this will have to put a lot of protection so =
you
can not read/write some part of the memory included barebox itself (in RAM)

As in the kernel we have no memmory protection from the shell.
> =

> > the main problem is not console but env you need to drop RW env support
> > and use only RO one, except for keyring support where you will a RW env=
 but
> > not executable and only accesable by crypto API
> > =

> > otherwise you need to use a secured digest such as HMAC/CMAC/OMAC suppo=
rt
> > to sign the env at runtime and ensure the symetric key is secured
> > or encrypt it via aes (did this in the past)
> =

> For an upcoming project we'll add HMAC support to the state storage Marc
> recently submitted.
I've a patch too I need to send it

but I prefer to wait we have keystore support as this will store the key for
the HMAC otherwise we need to use HW HMAC that store the key in the soc

> =

> > ww may have to get secured malloac with part where the md/mw and any ot=
her
> > API can not touch only the crypto API
> > =

> > but this will be for later
> =

> Yes.
> =

> > I'll send a patch to use the pbkdf2 for password
> =

> Nice.

Best Regards,
J.
> =

> Regards,
> Jan
> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
