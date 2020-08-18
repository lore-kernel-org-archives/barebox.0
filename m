Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7zHW-0007Ru-6p
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 10:55:58 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Aug 2020 19:55:18 +0900
Message-Id: <20200818105520.32326-3-masahiroy@kernel.org>
In-Reply-To: <20200818105520.32326-1-masahiroy@kernel.org>
References: <20200818105520.32326-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/5] sandbox: add sandbox.dtb to always-y
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Unlike Linux, Barebox does not support 'make dtbs_install'.
There is no good reason to use dtb-y, which is not natively
supported by the Barebox build system.

Sandbox is the special architecture that compiles DTB as a
separate file. Add .dtb to always-y directly.

CONFIG_OFTREE is a bool option. Use a more Kbuild-ish style
instead of ifeq ($(CONFIG_OFTREE),y).

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/sandbox/dts/Makefile | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
index 6f6838857..6f4344da6 100644
--- a/arch/sandbox/dts/Makefile
+++ b/arch/sandbox/dts/Makefile
@@ -1,11 +1,8 @@
-ifeq ($(CONFIG_OFTREE),y)
-dtb-y += \
+always-$(CONFIG_OFTREE) += \
 	sandbox.dtb
-endif
 
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
 obj- += dummy.o
 
-always := $(dtb-y)
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
