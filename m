Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoF-0001ah-R5
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:41 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CC75AFF810
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:36 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:24 +0200
Message-Id: <20200428073730.34579-5-ahmad@a3f.at>
In-Reply-To: <20200428073730.34579-1-ahmad@a3f.at>
References: <20200428073730.34579-1-ahmad@a3f.at>
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
Subject: [PATCH 05/11] ARM: socfpga: remove duplicate ARCH_TEXT_BASE
To: barebox@lists.infradead.org

We already have one ARCH_TEXT_BASE in the file, which sets a value of
zero.  MACH_SOCFPGA_CYCLONE5 and MACH_SOCFPGA_ARRIA10 aren't defined
anywhere and are listed in no defconfigs, thus drop the duplicate
option.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-socfpga/Kconfig | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 3d8fc8ba42a9..2da875cef0c3 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -8,11 +8,6 @@ config ARCH_SOCFPGA_XLOAD
 	bool
 	prompt "Build preloader image"
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x00100000 if MACH_SOCFPGA_CYCLONE5
-	default 0xffe00000 if MACH_SOCFPGA_ARRIA10
-
 comment "Altera SoCFPGA System-on-Chip"
 
 config ARCH_SOCFPGA_CYCLONE5
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
