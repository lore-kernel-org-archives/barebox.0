Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3iOg-0003Ur-VP
 for barebox@lists.infradead.org; Tue, 21 Aug 2012 06:57:08 +0000
Date: Tue, 21 Aug 2012 08:55:59 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120821065559.GB15318@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-4-git-send-email-jlu@pengutronix.de>
 <20120820144225.GX6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120820144225.GX6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 03/13] common: split out meminfo output and make it
 optional
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2012 at 04:42:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> > --- /dev/null
> > +++ b/common/meminfo.c
> > @@ -0,0 +1,21 @@
> > +#include <common.h>
> > +#include <memory.h>
> > +#include <asm-generic/memory_layout.h>
> > +
> > +void display_meminfo(void)
> > +{
> > +	ulong mstart = mem_malloc_start();
> > +	ulong mend   = mem_malloc_end();
> > +	ulong msize  = mend - mstart + 1;
> > +
> > +	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
> > +	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
> > +	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
> > +		mstart, mend, size_human_readable(msize));
> > +#ifdef CONFIG_ARM
> > +	printf("Stack space : 0x%08x -> 0x%08x (size %s)\n",
> > +		STACK_BASE, STACK_BASE + STACK_SIZE,
> > +		size_human_readable(STACK_SIZE));
> > +#endif
> > +}
> 
> so move it as a late_initcall

Ok. Then I'll remove the call from startup.c completely.

Thanks,
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
