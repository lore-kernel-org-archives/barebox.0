Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h15tr-0007zM-Nt
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 08:58:20 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1h15tZ-0001wT-Ir
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 09:57:53 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Tue,  5 Mar 2019 09:57:52 +0100
Message-Id: <20190305085752.3615-3-tomaz.solc@tablix.org>
In-Reply-To: <20190305085752.3615-1-tomaz.solc@tablix.org>
References: <20190305085752.3615-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 2/2] common: Kconfig: improve help text for DEBUG_LL
To: barebox@lists.infradead.org

This adopts the help text used in Linux for the same setting. It
clarifies that a build with DEBUG_LL enabled will only work on the
system you chose the debug UART for.
---
 common/Kconfig | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index e30f354e6..0725045a6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1016,11 +1016,21 @@ config DEBUG_INFO
 config DEBUG_LL
 	bool
 	depends on HAS_DEBUG_LL
-	prompt "low level debug messages"
+	prompt "Low level debug messages (read help)"
 	help
-	  Enable this to get low level debug messages during barebox initialization.
-	  This requires SoC specific support. Most SoCs require the debug UART to be
-	  initialized by a debugger or first stage bootloader.
+	  Enable this to get low level debug messages during barebox
+	  initialization. This is helpful if you are debugging code that
+	  executes before the console is initialized.
+
+	  This requires SoC specific support. Most SoCs require the
+	  debug UART to be initialized by a debugger or first stage
+	  bootloader.
+
+	  Note that selecting this option will limit barebox to a single
+	  UART definition, as specified below under "low-level debugging
+	  port". Attempting to boot the resulting image on a different
+	  platform *will not work*, so this option should not be enabled
+	  for builds that are intended to be portable.
 
 choice
 	prompt "Kernel low-level debugging port"
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
