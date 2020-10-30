Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYSgJ-0000kO-Qo
 for barebox@lists.infradead.org; Fri, 30 Oct 2020 11:34:56 +0000
Received: by mail-qt1-x844.google.com with SMTP id m14so3759111qtc.12
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2020 04:34:54 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Fri, 30 Oct 2020 19:34:28 +0800
Message-Id: <1604057668-2024-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] MIPS: ls1b: enable clk driver framework support
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

enable it and so we can add clk driver.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 7a8f010..a56c26a 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -175,6 +175,8 @@ config CPU_LOONGSON1B
 	bool "Loongson 1B"
 	depends on SYS_HAS_CPU_LOONGSON1B
 	select CPU_GS232
+        select CLKDEV_LOOKUP
+        select COMMON_CLK
 	help
 	  The Loongson 1B is a 32-bit SoC, which implements the MIPS32
 	  release 2 instruction set.
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
