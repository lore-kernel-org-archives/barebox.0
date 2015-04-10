Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNMr-0003In-St
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:04:22 +0000
Received: by wgsk9 with SMTP id k9so3356160wgs.3
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:03:59 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:03:42 +0200
Message-Id: <1428627830-17281-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 05/13] bus: mvebu-mbus: Remove coherency attribute
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Marvell Armada 370 and XP have some coherency fabric. We are not
interested in using it, so remove checking for it in mbus driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 drivers/bus/mvebu-mbus.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 9dc43011b964..75c357a869ef 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -109,7 +109,6 @@ struct mvebu_mbus_state {
 	struct resource pcie_mem_aperture;
 	struct resource pcie_io_aperture;
 	const struct mvebu_mbus_soc_data *soc;
-	int hw_io_coherency;
 };
 
 static struct mvebu_mbus_state mbus_state;
@@ -361,8 +360,6 @@ static void mvebu_mbus_default_setup_cpu_target(struct mvebu_mbus_state *mbus)
 			w = &mbus_dram_info.cs[cs++];
 			w->cs_index = i;
 			w->mbus_attr = 0xf & ~(1 << i);
-			if (mbus->hw_io_coherency)
-				w->mbus_attr |= ATTR_HW_COHERENCY;
 			w->base = base & DDR_BASE_CS_LOW_MASK;
 			w->size = (size | ~DDR_SIZE_MASK) + 1;
 		}
@@ -719,9 +716,6 @@ static int mvebu_mbus_probe(struct device_d *dev)
 	mvebu_mbus_get_pcie_resources(np, &mbus_state.pcie_mem_aperture,
 					  &mbus_state.pcie_io_aperture);
 
-	if (of_find_compatible_node(NULL, NULL, "marvell,coherency-fabric"))
-		mbus_state.hw_io_coherency = 1;
-
 	for (win = 0; win < mbus_state.soc->num_wins; win++)
 		mvebu_mbus_disable_window(&mbus_state, win);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
