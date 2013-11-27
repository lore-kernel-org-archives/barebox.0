Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlZwS-00032h-J7
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 07:53:49 +0000
Date: Wed, 27 Nov 2013 08:53:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131127075326.GV24559@pengutronix.de>
References: <1385132122-4725-1-git-send-email-s.hauer@pengutronix.de>
 <20131123062137.GA28327@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131123062137.GA28327@omega>
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
Subject: Re: [PATCH] of: gpio: Add Kconfig variable to depend on
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 23, 2013 at 07:21:38AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Fri, Nov 22, 2013 at 03:55:22PM +0100, Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/of/Kconfig  | 5 +++++
> >  drivers/of/Makefile | 2 +-
> >  include/of_gpio.h   | 6 +++---
> >  3 files changed, 9 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> > index 6b893d7..cdf7ac7 100644
> > --- a/drivers/of/Kconfig
> > +++ b/drivers/of/Kconfig
> > @@ -19,6 +19,11 @@ config OF_NET
> >  	depends on NET
> >  	def_bool y
> >  
> > +config OF_GPIO
> > +	depends on CONFIG_GPIOLIB
> > +	depends on CONFIG_OFDEVICE
> > +	def_bool y
> 
> On current next branch the "def_bool y" is missing, so I get:
> 
> drivers/of/Kconfig:22:warning: config symbol defined without type
> 
> I will send a patch soon...

I fixed this by using the correct patch. The wrong one leaked in by
accident.

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
