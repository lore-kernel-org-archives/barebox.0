Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOR-0004Wd-Cx
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:12 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id EFE3818B425A
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:26 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:56 +0200
Message-Id: <1401827717-6420-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 09/30] tegra: recognize Tegra124 in common initcalls
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra20.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index 0773972..752bbb0 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -30,7 +30,8 @@ static int tegra_add_debug_console(void)
 	unsigned long base = 0;
 
 	if (!of_machine_is_compatible("nvidia,tegra20") &&
-	    !of_machine_is_compatible("nvidia,tegra30"))
+	    !of_machine_is_compatible("nvidia,tegra30") &&
+	    !of_machine_is_compatible("nvidia,tegra124"))
 		return 0;
 
 	/* figure out which UART to use */
@@ -74,7 +75,8 @@ mem_initcall(tegra20_mem_init);
 
 static int tegra30_mem_init(void)
 {
-	if (!of_machine_is_compatible("nvidia,tegra30"))
+	if (!of_machine_is_compatible("nvidia,tegra30") &&
+	    !of_machine_is_compatible("nvidia,tegra124"))
 		return 0;
 
 	arm_add_mem_device("ram0", SZ_2G, tegra30_get_ramsize());
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
