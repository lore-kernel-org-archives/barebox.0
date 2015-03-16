Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXWCi-0006bz-BS
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 14:41:17 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2FA2AFFA749
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 15:40:53 +0100 (CET)
Date: Mon, 16 Mar 2015 15:40:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316144041.GN26127@ns203013.ovh.net>
References: <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
 <20150313160826.GC24510@ns203013.ovh.net>
 <1426501162.3330.25.camel@pengutronix.de>
 <20150316111432.GE26127@ns203013.ovh.net>
 <1426507732.3330.87.camel@pengutronix.de>
 <20150316121923.GK26127@ns203013.ovh.net>
 <1426512500.3330.115.camel@pengutronix.de>
 <20150316135141.GL26127@ns203013.ovh.net>
 <1426516316.3330.131.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426516316.3330.131.camel@pengutronix.de>
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

On 15:31 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 14:51 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > The other pb I see is this one where and do you plan to store the R=
O x509
> > > > the trusted one.
> > > =

> > > Sorry, I can't parse this.
> > where do we store the trusted keys/cert need to be secured or inaccessi=
ble
> > except crypto API
> =

> (The following depends on prohibiting any unauthenticated access to the
> barebox console.)
> =

> If you just use a chain of signed code like with HAB on i.MX, every cert
> is verified by the previous step (up to the SRK table hash), so there is
> no need to additionally protect certs against modification. Any modified
> cert would result in a verification error. In this setup there is no
> secret information on the device at all.
> =

> When doing this without support from the SoC's ROM code, you could store
> barebox (with compiled-in master public key(s)) in RO flash. Against an
> attacker without physical access, this results in the same security
> properties. You couldn't update the RO barebox, tough (only boot another
> one second stage).

I agree with you I said the same

my key point is if we do allow console access we need be sure at 100% that
they can not tempered with the trusted key in RAM and barebox binary and
malloc space

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
