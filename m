Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIusZ-0001Iw-LQ
 for barebox@lists.infradead.org; Sat, 25 Jul 2015 08:32:25 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sat, 25 Jul 2015 10:31:47 +0200
Message-Id: <1437813107-21010-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] efi: enable blspec in the defconfig
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/configs/efi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/efi/configs/efi_defconfig b/arch/efi/configs/efi_defconfig
index 456f70d32b59..3c9a9dcb956e 100644
--- a/arch/efi/configs/efi_defconfig
+++ b/arch/efi/configs/efi_defconfig
@@ -7,6 +7,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
