Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YL5oC-0001vz-0e
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 08:04:44 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 10 Feb 2015 16:04:01 +0800
Message-ID: <1423555441-13769-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: sama5d4 xplained: correc env path
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Correct the environment path for sama5d4 xplained board.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/configs/sama5d4_xplained_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 51083fe..84a1bbd 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -17,7 +17,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4ek/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4_xplained/env"
 CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
