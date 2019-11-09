Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRkN-0007GY-HX
 for barebox@lists.infradead.org; Sat, 09 Nov 2019 14:29:53 +0000
Received: from astat.fritz.box (a89-183-91-60.net-htp.de [89.183.91.60])
 by lynxeye.de (Postfix) with ESMTPA id C1D27E74269
 for <barebox@lists.infradead.org>; Sat,  9 Nov 2019 15:28:43 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  9 Nov 2019 15:28:31 +0100
Message-Id: <20191109142837.82409-12-dev@lynxeye.de>
In-Reply-To: <20191109142837.82409-1-dev@lynxeye.de>
References: <20191109142837.82409-1-dev@lynxeye.de>
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
Subject: [PATCH v2 12/18] clk: zynq: fix up address from DT
To: barebox@lists.infradead.org

The upstream Zynq 7000 DT describes the SLCR child devices physical
address as an offset within the SLCR. The driver thus needs to add
the SLCR base offset to the address before trying to map the MMIO
region.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/zynq/clkc.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 07152e2ada3f..90ab71fe9662 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -373,10 +373,32 @@ static int zynq_clock_probe(struct device_d *dev)
 	struct resource *iores;
 	void __iomem *clk_base;
 	unsigned long ps_clk_rate = 33333330;
+	resource_size_t slcr_offset = 0;
 
-	iores = dev_request_mem_resource(dev, 0);
+	iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
+
+	/*
+	 * The Zynq 7000 DT describes the SLCR child devices with a reg offset
+	 * in the SCLR region. So we can't directly map the address we get from
+	 * the DT, but need to add the SCLR base offset.
+	 */
+	if (dev->device_node) {
+		struct resource *parent_res;
+
+		parent_res = dev_get_resource(dev->parent, IORESOURCE_MEM, 0);
+		if (IS_ERR(parent_res))
+			return PTR_ERR(parent_res);
+
+		slcr_offset = parent_res->start;
+	}
+
+	iores = request_iomem_region(dev_name(dev), iores->start + slcr_offset,
+				     iores->end + slcr_offset);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
 	clk_base = IOMEM(iores->start);
 
 	clks[ps_clk]  = clk_fixed("ps_clk", ps_clk_rate);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
