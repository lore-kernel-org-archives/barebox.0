Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjFt1-0007cf-32
 for barebox@lists.infradead.org; Sat, 10 May 2014 22:36:55 +0000
Received: by mail-wg0-f44.google.com with SMTP id a1so5267223wgh.3
 for <barebox@lists.infradead.org>; Sat, 10 May 2014 15:36:31 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Sun, 11 May 2014 00:36:28 +0200
Message-Id: <1399761388-1984-1-git-send-email-franck.jullien@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Kconfig: Fix menuconfig build
To: barebox@lists.infradead.org

Using Centos 6.5 with x86_64 architecture, "make menuconfig" commands
results in the following:

  HOSTLD  scripts/kconfig/mconf
/opt/centos/devtoolset-1.1/root/usr/libexec/gcc/x86_64-redhat-linux/4.7.2/ld:
scripts/kconfig/lxdialog/checklist.o: undefined reference to symbol
'acs_map'
/opt/centos/devtoolset-1.1/root/usr/libexec/gcc/x86_64-redhat-linux/4.7.2/ld:
note: 'acs_map' is defined in DSO /lib64/libtinfo.so.5 so try adding it
to the linker command line
/lib64/libtinfo.so.5: could not read symbols: invalid operation
collect2: error: ld returned 1 exit status
make[1]: *** [scripts/kconfig/mconf] Error 1
make: *** [menuconfig] Error 2

When "-ltinfo" is added to the LDFLAGS symbol as suggested by the linker,
it builds and runs correctly.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 scripts/kconfig/Makefile |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 844bc9d..8bdd7bc 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -218,6 +218,7 @@ HOSTCFLAGS_gconf.o	= `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
                           -Wno-missing-prototypes
 
 HOSTLOADLIBES_mconf   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
+HOSTLOADLIBES_mconf += -ltinfo
 
 HOSTLOADLIBES_nconf	= $(shell \
 				pkg-config --libs menu panel ncurses 2>/dev/null \
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
