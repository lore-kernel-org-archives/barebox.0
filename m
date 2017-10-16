Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40jF-0007dk-Ja
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 08:26:31 +0000
Date: Mon, 16 Oct 2017 10:26:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016082607.lmfmgpeqzv2eh3ff@pengutronix.de>
References: <20171009190627.2486-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171009190627.2486-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 0/3] e1000: fix access to companion flash chip
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Mon, Oct 09, 2017 at 09:06:24PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this is v2 of the series. Compared to (implicit) v1 I worked in Andrey's
> feedback and updated the commit logs. The third patch is not marked as
> HACK any more (and got some reformatting). In the mean time I also
> tested successfully the write support. For NDA reasons I don't have
> access to firmware, so making full use of a i210 after flashing is not
> tested yet.
> =

> Even though I changed a few bits in the first two patches, I already
> added the acks by Andrey that I got for v1.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (3):
>   e1000: implement register mapping for E1000_FLSW{CTL,DATA,CNT}
>   e1000: implement support for smaller flash chips
>   e1000: Don't poll for FLSWCTL.GLDONE before starting a flash
>     transaction

Applied, thanks

Sascha

> =

>  drivers/net/e1000/e1000.h  |  9 +++------
>  drivers/net/e1000/eeprom.c | 27 +++++----------------------
>  drivers/net/e1000/regio.c  |  9 +++++++++
>  3 files changed, 17 insertions(+), 28 deletions(-)
> =

> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
