Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo68.mail-out.ovh.net ([46.105.78.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXTZQ-0005qD-Kr
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 11:52:34 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 035D5FFA80E
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 12:52:08 +0100 (CET)
Date: Mon, 16 Mar 2015 12:52:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316115204.GI26127@ns203013.ovh.net>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
 <1426500945-31815-7-git-send-email-plagnioj@jcrosoft.com>
 <1426502999.3330.35.camel@pengutronix.de>
 <20150316110114.GD26127@ns203013.ovh.net>
 <1426503959.3330.45.camel@pengutronix.de>
 <20150316112507.GF26127@ns203013.ovh.net>
 <1426506097.3330.64.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426506097.3330.64.camel@pengutronix.de>
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
Subject: Re: [PATCH 07/10] password: add pbkdf2 support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:41 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 12:25 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Yes, definitely. We must use the algorithms as they are intended to be
> > > used.
> > > =

> > > If we try to move users away from RSA2048 because it will be vulnerab=
le
> > > in the future, we should not go against established practice for
> > > password salts by hard-coding it. =

> > I'm not against it but with the barebox entropy did not see the point t=
o use
> > it.
> > =

> > so how do we generate the salt? what length
> > =

> > Personnaly I'll prefer
> > =

> > a random 64 bytes | sha256 | take first 32bytes. | pbkdf2 10000 round
> =

> Running SHA-256 on random data is useless for security.
SHA256 is to improve the entrpopy not security
> Just get
> <hash-size> bytes from /dev/urandom on the host. We could generate a
> file with the compile-time SALT which is then included.
> =

> On the running barebox, we could use SHA to hash the old password file
> together with the current timer value. At least until we have something
> better.
> =

> > result a 64 bytes password file <salt 32 byes><key 32 bytes>
> =

> Yes. As we select the algorithm at compile time, we don't the to save it
> in the file.

this is for barebox as we may not have any passwd file

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
