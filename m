Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1KzK-0001t8-Po
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:05:24 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 09E40FF8FF2
 for <barebox@lists.infradead.org>; Fri,  1 Feb 2013 19:19:31 +0100 (CET)
Date: Fri, 1 Feb 2013 19:04:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130201180403.GM26329@game.jcrosoft.org>
References: <1359654315-19183-1-git-send-email-plagnioj@jcrosoft.com>
 <20130201175536.GZ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130201175536.GZ1906@pengutronix.de>
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
Subject: Re: [PATCH 1/1] omap3: fix debug_ll uart base
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:55 Fri 01 Feb     , Sascha Hauer wrote:
> On Thu, Jan 31, 2013 at 06:45:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/mach-omap/include/mach/debug_ll.h |    4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
> > index 142f01a..ed1777b 100644
> > --- a/arch/arm/mach-omap/include/mach/debug_ll.h
> > +++ b/arch/arm/mach-omap/include/mach/debug_ll.h
> > @@ -23,9 +23,9 @@
> >  #include <mach/omap3-silicon.h>
> >  
> >  #ifdef CONFIG_OMAP3EVM_UART1
> > -#define UART_BASE	OMAP_UART1_BASE
> > +#define UART_BASE	OMAP3_UART1_BASE
> >  #else
> > -#define UART_BASE	OMAP_UART3_BASE
> > +#define UART_BASE	OMAP3_UART3_BASE
> >  #endif
> 
> This file is also used for omap4 and am33xx. Probably this used to work
> when all shared the same defines. So, the above does not seem to be a
> proper fix.
it is as this is under as before

you have
#ifdef CONFIG_ARCH_OMAP3
#include <mach/omap3-silicon.h>

...

#endif
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
