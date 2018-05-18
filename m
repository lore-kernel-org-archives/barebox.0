Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJhFG-0007cY-Lu
 for barebox@lists.infradead.org; Fri, 18 May 2018 15:24:40 +0000
Received: by mail-lf0-x241.google.com with SMTP id z142-v6so14525304lff.5
 for <barebox@lists.infradead.org>; Fri, 18 May 2018 08:24:28 -0700 (PDT)
Date: Fri, 18 May 2018 18:24:24 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180518152422.u3uhzozqh2kpeqhx@localhost.localdomain>
References: <20180517135858.16202-1-pmamonov@gmail.com>
 <20180517135858.16202-6-pmamonov@gmail.com>
 <20180518055734.sl3vlnyr7tooitih@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518055734.sl3vlnyr7tooitih@pengutronix.de>
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
Subject: Re: [RFC PATCH 05/15] mips: fix dma_sync_* stuff for MIPS64
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Sascha,

On Fri, May 18, 2018 at 07:57:34AM +0200, Sascha Hauer wrote:
> On Thu, May 17, 2018 at 04:58:48PM +0300, Peter Mamonov wrote:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  arch/mips/include/asm/dma-mapping.h |  2 +-
> >  arch/mips/include/asm/io.h          |  4 ++--
> >  arch/mips/lib/c-r4k.c               | 26 +++++++++++++-------------
> >  arch/mips/lib/dma-default.c         |  6 ++++--
> >  4 files changed, 20 insertions(+), 18 deletions(-)
> > 
> > diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
> > index c71a08703..d4cbb3cac 100644
> > --- a/arch/mips/include/asm/dma-mapping.h
> > +++ b/arch/mips/include/asm/dma-mapping.h
> > @@ -19,7 +19,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
> >  	if (dma_handle)
> >  		*dma_handle = CPHYSADDR(ret);
> >  
> > -	dma_flush_range((unsigned long)ret, (unsigned long)(ret + size));
> > +	dma_flush_range(ret, ret + size);
> >  
> >  	return (void *)CKSEG1ADDR(ret);
> >  }
> > diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> > index 5a4cbf564..07b337e76 100644
> > --- a/arch/mips/include/asm/io.h
> > +++ b/arch/mips/include/asm/io.h
> > @@ -15,8 +15,8 @@
> >  #include <asm/addrspace.h>
> >  #include <asm/byteorder.h>
> >  
> > -void dma_flush_range(unsigned long, unsigned long);
> > -void dma_inv_range(unsigned long, unsigned long);
> > +void dma_flush_range(void *, void *);
> > +void dma_inv_range(void *, void *);
> 
> Why is this changed? unsigned long should normally be wide enough to
> hold an address.

You are right, it doesn't fix anything. I've made these changes after taking a 
look at __dma_sync_virtual in linux/arch/mips/mm/dma-default.c, which accepts 
void* argument. So, I decided to change call signature of __dma_sync_mips() and 
this decision triggered the rest of the edits :). Sorry for misleading commit 
message.

Regards,
Peter

> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
