Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdq-0001xs-8D
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:23 +0000
Received: by mail-la0-f42.google.com with SMTP id fg20so2066371lab.1
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:54:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:47 +0400
Message-Id: <1370073169-29009-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/6] MIPS: rzx50_defconfig: use UART1 for low-level debug
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
