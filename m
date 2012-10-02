Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ3SP-0000pm-W2
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 14:28:22 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A6EA4FFC153
 for <barebox@lists.infradead.org>; Tue,  2 Oct 2012 16:37:07 +0200 (CEST)
Date: Tue, 2 Oct 2012 16:25:54 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121002142554.GY26553@game.jcrosoft.org>
References: <1344959336-18562-1-git-send-email-plagnioj@jcrosoft.com>
 <1344959336-18562-2-git-send-email-plagnioj@jcrosoft.com>
 <20120915142321.GC25990@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120915142321.GC25990@game.jcrosoft.org>
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
Subject: Re: [for master PATCH 2/2] calao: at91 qil/tny/usb auto detect the
 phy addr
To: barebox@lists.infradead.org

HI,

	this patch is mandatory on the next as we now fail on phy not found

Best Regards,
J.
On 16:23 Sat 15 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi Sacha,
> 
> 	after applying the phylib we need this path on calao hw
> 
> Best Regards,
> J.
> On 17:48 Tue 14 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/qil-a9260/init.c |    2 +-
> >  arch/arm/boards/tny-a926x/init.c |    2 +-
> >  arch/arm/boards/usb-a926x/init.c |    2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
> > index ee204fb..92aea97 100644
> > --- a/arch/arm/boards/qil-a9260/init.c
> > +++ b/arch/arm/boards/qil-a9260/init.c
> > @@ -80,7 +80,7 @@ static void qil_a9260_add_device_mci(void) {}
> >  #ifdef CONFIG_CALAO_MB_QIL_A9260
> >  static struct at91_ether_platform_data macb_pdata = {
> >  	.flags		= AT91SAM_ETHER_RMII,
> > -	.phy_addr	= 0,
> > +	.phy_addr	= -1,
> >  };
> >  
> >  static void qil_a9260_phy_reset(void)
> > diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
> > index d58132a..556e633 100644
> > --- a/arch/arm/boards/tny-a926x/init.c
> > +++ b/arch/arm/boards/tny-a926x/init.c
> > @@ -118,7 +118,7 @@ static void tny_a9260_add_device_nand(void)
> >  #ifdef CONFIG_DRIVER_NET_MACB
> >  static struct at91_ether_platform_data macb_pdata = {
> >  	.flags		= AT91SAM_ETHER_RMII,
> > -	.phy_addr	= 0,
> > +	.phy_addr	= -1,
> >  };
> >  
> >  static void __init ek_add_device_macb(void)
> > diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
> > index 52444e1..7b19fa4 100644
> > --- a/arch/arm/boards/usb-a926x/init.c
> > +++ b/arch/arm/boards/usb-a926x/init.c
> > @@ -122,7 +122,7 @@ static void usb_a9260_add_device_nand(void) {}
> >  #if defined(CONFIG_DRIVER_NET_MACB)
> >  static struct at91_ether_platform_data macb_pdata = {
> >  	.flags		= AT91SAM_ETHER_RMII,
> > -	.phy_addr	= 0,
> > +	.phy_addr	= -1,
> >  };
> >  
> >  static void usb_a9260_phy_reset(void)
> > -- 
> > 1.7.10.4
> > 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
