Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFSU3-0005Hc-AU
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 16:23:12 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 15E46FFA5B8
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 18:19:56 +0200 (CEST)
Date: Sat, 22 Sep 2012 18:11:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120922161130.GV26553@game.jcrosoft.org>
References: <20120921125151.GM26553@game.jcrosoft.org>
 <1348232133-18969-1-git-send-email-plagnioj@jcrosoft.com>
 <20120922103447.GI1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120922103447.GI1322@pengutronix.de>
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
Subject: Re: [PATCH 1/5] video: add atmel lcdc frambuffer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 12:34 Sat 22 Sep     , Sascha Hauer wrote:
> On Fri, Sep 21, 2012 at 02:55:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This IP is present on the at91sam9 until the sam9g45, on the sam9x5 we use a
> > new IP.
> > 
> > This driver is based on the linux one.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> > ---
> >  arch/arm/mach-at91/include/mach/atmel_lcdc.h |  209 +++++++++++
> >  arch/arm/mach-at91/include/mach/board.h      |    4 +
> >  drivers/video/Kconfig                        |    4 +
> >  drivers/video/Makefile                       |    1 +
> >  drivers/video/atmel_lcdfb.c                  |  477 ++++++++++++++++++++++++++
> >  5 files changed, 695 insertions(+)
> >  create mode 100644 arch/arm/mach-at91/include/mach/atmel_lcdc.h
> >  create mode 100644 drivers/video/atmel_lcdfb.c
> > 
> > diff --git a/arch/arm/mach-at91/include/mach/atmel_lcdc.h b/arch/arm/mach-at91/include/mach/atmel_lcdc.h
> 
> The register definitions should be besides the driver, not in mach.
can not  as we need the register for the board setting I can do as in linux we
put the header in include/video

Best Regards,
J.
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
