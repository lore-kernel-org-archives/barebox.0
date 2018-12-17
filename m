Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKQ-00029R-8Y
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id c72so5759324pfc.6
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:50 -0800
Message-Id: <20181217051925.17582-31-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 30/65] PCI: designware: Uninline register accessors
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 3d469939bcdf044d9f370be4f6bf21436afea310

  The register accessors are not performance critical and small enough that
  the compiler can inline them itself if it makes sense.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index e01621d03..3aa048779 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -158,14 +158,14 @@ void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val)
 		writel(val, pp->dbi_base + reg);
 }
 
-static inline u32 dw_pcie_readl_unroll(struct pcie_port *pp, u32 index, u32 reg)
+static u32 dw_pcie_readl_unroll(struct pcie_port *pp, u32 index, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
 	return dw_pcie_readl_rc(pp, offset + reg);
 }
 
-static inline void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
+static void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
 					u32 val, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
