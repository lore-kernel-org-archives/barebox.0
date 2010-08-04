Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgXCA-0003VU-B4
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 06:11:19 +0000
Date: Wed, 4 Aug 2010 08:06:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100804060636.GB16337@game.jcrosoft.org>
References: <1280840019-11421-3-git-send-email-plagnioj@jcrosoft.com>
	<1280885595-18026-1-git-send-email-plagnioj@jcrosoft.com>
	<20100804052022.GA17208@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100804052022.GA17208@jasper.tkos.co.il>
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
Subject: Re: [PATCH 3/3 v2] at91: implement clock framework
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On 08:20 Wed 04 Aug     , Baruch Siach wrote:
> Hi Jean-Christophe,
> 
> On Wed, Aug 04, 2010 at 03:33:15AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this implementation is based on linux one (v2.6.35-rc5-76-gd0c6f62)
> > it will calculate all the clock dynamically instead of statictly
> > this will use also the new clock framework
> > 
> > it will also print the clock status after the console init
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > v2:
> > upadate against mainline kernel
> > and add ref on which revision it's based on
> 
> [snip]
> 
> > diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
> > index 1133b8f..422ac09 100644
> > --- a/arch/arm/boards/mmccpu/config.h
> > +++ b/arch/arm/boards/mmccpu/config.h
> > @@ -1,7 +1,7 @@
> >  #ifndef __CONFIG_H
> >  #define __CONFIG_H
> >  
> > -#define AT91_MASTER_CLOCK	99532800		/* peripheral = main / 2 */
> > +#define AT91_M1IN_CLOCK		18432000
> 
> s/M1IN/MAIN/ ?
nice

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
