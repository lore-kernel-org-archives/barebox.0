Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tugi3-00073l-11
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 09:52:03 +0000
Date: Mon, 14 Jan 2013 10:51:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130114095159.GE1906@pengutronix.de>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
 <1358098943-18928-8-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358098943-18928-8-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 7/9] barebox-data: add barebox-data sections
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org, marc@cpdesign.com

On Sun, Jan 13, 2013 at 06:42:21PM +0100, Alexander Aring wrote:
> Add barebox-data section in arm branch to get complete
> barebox regions in sdram regions tree.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  arch/arm/lib/barebox.lds.S                       | 6 +++++-
>  arch/blackfin/boards/ipe337/barebox.lds.S        | 6 +++++-
>  arch/mips/lib/barebox.lds.S                      | 5 ++++-
>  arch/nios2/cpu/barebox.lds.S                     | 5 +++--
>  arch/ppc/boards/freescale-p2020rdb/barebox.lds.S | 6 ++++--
>  arch/ppc/boards/pcm030/barebox.lds.S             | 5 +++--
>  arch/x86/lib/barebox.lds.S                       | 5 ++++-
>  common/memory.c                                  | 4 ++++
>  include/asm-generic/sections.h                   | 1 +
>  9 files changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> index bac1a04..6cad804 100644
> --- a/arch/arm/lib/barebox.lds.S
> +++ b/arch/arm/lib/barebox.lds.S
> @@ -65,7 +65,9 @@ SECTIONS
>  		__stop_unwind_tab = .;
>  	}
>  #endif
> -	_etext = .;			/* End of text and rodata section */
> +	_etext = . - 1;			/* End of text and rodata section */

Is this correct? In 2/9 you explained that etext points to the next free
memory location rather than to the last byte in the text segment. 2/9
fixes the request_sdram_region call accordingly. Now it is changed to be
the last byte of the text segment?

> +
> +	_sdata = .;
>  
>  	. = ALIGN(4);
>  	.data : { *(.data*) }
> @@ -87,6 +89,8 @@ SECTIONS
>  	__usymtab : { BAREBOX_SYMS }
>  	__usymtab_end = .;
>  
> +	_edata = . - 1;

Should probably also be _edata = .;

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
