Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5Km-0006QM-TX
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:09:33 +0000
Date: Sun, 5 Jul 2020 16:09:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705140931.GO15485@pengutronix.de>
References: <20200702152507.13694-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702152507.13694-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] x86: Kconfig: specify sizeof(dma_addr_t) == 8 for
 64BIT
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 02, 2020 at 05:25:05PM +0200, Ahmad Fatoum wrote:
> This shouldn't introduce any functional change, because we don't yet do
> any DMA on EFI. For now it suppresses warnings about mismatched pointer
> and integer sizes when compile testing.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/x86/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 19009442a4d7..0e3e5d61872a 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -25,6 +25,7 @@ menu "ARCH specific settings"
>  
>  config 64BIT
>  	def_bool y if X86_EFI
> +	select ARCH_DMA_ADDR_T_64BIT
>  	help
>  	  Say yes to build a 64-bit binary - formerly known as x86_64
>  	  Say no to build a 32-bit binary - formerly known as i386.
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
