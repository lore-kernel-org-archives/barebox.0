Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWMTl-0003zU-Lf
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 10:06:06 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 19B99FF9E5C
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 11:05:42 +0100 (CET)
Date: Fri, 13 Mar 2015 11:05:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313100538.GB20624@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426238884.13791.85.camel@pengutronix.de>
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

On 10:28 Fri 13 Mar     , Jan L=FCbbe wrote:
> On Do, 2015-03-12 at 19:19 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > please do not send a new version except for fix
> > =

> > I'm going to re-integrate it with the keystore & co
> =

> Could you describe your keystore design?

I'll send the patch series soon

code is better than 1000s of words

with DER support and the fit
> =

> > and sha1,rsa2048 is considered weak in term of security
> > and worse md4/md5
> > =

> > for barebox I would only use
> > at least sha256 with rs2048 or sha512 with rsa4096
> =

> Yes, of course. These were only used as an example and it's trivial to
> switch to other hash algos or RSA key sizes. Also, the FIT format can
> easily be extended to support ECC/Curve25519.

very slow vs rsa, but as we will use a generic framework we will just need =
to
add the algo

if you can break rsa4096, the chance you can break ECC are high too
> =

> In some cases, where the SoC's ROM code only supports RSA2048 with SHA1,
> using stronger settings in Barebox doesn't increase security. So there
> we want to use the same settings as the ROM code.

agreed but I refuse to allow it unless we have no choice
and emit a warning

and even I'll prefer to use stonger, yes this will increase the security.
As a secure boot is as strong as it's weak link

but this will not reduce it either

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
