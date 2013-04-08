Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UP95H-0007ah-Cz
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 10:13:56 +0000
Received: by mail-ea0-f169.google.com with SMTP id n15so2265992ead.28
 for <barebox@lists.infradead.org>; Mon, 08 Apr 2013 03:13:53 -0700 (PDT)
Date: Mon, 8 Apr 2013 12:15:39 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130408101538.GA724@x61s>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
 <1365343255-26497-20-git-send-email-s.hauer@pengutronix.de>
 <20130407223537.GA2214@x61s.8.8.8.8>
 <20130408081143.GS1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130408081143.GS1906@pengutronix.de>
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
Subject: Re: [PATCH 19/21] mtd: Nand: Use dev_add_param_bool for erasebad
 parameter
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 08, 2013 at 10:11:43AM +0200, Sascha Hauer wrote:
> On Mon, Apr 08, 2013 at 12:35:38AM +0200, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > On Sun, Apr 07, 2013 at 04:00:53PM +0200, Sascha Hauer wrote:
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/mtd/nand/nand_base.c | 22 ++++++++++++----------
> > >  include/linux/mtd/mtd.h      |  1 +
> > >  2 files changed, 13 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> > > index fa10d95..67e913a 100644
> > > --- a/drivers/mtd/nand/nand_base.c
> > > +++ b/drivers/mtd/nand/nand_base.c
> > > @@ -1672,18 +1672,20 @@ EXPORT_SYMBOL(nand_scan_ident);
> > >  EXPORT_SYMBOL(nand_scan_tail);
> > >  EXPORT_SYMBOL(nand_release);
> > >  
> > > -static int mtd_set_erasebad(struct device_d *dev, struct param_d *param,
> > > -		const char *val)
> > > +static int mtd_set_erasebad(struct param_d *param, void *priv)
> > >  {
> > > -	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
> > > -	int erasebad;
> > > +	struct mtd_info *mtd = priv;
> > >  
> > > -	erasebad = simple_strtoul(val, NULL, 0);
> > > +	if (!mtd->p_allow_erasebad) {
> > > +		mtd->allow_erasebad = false;
> > > +		return 0;
> > > +	}
> > >
> > > -	if (erasebad && !mtd->allow_erasebad)
> > > -		dev_warn(dev, "Allowing to erase bad blocks. This may be dangerous!\n");
> > > +	if (!mtd->allow_erasebad)
> > > +		dev_warn(&mtd->class_dev,
> > > +			"Allowing to erase bad blocks. This may be dangerous!\n");
> > >  
> > > -	mtd->allow_erasebad = erasebad ? true : false;
> > > +	mtd->allow_erasebad = true;
> > >  
> > >  	return 0;
> > 
> > I think we need to change it to:
> > 
> > ...
> > dev_warn(....);
> > mtd->allow_erasebad = true;
> > 
> > return 0;
> > 
> > without condition.
> > 
> > The reason is that we are already in the truth "allow_erasebad" part after
> > the check of (!mtd->p_allow_erasebad).
> > The branch on (!mtd->allow_erasebad) is will never reach and we need to
> > print out the dev_warn when (mtd->allow_erasebad) is turning on?
> > 
> > I think we can drop this condition here.
> 
> When we drop the condition we get this message everytime we do
> nand0.erasebad=1. I only want to have it once when it is enabled
> (and was disabled before).
> 
ah, thank you for explaining. Good idea. :-)

Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
