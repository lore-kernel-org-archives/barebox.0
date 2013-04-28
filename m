Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UWJDM-00069M-5t
 for barebox@lists.infradead.org; Sun, 28 Apr 2013 04:27:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 28 Apr 2013 08:27:28 +0400
Message-Id: <1367123249-24119-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
References: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/4] ARM: netx: Remove references for missing boards
To: barebox@lists.infradead.org

Barebox do not have support for MACH_NXDKN, MACH_NXHMIBB,
MACH_NXEB500HMI and MACH_NXHX boards, so remove these symbols.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-netx/Kconfig | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
index 8d8f49b..3c62d60 100644
--- a/arch/arm/mach-netx/Kconfig
+++ b/arch/arm/mach-netx/Kconfig
@@ -9,35 +9,19 @@ config BOARDINFO
 
 config NETX_SDRAM_CTRL
 	hex
-	default 0x010D0001 if MACH_NXDKN
 	default 0x010D0121 if MACH_NXDB500
-	default 0x030D0111 if MACH_NXHMIBB
-	default 0x010D0111 if MACH_NXEB500HMI
-	default 0x030D0001 if MACH_NXHX
 
 config NETX_SDRAM_TIMING_CTRL
 	hex
-	default 0x03C12151 if MACH_NXDKN
 	default 0x03C13261 if MACH_NXDB500
-	default 0x03C13251 if MACH_NXHMIBB
-	default 0x03C13251 if MACH_NXEB500HMI
-	default 0x03C23251 if MACH_NXHX
 
 config NETX_MEM_CTRL
 	hex
-	default 0x0103030F if MACH_NXDKN
 	default 0x0203030F if MACH_NXDB500
-	default 0x0103030F if MACH_NXHMIBB
-	default 0x0103030F if MACH_NXEB500HMI
-	default 0x0103030F if MACH_NXHX
 
 config NETX_COOKIE
 	hex
-	default 16 if MACH_NXDKN
 	default 32 if MACH_NXDB500
-	default 16 if MACH_NXHMIBB
-	default 16 if MACH_NXEB500HMI
-	default 16 if MACH_NXHX
 
 choice
 	prompt "Netx Board Type"
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
