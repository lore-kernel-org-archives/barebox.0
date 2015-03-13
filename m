Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo6.mail-out.ovh.net ([87.98.177.69])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWQZq-0002lP-M1
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 14:28:40 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id C46DDFFA8AE
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 15:28:13 +0100 (CET)
Date: Fri, 13 Mar 2015 15:28:08 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313142808.GC23879@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426242065.13791.110.camel@pengutronix.de>
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

On 11:21 Fri 13 Mar     , Jan L=FCbbe wrote:
> On Fr, 2015-03-13 at 11:05 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:28 Fri 13 Mar     , Jan L=FCbbe wrote:
> > > On Do, 2015-03-12 at 19:19 +0100, Jean-Christophe PLAGNIOL-VILLARD wr=
ote:
> > > > please do not send a new version except for fix
> > > > =

> > > > I'm going to re-integrate it with the keystore & co
> > > =

> > > Could you describe your keystore design?
> > =

> > I'll send the patch series soon
> > =

> > code is better than 1000s of words
> > =

> > with DER support and the fit
> =

> Thanks.
> =

> > > > and sha1,rsa2048 is considered weak in term of security
> > > > and worse md4/md5
> > > > =

> > > > for barebox I would only use
> > > > at least sha256 with rs2048 or sha512 with rsa4096
> > > =

> > > Yes, of course. These were only used as an example and it's trivial to
> > > switch to other hash algos or RSA key sizes. Also, the FIT format can
> > > easily be extended to support ECC/Curve25519.
> > =

> > very slow vs rsa, but as we will use a generic framework we will just n=
eed to
> > add the algo
> > =

> > if you can break rsa4096, the chance you can break ECC are high too
> =

> Please see http://ed25519.cr.yp.to/ and
> http://cr.yp.to/papers.html#rwsota. Curve22519 is very fast and has some
> benefits over RSA.

I known this curve but I did not yet test it on barebox

remember on arm it's not as performent as on x86

and the ECC have advantage over RSA but the speed on my last test on ARM use
more power than RSA and was slower
> =

> I'm not arguing that either RSA or ECC are better for verified boot, we
> should just keep in mind that supporting ECC later should fit the
> design.

agreed that why I work on a framework to hide the algo at every level
key/signature verification, everywhere.

SO we do not care if it's a software implementation or a hardware one
and which algo
> =

> > > In some cases, where the SoC's ROM code only supports RSA2048 with SH=
A1,
> > > using stronger settings in Barebox doesn't increase security. So there
> > > we want to use the same settings as the ROM code.
> > =

> > agreed but I refuse to allow it unless we have no choice
> > and emit a warning
> =

> I'm fine with a warning in Kconfig or during compile time. =

> =

> > and even I'll prefer to use stonger, yes this will increase the securit=
y.
> > As a secure boot is as strong as it's weak link
> =

> It's not the job of barebox to define security policies, it must fit
> well into the larger security design, which may require compromises.

I disagree, disable by default non secure feature is require to pass
secure boot certification

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
