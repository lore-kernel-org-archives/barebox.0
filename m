Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYxUk-0007U9-PB
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 10:16:00 +0000
Date: Fri, 9 Dec 2011 11:15:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111209101551.GF27267@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
 <1323262387-8012-11-git-send-email-s.hauer@pengutronix.de>
 <20111208142036.GB23884@game.jcrosoft.org>
 <20111209053308.GH23884@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209053308.GH23884@game.jcrosoft.org>
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
Subject: Re: [PATCH 10/11] arm at91sam9260: Add missing
 AT91SAM_ETX2_ETX3_ALTERNATIVE define
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2011 at 06:33:08AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:20 Thu 08 Dec     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 13:53 Wed 07 Dec     , Sascha Hauer wrote:
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/mach-at91/include/mach/board.h |    1 +
> > >  1 files changed, 1 insertions(+), 0 deletions(-)
> > > 
> > > diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> > > index 546fe90..5e23688 100644
> > > --- a/arch/arm/mach-at91/include/mach/board.h
> > > +++ b/arch/arm/mach-at91/include/mach/board.h
> > > @@ -51,6 +51,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
> > >  #define AT91SAM_ETHER_MII		(0 << 0)
> > >  #define AT91SAM_ETHER_RMII		(1 << 0)
> > >  #define AT91SAM_ETHER_FORCE_LINK	(1 << 1)
> > > +#define AT91SAM_ETX2_ETX3_ALTERNATIVE	(2 << 0
> > this will not work too
> > 
> > (1 << 1) = (1 << 0)
> btw where does this come from
> 
> I see no patch about it on the ML at All

Sorry, I realized after the fact that Michael hasn't Cced the mailing
list. I owe you a beer.

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
