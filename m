Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdG1r-0001v1-Ky
 for barebox@lists.infradead.org; Fri, 17 May 2013 08:28:44 +0000
Date: Fri, 17 May 2013 10:28:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130517082821.GX20989@pengutronix.de>
References: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1368537296-19610-3-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368537296-19610-3-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH 3/3] ARM v7: added v7_mmu_cache_invalidate()
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, May 14, 2013 at 03:14:56PM +0200, Enrico Scholz wrote:
> At least the iMX6 boot rom seems to jump into barebox with a non
> invalidated d-cache which causes data corruption when
> v7_mmu_cache_flush() executed by arm_early_mmu_cache_flush() overrides
> stack or other valid data.
> 
> That's why the cache must be invalided for this processors explicitly
> (e.g. in barebox_arm_reset_vector()).  Operation differs from flush only
> in one instruction so that patch modifies the existing
> v7_mmu_cache_flush() function slightly by adding an optional argument.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/cpu/cache-armv7.S | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
> index 5595cf6..84c833e 100644
> --- a/arch/arm/cpu/cache-armv7.S
> +++ b/arch/arm/cpu/cache-armv7.S
> @@ -57,7 +57,17 @@ ENTRY(v7_mmu_cache_off)
>  ENDPROC(v7_mmu_cache_off)
>  
>  .section .text.v7_mmu_cache_flush
> +ENTRY(v7_mmu_cache_invalidate)
> +		mov	r0, #1
> +		b	_v7_mmu_cache_flush
> +ENDPROC(v7_mmu_cache_invalidate)
> +
>  ENTRY(v7_mmu_cache_flush)
> +		mov	r0, #0
> +		b	_v7_mmu_cache_flush
> +ENDPROC(v7_mmu_cache_flush)
> +
> +ENTRY(_v7_mmu_cache_flush)

I renamed this to __v7_mmu_cache_flush_invalidate while applying since
this function now does one of these operations depending on r0.

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
