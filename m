Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3nNW-0003VH-N6
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 12:16:16 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6A44CFF9142
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2012 14:23:14 +0200 (CEST)
Date: Tue, 21 Aug 2012 14:16:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120821121625.GG6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-7-git-send-email-jlu@pengutronix.de>
 <20120820144700.GY6271@game.jcrosoft.org>
 <20120821065950.GC15318@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120821065950.GC15318@pengutronix.de>
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
Subject: Re: [PATCH 06/13] drivers/net: add driver for the EMAC device
 found in some TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:59 Tue 21 Aug     , Jan Luebbe wrote:
> On Mon, Aug 20, 2012 at 04:47:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > > +	/* EMAC Addresses */
> > > +	emac_regs	*adap_emac; /* = (emac_regs *)EMAC_BASE_ADDR; */
> > > +	ewrap_regs	*adap_ewrap; /* = (ewrap_regs *)EMAC_WRAPPER_BASE_ADDR; */
> > > +	mdio_regs	*adap_mdio; /* = (mdio_regs *)EMAC_MDIO_BASE_ADDR; */
> > please use linux and not the struct for regs
> 
> The structs are only used for addresses, all accesses use readl/writel.
use offset not struct stuff wish are a meessup to maintain

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
