Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXVRW-0003dh-Gq
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 13:52:31 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 80C85FF8CCB
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 14:52:04 +0100 (CET)
Date: Mon, 16 Mar 2015 14:51:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316135141.GL26127@ns203013.ovh.net>
References: <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
 <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
 <20150313160826.GC24510@ns203013.ovh.net>
 <1426501162.3330.25.camel@pengutronix.de>
 <20150316111432.GE26127@ns203013.ovh.net>
 <1426507732.3330.87.camel@pengutronix.de>
 <20150316121923.GK26127@ns203013.ovh.net>
 <1426512500.3330.115.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426512500.3330.115.camel@pengutronix.de>
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

On 14:28 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 13:19 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 13:08 Mon 16 Mar     , Jan L=FCbbe wrote:
> > > On Mo, 2015-03-16 at 12:14 +0100, Jean-Christophe PLAGNIOL-VILLARD wr=
ote:
> > > > On 11:19 Mon 16 Mar     , Jan L=FCbbe wrote:
> > > > > Later I'd like to have optional support to switch barebox into a
> > > > > "non-secure" or "developer" mode at runtime, which would make har=
dware
> > > > > secrets inaccessible. That could be triggered when a prompt appea=
rs or
> > > > > when booting for a different source (such as USB fastboot).
> > > > =

> > > > yeah, I like the idea but for this will have to put a lot of protec=
tion so you
> > > > can not read/write some part of the memory included barebox itself =
(in RAM)
> > > > =

> > > > As in the kernel we have no memmory protection from the shell.
> > > =

> > > Not necessarily. For example on the MX6 you can trigger a security
> > > violation in the CAAM from software. That will clear the OTPMK in its
> > > Key-RAM. From that point on you can run any software but you will not=
 be
> > > able to decrypt any secret data which was encrypted with the OTPMK.
> > > =

> > > On hardware which supports something like this, debugging hardware
> > > problems is easy and there is no danger of leaking any secret
> > > information. If something is useful/possible in any specific project
> > > obviously depends on the threat model and hardware capabilities.
> > =

> > I knonw about the imx6 but that does not mean all the SoC
> > unfortunatly.
> =

> Yes, every SoC is different. But we should be able to use HW features
> when the are available, as sometimes the HW is selected specifically to
> used these security features.

I agree with you we just need to ensure that it work also when we can not
use such HW feature.
> =

> > The other pb I see is this one where and do you plan to store the RO x5=
09
> > the trusted one.
> =

> Sorry, I can't parse this.
where do we store the trusted keys/cert need to be secured or inaccessible
except crypto API
> =

> > if you use on OTP this means this is enough to ensure secured boot as i=
f you
> > can not modify the primary cert of key. No one can brake it. But as you=
 load
> > it in ram you need to be sure no one modify it. Even in unlock mode to =
do only
> > allow to boot secure images by expected key.
> =

> I should have been more clear: The use case here is to ensure that the
> OTPMK-AES-HW-Key is only available when booting with a correct boot
> chain. It's OK to boot something else (only the OTPMK needs to be
> cleared).
> =

> This is a very different goal from making sure that only correctly
> signed code is executed.
> =

> Both cases need mostly the same verified boot features, only the policy
> (especially what to do on signature errors) is different.
secure boot means in 95% of the case only correctly signed file can be boot=
ed
> =

> > So you may not have secured place to store the cert or key in ram but o=
nly
> > RAM. so we do need to forbidden this memory acces to everyone except the
> > crypto API. if we want ot allow dev mode.
> =

> On MX6 this can be done by the HW. Doing this (without TrustZone) purely
> in SW seems extremely difficult.

if you do not allow console easy, if you do you need to make the memory whe=
re
you do store the trusted keys and barebox itself no accessible by any std A=
PI
or command

such as md/mw, etc...

yes this will be difficult

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
