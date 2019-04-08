Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.iad3b.emailsrvr.com ([146.20.161.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDVak-0000f7-Ti
 for barebox@lists.infradead.org; Mon, 08 Apr 2019 14:49:48 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Mon,  8 Apr 2019 15:49:32 +0100
Message-Id: <20190408144932.29201-1-abbotti@mev.co.uk>
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
Subject: [PATCH] clk: socfpga: fix compiler warnings for Cyclone5
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

When building for Cyclone5 SoCFPGA, the socfpga_a10_pll_init(),
socfpga_a10_perith_init() and socfpga_a10_gate_init() functions are
defined as dummy functions returning ERR_PTR(-ENOSYS).  They are defined
with external linkage.  With '-Wmissing-prototypes' GCC warns about
externally linked function definitions with no preceding prototype.
Define them as 'static inline' to avoid the compiler warnings.

(Note: Arria10 uses non-dummy versions of these functions declared
'extern' but defined elsewhere.)

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/clk/socfpga/clk.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
index 6d6c28344..cea3fcf5e 100644
--- a/drivers/clk/socfpga/clk.h
+++ b/drivers/clk/socfpga/clk.h
@@ -41,15 +41,15 @@ struct clk *socfpga_a10_pll_init(struct device_node *node);
 struct clk *socfpga_a10_periph_init(struct device_node *node);
 struct clk *socfpga_a10_gate_init(struct device_node *node);
 #else
-struct clk *socfpga_a10_pll_init(struct device_node *node)
+static inline struct clk *socfpga_a10_pll_init(struct device_node *node)
 {
 	return ERR_PTR(-ENOSYS);
 }
-struct clk *socfpga_a10_periph_init(struct device_node *node)
+static inline struct clk *socfpga_a10_periph_init(struct device_node *node)
 {
 	return ERR_PTR(-ENOSYS);
 }
-struct clk *socfpga_a10_gate_init(struct device_node *node)
+static inline struct clk *socfpga_a10_gate_init(struct device_node *node)
 {
 	return ERR_PTR(-ENOSYS);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
