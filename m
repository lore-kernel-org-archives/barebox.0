Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Y8B-000376-Lu
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 13:23:00 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DA2621050E04
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 15:27:34 +0200 (CEST)
Date: Sun, 12 Aug 2012 15:23:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120812132306.GH6271@game.jcrosoft.org>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
 <1344628865-32574-7-git-send-email-s.hauer@pengutronix.de>
 <20120811093740.GC6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120811093740.GC6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 6/9] ARM Makefile: generate a barebox-flash-image link
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:37 Sat 11 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:01 Fri 10 Aug     , Sascha Hauer wrote:
> > Depending on the SoC a barebox.bin, barebox.netx, barebox.s5p, MLO image
> > is generated. With pbl support there now is an additional
> > arch/arm/pbl/zbarebox.bin image.
> > 
> > To help the user to determine which image should be flashed to his device,
> > generate a barebox-flash-image link.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/Makefile |    7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 63bc9be..9d9247f 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -217,7 +217,10 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
> >  archclean:
> >  	$(MAKE) $(clean)=$(pbl)
> >  
> > -all: $(KBUILD_BINARY)
> > +barebox-flash-image: $(KBUILD_BINARY)
> > +	$(Q)ln -sf $(KBUILD_BINARY) barebox-flash-image
I re-think about it and I think we need a common ways acrosse arch

othersize it will be confusing

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
