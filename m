Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo68.mail-out.ovh.net ([46.105.79.203])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWRvE-0005IS-13
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 15:54:49 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 87560FFAE48
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 16:54:24 +0100 (CET)
Date: Fri, 13 Mar 2015 16:54:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313155423.GB24510@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <5502CB15.4070306@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5502CB15.4070306@pengutronix.de>
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
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:33 Fri 13 Mar     , Marc Kleine-Budde wrote:
> On 03/13/2015 11:05 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:28 Fri 13 Mar     , Jan L=FCbbe wrote:
> >> On Do, 2015-03-12 at 19:19 +0100, Jean-Christophe PLAGNIOL-VILLARD wro=
te:
> >>> please do not send a new version except for fix
> >>>
> >>> I'm going to re-integrate it with the keystore & co
> >>
> >> Could you describe your keystore design?
> > =

> > I'll send the patch series soon
> > =

> > code is better than 1000s of words
> > =

> > with DER support and the fit
> >>
> >>> and sha1,rsa2048 is considered weak in term of security
> >>> and worse md4/md5
> >>>
> >>> for barebox I would only use
> >>> at least sha256 with rs2048 or sha512 with rsa4096
> >>
> >> Yes, of course. These were only used as an example and it's trivial to
> >> switch to other hash algos or RSA key sizes. Also, the FIT format can
> >> easily be extended to support ECC/Curve25519.
> > =

> > very slow vs rsa, but as we will use a generic framework we will just n=
eed to
> > add the algo
> > =

> > if you can break rsa4096, the chance you can break ECC are high too
> =

> If you want to open the box, today you would probably not break
> rsa2048/sha1 (unless you have huge calculation power) but look for
> implementation weaknesses, like bugs or side channel attacks.

I alredy see it done on rsa1024 few years ago, today rs2048 is supposedly
secured but as you hw may have to run for 10 years rs2048/sha1 is considere=
d not
strong enough

Keep in on mind, for security you do need to choose the correct algo for how
long the data need to be secured.
> =

> >> In some cases, where the SoC's ROM code only supports RSA2048 with SHA=
1,
> >> using stronger settings in Barebox doesn't increase security. So there
> >> we want to use the same settings as the ROM code.
> > =

> > agreed but I refuse to allow it unless we have no choice
> > and emit a warning
> > =

> > and even I'll prefer to use stonger, yes this will increase the securit=
y.
> > As a secure boot is as strong as it's weak link
> > =

> > but this will not reduce it either
> =

> Adding unneeded complexity might not the best move here.
common it just change the sha and the number of bits of key

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
