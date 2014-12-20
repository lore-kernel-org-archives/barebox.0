Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y2E75-00036k-RK
 for barebox@lists.infradead.org; Sat, 20 Dec 2014 07:06:08 +0000
Date: Sat, 20 Dec 2014 08:05:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141220070542.GC30369@pengutronix.de>
References: <1418941957-6950-1-git-send-email-antonynpavlov@gmail.com>
 <20141219064542.GY30369@pengutronix.de>
 <20141219171219.b672ff943c851cbe6adf5006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141219171219.b672ff943c851cbe6adf5006@gmail.com>
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
Subject: Re: [RFC] introduce ioremap() and dev_ioremap_resource()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 19, 2014 at 05:12:19PM +0400, Antony Pavlov wrote:
> On Fri, 19 Dec 2014 07:45:42 +0100
> > > moreover dev_ioremap_resource() has the second 'struct resource *res'
> > > argument, so additional dev_get_resource() is needed.
> > > 
> > > Can we insert ioremap() into dev_request_mem_region() directly?
> > > (we also can use already existion IOMEM() macro instead of linux' ioremap()).
> > 
> > I'm not sure if it's a good idea to put that behind some standard
> > lookingioremap() call, because its behaviour is not standard.
> > 
> > I'm also fine with adding some
> > 
> > #ifdef CONFIG_MIPS
> > 	return mips_iomem(res->start);
> > #else
> > 	return (void __force __iomem *)res->start;
> > #endif
> > 
> > At least this makes explicit that MIPS has a very special handling.
> 
> We already have this in include/common.h
> 
> #if defined(CONFIG_MIPS)
> #include <asm/addrspace.h>
> 
> #define IOMEM(addr) ((void __force __iomem *)CKSEG1ADDR(addr))
> #else
> #define IOMEM(addr) ((void __force __iomem *)(addr))
> #endif
> 
> So can I use just
> 
>     return IOMEM(res->start);
> 
> in dev_request_mem_region()?

Yes, nice. That's the right solution then.

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
