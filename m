Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZO9o-0001Jo-Oy
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 19:34:33 +0000
Received: from tellur.intern.lynxeye.de (p57B5F336.dip0.t-ipconnect.de
 [87.181.243.54]) by lynxeye.de (Postfix) with ESMTPA id A7D3C26C2002
 for <barebox@lists.infradead.org>; Fri, 26 Feb 2016 20:33:39 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Feb 2016 20:33:35 +0100
Message-Id: <1456515215-32763-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1456515215-32763-1-git-send-email-dev@lynxeye.de>
References: <1456515215-32763-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: tegra: use dynamic malloc area size
To: barebox@lists.infradead.org

Remove the fixed malloc area size from the defconfig and allow
barebox to calculate the size dynamically.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index c7b59ac..ff92c39 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -8,7 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0x10000
-CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
