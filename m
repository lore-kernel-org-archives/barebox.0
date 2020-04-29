Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqbm-0000Vk-8E
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 17:34:57 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 02:34:17 +0900
Message-Id: <20200429173419.681074-4-masahiroy@kernel.org>
In-Reply-To: <20200429173419.681074-1-masahiroy@kernel.org>
References: <20200429173419.681074-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/5] ppc: add arch/ppc/Kbuild
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Add arch/ppc/Kbuild to clean up arch/ppc/Makefile.

The variable, CPU is used only for determining if Kbuild should
descend to cpu-85xx/.

  obj-$(CONFIG_ARCH_MPC85XX) += cpu-85xx/

is preferred.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/ppc/Kbuild   |  2 ++
 arch/ppc/Makefile | 11 +----------
 2 files changed, 3 insertions(+), 10 deletions(-)
 create mode 100644 arch/ppc/Kbuild

diff --git a/arch/ppc/Kbuild b/arch/ppc/Kbuild
new file mode 100644
index 000000000..503ce631c
--- /dev/null
+++ b/arch/ppc/Kbuild
@@ -0,0 +1,2 @@
+obj-$(CONFIG_ARCH_MPC85XX) += cpu-85xx/
+obj-y += lib/
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 3d8ddf377..5eacd42e3 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -23,8 +23,6 @@ board-$(CONFIG_DA923RC)				:= owc-da923rc
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
 machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
 
-cpu-$(CONFIG_ARCH_MPC85XX)			:= 85xx
-
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
@@ -60,14 +58,7 @@ else
 MACH  :=
 endif
 
-ifneq ($(cpu-y),)
-CPU  := arch/ppc/cpu-$(cpu-y)/
-else
-CPU  :=
-endif
-
-common-y += $(BOARD) $(CPU) $(MACH)
-common-y += arch/ppc/lib/
+common-y += $(BOARD) $(MACH) arch/ppc/
 
 ifdef CONFIG_MPC85xx
 lds-y += $(MACH)/barebox.lds
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
