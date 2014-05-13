Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80z-0001ns-Rs
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:48 +0000
Received: by mail-ee0-f46.google.com with SMTP id t10so123842eei.33
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:23 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:48 +0200
Message-Id: <1399969739-10355-9-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 08/19] commands: move CMD_MIPS_CPUINFO to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Information commands"
  section of Kconfig

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/mips/Kconfig |    7 -------
 commands/Kconfig  |    8 ++++++++
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 9a240b7..6ce7fff 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -274,13 +274,6 @@ endchoice
 
 menu "MIPS specific settings"
 
-config CMD_MIPS_CPUINFO
-	bool "cpuinfo command"
-	default y
-	help
-	  Say yes here to get a cpuinfo command to show some
-	  information about the cpu model.
-
 config HAS_NMON
 	bool
 
diff --git a/commands/Kconfig b/commands/Kconfig
index 9789af4..db091c4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -46,6 +46,14 @@ config CMD_ARM_CPUINFO
 	  D-cache: 8192 bytes (linelen = 8)
 	  Control register: M C W P D L I V RR DT IT U XP
 
+config CMD_MIPS_CPUINFO
+	bool "cpuinfo command"
+	default y
+	depends on MIPS
+	help
+	  Say yes here to get a cpuinfo command to show some
+	  information about the cpu model.
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
