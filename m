Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3l.mail.yandex.net ([2a02:6b8:0:1819::3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrR-0005y0-Pb
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:44 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:21:57 +0300
Message-Id: <1425327722-28232-14-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 13/18] ARM: Rockchip: Update Kconfig
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 527a913..d174769 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -160,6 +160,10 @@ config ARCH_ROCKCHIP
 	select PINCTRL_ROCKCHIP
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
+	select ARCH_HAS_L2X0
+	select GCD
+	select CLK_NEED_COMPOSITE
+	select CLK_NEED_FDIV
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA cyclone5"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
