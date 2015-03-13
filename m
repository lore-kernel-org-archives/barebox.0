Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWMac-0008OU-QL
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 10:13:11 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0C5C7FFA39C
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 11:12:47 +0100 (CET)
Date: Fri, 13 Mar 2015 11:12:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313101244.GD20624@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-3-git-send-email-jlu@pengutronix.de>
 <20150312174740.GT30554@ns203013.ovh.net>
 <1426239335.13791.92.camel@pengutronix.de>
 <20150313095654.GA20624@ns203013.ovh.net>
 <20150313100648.GQ24885@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150313100648.GQ24885@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:06 Fri 13 Mar     , Sascha Hauer wrote:
> On Fri, Mar 13, 2015 at 10:56:54AM +0100, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > On 10:35 Fri 13 Mar     , Jan L=FCbbe wrote:
> > > On Do, 2015-03-12 at 18:47 +0100, Jean-Christophe PLAGNIOL-VILLARD wr=
ote:
> > > > as state in my previous e-mail I will a keystore support
> > > > =

> > > > but this dt format to handle no please
> > > > =

> > > > we need to use the standard format as in the kernel or openssl
> > > > =

> > > > DER and x509
> > > > =

> > > > specially x509 as if we want to be able to add key at runtime we ne=
ed
> > > > to sign them we the trusted RO keys
> > > > =

> > > > For the implementation of RSA I use the polarssl one and plan to add
> > > > the kernel one
> > > > =

> > > > and this implementation is limited to 4096 the polarssl one is not
> > > =

> > > Having an ASN1 parser for DER/x509 is a huge amount of complexity I
> > > would not want in a bootloader. Just take a look at the problems the
> > > SSL-CAs and browsers had with different interpretations of the same
> > > cert.
> > =

> > der is nothing few under lines
> =

> Could you please write something that even remotely makes sense so we
> can translate it here?

sorry mutt via ssh lost some character when typing

der is few 100s line of code that's all

and x509 just a few more

as I do not plan to support all the options of x509 specially the non
standard one

Best Regards,
J.
> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
