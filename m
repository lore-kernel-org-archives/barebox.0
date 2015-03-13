Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWS8p-0000I7-SN
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 16:08:53 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 996F0FFAC94
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 17:08:28 +0100 (CET)
Date: Fri, 13 Mar 2015 17:08:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313160826.GC24510@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
 <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426261300.13791.192.camel@pengutronix.de>
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

On 16:41 Fri 13 Mar     , Jan L=FCbbe wrote:
> On Fr, 2015-03-13 at 15:28 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > It's not the job of barebox to define security policies, it must fit
> > > well into the larger security design, which may require compromises.
> > =

> > I disagree, disable by default non secure feature is require to pass
> > secure boot certification
> =

> Is there a specific certification you are targeting?

yes but can not give details all under NDA, a book of more than 500 pages
for bootloader/linux/kernel & co
> =

> How do you intend to handle console access in verified boot mode?
> Allowing access to md/mw would break any security.

it's already mainline for month, check password support

as I put it in production more than 1 years ago

or simple disable input console all time, the code is here

the main problem is not console but env you need to drop RW env support
and use only RO one, except for keyring support where you will a RW env but
not executable and only accesable by crypto API

otherwise you need to use a secured digest such as HMAC/CMAC/OMAC support
to sign the env at runtime and ensure the symetric key is secured
or encrypt it via aes (did this in the past)

=3D=3D
ww may have to get secured malloac with part where the md/mw and any other
API can not touch only the crypto API

but this will be for later
=3D=3D
> =

> I was thinking about switching off access to the HW AES keys as soon as
> a prompt appears. At least on MX28/MX6 that's possible and important.

Password & defaultenv2

16 characters min password with sha256 min or best sha512 or pbkdf2

I'll send a patch to use the pbkdf2 for password

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
