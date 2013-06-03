Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f173.google.com ([209.85.217.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSPq-0004MT-HX
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:55:07 +0000
Received: by mail-lb0-f173.google.com with SMTP id t10so3657037lbi.32
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 03:54:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Jun 2013 14:53:27 +0400
Message-Id: <1370256807-26755-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
References: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/5] MIPS: rzx50_defconfig: use UART1 for low-level debug
To: barebox@lists.infradead.org

By default CONFIG_JZ4750D_DEBUG_LL_UART0 is selected.
This can confuse the Ritmix RZX50 user as the board
has only UART1 connected.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/rzx50_defconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/rzx50_defconfig b/arch/mips/configs/rzx50_defconfig
index 5d994c7..7b75909 100644
--- a/arch/mips/configs/rzx50_defconfig
+++ b/arch/mips/configs/rzx50_defconfig
@@ -1,4 +1,5 @@
 CONFIG_MACH_MIPS_XBURST=y
+CONFIG_JZ4750D_DEBUG_LL_UART1=y
 CONFIG_PBL_IMAGE=y
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
