Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDV4-00031W-Dp
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:15:55 +0000
Date: Mon, 23 Apr 2012 09:15:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120423071547.GC3852@pengutronix.de>
References: <20120415145953.GK3852@pengutronix.de>
 <1334913691-13315-2-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334913691-13315-2-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V3 1/3] Preparation stage to support multiple PPC
 architectures
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 20, 2012 at 10:21:29AM +0100, Renaud Barbier wrote:
> arch/ppc/Kconfig is reworked to make the configuration environment
> architecture neutral. All MPC5200 configuration is moved to the
> MPC5200 architecture specific configuration file. These modifications
> are reflected in the PCM030 board support.
> 
> arch/ppc/Makefile compilation directives are updated in preparation
> for the introduction of future cpus/machines.
> 
> lib/time.c is moved to an architecture specific version and the
> building instructions updated in the Makefile. The file
> now named time-mpc5200.c is cleaned up of unused code.
> 
> The definition of L1_CACHE_... is updated and CACHELINE_SIZE is
> defined in ppc/include/asm/cache.h for future use by the mpc85xx.
> The file mach-mpc5xxx/pci_mpc5200.c and mach-mpc5xxx/start.S are
> updated accordingly.
> 
> The declaration of search_exception_table is moved in
> include/asm/common.h because it is used across architectures.
> mach-mpc5xxx/traps.c is also updated to reflect this change.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/Kconfig                        |   42 +++---------------------------
>  arch/ppc/Makefile                       |   19 ++++++++-----
>  arch/ppc/configs/pcm030_defconfig       |    3 ++
>  arch/ppc/include/asm/cache.h            |   17 +++++-------
>  arch/ppc/include/asm/common.h           |    1 +
>  arch/ppc/lib/Makefile                   |    2 +-
>  arch/ppc/lib/{time.c => time-mpc5200.c} |   27 ++-----------------

Since this function will be mpc5xxx only can you move it to
mach-mpc5xxx/time.c please?

Otherwise this patch looks fine, I'll apply it once this one is fixed.

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
