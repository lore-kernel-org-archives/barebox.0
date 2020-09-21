Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKFJq-0007Y0-DG
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 06:28:59 +0000
Date: Mon, 21 Sep 2020 08:28:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200921062855.GE21278@pengutronix.de>
References: <20200918081956.24971-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918081956.24971-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 0/7] Relicense GPL programs for compatibility with
 OpenSSL
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Marcin Niestroj <m.niestroj@grinn-global.com>, Alexander Kurz <akurz@blala.de>

On Fri, Sep 18, 2020 at 10:19:49AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this series addresses the problem that binaries licensed under plain GPL
> and linked to OpenSSL cannot be distributed. To allow this a special
> exception by the copyright holders is needed[1].
> =

> The changes since (implicit) v1 sent with
> Message-Id: 20200915205417.15484-1-u.kleine-koenig@pengutronix.de:
> =

>  - added acks
>  - rename OpenSSL-exception to LicenseRef-OpenSSL-exception as suggested =
by
>    Roland
>  - s/GPL-2.0+/GPL-2.0-or-later/ in rsatoc; similar changes also in the
>    license text copied from Linux to not use the names deprecated by
>    SPDX.
>  - dropped Eric B=E9nard, his address isn't working any more. Tried to co=
ntact
>    via other means, no feedback yet.

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
