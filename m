Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWMLL-00074w-1p
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 09:57:24 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 36926FFA316
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 10:56:58 +0100 (CET)
Date: Fri, 13 Mar 2015 10:56:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313095654.GA20624@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-3-git-send-email-jlu@pengutronix.de>
 <20150312174740.GT30554@ns203013.ovh.net>
 <1426239335.13791.92.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426239335.13791.92.camel@pengutronix.de>
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

On 10:35 Fri 13 Mar     , Jan L=FCbbe wrote:
> On Do, 2015-03-12 at 18:47 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > as state in my previous e-mail I will a keystore support
> > =

> > but this dt format to handle no please
> > =

> > we need to use the standard format as in the kernel or openssl
> > =

> > DER and x509
> > =

> > specially x509 as if we want to be able to add key at runtime we need
> > to sign them we the trusted RO keys
> > =

> > For the implementation of RSA I use the polarssl one and plan to add
> > the kernel one
> > =

> > and this implementation is limited to 4096 the polarssl one is not
> =

> Having an ASN1 parser for DER/x509 is a huge amount of complexity I
> would not want in a bootloader. Just take a look at the problems the
> SSL-CAs and browsers had with different interpretations of the same
> cert.

der is nothing few under lines

x509 a few more as it's based on DER
> =

> The FIT format (and corresponding public key in the bootloader's DT) has
> been adopted by depthcharge and u-boot, because it handles the
> requirements and nothing more.

if you want to add this format you can but via the keychain loader not in t=
he
code as today you do have soc such as imx that store the key in OTP as DER

and u-boot is not the best reference EVER.
> =

> What is your use-case for which you need to add keys at runtime?

simple you want to allow user to put their own key
or use a CA to handle allowed key

if you want to replace grub this is critical

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
