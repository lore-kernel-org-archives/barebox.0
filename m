Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wDE-0004Dj-Aq
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 11:34:05 +0000
Date: Wed, 28 Aug 2019 13:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190828113401.babeebqe4rftz6tf@pengutronix.de>
References: <20190825155844.18455-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825155844.18455-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 0/7] clean up and complement reset source handling
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 25, 2019 at 05:58:37PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> compared to the sent earlier (implicit) v1 there is a new patch to fix
> the ordering of exported functions and patched 4 to 7 add the concept of
> a reset_source device. Also v1 had some whitespace problems that are
> fixed here.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (7):
>   reset_source: use instance =3D -1 as default
>   reset_source: fix ordering of exported functions
>   reset_source: drop reset_source_set_instance()
>   reset_source: implement helper to set a device as reset source
>   mfd: da9053: use new reset_source_set_device()
>   mfd: da9063: use new reset_source_set_device()
>   oftree: expose reset_source device in device tree

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
