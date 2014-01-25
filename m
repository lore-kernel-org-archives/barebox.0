Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W790S-0006zB-2M
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 19:35:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 25 Jan 2014 23:34:27 +0400
Message-Id: <1390678468-28378-11-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 11/12] ARM: i.MX: esdctl: Use __iomem specifier for memory
 pointer
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/esdctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 3ac4075..d11957f 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -195,7 +195,7 @@ static void add_mem(unsigned long base0, unsigned long size0,
  */
 #define ESDCTL1_RESET_DEFAULT 0x81120080
 
-static inline void imx_esdctl_v2_disable_default(void *esdctlbase)
+static inline void imx_esdctl_v2_disable_default(void __iomem *esdctlbase)
 {
 	u32 ctlval = readl(esdctlbase + IMX_ESDCTL1);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
