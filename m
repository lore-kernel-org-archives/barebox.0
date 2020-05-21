Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jboX2-0006GI-A8
 for barebox@lists.infradead.org; Thu, 21 May 2020 16:58:57 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 22 May 2020 01:58:36 +0900
Message-Id: <20200521165836.363263-1-masahiroy@kernel.org>
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
Subject: [PATCH] powerpc: move ddr-8xxx/ to the relevant Makefile
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Directory descending upward is ugly. Move it to the correct Makefile.

No functional change is intended because FSL_DDR{2,3} depend on
ARCH_MPC85XX.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/powerpc/Kbuild                | 2 ++
 arch/powerpc/mach-mpc85xx/Makefile | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/Kbuild b/arch/powerpc/Kbuild
index 503ce631c..65e249338 100644
--- a/arch/powerpc/Kbuild
+++ b/arch/powerpc/Kbuild
@@ -1,2 +1,4 @@
 obj-$(CONFIG_ARCH_MPC85XX) += cpu-85xx/
 obj-y += lib/
+obj-$(CONFIG_FSL_DDR2) += ddr-8xxx/
+obj-$(CONFIG_FSL_DDR3) += ddr-8xxx/
diff --git a/arch/powerpc/mach-mpc85xx/Makefile b/arch/powerpc/mach-mpc85xx/Makefile
index de4f5efde..9886c7da4 100644
--- a/arch/powerpc/mach-mpc85xx/Makefile
+++ b/arch/powerpc/mach-mpc85xx/Makefile
@@ -9,6 +9,4 @@ obj-y			+= fsl_i2c.o
 obj-$(CONFIG_MP)	+= mp.o
 obj-$(CONFIG_OFTREE)	+= fdt.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
-obj-$(CONFIG_FSL_DDR2) += ../ddr-8xxx/
-obj-$(CONFIG_FSL_DDR3) += ../ddr-8xxx/
 extra-y += barebox.lds
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
