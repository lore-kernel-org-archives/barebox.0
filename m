Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWMnA-0007zn-BD
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 10:26:09 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id AD26CFF9FCF
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 11:25:45 +0100 (CET)
Date: Fri, 13 Mar 2015 11:25:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313102543.GA23879@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-3-git-send-email-jlu@pengutronix.de>
 <20150312174740.GT30554@ns203013.ovh.net>
 <1426239335.13791.92.camel@pengutronix.de>
 <20150313095654.GA20624@ns203013.ovh.net>
 <1426241455.13791.103.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426241455.13791.103.camel@pengutronix.de>
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

On 11:10 Fri 13 Mar     , Jan L=FCbbe wrote:
> On Fr, 2015-03-13 at 10:56 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Having an ASN1 parser for DER/x509 is a huge amount of complexity I
> > > would not want in a bootloader. Just take a look at the problems the
> > > SSL-CAs and browsers had with different interpretations of the same
> > > cert.
> > =

> > der is nothing few under lines
> =

> Sorry, I can't parse this.
> =

> > x509 a few more as it's based on DER
> =

> Could you show me that code?
let me finish to clean it
and rebase it
> =

> > > The FIT format (and corresponding public key in the bootloader's DT) =
has
> > > been adopted by depthcharge and u-boot, because it handles the
> > > requirements and nothing more.
> > =

> > if you want to add this format you can but via the keychain loader not =
in the
> > code as today you do have soc such as imx that store the key in OTP as =
DER
> =

> The IMX does not store keys in OTP. It stores a SHA(1 or 256) hash over
> a table of "super root keys". This is irrelevant for barebox, as this is
> already handled by the ROM code.
it's does as you can use it as hw IP to check the kernel

yes you store a hash but you do can use it in barebox.

other SoC (i can mention the name NDA) does store the key in the OTP of the
SoC programmed at production time of the SoC itself.
with HW RSA accelerator
> =

> > and u-boot is not the best reference EVER.
> =

> Depthcharge is much more relevant here, as it's used as a coreboot
> payload on chromebooks.

does not make it more relevant is the term of key format

the Standard are x509, PGP and der/pem for ages

and as said we can support it but make it the only one NO WAY
> =

> > > What is your use-case for which you need to add keys at runtime?
> > =

> > simple you want to allow user to put their own key
> > or use a CA to handle allowed key
> >
> > if you want to replace grub this is critical
> =

> We have customers which require that do not allow runtime loading of
> keys. So it should be possible to disable runtime loading at compile
> time. =

yeah of cource but the feature need to be here IMHO

and honestly to respect the opensource if you allow this you MIGHT be
compliant with GPLv3

it's more user friendly
For my own customer I always recommand to have a board uniq key that you
can provide to each end customer upon request to it can install it's own
linux. Even if the key is not replaceble.

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
