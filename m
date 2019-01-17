Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFik-0003oX-1j
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 22:01:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id y185so2072121wmd.1
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 14:01:05 -0800 (PST)
MIME-Version: 1.0
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-13-andrew.smirnov@gmail.com>
 <20190117213648.GC4532@ravnborg.org>
In-Reply-To: <20190117213648.GC4532@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 14:00:53 -0800
Message-ID: <CAHQ1cqGXQEzxNZu-ndwVidD+7-mNywknXiUQ9A2=zBMxZ0Mo_A@mail.gmail.com>
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
Subject: Re: [PATCH 12/12] ARM: mmu: Make sure DMA coherent memory is zeroed
 out
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 17, 2019 at 1:36 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> On Wed, Jan 16, 2019 at 10:38:40PM -0800, Andrey Smirnov wrote:
> > In order to avoid passing random/junky values to DMA/HW as well as to
> > allow simplifying memory initialization in individual drivers, chagnge
> chagnge => change
>
> > dma_alloc_coherent() to guarantee that memory it returs is properly
> returs => returns
> > zeroed out.

Ugh, will fix the typos.

> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/cpu/mmu-common.c | 3 ++-
> >  arch/arm/cpu/mmu-common.h | 1 +
> >  arch/arm/cpu/mmu.c        | 2 +-
> >  arch/arm/cpu/mmu_64.c     | 8 ++++++++
> >  4 files changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> > index c5b24bff8..aeefbb2da 100644
> > --- a/arch/arm/cpu/mmu-common.c
> > +++ b/arch/arm/cpu/mmu-common.c
> > @@ -43,7 +43,8 @@ void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
> >       if (dma_handle)
> >               *dma_handle = (dma_addr_t)ret;
> >
> > -     dma_inv_range(ret, size);
> > +     memset(ret, 0, size);
> > +     dma_flush_range(ret, size);
> >
> >       arch_remap_range(ret, size, flags);
> >
> > diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
> > index 679799c3c..0a33b138e 100644
> > --- a/arch/arm/cpu/mmu-common.h
> > +++ b/arch/arm/cpu/mmu-common.h
> > @@ -2,6 +2,7 @@
> >  #define __ARM_MMU_COMMON_H
> >
> >  void dma_inv_range(void *ptr, size_t size);
> > +void dma_flush_range(void *ptr, size_t size);
> >  void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
> >  void __mmu_init(bool mmu_on);
> >
> > diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> > index 9e261a0be..29816ad56 100644
> > --- a/arch/arm/cpu/mmu.c
> > +++ b/arch/arm/cpu/mmu.c
> > @@ -97,7 +97,7 @@ static u32 *find_pte(unsigned long adr)
> >       return &table[(adr >> PAGE_SHIFT) & 0xff];
> >  }
> >
> > -static void dma_flush_range(void *ptr, size_t size)
> > +void dma_flush_range(void *ptr, size_t size)
> >  {
> >       unsigned long start = (unsigned long)ptr;
> >       unsigned long end = start + size;
> > diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> > index a3074b10d..b45a69661 100644
> > --- a/arch/arm/cpu/mmu_64.c
> > +++ b/arch/arm/cpu/mmu_64.c
> > @@ -233,6 +233,14 @@ void dma_inv_range(void *ptr, size_t size)
> >       v8_inv_dcache_range(start, end);
> >  }
> >
> > +void dma_flush_range(void *ptr, size_t size)
> > +{
> > +     unsigned long start = (unsigned long)ptr;
> > +     unsigned long end = start + size - 1;
> > +
> > +     v8_flush_dcache_range(start, end);
> > +}
> We should use the existing indirection with struct cache_fns
> here, then we could share the code.

AArch64 used to use struct cache_fns, but that approach was decided
against in 4b57aae26c0ada3139ccb1011bdcbd88dc7e1a91 ("ARM: Create own
cache.c file for aarch64") by Sascha. My interpretation of it is that
adding struct cache_fns back would not be particularly welcome, but I
am more that happy to do it if told otherwise.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
