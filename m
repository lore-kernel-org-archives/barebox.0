Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPqDn-0003c2-1e
 for barebox@lists.infradead.org; Thu, 03 May 2012 07:13:04 +0000
Date: Thu, 3 May 2012 09:13:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120503071301.GH13302@pengutronix.de>
References: <1335864363-18383-1-git-send-email-renaud.barbier@ge.com>
 <1335864363-18383-4-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335864363-18383-4-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V4 3/4] Header files update to support the mpc85xx.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, May 01, 2012 at 10:26:02AM +0100, Renaud Barbier wrote:
> The introduction of the new CPU architecture and board support
> leads to the update of existing header files. Are added:
>  - functions and macros to manipulate bits of registers field values.
>  - external declaration of cache handling functions to prevent
>    compilation warnings.
>  - new processor definitions.
>  - macros (in replacement of existing definitions) to set 85xx TLB
>    registers.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/include/asm/bitops.h    |   42 +++++++++++++++++++++++
>  arch/ppc/include/asm/cache.h     |    2 +
>  arch/ppc/include/asm/common.h    |    1 +
>  arch/ppc/include/asm/io.h        |   20 +++++++++++
>  arch/ppc/include/asm/mmu.h       |   69 +++++++++++++++++++++++++++++++++----
>  arch/ppc/include/asm/processor.h |   44 ++++++++++++++++++++++++
>  include/linux/types.h            |    2 +
>  7 files changed, 172 insertions(+), 8 deletions(-)
> 

> +#ifdef CONFIG_E500
> +#ifndef __ASSEMBLY__
> +extern void set_tlb(u8 tlb, u32 epn, u64 rpn,
> +		u8 perms, u8 wimge,
> +		u8 ts, u8 esel, u8 tsize, u8 iprot);
> +extern void disable_tlb(u8 esel);
> +extern void invalidate_tlb(u8 tlb);
> +extern void init_tlbs(void);
> +extern int find_tlb_idx(void *addr, u8 tlbsel);
> +extern void init_used_tlb_cams(void);
> +
> +extern unsigned int setup_ddr_tlbs(unsigned int memsize_in_meg);
> +extern void write_tlb(u32 _mas0, u32 _mas1, u32 _mas2, u32 _mas3, u32 _mas7);
> +
> +#define SET_TLB_ENTRY(_tlb, _epn, _rpn, _perms, _wimge, _ts, _esel, _sz,\
> +			_iprot) \
> +	{ .mas0 = FSL_BOOKE_MAS0(_tlb, _esel, 0), \
> +	  .mas1 = FSL_BOOKE_MAS1(1, _iprot, 0, _ts, _sz), \
> +	  .mas2 = FSL_BOOKE_MAS2(_epn, _wimge), \
> +	  .mas3 = FSL_BOOKE_MAS3(_rpn, 0, _perms), \
> +	  .mas7 = FSL_BOOKE_MAS7(_rpn), }
> +
> +struct fsl_e_tlb_entry {
> +	u32	mas0;
> +	u32	mas1;
> +	u32	mas2;
> +	u32	mas3;
> +	u32	mas7;
> +};
> +extern struct fsl_e_tlb_entry tlb_table[];
> +extern int num_tlb_entries;
> +#endif
> +#endif

Please move such declarations which are really only for mpc85xx to some
header file under arch/ppc/*85xx/ and add a mpc85xx (or e500? I'm not
very familiar with PowerPC) prefix to the function names. Also these
functions are added (and used) in an earlier patch, so the declarations
should be there aswell.

As far as I can see some other functions also have quite a generic name
but are really mpc85xx specific.

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
