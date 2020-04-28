Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKFv-0000CC-D8
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:02:12 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E9D67FF80F
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:02:06 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:02:01 +0200
Message-Id: <20200428070201.8075-1-ahmad@a3f.at>
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
Subject: [PATCH] x86: delete X86_NATIVE_BRINGUP in choice
To: barebox@lists.infradead.org

12769b3b7871 ("Add the whole x86 architecture to the build system")
added the configuration option 10 years ago, but no backing code
has been contributed meanwhile. Drop the option.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/Kconfig | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 1793055ae0b7..19009442a4d7 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -86,13 +86,6 @@ choice
 		  some 16 bit real mode code and some restrictions everyone knows
 		  from BIOS based systems.
 
-	config X86_NATIVE_BRINGUP
-		bool "native"
-		help
-		  Barebox will act as a native bootloader. This includes all the
-		  required initialization needed to bring up a piece of hardware.
-		  Note: Not implemented yet
-
 endchoice
 
 source "arch/x86/boot/Kconfig"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
