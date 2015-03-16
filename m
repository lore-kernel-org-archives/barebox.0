Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo68.mail-out.ovh.net ([46.105.41.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXTzn-000478-9N
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 12:19:48 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 60F40FF9F86
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 13:19:24 +0100 (CET)
Date: Mon, 16 Mar 2015 13:19:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316121923.GK26127@ns203013.ovh.net>
References: <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
 <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
 <20150313160826.GC24510@ns203013.ovh.net>
 <1426501162.3330.25.camel@pengutronix.de>
 <20150316111432.GE26127@ns203013.ovh.net>
 <1426507732.3330.87.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426507732.3330.87.camel@pengutronix.de>
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

On 13:08 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 12:14 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 11:19 Mon 16 Mar     , Jan L=FCbbe wrote:
> > > Later I'd like to have optional support to switch barebox into a
> > > "non-secure" or "developer" mode at runtime, which would make hardware
> > > secrets inaccessible. That could be triggered when a prompt appears or
> > > when booting for a different source (such as USB fastboot).
> > =

> > yeah, I like the idea but for this will have to put a lot of protection=
 so you
> > can not read/write some part of the memory included barebox itself (in =
RAM)
> > =

> > As in the kernel we have no memmory protection from the shell.
> =

> Not necessarily. For example on the MX6 you can trigger a security
> violation in the CAAM from software. That will clear the OTPMK in its
> Key-RAM. From that point on you can run any software but you will not be
> able to decrypt any secret data which was encrypted with the OTPMK.
> =

> On hardware which supports something like this, debugging hardware
> problems is easy and there is no danger of leaking any secret
> information. If something is useful/possible in any specific project
> obviously depends on the threat model and hardware capabilities.

I knonw about the imx6 but that does not mean all the SoC
unfortunatly.

The other pb I see is this one where and do you plan to store the RO x509
the trusted one.

if you use on OTP this means this is enough to ensure secured boot as if you
can not modify the primary cert of key. No one can brake it. But as you load
it in ram you need to be sure no one modify it. Even in unlock mode to do o=
nly
allow to boot secure images by expected key.

So you may not have secured place to store the cert or key in ram but only
RAM. so we do need to forbidden this memory acces to everyone except the
crypto API. if we want ot allow dev mode.
> =

> > > > the main problem is not console but env you need to drop RW env sup=
port
> > > > and use only RO one, except for keyring support where you will a RW=
 env but
> > > > not executable and only accesable by crypto API
> > > > =

> > > > otherwise you need to use a secured digest such as HMAC/CMAC/OMAC s=
upport
> > > > to sign the env at runtime and ensure the symetric key is secured
> > > > or encrypt it via aes (did this in the past)
> > > =

> > > For an upcoming project we'll add HMAC support to the state storage M=
arc
> > > recently submitted.
> > I've a patch too I need to send it
> =

> For environment or state storage?
envfs
> =

> > but I prefer to wait we have keystore support as this will store the ke=
y for
> > the HMAC otherwise we need to use HW HMAC that store the key in the soc
> =

> Another possibility is to use the HW AES key and a compiled in value to
> derive a per-device HMAC secret. The same approach can also be used in
> Linux for deriving the IMA/EVM HMAC secret.
this for me need to be integrated in the keystore to be transparent for the
rest of the API

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
