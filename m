Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2v-0003As-9e
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:00 +0000
Received: by wizk4 with SMTP id k4so113803562wiz.1
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:35 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:17 +0200
Message-Id: <1429560686-11391-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 05/14] bus: mvebu-mbus: Remove coherency attribute
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
