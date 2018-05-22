Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-f68.google.com ([74.125.82.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL8re-0001rx-3o
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:06:41 +0000
Received: by mail-wm0-f68.google.com with SMTP id a137-v6so16936582wme.1
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:06:03 -0700 (PDT)
Date: Tue, 22 May 2018 18:05:59 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180522150559.5nxrjpryao23doad@localhost.localdomain>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-10-pmamonov@gmail.com>
 <20180521151109.GC12008@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180521151109.GC12008@ravnborg.org>
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
Subject: Re: [PATCH v2 09/12] mips: fix warnings from CPHYSADDR() macro
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 05:11:09PM +0200, Sam Ravnborg wrote:
> On Mon, May 21, 2018 at 02:54:35PM +0300, Peter Mamonov wrote:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  arch/mips/include/asm/addrspace.h | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
> > index dc44d7f79..688620472 100644
> > --- a/arch/mips/include/asm/addrspace.h
> > +++ b/arch/mips/include/asm/addrspace.h
> > @@ -48,7 +48,12 @@
> >  /*
> >   * Returns the physical address of a CKSEGx / XKPHYS address
> >   */
> > +#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
> > +#define CPHYSADDR(a)		((_ACAST64_(a)) & 0x1fffffff)
> > +#else
> >  #define CPHYSADDR(a)		((_ACAST32_(a)) & 0x1fffffff)
> > +#endif
> > +
> >  #define XPHYSADDR(a)            ((_ACAST64_(a)) &			\
> >  				 _CONST64_(0x000000ffffffffff))
> 
> If the above cast to phys_addr_t then no ifdef is required?

Probably, yet Linux uses those _ACAST*_ macros... I have to dig a little bit to
find why and how. Let's skip this this patch for a while since it just fixes a
warning and there are much more of them when you build for 64 bit MIPS...

Regards,
Peter

> 
> 	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
