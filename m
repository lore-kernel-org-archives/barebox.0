Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp32.i.mail.ru ([94.100.177.92])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tk8sJ-0004Lv-5n
 for barebox@lists.infradead.org; Sun, 16 Dec 2012 07:43:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Dec 2012 11:42:53 +0400
Message-Id: <1355643775-4981-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] x86: Add formal Kconfig parameter "X86_BOOTLOADER"
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/x86/Kconfig |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 777604f..6589ae7 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -25,6 +25,9 @@ config X86
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	default y
 
+config X86_BOOTLOADER
+	bool
+
 choice
 	prompt "Select your board"
 
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
