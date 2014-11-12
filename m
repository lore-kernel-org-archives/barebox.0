Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoeMo-0003ZD-VT
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 20:18:15 +0000
Received: from tellur.intern.lynxeye.de (p57B5F278.dip0.t-ipconnect.de
 [87.181.242.120]) by lynxeye.de (Postfix) with ESMTPA id 5D8C226C2003
 for <barebox@lists.infradead.org>; Wed, 12 Nov 2014 21:17:17 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 12 Nov 2014 21:24:37 +0100
Message-Id: <1415823877-7379-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415823877-7379-1-git-send-email-dev@lynxeye.de>
References: <1415823877-7379-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/3] pci: tegra: relax link-up timeout
To: barebox@lists.infradead.org

Some devices need a considerable amount of time
from reset deassertion until they are ready to
establish a link. Relaxing the link-up timeout
helps to detect them more reliable.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci-tegra.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index f2ade77..1ff3c0d 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1145,7 +1145,7 @@ static bool tegra_pcie_port_check_link(struct tegra_pcie_port *port)
 	writel(value, port->base + RP_PRIV_MISC);
 
 	do {
-		timeout = wait_on_timeout(50 * MSECOND,
+		timeout = wait_on_timeout(150 * MSECOND,
 			readl(port->regs.start + RP_VEND_XP) & RP_VEND_XP_DL_UP);
 
 		if (timeout) {
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
