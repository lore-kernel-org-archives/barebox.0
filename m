Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjD7b-0002Gx-Rv
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:30:44 +0000
Date: Mon, 25 Jun 2012 19:30:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625173041.GJ14321@pengutronix.de>
References: <1340625937-10609-1-git-send-email-s.hauer@pengutronix.de>
 <20120625163929.GW3199@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120625163929.GW3199@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX51 babbage: add mci1
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 25, 2012 at 06:39:30PM +0200, Robert Schwebel wrote:
> On Mon, Jun 25, 2012 at 02:05:37PM +0200, Sascha Hauer wrote:
> > The iomuxer is already initialized, only need to add the device.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/freescale-mx51-pdk/board.c |    1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
> > index 0bb2ffe..dc0d003 100644
> > --- a/arch/arm/boards/freescale-mx51-pdk/board.c
> > +++ b/arch/arm/boards/freescale-mx51-pdk/board.c
> > @@ -246,6 +246,7 @@ static int f3s_devices_init(void)
> >  	imx51_iim_register_fec_ethaddr();
> >  	imx51_add_fec(&fec_info);
> >  	imx51_add_mmc0(NULL);
> > +	imx51_add_mmc1(NULL);
> 
> Subject says mci1, this says mmc1...?

Yeah, because barebox names the mmc/sd framework mci.

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
