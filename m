Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk815-0001sv-1n
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:52 +0000
Received: by mail-ee0-f42.google.com with SMTP id d49so127883eek.1
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:29 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:52 +0200
Message-Id: <1399969739-10355-13-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 12/19] commands: move CMD_AT91MIX to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Information commands"
  section of Kconfig
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/mach-at91/Kconfig |    8 --------
 commands/Kconfig           |   16 ++++++++++++++++
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index a3f4f3f..298ee3f 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -524,14 +524,6 @@ config CALAO_MB_QIL_A9260
 	bool "MB-QIL A9260 Motherboard Board support"
 	depends on MACH_QIL_A9260 || MACH_QIL_A9G20
 
-if COMMAND_SUPPORT
-
-config CMD_AT91MUX
-	bool "at91mux dump command"
-	default y
-
-endif
-
 config AT91_BOOTSTRAP
 	bool "at91 bootstrap"
 	depends on HAVE_AT91_LOWLEVEL_INIT
diff --git a/commands/Kconfig b/commands/Kconfig
index 166693d..47ac352 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -37,6 +37,22 @@ config CMD_AT91CLK
 	help
 	  List clock configuration.
 
+config CMD_AT91MUX
+	bool "at91mux"
+	default y
+	depends on ARCH_AT91
+	help
+	  List MUX configuration
+
+	  Usage: at91mux [-pn]
+
+	  Dump current MUX configuration. If a BANK or PIN has been
+	  specified dump pin details.
+
+	  Options:
+	  -p PIN   pin number
+	  -b BANK  bank number
+
 config CMD_ARM_CPUINFO
 	bool "cpuinfo command"
 	default y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
