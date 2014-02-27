Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIwg3-00060n-Dv
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 08:50:48 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 27 Feb 2014 09:49:46 +0100
Message-Id: <1393490986-3866-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] fixup! tegra: add Tegra3 to relevant lowlevel functions
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
This got messed up while applying. You may want to
squash this in while the original patch still sits
in -next.
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 11d930b..cc346a0 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -78,6 +78,8 @@ enum tegra_chiptype tegra_get_chiptype(void)
 	switch ((hidrev & HIDREV_CHIPID_MASK) >> HIDREV_CHIPID_SHIFT) {
 	case 0x20:
 		return TEGRA20;
+	case 0x30:
+		return TEGRA30;
 	default:
 		return TEGRA_UNK_REV;
 	}
@@ -89,8 +91,6 @@ int tegra_get_num_cores(void)
 	switch (tegra_get_chiptype()) {
 	case TEGRA20:
 		return 2;
-	case 0x30:
-		return TEGRA30;
 	case TEGRA30:
 		return 4;
 	default:
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
