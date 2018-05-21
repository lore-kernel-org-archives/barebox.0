Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKnG9-0003ge-1o
 for barebox@lists.infradead.org; Mon, 21 May 2018 16:02:10 +0000
Date: Mon, 21 May 2018 18:01:51 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180521160151.GA23637@ravnborg.org>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-7-pmamonov@gmail.com>
 <20180521150429.GA12008@ravnborg.org>
 <3b52a9f7-7e66-ecc6-7812-f7384b26e90d@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b52a9f7-7e66-ecc6-7812-f7384b26e90d@rempel-privat.de>
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
Subject: Re: [PATCH v2 06/12] common.h: fix IOMEM() for MIPS64
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 05:26:25PM +0200, Oleksij Rempel wrote:
> Am 21.05.2018 um 17:04 schrieb Sam Ravnborg:
> > On Mon, May 21, 2018 at 02:54:32PM +0300, Peter Mamonov wrote:
> >> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> >> ---
> >>  include/common.h | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/include/common.h b/include/common.h
> >> index 60e5005b8..4b3bcae40 100644
> >> --- a/include/common.h
> >> +++ b/include/common.h
> >> @@ -142,7 +142,11 @@ void barebox_set_hostname_no_overwrite(const char *);
> >>  #if defined(CONFIG_MIPS)
> >>  #include <asm/addrspace.h>
> >>  
> >> +#ifdef CONFIG_64BIT
> >> +#define IOMEM(addr)	((void __force __iomem *)PHYS_TO_XKSEG_UNCACHED(addr))
> >> +#else
> >>  #define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
> >> +#endif
> >>  #else
> >>  #define IOMEM(addr)	((void __force __iomem *)(addr))
> >>  #endif
> > 
> > Another way to handle this would be to move the definition of IOMEM to asm/common.h
> > and then in this file define IOMEM only if not already defined.
> > 
> > Then we could avoid this MIPS specific stuff in the middle of a common file.
> 
> I would prefer
> arch/mips/include/asm/io.h
Agreed, much better place.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
