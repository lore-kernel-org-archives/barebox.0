Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJ7-0003y3-Lm
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:05:54 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id D778018B425C
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:04:54 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:43 +0200
Message-Id: <1399878486-16086-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/25] tegra: lowlevel: add function to fetch chipid
To: barebox@lists.infradead.org

This is needed as a safe way to flush the ABP bus.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 52b405d..1026518 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -70,6 +70,12 @@ enum tegra_chiptype {
 };
 
 static __always_inline
+u32 tegra_read_chipid(void)
+{
+	return readl(TEGRA_APB_MISC_BASE + APB_MISC_HIDREV);
+}
+
+static __always_inline
 enum tegra_chiptype tegra_get_chiptype(void)
 {
 	u32 hidrev;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
