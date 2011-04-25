Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QEOAk-0000GG-8E
	for barebox@lists.infradead.org; Mon, 25 Apr 2011 15:58:03 +0000
Date: Mon, 25 Apr 2011 17:48:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110425154834.GC13557@game.jcrosoft.org>
References: <1303535118-4737-1-git-send-email-plagnioj@jcrosoft.com>
	<20110425113735.GE14770@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110425113735.GE14770@pengutronix.de>
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
Subject: Re: [PATCH] arm: add support to generate uImage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > +	hex
> > +	default TEXT_BASE
> > +	help
> > +	  The Address barebox gets load at as a uImage
> > +
> 
> No, please don't. When you load barebox with itself you end up
> overwriting the running barebox with the just loaded image if using
> TEXT_BASE here.
> barebox can be started from any address in SDRAM. Isn't there a
> mechanism to support this with the uImage format? The U-Boot guys have
> the same problem with ARM_PATCH_PHYS_VIRT in the kernel aswell, so I
> assume this is already solved in some way, no?
I known but the uImage does not allow you to do so
and no they do not do so

for us we can add a -l and -e option to bootm to overwrite the default load address
and entry point but for orlder u-boot or barebox we can not so this is the
only way to specify one for the uImage

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
