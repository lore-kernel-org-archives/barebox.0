Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgbDH-00075c-5o
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 10:28:44 +0000
Date: Wed, 4 Aug 2010 12:24:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100804102402.GA12545@game.jcrosoft.org>
References: <1280888414-22759-1-git-send-email-plagnioj@jcrosoft.com>
	<20100804065008.GC17208@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100804065008.GC17208@jasper.tkos.co.il>
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
Subject: Re: [PATCH] init.h: introduce fake define (__init & __initdata) to
	simplify the linux sync
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

> >  
> > +/*
> > + * fake define to simplify the linux sync
> > + */
> > +#define __init
> > +#define __initdata
> > +
> 
> IMO, having useless __init/__initdata in the code adds noise, and reduces 
> readability.  These can be easily removed as code gets moved from Linux to 
> Barebox.

but make impossible to apply patch directly or very quickly update the code
so this will make the job of maintainance easier

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
