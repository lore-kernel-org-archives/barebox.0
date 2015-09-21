Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZduKs-0005br-5w
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 06:12:22 +0000
Date: Mon, 21 Sep 2015 08:11:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150921061159.GB7858@pengutronix.de>
References: <lya8smdz5d.fsf@ensc-virt.intern.sigma-chemnitz.de>
 <1442486711-6841-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442486711-6841-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH 1/2] ARM: MMU: fixed dma_flush_range() call
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 17, 2015 at 12:45:10PM +0200, Enrico Scholz wrote:
> dma_flush_range() expects an address as second argument, not a size.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/cpu/mmu.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 37bfa05..8ceb450 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -246,7 +246,8 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
>  	}
>  
>  	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
> -	dma_flush_range((unsigned long)ptes, num_ptes * sizeof(u32));
> +	dma_flush_range((unsigned long)ptes,
> +			(unsigned long)ptes + num_ptes * sizeof(u32));

Applied both, thanks

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
