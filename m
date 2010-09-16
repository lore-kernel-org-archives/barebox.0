Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwCPE-0007If-HF
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 11:13:33 +0000
Date: Thu, 16 Sep 2010 13:12:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100916111223.GA26875@game.jcrosoft.org>
References: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
	<20100916105642.GT1473@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100916105642.GT1473@pengutronix.de>
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
Subject: Re: [PATCH] init: introduce __BARE_INIT for .section
	".text_bare_init.text"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > --- a/include/init.h
> > +++ b/include/init.h
> > @@ -7,6 +7,10 @@
> >  #define __init
> >  #define __initdata
> >  
> > +/* For assembly routines */
> > +#define __BARE_INIT	.section ".text_bare_init.text"
> 
> Is there a reason you used capital letters for __BARE_INIT in assembly?

same way as the kernel for assembly we use upercase
cf __INIT __INITDATA

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
