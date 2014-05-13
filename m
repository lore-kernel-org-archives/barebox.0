Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80y-0001mS-41
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:48 +0000
Received: by mail-ee0-f45.google.com with SMTP id d49so121725eek.18
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:22 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:47 +0200
Message-Id: <1399969739-10355-8-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 07/19] commands: move CMD_ARM_MMUINFO to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Information commands"
  section of Kconfig
* while at it, imprive Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/Kconfig |    8 --------
 commands/Kconfig |   34 ++++++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 8 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f8f3da0..73c7382 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -256,14 +256,6 @@ endmenu
 
 menu "Arm specific settings"
 
-config CMD_ARM_MMUINFO
-	bool "mmuinfo command"
-	depends on CPU_V7
-	default n
-	help
-	  Say yes here to get a mmuinfo command to show some
-	  MMU and cache information using the cp15 registers
-
 config CPU_V7_DCACHE_SKIP
 	bool "Skip DCache Invalidate"
 	depends on CPU_V7
diff --git a/commands/Kconfig b/commands/Kconfig
index 8b5110c..9789af4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -91,6 +91,40 @@ config CMD_MEMINFO
 	  system bytes     =     282616
 	  in use bytes     =     274752
 
+config CMD_ARM_MMUINFO
+	bool "mmuinfo command"
+	depends on CPU_V7
+	default n
+	help
+	  Say yes here to get a mmuinfo command to show some
+	  MMU and cache information using the cp15 registers.
+
+	  Example:
+
+	  PAR result for 0x00110000:
+ 	  privileged read: 0x00110090
+  	  Physical Address [31:12]: 0x00110000
+  	  Reserved [11]:            0x0
+  	  Not Outer Shareable [10]: 0x0
+  	  Non-Secure [9]:           0x0
+  	  Impl. def. [8]:           0x0
+  	  Shareable [7]:            0x1
+  	  Inner mem. attr. [6:4]:   0x1 (0b001 Strongly-ordered)
+  	  Outer mem. attr. [3:2]:   0x0 (0b00 Non-cacheable)
+  	  SuperSection [1]:         0x0
+  	  Failure [0]:              0x0
+ 	  privileged write: 0x00110090
+  	  Physical Address [31:12]: 0x00110000
+  	  Reserved [11]:            0x0
+  	  Not Outer Shareable [10]: 0x0
+  	  Non-Secure [9]:           0x0
+  	  Impl. def. [8]:           0x0
+  	  Shareable [7]:            0x1
+  	  Inner mem. attr. [6:4]:   0x1 (0b001 Strongly-ordered)
+  	  Outer mem. attr. [3:2]:   0x0 (0b00 Non-cacheable)
+  	  SuperSection [1]:         0x0
+  	  Failure [0]:              0x0
+
 config CMD_REGINFO
 	depends on HAS_REGINFO
 	select REGINFO
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
