Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVpaC-0005Cm-Te
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 20:49:29 +0000
Date: Fri, 26 Apr 2013 22:49:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426204927.GW32299@pengutronix.de>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-3-git-send-email-shc_work@mail.ru>
 <20130426165928.GH13393@game.jcrosoft.org>
 <1366996156.522173565@f196.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366996156.522173565@f196.mail.ru>
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
Subject: Re: [PATCH 3/9] ARM: at91 smc: Fix possible uninitialized variable
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 09:09:16PM +0400, Alexander Shiyan wrote:
> ...
> > >  arch/arm/mach-at91/sam9_smc.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> > > index b48275e..a137da4 100644
> > > --- a/arch/arm/mach-at91/sam9_smc.c
> > > +++ b/arch/arm/mach-at91/sam9_smc.c
> > > @@ -120,12 +120,12 @@ void sam9_smc_read(int id, int cs, struct sam9_smc_config *config)
> > >  
> > >  static int at91sam9_smc_probe(struct device_d *dev)
> > >  {
> > you fix nothing here
> 
> As far I understand, id can be 0 and 1. In case of dev->id=1, id is not set.
> 
> > > -	int id;
> > > +	int id = dev->id;
> > >  
> > > -	if (dev->id < 0) {
> > > +	if (id < 0) {
> > >  		id = 0;
> > > -	} else if (dev->id > 1) {
> > > -		dev_warn(dev, ": id > 2\n");
> > > +	} else if (id > 1) {
> > > +		dev_warn(dev, "id > 1\n");

Also it fixes the error message.

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
