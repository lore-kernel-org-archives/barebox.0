Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAB1I-0000y3-03
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 10:47:41 +0000
Date: Tue, 17 Sep 2019 12:47:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190917104737.pf4a3dla34wpcjwg@pengutronix.de>
References: <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
 <20190917080242.15166-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917080242.15166-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Convert latin1 files to utf-8
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Stefan Lengfeld <contact@stefanchrist.eu>

On Tue, Sep 17, 2019 at 10:02:41AM +0200, Uwe Kleine-K=F6nig wrote:
> The source files are parsed by $(make docs). Currently this is done
> using python2 (actually 'python' which is still python2 on most
> machines). When using python3 however (which has a stricter encoding
> handling) it is easier if all input is in utf-8 encoding. So convert the
> few remaining latin1 encoded files to utf-8. This only affects code
> comments.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  .../arm/boards/chumby_falconwing/falconwing.c |   2 +-
>  lib/fonts/font_7x14.c                         | 256 +++++++++---------
>  lib/fonts/font_8x16.c                         | 256 +++++++++---------
>  lib/fonts/font_8x8.c                          | 256 +++++++++---------
>  4 files changed, 385 insertions(+), 385 deletions(-)

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
