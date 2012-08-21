Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3iRN-0007KN-Vj
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 06:59:54 +0000
Date: Tue, 21 Aug 2012 08:59:50 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120821065950.GC15318@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-7-git-send-email-jlu@pengutronix.de>
 <20120820144700.GY6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120820144700.GY6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 06/13] drivers/net: add driver for the EMAC device found
 in some TI SoCs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2012 at 04:47:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > +	/* EMAC Addresses */
> > +	emac_regs	*adap_emac; /* = (emac_regs *)EMAC_BASE_ADDR; */
> > +	ewrap_regs	*adap_ewrap; /* = (ewrap_regs *)EMAC_WRAPPER_BASE_ADDR; */
> > +	mdio_regs	*adap_mdio; /* = (mdio_regs *)EMAC_MDIO_BASE_ADDR; */
> please use linux and not the struct for regs

The structs are only used for addresses, all accesses use readl/writel.

> and did you test it with mmu?

Yes, the whole series is used with MMU.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
