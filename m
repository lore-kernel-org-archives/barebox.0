Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfRM-0002cO-Be
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 05:39:26 +0000
Received: from geraet.fritz.box (i5387567C.versanet.de [83.135.86.124])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 578A51BF20D
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2020 05:39:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 29 Apr 2020 07:39:11 +0200
Message-Id: <20200429053914.4775-2-ahmad@a3f.at>
In-Reply-To: <20200429053914.4775-1-ahmad@a3f.at>
References: <20200429053914.4775-1-ahmad@a3f.at>
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
Subject: [PATCH 2/5] x86: mach-i386: remove unused X86_GENERIC_HAS_{ISA, PCI,
 USB} options
To: barebox@lists.infradead.org

Out of the four options in the file, only X86_GENERIC_HAS_VIDEO is used.
The others have been without backing code for 10 years, so drop them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/mach-i386/Kconfig | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/x86/mach-i386/Kconfig b/arch/x86/mach-i386/Kconfig
index b64d21fd9aa3..2d0bfb475947 100644
--- a/arch/x86/mach-i386/Kconfig
+++ b/arch/x86/mach-i386/Kconfig
@@ -3,26 +3,11 @@ menu "Board specific settings"
 
 if X86_BOOTLOADER
 
-config X86_GENERIC_HAS_ISA
-	bool "ISA support"
-	help
-	  Say Y here if the target supports a ISA bus
-
-config X86_GENERIC_HAS_PCI
-	bool "PCI support"
-	help
-	  Say Y here if the target supports a PCI bus
-
 config X86_GENERIC_HAS_VIDEO
 	bool "video support"
 	help
 	  Say Y here if the target supports a video output
 
-config X86_GENERIC_HAS_USB
-	bool "USB support"
-	help
-	  Say Y here if the target supports a USB interface
-
 endif
 
 endmenu
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
