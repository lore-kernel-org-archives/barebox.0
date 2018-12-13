Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAK-0005dB-K9
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id d72so600867pga.9
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:59 -0800
Message-Id: <20181213071144.31691-14-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/58] PCI: imx6: Move link up check into
 imx6_pcie_wait_for_link()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 4d107d3b5a686b5834e533a00b73bf7b1cf59df7

  imx6_pcie_link_up() previously used usleep_range() to wait for the link to
  come up.  Since it may be called while holding the config spinlock, the
  sleep causes a "BUG: scheduling while atomic" error.

  Instead of waiting for the link to come up in imx6_pcie_link_up(), do the
  waiting in imx6_pcie_wait_for_link(), where we're not holding a lock and
  sleeping is allowed.

  [bhelgaas: changelog, references to bugzilla and f95d3ae77191]
  Link: https://bugzilla.kernel.org/show_bug.cgi?id=100031
  Fixes: f95d3ae77191 ("PCI: imx6: Wait for retraining")
  Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index fc56a0d14..53d767824 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -399,8 +399,26 @@ static int imx6_pcie_wait_for_link(struct pcie_port *pp)
 {
 	uint64_t start = get_time_ns();
 
+	/*
+	 * Test if the PHY reports that the link is up and also that the LTSSM
+	 * training finished. There are three possible states of the link when
+	 * this code is called:
+	 * 1) The link is DOWN (unlikely)
+	 *    The link didn't come up yet for some reason. This usually means
+	 *    we have a real problem somewhere, if it happens with a peripheral
+	 *    connected. This state calls for inspection of the DEBUG registers.
+	 * 2) The link is UP, but still in LTSSM training
+	 *    Wait for the training to finish, which should take a very short
+	 *    time. If the training does not finish, we have a problem and we
+	 *    need to inspect the DEBUG registers. If the training does finish,
+	 *    the link is up and operating correctly.
+	 * 3) The link is UP and no longer in LTSSM training
+	 *    The link is up and operating correctly.
+	 */
 	while (1) {
-		if (dw_pcie_link_up(pp))
+		u32 reg = readl(pp->dbi_base + PCIE_PHY_DEBUG_R1);
+		if ((reg & PCIE_PHY_DEBUG_R1_XMLH_LINK_UP) &&
+		    !(reg & PCIE_PHY_DEBUG_R1_XMLH_LINK_IN_TRAINING))
 			return 0;
 
 		if (!is_timeout(start, SECOND))
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
