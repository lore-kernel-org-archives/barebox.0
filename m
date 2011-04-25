Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QEQy2-0001lh-TM
	for barebox@lists.infradead.org; Mon, 25 Apr 2011 18:57:11 +0000
Date: Mon, 25 Apr 2011 20:57:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110425185704.GG14770@pengutronix.de>
References: <1303535118-4737-1-git-send-email-plagnioj@jcrosoft.com>
	<20110425113735.GE14770@pengutronix.de>
	<20110425154834.GC13557@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110425154834.GC13557@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 25, 2011 at 05:48:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +	hex
> > > +	default TEXT_BASE
> > > +	help
> > > +	  The Address barebox gets load at as a uImage
> > > +
> > 
> > No, please don't. When you load barebox with itself you end up
> > overwriting the running barebox with the just loaded image if using
> > TEXT_BASE here.
> > barebox can be started from any address in SDRAM. Isn't there a
> > mechanism to support this with the uImage format? The U-Boot guys have
> > the same problem with ARM_PATCH_PHYS_VIRT in the kernel aswell, so I
> > assume this is already solved in some way, no?
> I known but the uImage does not allow you to do so
> and no they do not do so
> 
> for us we can add a -l and -e option to bootm to overwrite the default load address
> and entry point but for orlder u-boot or barebox we can not so this is the
> only way to specify one for the uImage

Then the sdram base address is a much safer default value. We also
should add a check in the uImage code that prevents us from overwriting
ourselves.

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
