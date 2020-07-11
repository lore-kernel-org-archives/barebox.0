Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju74p-0003zH-C6
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:25:28 +0000
Date: Sat, 11 Jul 2020 06:25:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711042525.GL15485@pengutronix.de>
References: <20200708074739.359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708074739.359-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/5] treewide: delete code referencing unused headers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2020 at 09:47:34AM +0200, Ahmad Fatoum wrote:
> Found by manual inspection of the output of following command:
> 
> find . -name '*.[ch]' -exec egrep -H -o '^\s*#include <.*\.h>' {} \; | \
>   perl -ne '/(.*):#include\s*<(.*)>/; print "$1: $2\n" unless -f "include/$2";' | \
>   egrep -v ': (asm|dt-bindings|mach|generated|config\.h)' | egrep -v ^./scripts | \
>   egrep -v ^./arch/sandbox/os
> 
> Ahmad Fatoum (5):
>   ppc: mpc5xxx: delete dead code
>   include: delete unreferenced u-boot part.h header
>   lib: list_sort: delete dead code
>   commands: dhrystone: remove unneeded and out-of-place <stdbool.h>
>   lib: lzo: drop unused compression code

Applied, thanks

Sascha

> 
>  arch/powerpc/mach-mpc5xxx/Makefile            |   5 -
>  .../mach-mpc5xxx/firmware_sc_task.impl.S      | 364 ------------------
>  arch/powerpc/mach-mpc5xxx/io.S                | 121 ------
>  arch/powerpc/mach-mpc5xxx/pci_mpc5200.c       | 180 ---------
>  commands/dhrystone.c                          |   1 -
>  include/part.h                                | 104 -----
>  lib/list_sort.c                               | 149 -------
>  lib/lzo/Kconfig                               |   4 -
>  lib/lzo/Makefile                              |   3 -
>  lib/lzo/lzo1x_compress.c                      | 279 --------------
>  10 files changed, 1210 deletions(-)
>  delete mode 100644 arch/powerpc/mach-mpc5xxx/firmware_sc_task.impl.S
>  delete mode 100644 arch/powerpc/mach-mpc5xxx/io.S
>  delete mode 100644 arch/powerpc/mach-mpc5xxx/pci_mpc5200.c
>  delete mode 100644 include/part.h
>  delete mode 100644 lib/lzo/lzo1x_compress.c
> 
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
