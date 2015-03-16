Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo68.mail-out.ovh.net ([178.32.228.68])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXTH4-0004HC-Hv
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 11:33:35 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 2C90FFFA505
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 12:33:12 +0100 (CET)
Date: Mon, 16 Mar 2015 12:33:06 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316113306.GH26127@ns203013.ovh.net>
References: <20150312174740.GT30554@ns203013.ovh.net>
 <1426239335.13791.92.camel@pengutronix.de>
 <20150313095654.GA20624@ns203013.ovh.net>
 <1426241455.13791.103.camel@pengutronix.de>
 <20150313102543.GA23879@ns203013.ovh.net>
 <1426243382.13791.121.camel@pengutronix.de>
 <20150313154928.GA24510@ns203013.ovh.net>
 <1426500022.3330.12.camel@pengutronix.de>
 <20150316102713.GB26127@ns203013.ovh.net>
 <1426505135.3330.55.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426505135.3330.55.camel@pengutronix.de>
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
Subject: Re: [RFC 2/4] Add rsa support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:25 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 11:27 +0100, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> > On 11:00 Mon 16 Mar     , Jan L=FCbbe wrote:
> > > On Fr, 2015-03-13 at 16:49 +0100, Jean-Christophe PLAGNIOL-VILLARD wr=
ote:
> > > > you just need to have a unique ID on the HW and then use a x509 obj=
ect
> > > > to store it. then signed it with you CA. As only validated keys can=
 be
> > > > used, you can easly give a generated key for a specific HW.
> > > > And this key will be valid only for this HW.
> > > =

> > > Yes, this sounds useful. So you'd have a board-specific way to check =
the
> > > unique ID constraint in an intermediate cert against the HW ID?
> > yes more or less but but at the key itself as you will have to upload t=
he
> > key to the board. And the key will only be accepted to be stored as it =
will
> > be valid and have the HW ID.
> =

> OK. Sounds good to me.
> =

> > And for the record remember if you want to use module in secured boot m=
ode
> > for the kernel you will have to use x509 certificate anyway.
> > =

> > So why not to use the same principal.
> > =

> > u-boot way is not what is doing today on the market for authentication
> > format. Today it's x509 or PGP.
> > =

> > So I do prefer to stay as standard as possible, this does not mean we c=
an not
> > support the FTD stuff. But IMHO it's not the right way.
> =

> x509 only defines the certificate format, not how it is used to sign
> kernel, initramfs and device tree.
> =

> The kernel defines its own format based on ELF and store the signature
> inside. That can't be reused directly for the kernel itself, initramfs
> or DTB. UEFI has again its own format.
> =

> We don't want to sign kernel, initramfs and DTB individually, as this
> would allow an attacker to mix-and-match these to trigger a
> vulnerability. So we need to have some format which supports signing a
> given configuration consisting of specific kernel, initramfs and DTB.
> =

> FIT handles this requirement. It also supports having multiple
> configurations (each signed) referencing for example the same kernel
> +initramfs but different DTBs for a set of similar boards.
> =

> What is the image format you intend to use with x509 certs?

I'm not talking about FIT format but the key FTD format

I do not like and do not want to use the FTD format to store the key
but x509.

Image format need to be 100% seperated from key format.

That's why I work on a framework so we do not care of both.

Multiple image format with multiple image of key format.

So internally we will store the key in our own format so we can do what we
want.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
