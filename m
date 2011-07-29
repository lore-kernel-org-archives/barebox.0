Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmlIT-0001De-TL
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 11:32:06 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 691C8FFA7F4
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 13:32:55 +0200 (CEST)
Date: Fri, 29 Jul 2011 13:14:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110729111428.GB25658@game.jcrosoft.org>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
	<1311932630-5687-5-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311932630-5687-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/7] ARM: pass size to dma_free_coherent
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:43 Fri 29 Jul     , Sascha Hauer wrote:
> We'll need it later once we remap dma memory.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu.c           |    2 +-
>  arch/arm/include/asm/mmu.h   |    9 +++++++--
>  drivers/usb/gadget/fsl_udc.c |    2 +-
>  3 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 8465d1a..bb067e3 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -155,7 +155,7 @@ void *phys_to_virt(unsigned long phys)
>  	return (void *)(phys + dma_coherent_offset);
>  }
>  
> -void dma_free_coherent(void *mem)
> +void dma_free_coherent(void *mem, size_t size)
>  {
>  	free(mem - dma_coherent_offset);
>  }
> diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
> index d96c728..9ebc2cd 100644
> --- a/arch/arm/include/asm/mmu.h
> +++ b/arch/arm/include/asm/mmu.h
> @@ -17,7 +17,7 @@ void setup_dma_coherent(unsigned long offset);
>  
>  #ifdef CONFIG_MMU
>  void *dma_alloc_coherent(size_t size);
> -void dma_free_coherent(void *mem);
> +void dma_free_coherent(void *mem, size_t size);
>  
>  void dma_clean_range(unsigned long, unsigned long);
>  void dma_flush_range(unsigned long, unsigned long);
> @@ -26,12 +26,17 @@ unsigned long virt_to_phys(void *virt);
>  void *phys_to_virt(unsigned long phys);
>  
>  #else
> +static inline int mmu_init(void)
> +{
> +	return -EINVAL;
if not enable we just success no?
specially if the code is move out the board

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
