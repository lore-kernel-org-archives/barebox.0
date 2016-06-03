Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8kV6-0002q7-3A
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 08:30:41 +0000
Date: Fri, 3 Jun 2016 10:30:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160603083018.GW31666@pengutronix.de>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-12-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464854818-28653-12-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 11/12] arm: cpu: add basic arm64 mmu support
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 02, 2016 at 10:06:57AM +0200, Raphael Poggi wrote:
> This commit adds basic mmu support, ie:
>         - DMA cache handling is not supported
>         - Remapping memory region also
> 
> The current mmu setting is:
>         - 4KB granularity
>         - 3 level lookup (skipping L0)
>         - 33 bits per VA
> 
> This is based on coreboot and u-boot mmu configuration.
> 
> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/cpu/Makefile          |   7 +-
>  arch/arm/cpu/mmu.h             | 160 ++++++++++++++++++++
>  arch/arm/cpu/mmu_64.c          | 335 +++++++++++++++++++++++++++++++++++++++++
>  arch/arm/include/asm/mmu.h     |   4 +-
>  arch/arm/include/asm/pgtable.h |   8 +
>  5 files changed, 509 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/cpu/mmu_64.c
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 95a2b00..e2def01 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -2,8 +2,11 @@ obj-y += cpu.o
>  
>  ifeq ($(CONFIG_CPU_64v8), y)
>  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_64.o
> +obj-$(CONFIG_MMU) += mmu_64.o
>  else
>  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
> +obj-$(CONFIG_MMU) += mmu.o mmu-early.o
> +pbl-$(CONFIG_MMU) += mmu-early.o
>  endif
>  
>  obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
> @@ -19,8 +22,8 @@ endif
>  obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
>  obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
>  obj-$(CONFIG_OFDEVICE) += dtb.o
> -obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
> -pbl-$(CONFIG_MMU) += mmu-early.o
> +obj-$(CONFIG_MMU) += cache.o
> +
>  ifeq ($(CONFIG_MMU),)
>  obj-y += no-mmu.o
>  endif
> diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
> index 79ebc80..bcc0e2d 100644
> --- a/arch/arm/cpu/mmu.h
> +++ b/arch/arm/cpu/mmu.h
> @@ -1,6 +1,166 @@
>  #ifndef __ARM_MMU_H
>  #define __ARM_MMU_H
>  
> +#ifdef CONFIG_CPU_64v8
> +
> +#define UL(x)		_AC(x, UL)
> +
> +#define UNUSED_DESC                0x6EbAAD0BBADbA6E0
> +
> +#define VA_START                   0x0
> +#define BITS_PER_VA                33
> +
> +/* Granule size of 4KB is being used */
> +#define GRANULE_SIZE_SHIFT         12
> +#define GRANULE_SIZE               (1 << GRANULE_SIZE_SHIFT)
> +#define XLAT_ADDR_MASK             ((1UL << BITS_PER_VA) - GRANULE_SIZE)
> +#define GRANULE_SIZE_MASK          ((1 << GRANULE_SIZE_SHIFT) - 1)
> +
> +#define BITS_RESOLVED_PER_LVL   (GRANULE_SIZE_SHIFT - 3)
> +#define L1_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 2)
> +#define L2_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 1)
> +#define L3_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 0)
> +
> +
> +#define L1_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L1_ADDR_SHIFT)
> +#define L2_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L2_ADDR_SHIFT)
> +#define L3_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L3_ADDR_SHIFT)
> +
> +/* These macros give the size of the region addressed by each entry of a xlat
> +   table at any given level */
> +#define L3_XLAT_SIZE               (1UL << L3_ADDR_SHIFT)
> +#define L2_XLAT_SIZE               (1UL << L2_ADDR_SHIFT)
> +#define L1_XLAT_SIZE               (1UL << L1_ADDR_SHIFT)
> +
> +#define GRANULE_MASK	GRANULE_SIZE
> +
> +/*
> + * Memory types
> + */
> +#define MT_DEVICE_NGNRNE	0
> +#define MT_DEVICE_NGNRE		1
> +#define MT_DEVICE_GRE		2
> +#define MT_NORMAL_NC		3
> +#define MT_NORMAL		4
> +
> +#define MEMORY_ATTRIBUTES	((0x00 << (MT_DEVICE_NGNRNE*8)) |	\
> +		(0x04 << (MT_DEVICE_NGNRE*8)) |		\
> +		(0x0c << (MT_DEVICE_GRE*8)) |		\
> +		(0x44 << (MT_NORMAL_NC*8)) |		\
> +		(UL(0xff) << (MT_NORMAL*8)))
> +
> +/*
> + * Hardware page table definitions.
> + *
> + * Level 2 descriptor (PMD).
> + */
> +#define PMD_TYPE_MASK		(3 << 0)
> +#define PMD_TYPE_FAULT		(0 << 0)
> +#define PMD_TYPE_TABLE		(3 << 0)
> +#define PMD_TYPE_PAGE		(3 << 0)
> +#define PMD_TYPE_SECT		(1 << 0)
> +
> +/*
> + * Section
> + */
> +#define PMD_SECT_NON_SHARE	(0 << 8)
> +#define PMD_SECT_OUTER_SHARE	(2 << 8)
> +#define PMD_SECT_INNER_SHARE	(3 << 8)
> +#define PMD_SECT_AF		(1 << 10)
> +#define PMD_SECT_NG		(1 << 11)
> +#define PMD_SECT_PXN		(UL(1) << 53)
> +#define PMD_SECT_UXN		(UL(1) << 54)
> +
> +/*
> + * AttrIndx[2:0]
> + */
> +#define PMD_ATTRINDX(t)		((t) << 2)
> +#define PMD_ATTRINDX_MASK	(7 << 2)
> +
> +/*
> + * TCR flags.
> + */
> +#define TCR_T0SZ(x)		((64 - (x)) << 0)
> +#define TCR_IRGN_NC		(0 << 8)
> +#define TCR_IRGN_WBWA		(1 << 8)
> +#define TCR_IRGN_WT		(2 << 8)
> +#define TCR_IRGN_WBNWA		(3 << 8)
> +#define TCR_IRGN_MASK		(3 << 8)
> +#define TCR_ORGN_NC		(0 << 10)
> +#define TCR_ORGN_WBWA		(1 << 10)
> +#define TCR_ORGN_WT		(2 << 10)
> +#define TCR_ORGN_WBNWA		(3 << 10)
> +#define TCR_ORGN_MASK		(3 << 10)
> +#define TCR_SHARED_NON		(0 << 12)
> +#define TCR_SHARED_OUTER	(2 << 12)
> +#define TCR_SHARED_INNER	(3 << 12)
> +#define TCR_TG0_4K		(0 << 14)
> +#define TCR_TG0_64K		(1 << 14)
> +#define TCR_TG0_16K		(2 << 14)
> +#define TCR_EL1_IPS_BITS	(UL(3) << 32)	/* 42 bits physical address */
> +#define TCR_EL2_IPS_BITS	(3 << 16)	/* 42 bits physical address */
> +#define TCR_EL3_IPS_BITS	(3 << 16)	/* 42 bits physical address */
> +
> +#define TCR_EL1_RSVD		(1 << 31)
> +#define TCR_EL2_RSVD		(1 << 31 | 1 << 23)
> +#define TCR_EL3_RSVD		(1 << 31 | 1 << 23)
> +
> +#define TCR_FLAGS		(TCR_TG0_4K | \
> +		TCR_SHARED_OUTER | \
> +		TCR_SHARED_INNER | \
> +		TCR_IRGN_WBWA | \
> +		TCR_ORGN_WBWA | \
> +		TCR_T0SZ(BITS_PER_VA))
> +
> +#define MEMORY_ATTR     (PMD_SECT_AF | PMD_SECT_INNER_SHARE |    \
> +		PMD_ATTRINDX(MT_NORMAL) |       \
> +		PMD_TYPE_SECT)

