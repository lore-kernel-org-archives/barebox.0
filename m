Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIYvO-0008Ih-HI
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 08:33:35 +0000
Date: Tue, 3 Feb 2015 09:33:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150203083312.GK18908@pengutronix.de>
References: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 1/2] ARM: pxa: add pxa25x support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Jan 26, 2015 at 10:33:46PM +0100, Robert Jarzmik wrote:
> Add support for the PXA25X SoC family, the oldest of the PXA serie.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  arch/arm/mach-pxa/Kconfig                    | 21 +++++++++++
>  arch/arm/mach-pxa/Makefile                   |  1 +
>  arch/arm/mach-pxa/include/mach/pxa-regs.h    |  2 ++
>  arch/arm/mach-pxa/include/mach/pxa25x-regs.h |  6 ++++
>  arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |  1 +
>  arch/arm/mach-pxa/mfp-pxa2xx.c               |  4 ++-
>  arch/arm/mach-pxa/sleep.S                    |  2 +-
>  arch/arm/mach-pxa/speed-pxa25x.c             | 54 ++++++++++++++++++++++++++++
>  8 files changed, 89 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/mach-pxa/include/mach/pxa25x-regs.h
>  create mode 100644 arch/arm/mach-pxa/speed-pxa25x.c
> 
> diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
> index b36e720..a45e01a 100644
> --- a/arch/arm/mach-pxa/Kconfig
> +++ b/arch/arm/mach-pxa/Kconfig
> @@ -22,6 +22,10 @@ config ARCH_PXA310
>  choice
>  	prompt "Intel/Marvell PXA Processor"
>  
> +config ARCH_PXA25X
> +	bool "PXA25x"
> +	select ARCH_PXA2XX
> +

Changes like this can unintentionally change defconfigs. In this case
the existing pcm027 and mioa701 defconfigs now default to ARCH_PXA25X
and no longer build for the correct board anymore. Fixed that up by
adding "CONFIG_ARCH_PXA27X=y" to the defconfig files.

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
