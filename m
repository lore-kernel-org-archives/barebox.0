Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OPDlx-0000AE-06
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 12:00:44 +0000
Date: Thu, 17 Jun 2010 14:00:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100617120037.GM20799@pengutronix.de>
References: <471ada329c4028bfda67cfa2bca1e131aed6ae0e.1276022070.git.baruch@tkos.co.il>
	<20100615051235.GC3233@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100615051235.GC3233@jasper.tkos.co.il>
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
Subject: Re: [PATCH] i2c: fix adapter_list manipulation
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Tue, Jun 15, 2010 at 08:12:35AM +0300, Baruch Siach wrote:
> Hi barebox list,
> 
> Ping?

Sorry, missed this one. Applied.

Sascha

> This seems to fix an obvious bug.
> 
> baruch
> 
> On Tue, Jun 08, 2010 at 09:36:04PM +0300, Baruch Siach wrote:
> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> >  drivers/i2c/i2c.c |    2 +-
> >  1 files changed, 1 insertions(+), 1 deletions(-)
> > 
> > diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> > index 1fa114a..87360f3 100644
> > --- a/drivers/i2c/i2c.c
> > +++ b/drivers/i2c/i2c.c
> > @@ -365,7 +365,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
> >  	if (i2c_get_adapter(adapter->nr))
> >  		return -EBUSY;
> >  
> > -	list_add_tail(&adapter_list, &adapter->list);
> > +	list_add_tail(&adapter->list, &adapter_list);
> >  
> >  	/* populate children from any i2c device tables */
> >  	scan_boardinfo(adapter);
> > -- 
> > 1.7.1
> > 
> 
> -- 
>                                                      ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
