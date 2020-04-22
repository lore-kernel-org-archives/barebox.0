Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR91J-0000Tw-5U
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 06:38:06 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Apr 2020 15:37:29 +0900
Message-Id: <20200422063732.1584550-1-masahiroy@kernel.org>
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
Subject: [PATCH v2 1/4] riscv: remove meaningless LDFLAGS addition
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

No one sets ldflags-y. This line is meaningless.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
 - new patch

 arch/riscv/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fa8a173d8..b71a52ad1 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -10,7 +10,6 @@ cflags-y += -fno-pic -pipe
 cflags-y += -Wall -Wstrict-prototypes \
 	-Wno-uninitialized -Wno-format -Wno-main -mcmodel=medany
 
-LDFLAGS += $(ldflags-y)
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
