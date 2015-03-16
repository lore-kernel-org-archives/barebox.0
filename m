Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo68.mail-out.ovh.net ([46.105.63.100])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXT9O-0001bZ-A6
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 11:25:39 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 575A1FF96CA
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 12:25:15 +0100 (CET)
Date: Mon, 16 Mar 2015 12:25:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316112507.GF26127@ns203013.ovh.net>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
 <1426500945-31815-7-git-send-email-plagnioj@jcrosoft.com>
 <1426502999.3330.35.camel@pengutronix.de>
 <20150316110114.GD26127@ns203013.ovh.net>
 <1426503959.3330.45.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426503959.3330.45.camel@pengutronix.de>
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

On 12:05 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 12:01 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 11:49 Mon 16 Mar     , Jan L=FCbbe wrote:
> > > On Mo, 2015-03-16 at 11:15 +0100, Jean-Christophe PLAGNIOL-VILLARD wr=
ote:
> > > > We will use "barebox_password" as salt and 10000 round to generate a
> > > > 64 bytes key.
> > > =

> > > The purpose of a salt is to protect a against dictionary or
> > > rainbow-table (precomputed) attacks. That means that the Salt must be
> > > randomly generated and saved with the password.
> > This will be a enough stong enven with static one to protect against
> > reverse hack for barebox protection
> > =

> > Use a 32 byte pass try to do an attack agaist dictionary.
> > it will take you more than 10 years to break it
> > > =

> > > For setting a new password in barebox, even a low entropy salt will m=
ake
> > > attacks significantly more expensive. So we should add some entropy f=
rom
> > > user interaction timing in that case.
> > yes we could do this too
> > > =

> > > For hashing a password at compile time, we should get the salt from t=
he
> > > host system.
> > yes
> > =

> > do we really need it?
> =

> Yes, definitely. We must use the algorithms as they are intended to be
> used.
> =

> If we try to move users away from RSA2048 because it will be vulnerable
> in the future, we should not go against established practice for
> password salts by hard-coding it. =

I'm not against it but with the barebox entropy did not see the point to use
it.

so how do we generate the salt? what length

Personnaly I'll prefer

a random 64 bytes | sha256 | take first 32bytes. | pbkdf2 10000 round

result a 64 bytes password file <salt 32 byes><key 32 bytes>

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
