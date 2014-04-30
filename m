Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfNP3-00084J-Bp
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 05:49:57 +0000
Received: by mail-ee0-f43.google.com with SMTP id e51so916177eek.2
 for <barebox@lists.infradead.org>; Tue, 29 Apr 2014 22:49:34 -0700 (PDT)
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Wed, 30 Apr 2014 07:49:34 +0200
Message-Id: <ce25001663e5dbf1538169d24785575d2292f210.1398836737.git.silvio.fricke@gmail.com>
In-Reply-To: <1398671161-29045-3-git-send-email-s.hauer@pengutronix.de>
References: <1398671161-29045-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] make: dts: fix out-of-tree build
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Silvio Fricke <silvio.fricke@gmail.com>

If barebox is builded out-of-tree we don't find the dts-include

This patch prevent us to get this:
/[...]/barebox/drivers/input/keymap.c:4:37: fatal error: dt-bindings/input/input.h: No such file or directory

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index a54b82b..c654f4f 100644
--- a/Makefile
+++ b/Makefile
@@ -290,7 +290,7 @@ export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_ve
 
 # Use LINUXINCLUDE when you must reference the include/ directory.
 # Needed to be compatible with the O= option
-LINUXINCLUDE    := -Iinclude -Idts/include \
+LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
                    $(if $(KBUILD_SRC),-Iinclude2 -I$(srctree)/include) \
 		   -I$(srctree)/arch/$(ARCH)/include \
 		   -I$(objtree)/arch/$(ARCH)/include \
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
