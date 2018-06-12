Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJB-0007FK-QP
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:30 +0000
Received: by mail-pg0-x244.google.com with SMTP id d2-v6so133226pga.13
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:58 -0700
Message-Id: <20180612205310.25745-43-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 42/54] ARM: no-mmu: Disable building for ARMv8
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Disable building for ARMv8 since no-mmu.c only supports ARMv7

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 0316d251c..5b4b832e8 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -17,7 +17,7 @@ obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 
 ifeq ($(CONFIG_MMU),)
-obj-y += no-mmu.o
+obj-$(CONFIG_CPU_32v7) += no-mmu.o
 endif
 
 obj-$(CONFIG_ARM_PSCI) += psci.o
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
