Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhY5m-0007Bp-P0
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 06:43:35 +0000
Date: Mon, 13 Apr 2015 08:43:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413064310.GW9742@pengutronix.de>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627714-17077-3-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428627714-17077-3-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 2/4] net: mvneta: Fix transmit errors due to dirty txdesc
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Fri, Apr 10, 2015 at 03:01:52AM +0200, Sebastian Hesselbarth wrote:
> Marvell Neta's transmit descriptor (txdesc) is allocated by dma_alloc_coh=
erent()
> but not zeroed before calling mvneta_send the first time. This can cause =
spurious
> transmit errors due to improperly set bits in txdesc's cmd_sts field.
> =

> Fix initial transmit errors by always writing whole cmd_sts field instead=
 of ORing
> the bits.
> =

> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> Cc: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> ---
>  drivers/net/mvneta.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied this one, thanks

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
