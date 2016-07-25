Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bRbFI-0008K6-QP
 for barebox@lists.infradead.org; Mon, 25 Jul 2016 08:28:17 +0000
Date: Mon, 25 Jul 2016 10:27:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160725082755.GY20657@pengutronix.de>
References: <1469192421-15748-1-git-send-email-l.stach@pengutronix.de>
 <1469192421-15748-3-git-send-email-l.stach@pengutronix.de>
 <20160725082059.GX20657@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160725082059.GX20657@pengutronix.de>
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
Subject: Re: [PATCH 3/3] nand: mrvl: don't double cast error pointer
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 25, 2016 at 10:20:59AM +0200, Sascha Hauer wrote:
> On Fri, Jul 22, 2016 at 03:00:21PM +0200, Lucas Stach wrote:
> > Fixes:
> > In function 'alloc_nand_resource':
> > warning: return makes pointer from integer without a cast
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/mtd/nand/nand_mrvl_nfc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
> > index 578790da2612..1341f084d8f8 100644
> > --- a/drivers/mtd/nand/nand_mrvl_nfc.c
> > +++ b/drivers/mtd/nand/nand_mrvl_nfc.c
> > @@ -1138,7 +1138,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
> >  	host->dev = dev;
> >  	iores = dev_request_mem_resource(dev, 0);
> >  	if (IS_ERR(iores))
> > -		return PTR_ERR(iores);
> > +		return iores;
> 
> Better use ERR_CAST() here. It makes it more explicit that an error is
> returned here.

Just saw there are some more places that could use ERR_CAST. I sent an
alternative patch.

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