For arm32 we have these defines in arch/arm/include/asm/pgtable.h, so
for arm64 they should probably live in arch/arm/include/asm/pgtable64.h.

> diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
> index fd1521d..7ae33de 100644
> --- a/arch/arm/include/asm/pgtable.h
> +++ b/arch/arm/include/asm/pgtable.h
> @@ -18,8 +18,16 @@
>   */
>  #define PMD_TYPE_MASK		(3 << 0)
>  #define PMD_TYPE_FAULT		(0 << 0)
> +
> +#ifdef CONFIG_CPU_64v8
> +#define PMD_TYPE_TABLE		(3 << 0)
> +#define PMD_TYPE_PAGE		(3 << 0)
> +#define PMD_TYPE_SECT		(1 << 0)
> +#else
>  #define PMD_TYPE_TABLE		(1 << 0)
>  #define PMD_TYPE_SECT		(2 << 0)
> +#endif
> +
>  #define PMD_BIT4		(1 << 4)
>  #define PMD_DOMAIN(x)		((x) << 5)
>  #define PMD_PROTECTION		(1 << 9)	/* v5 */

Maybe we have to create a arch/arm/include/asm/pgtable32.h aswell and
only leave the common stuff in arch/arm/include/asm/pgtable.h? I don't
know how much of arch/arm/include/asm/pgtable.h is used for arm64.

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
