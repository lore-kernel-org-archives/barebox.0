Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7zHW-0007Rs-6n
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 10:55:56 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Aug 2020 19:55:17 +0900
Message-Id: <20200818105520.32326-2-masahiroy@kernel.org>
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
Subject: [PATCH 2/5] kvx,riscv: remove unused $(dtb-y) assignment
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

dtb-y is not defined in these Makefiles. Remove the meaningless code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/kvx/dts/Makefile   | 1 -
 arch/riscv/dts/Makefile | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index 391783c1e..d4221d2c1 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -9,5 +9,4 @@ endif
 
 obj-$(CONFIG_BOARD_K200) += k200.dtb.o
 
-always := $(dtb-y)
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 509f236cc..6bd4e5a92 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -9,5 +9,4 @@ obj-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
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
