Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp45.i.mail.ru ([94.100.177.105])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThEHq-0004L1-Nc
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 06:53:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  8 Dec 2012 10:51:24 +0400
Message-Id: <1354949486-12917-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
References: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/8] Remove bad Kconfig reference to HAS_PCI
To: barebox@lists.infradead.org

Barebox not contain symbol HAS_PCI, so remove all references to it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/x86/mach-i386/Kconfig |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/x86/mach-i386/Kconfig b/arch/x86/mach-i386/Kconfig
index cb12b9c..b64d21f 100644
--- a/arch/x86/mach-i386/Kconfig
+++ b/arch/x86/mach-i386/Kconfig
@@ -10,7 +10,6 @@ config X86_GENERIC_HAS_ISA
 
 config X86_GENERIC_HAS_PCI
 	bool "PCI support"
-	select HAS_PCI
 	help
 	  Say Y here if the target supports a PCI bus
 
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
