Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3WF5-0004fL-0l
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 17:26:08 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 479D9DC3D94
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 18:28:59 +0100 (CET)
Date: Fri, 2 Mar 2012 18:16:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120302171623.GC12248@game.jcrosoft.org>
References: <4F50C74E.20703@ronetix.at> <20120302153559.GP3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120302153559.GP3852@pengutronix.de>
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
Subject: Re: AT91SAM9G45: MACB: not usable Ethernet when MMU is enabled
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:35 Fri 02 Mar     , Sascha Hauer wrote:
> On Fri, Mar 02, 2012 at 03:12:46PM +0200, RONETIX - Asen Dimov wrote:
> > Hello everyone,
> > 
> > the Ethernet on AT91SAM9G45(with ARM926J CPU) is not operational
> > when the MMU is enabled.
> > Have some met with this issue before and probably solved it?
> 
> grep for dma_alloc_coherent, dma_flush_range. This should give you the
> hints necessary to make it work.
I found back some patch to support it

the main issue is "bug" in the network stack of barebox
the send buffer is not allocated via dma_alloc_coherent so it's cdoes not work

on the macb you need the send and the receive buffer allocated via
dam_alloc_coherent

I'll send some patch

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
