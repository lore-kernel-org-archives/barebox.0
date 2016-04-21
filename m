Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atEZP-00026s-8l
 for barebox@lists.infradead.org; Thu, 21 Apr 2016 13:23:01 +0000
Date: Thu, 21 Apr 2016 15:22:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160421132233.GH21638@pengutronix.de>
References: <1461238228-3483-1-git-send-email-do_not_rep1y@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461238228-3483-1-git-send-email-do_not_rep1y@163.com>
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
Subject: Re: [PATCH] whole tree: remove trail space
To: DU HUANPENG <do_not_rep1y@163.com>
Cc: barebox@lists.infradead.org, Du Huanpeng <u74147@gmail.com>

On Thu, Apr 21, 2016 at 07:30:28PM +0800, DU HUANPENG wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   2 +-
>  arch/arm/boards/freescale-mx21-ads/imx21ads.c     |   4 +-
>  arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   2 +-
>  arch/arm/boards/freescale-mx27-ads/imx27ads.c     |   2 +-
>  arch/arm/boards/phytec-phycard-imx27/pca100.c     |   2 +-
>  arch/arm/boards/phytec-phycore-imx27/pcm038.c     |   2 +-
>  arch/arm/include/asm/elf.h                        |   4 +-
>  arch/arm/mach-netx/clocksource.c                  |   2 +-
>  arch/arm/mach-socfpga/include/mach/sequencer.c    | 438 +++++++++++-----------
>  arch/blackfin/cpu-bf561/start.S                   |  14 +-
>  arch/blackfin/include/asm/cpu/cdefBF561.h         |   4 +-
>  arch/blackfin/include/asm/cpu/defBF561.h          | 332 ++++++++--------
>  arch/blackfin/lib/udivsi3.S                       |   2 +-
>  arch/nios2/lib/longlong.h                         |   2 +-
>  arch/ppc/include/asm/elf.h                        |  20 +-
>  common/module.c                                   |   2 +-
>  common/tlsf.c                                     |   6 +-
>  crypto/digest.c                                   |   2 +-
>  crypto/sha2.c                                     |   2 +-
>  drivers/net/altera_tse.c                          |   2 +-
>  drivers/net/fec_imx.h                             |   2 +-
>  drivers/net/smc911x.h                             |   2 +-
>  drivers/spi/imx_spi.c                             |   2 +-
>  fs/cramfs/cramfs.c                                |   2 +-
>  fs/ubifs/super.c                                  |   2 +-
>  fs/ubifs/ubifs.h                                  |   2 +-
>  include/elf.h                                     |   2 +-
>  include/fb.h                                      |   4 +-
>  include/linux/mount.h                             |   2 +-
>  include/linux/rbtree.h                            |   4 +-
>  lib/glob.c                                        |   2 +-
>  lib/rbtree.c                                      |   4 +-
>  32 files changed, 438 insertions(+), 438 deletions(-)

Applied, thanks

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
