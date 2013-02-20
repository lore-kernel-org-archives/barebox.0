Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Aac-0008UI-IQ
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 14:24:07 +0000
Received: from mail611.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0F620DC17E7
 for <barebox@lists.infradead.org>; Wed, 20 Feb 2013 15:34:43 +0100 (CET)
Date: Wed, 20 Feb 2013 15:22:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130220142259.GA5291@game.jcrosoft.org>
References: <1361364936-8698-1-git-send-email-plagnioj@jcrosoft.com>
 <5124D92C.9030308@calxeda.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5124D92C.9030308@calxeda.com>
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
Subject: Re: [PATCH 1/1] highbank: add wfi for poweroff
To: Rob Herring <rob.herring@calxeda.com>
Cc: barebox@lists.infradead.org

On 08:09 Wed 20 Feb     , Rob Herring wrote:
> On 02/20/2013 06:55 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > needed by the real hardware
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/mach-highbank/reset.c |    2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
> > index 630672a..b9664e4 100644
> > --- a/arch/arm/mach-highbank/reset.c
> > +++ b/arch/arm/mach-highbank/reset.c
> > @@ -23,5 +23,7 @@ void __noreturn poweroff()
> >  	shutdown_barebox();
> >  
> >  	hingbank_set_pwr_shutdown();
> > +	asm("	wfi");
> > +
> 
> This will break on old compilers or v5 builds. I personally don't care,
> but some people do.
I do not care too

and highbank is a v7 so I expect you use the proper compiler

Best Regards,
J.
> 
> Rob
> 
> >  	while(1);
> >  }
> > 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
