Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003iq-RI
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:09 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001wx-B1
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWx-0000AG-TV
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:34 +0100
Message-Id: <20181129113048.31857-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 01/15] Makefile: replace LINUXINCLUDE with BAREBOXINCLUDE
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 10e1b74a6d60..dedb16d60069 100644
--- a/Makefile
+++ b/Makefile
@@ -295,15 +295,15 @@ LDFLAGS_MODULE  = -T common/module.lds
 # even be read-only.
 export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_versions
 
-# Use LINUXINCLUDE when you must reference the include/ directory.
+# Use BAREBOXINCLUDE when you must reference the include/ directory.
 # Needed to be compatible with the O= option
-LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
+BAREBOXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
                    $(if $(KBUILD_SRC), -I$(srctree)/include) \
 		   -I$(srctree)/arch/$(ARCH)/include \
 		   -I$(objtree)/arch/$(ARCH)/include \
                    -include $(srctree)/include/linux/kconfig.h
 
-CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
+CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(BAREBOXINCLUDE) -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -Werror-implicit-function-declaration \
@@ -324,7 +324,7 @@ export ARCH SRCARCH CONFIG_SHELL HOSTCC HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL UTS_MACHINE
 export HOSTCXX HOSTCXXFLAGS HOSTLDFLAGS HOST_LOADLIBES LDFLAGS_MODULE CHECK CHECKFLAGS
 
-export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
+export CPPFLAGS NOSTDINC_FLAGS BAREBOXINCLUDE OBJCOPYFLAGS LDFLAGS
 export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
 export LDFLAGS_barebox
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
