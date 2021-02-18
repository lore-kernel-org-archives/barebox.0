Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCfYN-0004Ey-O8
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 09:24:56 +0000
Date: Thu, 18 Feb 2021 10:24:53 +0100
Message-ID: <20210218092453.GC4207@pengutronix.de>
References: <20210216185737.10621-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216185737.10621-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/4] treewide: include <linux/math64.h> wrapper instead
 of <asm-generic/div64.h>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2021 at 07:57:34PM +0100, Ahmad Fatoum wrote:
> <asm-generic/div64.h> isn't meant for direct usage as <asm/div64.h> may
> override this on a per-architecture basis. We don't do that currently,
> but in the future we might. Include the <linux/math64.h> instead.
> 
> No functional change.

This breaks rk3188_defconfig:

config:     arm              rk3188_defconfig
In file included from drivers/clk/rockchip/clk-pll.c:7:
include/linux/math64.h:303:8: error: unknown type name '__always_inline'
  303 | static __always_inline u32
      |        ^~~~~~~~~~~~~~~
include/linux/math64.h:304:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '__iter_div_u64_rem'
  304 | __iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
      | ^~~~~~~~~~~~~~~~~~
make[3]: *** [/ptx/work/WORK_EIHEI/sha/backup/barebox/barebox-maintainer-utils/barebox/scripts/Makefile.build:141: drivers/clk/rockchip/clk-pll.o] Error 1
make[3]: *** Waiting for unfinished jobs....
make[2]: *** [/ptx/work/WORK_EIHEI/sha/backup/barebox/barebox-maintainer-utils/barebox/scripts/Makefile.build:275: drivers/clk/rockchip] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/ptx/work/WORK_EIHEI/sha/backup/barebox/barebox-maintainer-utils/barebox/scripts/Makefile.build:275: drivers/clk] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:925: drivers] Error 2
make: *** Waiting for unfinished jobs....

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
