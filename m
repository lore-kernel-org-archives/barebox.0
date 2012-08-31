Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7M0l-00064i-3c
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 07:51:31 +0000
Date: Fri, 31 Aug 2012 09:51:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120831075111.GP26594@pengutronix.de>
References: <1346322594-21167-1-git-send-email-a.aring@phytec.de>
 <1346322594-21167-4-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346322594-21167-4-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 3/5] barebox-data: add barebox-data sections
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 30, 2012 at 12:29:52PM +0200, Alexander Aring wrote:
> Add barebox-data section in arm branch to get complete
> barebox regions in sdram regions tree.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  arch/arm/lib/barebox.lds.S                       |    6 +++++-
>  arch/blackfin/boards/ipe337/barebox.lds.S        |    6 +++++-
>  arch/mips/lib/barebox.lds.S                      |    5 ++++-
>  arch/nios2/cpu/barebox.lds.S                     |    5 +++--
>  arch/ppc/boards/freescale-p2020rdb/barebox.lds.S |    6 ++++--
>  arch/ppc/boards/pcm030/barebox.lds.S             |    5 +++--
>  arch/x86/lib/barebox.lds.S                       |    5 ++++-
>  common/memory.c                                  |    4 ++++
>  include/asm-generic/sections.h                   |    1 +
>  9 files changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> index e0bae70..ae0b760 100644
> --- a/arch/arm/lib/barebox.lds.S
> +++ b/arch/arm/lib/barebox.lds.S
> @@ -70,7 +70,9 @@ SECTIONS
>  		__stop_unwind_tab = .;
>  	}
>  #endif
> -	_etext = .;			/* End of text and rodata section */
> +	_etext = . - 1;			/* End of text and rodata section */

I am not sure this is a good idea. Looking at it this indeed seems to be
correct. Anyway, at least in the Linux kernel I can find things like:

	codesize = (unsigned long)_etext - (unsigned long)_text;

If we have _etext = . the above results in the correct codesize, but if
we change this to _etext = . - 1 we would have to do

	codesize = (unsigned long)_etext - (unsigned long)_text + 1;

instead.

Everyone else including the kernel and the standard linker scripts from
ld have _etext = .; so I vote for keeping it that way.


> @@ -83,6 +85,8 @@ SECTIONS
>  	__usymtab : { BAREBOX_SYMS }
>  	___usymtab_end = .;
>  
> +	_edata - . -1;

s/-/=/

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
