Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80x-0001lW-2X
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:47 +0000
Received: by mail-ee0-f49.google.com with SMTP id e53so121138eek.22
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:21 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:46 +0200
Message-Id: <1399969739-10355-7-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 06/19] commands: move CMD_ARM_CPUINFO to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Information commands"
  section of Kconfig
* while at it, imprive Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/Kconfig |    7 -------
 commands/Kconfig |   16 ++++++++++++++++
 2 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4a2ec41..f8f3da0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -256,13 +256,6 @@ endmenu
 
 menu "Arm specific settings"
 
-config CMD_ARM_CPUINFO
-	bool "cpuinfo command"
-	default y
-	help
-	  Say yes here to get a cpuinfo command to show some
-	  CPU information using the cp15 registers
-
 config CMD_ARM_MMUINFO
 	bool "mmuinfo command"
 	depends on CPU_V7
diff --git a/commands/Kconfig b/commands/Kconfig
index ad23dbf..8b5110c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -30,6 +30,22 @@ menu "Commands"
 
 menu "Information"
 
+config CMD_ARM_CPUINFO
+	bool "cpuinfo command"
+	default y
+	depends on ARM
+	help
+	  Show info about ARM CPU
+
+	  Example:
+
+	  implementer: ARM
+	  architecture: v7
+	  core: Cortex-A9 r2p10
+	  I-cache: 512 bytes (linelen = 64)
+	  D-cache: 8192 bytes (linelen = 8)
+	  Control register: M C W P D L I V RR DT IT U XP
+
 config CMD_DEVINFO
 	tristate
 	default y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
