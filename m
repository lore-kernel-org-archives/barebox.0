Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8mHx-0004kT-PG
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 07:43:54 +0000
Date: Thu, 30 Jan 2014 08:43:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140130074330.GP16215@pengutronix.de>
References: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/3] DA923RC: enable UBIFS support to allow firmware
 flash booting
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 29, 2014 at 11:06:49AM +0000, Renaud Barbier wrote:
> UBI/UBIFS are enabled for the DA923RC board to load and boot images from
> the NOR flash storage. As images may be loaded through a symlink, the
> readlink entry point is implemented in the UBIFS driver support.
> 
> ppc bit operations header files are updated as they are in conflict with
> main header files when UBIFS is enabled.
> 
> Renaud Barbier (3):
>   ppc: remove bit operation headers file conflict
>   UBIFS: implement readlink entry point
>   DA923RC: enable UBI/UBIFS configuration

Applied this series, thanks

Sascha

> 
>  arch/ppc/boards/geip-da923rc/env/bin/init  |   12 +++++++
>  arch/ppc/configs/da923rc_defconfig         |    6 ++++
>  arch/ppc/cpu-85xx/tlb.c                    |    2 +-
>  arch/ppc/include/asm/bitops.h              |   46 +--------------------------
>  arch/ppc/mach-mpc85xx/fsl_law.c            |    1 +
>  arch/ppc/mach-mpc85xx/include/mach/ffs64.h |   20 ++++++++++++
>  fs/ubifs/ubifs.c                           |   38 +++++++++++++++++++++++
>  7 files changed, 80 insertions(+), 45 deletions(-)
>  create mode 100644 arch/ppc/mach-mpc85xx/include/mach/ffs64.h
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
