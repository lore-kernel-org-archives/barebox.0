Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3YY-0000kg-UO
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 19:00:20 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 25 Apr 2020 03:59:24 +0900
Message-Id: <20200424185924.705754-6-masahiroy@kernel.org>
In-Reply-To: <20200424185924.705754-1-masahiroy@kernel.org>
References: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: [PATCH 6/6] kbuild: set SRCARCH=arm when ARCH=arm64
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

In Linux, ARCH can be passed from the command line or the environment.
In barebox, "ARCH=arm64 make" works, but "make ARCH=arm64" does not.

Instead of overriding ARCH, use SRCARCH properly.

This is what Linux does for biarch directories (x86, sh, sparc).

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 477741a72..16b23c107 100644
--- a/Makefile
+++ b/Makefile
@@ -163,10 +163,6 @@ export srctree objtree VPATH
 # Alternatively CROSS_COMPILE can be set in the environment.
 # Default value for CROSS_COMPILE is not to prefix executables
 
-ifeq ($(ARCH),arm64)
-ARCH = arm
-endif
-
 ARCH            ?= sandbox
 CROSS_COMPILE   ?=
 
@@ -174,6 +170,10 @@ CROSS_COMPILE   ?=
 UTS_MACHINE := $(ARCH)
 SRCARCH 	:= $(ARCH)
 
+ifeq ($(ARCH),arm64)
+       SRCARCH := arm
+endif
+
 KCONFIG_CONFIG	?= .config
 
 # Default file for 'make defconfig'. This may be overridden by arch-Makefile.
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
