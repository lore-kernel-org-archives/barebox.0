Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f175.google.com ([209.85.215.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3YCK-0004B3-N8
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 20:35:57 +0000
Received: by mail-ea0-f175.google.com with SMTP id d1so1340083eab.6
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 12:35:54 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 21:36:16 +0100
Message-Id: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] Small fixes in barebox
To: barebox@lists.infradead.org

First I tried to change getopt optstring argument to "const char *"
and I test it with an allyesconfig for compiler warnings.

Then there popup some compile errors, which I tried to fix.

I am not happy with some of these solutions. Maybe someone have an idea
how we can make it better.

hush: add getopt only if it enabled
 - I don't know if this needs a fix. But if we disable getopt there is a
   no-op getopt implementation in the command list. This patch don't add
   getopt to the command list at runtime, but the no-op implementation is
   still there. Maybe a compiletime solution is better to remove the
   no-op implementation.

sata-imx: fix depends on ARCH_IMX
 - I am not sure but this looks like ARCH_IMX related things. I got a error
   that some imx51 header files could'nt be found.

net: fix cpsw depends on ARCH_OMAP
 - Same thing like sata-imx. I got a compile error that mach/cpsw.h wasn't
   found. I only found that in the omap implementation.


Another (maybe toolchain related issue) is:
barebox/lib/libubigen.c:105: undefined reference to `__divdi3'

Is it in this line:

tmp = (vi->bytes + ui->leb_size - 1) / ui->leb_size;

If we know that ui->leb_size is a power-of-two, we can use a shift for this
instead of division. But I don't know if leb_size a power-of-two number.

Alexander Aring (4):
  hush: add getopt only if it enabled
  getopt: change optstring to const char*
  sata-imx: fix depends on ARCH_IMX
  net: fix cpsw depends on ARCH_OMAP

 common/hush.c       | 3 ++-
 drivers/ata/Kconfig | 1 +
 drivers/net/Kconfig | 1 +
 include/getopt.h    | 2 +-
 lib/getopt.c        | 4 ++--
 5 files changed, 7 insertions(+), 4 deletions(-)

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
