Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jt4nw-00032s-NC
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 07:47:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jul 2020 09:47:34 +0200
Message-Id: <20200708074739.359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/5] treewide: delete code referencing unused headers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Found by manual inspection of the output of following command:

find . -name '*.[ch]' -exec egrep -H -o '^\s*#include <.*\.h>' {} \; | \
  perl -ne '/(.*):#include\s*<(.*)>/; print "$1: $2\n" unless -f "include/$2";' | \
  egrep -v ': (asm|dt-bindings|mach|generated|config\.h)' | egrep -v ^./scripts | \
  egrep -v ^./arch/sandbox/os

Ahmad Fatoum (5):
  ppc: mpc5xxx: delete dead code
  include: delete unreferenced u-boot part.h header
  lib: list_sort: delete dead code
  commands: dhrystone: remove unneeded and out-of-place <stdbool.h>
  lib: lzo: drop unused compression code

 arch/powerpc/mach-mpc5xxx/Makefile            |   5 -
 .../mach-mpc5xxx/firmware_sc_task.impl.S      | 364 ------------------
 arch/powerpc/mach-mpc5xxx/io.S                | 121 ------
 arch/powerpc/mach-mpc5xxx/pci_mpc5200.c       | 180 ---------
 commands/dhrystone.c                          |   1 -
 include/part.h                                | 104 -----
 lib/list_sort.c                               | 149 -------
 lib/lzo/Kconfig                               |   4 -
 lib/lzo/Makefile                              |   3 -
 lib/lzo/lzo1x_compress.c                      | 279 --------------
 10 files changed, 1210 deletions(-)
 delete mode 100644 arch/powerpc/mach-mpc5xxx/firmware_sc_task.impl.S
 delete mode 100644 arch/powerpc/mach-mpc5xxx/io.S
 delete mode 100644 arch/powerpc/mach-mpc5xxx/pci_mpc5200.c
 delete mode 100644 include/part.h
 delete mode 100644 lib/lzo/lzo1x_compress.c

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
