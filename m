Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8mFd-0004hg-QG
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 07:41:30 +0000
Date: Thu, 30 Jan 2014 08:41:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140130074106.GO16215@pengutronix.de>
References: <1390987800-18095-1-git-send-email-s.hauer@pengutronix.de>
 <1390987800-18095-2-git-send-email-s.hauer@pengutronix.de>
 <20140130064742.GC9671@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140130064742.GC9671@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/2] misc: Add devicetree SRAM driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 30, 2014 at 07:47:42AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:30 Wed 29 Jan     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/misc/Kconfig  |  6 +++++
> >  drivers/misc/Makefile |  1 +
> >  drivers/misc/sram.c   | 75 +++++++++++++++++++++++++++++++++++++++++++++++++++
> 
> on at91 we already use the sram
> 
> and the sram could be used by any driver for dma (ethernet, framebuffer)
> 
> how could handle this in the generic driver?

The generic driver only registers a cdev for accessing it, so you have
to actively corrupt the SRAM on the commandline to break something.
I don't know how AT91 does it, but the mmio-sram driver in the kernel
registers an allocator on the SRAM. Consumers then have a phandle to the
SRAM node and can allocate from the SRAM pool using the phandle. We
could do something similar in barebox should we have to. It's debatable
whether we should remove the cdev once the allocator is used, but let's
see until we get there.

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
