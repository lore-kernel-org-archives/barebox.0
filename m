Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RkX3g-00032p-MP
 for barebox@lists.infradead.org; Tue, 10 Jan 2012 08:27:55 +0000
Date: Tue, 10 Jan 2012 09:27:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120110082739.GQ5446@pengutronix.de>
References: <1325930228-10935-1-git-send-email-plagnioj@jcrosoft.com>
 <20120109083720.GM5446@pengutronix.de>
 <20120109163337.GI2854@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120109163337.GI2854@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RESEND PATCH] atmel_nand: add on_flash_btt option to enable bbt
 option
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 09, 2012 at 05:33:37PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:37 Mon 09 Jan     , Sascha Hauer wrote:
> > On Sat, Jan 07, 2012 at 10:57:08AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  drivers/mtd/nand/atmel_nand.c |    6 ++++++
> > >  1 files changed, 6 insertions(+), 0 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> > > index 3213de2..3e00226 100644
> > > --- a/drivers/mtd/nand/atmel_nand.c
> > > +++ b/drivers/mtd/nand/atmel_nand.c
> > > @@ -406,6 +406,12 @@ static int __init atmel_nand_probe(struct device_d *dev)
> > >  		}
> > >  	}
> > >  
> > > +	if (host->board->on_flash_bbt) {
> > > +		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
> > 
> > dev_info?
> I don't really think it suppose to be here

That's a driver probe function. Why do you think dev_info is not
suitable here?

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
