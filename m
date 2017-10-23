Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6XaI-0006cI-J4
 for barebox@lists.infradead.org; Mon, 23 Oct 2017 07:55:46 +0000
Date: Mon, 23 Oct 2017 09:55:20 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171023075520.3wmzpqemg5eqffzu@pengutronix.de>
References: <20171018134117.20289-1-uwe@kleine-koenig.org>
 <20171018134117.20289-3-uwe@kleine-koenig.org>
 <20171023072356.o43u72jsrq7xbngu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171023072356.o43u72jsrq7xbngu@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: i.MX: bbu-internal: update board files to make
 use of new bbu handler
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Mon, Oct 23, 2017 at 09:23:56AM +0200, Sascha Hauer wrote:
> On Wed, Oct 18, 2017 at 03:41:17PM +0200, Uwe Kleine-K=F6nig wrote:
> > diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/df=
i-fs700-m60/board.c
> > index bef4612d9e66..c2c73db8e547 100644
> > --- a/arch/arm/boards/dfi-fs700-m60/board.c
> > +++ b/arch/arm/boards/dfi-fs700-m60/board.c
> > @@ -110,8 +110,7 @@ static int dfi_fs700_m60_init(void)
> >  	else
> >  		flag_mmc |=3D BBU_HANDLER_FLAG_DEFAULT;
> >  =

> > -	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.boot0",
> > -		flag_mmc);
> > +	imx6_bbu_internal_mmcboot_register_handler("mmc", "mmc3", flag_mmc);
> =

> This board at least uses the boot1 partition for the environment, so we
> can't use your new handler without moving the environment first.

Good catch, I will drop this board's modifications then.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
