Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo68.mail-out.ovh.net ([46.105.79.203])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXSmZ-0002Ae-FO
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 11:02:04 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 38CE8FFA99D
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 12:01:40 +0100 (CET)
Date: Mon, 16 Mar 2015 12:01:14 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316110114.GD26127@ns203013.ovh.net>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
 <1426500945-31815-7-git-send-email-plagnioj@jcrosoft.com>
 <1426502999.3330.35.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426502999.3330.35.camel@pengutronix.de>
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

On 11:49 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 11:15 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > We will use "barebox_password" as salt and 10000 round to generate a
> > 64 bytes key.
> =

> The purpose of a salt is to protect a against dictionary or
> rainbow-table (precomputed) attacks. That means that the Salt must be
> randomly generated and saved with the password.
This will be a enough stong enven with static one to protect against
reverse hack for barebox protection

Use a 32 byte pass try to do an attack agaist dictionary.
it will take you more than 10 years to break it
> =

> For setting a new password in barebox, even a low entropy salt will make
> attacks significantly more expensive. So we should add some entropy from
> user interaction timing in that case.
yes we could do this too
> =

> For hashing a password at compile time, we should get the salt from the
> host system.
yes

do we really need it?

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

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
