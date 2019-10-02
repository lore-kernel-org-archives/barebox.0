Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYye-0007Dj-Ja
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 07:23:13 +0000
Date: Wed, 2 Oct 2019 09:23:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191002072310.36lu4bxnao3eaulk@pengutronix.de>
References: <20190911145328.3246-1-m.felsch@pengutronix.de>
 <20191002072043.ujput2lroimm3yx6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002072043.ujput2lroimm3yx6@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, s.christ@phytec.de, s.riedmueller@phytec.de, j.remmet@phytec.de

Marco,

On Wed, Oct 02, 2019 at 09:20:43AM +0200, Sascha Hauer wrote:
> +Cc Christian Hemp who is the author of b6bebb7aca
> 
> On Wed, Sep 11, 2019 at 04:53:28PM +0200, Marco Felsch wrote:
> > The PMIC is connected to i2c3 and not i2c1.
> > 
> > Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/boards/phytec-som-imx6/board.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
> > index 730115702b..38e5ede91a 100644
> > --- a/arch/arm/boards/phytec-som-imx6/board.c
> > +++ b/arch/arm/boards/phytec-som-imx6/board.c
> > @@ -117,7 +117,7 @@ static int phycore_da9062_setup_buck_mode(void)
> >  	struct i2c_adapter *adapter = NULL;
> >  	struct i2c_client client;
> >  	unsigned char value;
> > -	int bus = 0;
> > +	int bus = 2;
> >  	int ret;
> >  
> >  	adapter = i2c_get_adapter(bus);

You could test it directly on b6bebb7aca instead of master. Is this
change necessary there aswell or has the bus numbering changed in
between?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
