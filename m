Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJFuW-0005a9-UF
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 09:08:55 +0000
Date: Fri, 9 Jun 2017 11:08:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170609090830.cgid2zfz2cufjqq5@pengutronix.de>
References: <1496765425-9702-1-git-send-email-d.schultz@phytec.de>
 <20170607064508.lau5rlqb5k6hslf3@pengutronix.de>
 <20170607064909.rw2aa6atbrb37xmt@pengutronix.de>
 <20170607065336.utyv5z72fivph2ha@pengutronix.de>
 <23fe6b1a-f4af-40e0-a796-51464027b251@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23fe6b1a-f4af-40e0-a796-51464027b251@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: omap: Fix BCH bit correction
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org, Matt Reimer <mreimer@sdgsystems.com>

On Fri, Jun 09, 2017 at 10:17:55AM +0200, Daniel Schultz wrote:
> Hi Sascha,
> 
> > > 
> > > And can not work. Additionally eccsteps must be set to 1 in
> > > omap_correct_bch(). This effectively makes the loop in this function
> > > unnecessary which can then removed.
> > 
> > Which then means omap_gpmc_read_page_bch_rom_mode() has to iterate over
> > ecc.steps itself, just like the other read_page implementations in the
> > framework do.
> > 
> So, the previous assignment of eccsteps was fine?

I just sent an updated patch(-series). Could you give it a try?

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
