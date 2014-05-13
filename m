Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk812-0001rC-Tf
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:49 +0000
Received: by mail-ee0-f45.google.com with SMTP id d49so121823eek.18
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:27 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:51 +0200
Message-Id: <1399969739-10355-12-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 11/19] commands: move CMD_AT91MUX to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Information commands"
  section of Kconfig
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/mach-at91/Kconfig |    4 ----
 commands/Kconfig           |    7 +++++++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 6222653..a3f4f3f 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -530,10 +530,6 @@ config CMD_AT91MUX
 	bool "at91mux dump command"
 	default y
 
-config CMD_AT91CLK
-	bool "at91clk dump command"
-	default y
-
 endif
 
 config AT91_BOOTSTRAP
diff --git a/commands/Kconfig b/commands/Kconfig
index e48b2d1..166693d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -30,6 +30,13 @@ menu "Commands"
 
 menu "Information"
 
+config CMD_AT91CLK
+	bool "at91clk"
+	default y
+	depends on ARCH_AT91
+	help
+	  List clock configuration.
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
