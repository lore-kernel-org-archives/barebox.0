Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BR-63
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:26 +0100
Message-Id: <20180316125354.23462-51-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 50/78] ARM: implement dma mapping functions
To: Barebox List <barebox@lists.infradead.org>

Implement basic dma mapping functions. For now just assume every address
is valid for dma mapping.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index fc71cf03cd..6ccd5893b4 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -598,3 +598,19 @@ void dma_sync_single_for_device(dma_addr_t address, size_t size,
 			outer_cache.clean_range(address, address + size);
 	}
 }
+
+dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+			  enum dma_data_direction dir)
+{
+	unsigned long addr = (unsigned long)ptr;
+
+	dma_sync_single_for_device(addr, size, dir);
+
+	return addr;
+}
+
+void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+		      enum dma_data_direction dir)
+{
+	dma_sync_single_for_cpu(addr, size, dir);
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
