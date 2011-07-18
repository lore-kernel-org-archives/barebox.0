Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QifvF-0001X3-OO
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 04:59:14 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id B68DDFF9CDA
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 06:54:04 +0200 (CEST)
Date: Mon, 18 Jul 2011 06:36:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110718043656.GH20678@game.jcrosoft.org>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
	<1310813132-4151-7-git-send-email-plagnioj@jcrosoft.com>
	<20110717152827.GP6069@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110717152827.GP6069@pengutronix.de>
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
Subject: Re: [PATCH 7/7] dm9200: use "struct resource" instead of platform_data
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On 17:28 Sun 17 Jul     , Sascha Hauer wrote:
> On Sat, Jul 16, 2011 at 12:45:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > drop iobase and iodata in favor of resources
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> > Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> > ---
> >  arch/arm/boards/at91sam9261ek/init.c            |    8 +++++---
> >  arch/arm/boards/mini2440/env/welcome_en.bmp.lzo |  Bin 0 -> 26285 bytes
> >  arch/arm/boards/mini2440/mini2440.c             |   17 +++++++++++++----
> >  arch/arm/boards/pm9261/init.c                   |    8 +++++---
> >  arch/arm/boards/scb9328/scb9328.c               |   23 ++++++++++++++++-------
> >  drivers/net/dm9000.c                            |   10 ++++++++--
> >  include/dm9000.h                                |    2 --
> >  7 files changed, 47 insertions(+), 21 deletions(-)
> >  create mode 100644 arch/arm/boards/mini2440/env/welcome_en.bmp.lzo
> > 
> > diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
> > index 3def38e..4e52ab8 100644
> > --- a/arch/arm/boards/at91sam9261ek/init.c
> > +++ b/arch/arm/boards/at91sam9261ek/init.c
> > @@ -89,8 +89,6 @@ static void ek_add_device_nand(void)
> >   */
> >  #if defined(CONFIG_DRIVER_NET_DM9000)
> >  static struct dm9000_platform_data dm9000_data = {
> > -	.iobase		= AT91_CHIPSELECT_2,
> > -	.iodata		= AT91_CHIPSELECT_2 + 4,
> >  	.buswidth	= DM9000_WIDTH_16,
> >  	.srom		= 0,
> >  };
> > @@ -98,7 +96,11 @@ static struct dm9000_platform_data dm9000_data = {
> >  static struct resource dm9000_resources[] = {
> >  	[0] = {
> >  		.start	= AT91_CHIPSELECT_2,
> > -		.size	= 8,
> > +		.size	= 4,
> > +	},
> > +	[1] = {
> > +		.start	= AT91_CHIPSELECT_2 + 4,
> > +		.size	= 4,
> >  	},
> >  };
> >  
> > diff --git a/arch/arm/boards/mini2440/env/welcome_en.bmp.lzo b/arch/arm/boards/mini2440/env/welcome_en.bmp.lzo
> 
> Ups ;)
Yeah ups

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
