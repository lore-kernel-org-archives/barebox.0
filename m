Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOz4-00024Q-VZ
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:32 +0000
Received: by mail-qk1-x742.google.com with SMTP id b4so767800qkn.11
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:30 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:43:57 -0400
Message-Id: <20200617034404.5904-2-dgienda125@gmail.com>
In-Reply-To: <20200617034404.5904-1-dgienda125@gmail.com>
References: <20200617034404.5904-1-dgienda125@gmail.com>
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
Subject: [RFC PATCH 1/8] Makefile: Initialize and export KBUILD variables
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Initialize and export KBUILD KERNEL and MODULE variables. Otherwise,
appending to them elsewhere in the srctree will not be seen by the build
commands in Makefile.lib

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 Makefile | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index c4a2519a1..f9457323e 100644
--- a/Makefile
+++ b/Makefile
@@ -395,6 +395,8 @@ BASH		= bash
 CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
 CFLAGS_KERNEL	=
 AFLAGS_KERNEL	=
+CFLAGS_MODULE	=
+AFLAGS_MODULE	=
 
 LDFLAGS_MODULE  = -T common/module.lds
 
@@ -418,6 +420,10 @@ KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
                    -Werror=implicit-function-declaration -Werror=implicit-int \
                    -Os -pipe -Wmissing-prototypes -std=gnu89
 KBUILD_AFLAGS          := -D__ASSEMBLY__
+KBUILD_AFLAGS_KERNEL :=
+KBUILD_CFLAGS_KERNEL :=
+KBUILD_AFLAGS_MODULE := -DMODULE
+KBUILD_CFLAGS_MODULE := -DMODULE
 
 LDFLAGS_barebox	:= -Map barebox.map
 
@@ -432,8 +438,10 @@ export HOSTCXX CHECK CHECKFLAGS
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
 
 export KBUILD_CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS KBUILD_LDFLAGS
-export KBUILD_CFLAGS CFLAGS_KERNEL
-export KBUILD_AFLAGS AFLAGS_KERNEL
+export KBUILD_CFLAGS CFLAGS_KERNEL CFLAGS_MODULE
+export KBUILD_AFLAGS AFLAGS_KERNEL AFLAGS_MODULE
+export KBUILD_AFLAGS_MODULE KBUILD_CFLAGS_MODULE
+export KBUILD_AFLAGS_KERNEL KBUILD_CFLAGS_KERNEL
 export LDFLAGS_barebox
 export LDFLAGS_pbl
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
