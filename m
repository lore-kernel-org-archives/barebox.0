Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlJo-0000nu-EI
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:19:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id b7so5752742pfi.8
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:19:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:21 -0800
Message-Id: <20181217051925.17582-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/65] PCI: desginware: Remove bogus prototypes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 8d0330a5a..ba5752ec1 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -62,8 +62,6 @@ struct pcie_host_ops {
 
 int dw_pcie_cfg_read(void __iomem *addr, int where, int size, u32 *val);
 int dw_pcie_cfg_write(void __iomem *addr, int where, int size, u32 val);
-irqreturn_t dw_handle_msi_irq(struct pcie_port *pp);
-void dw_pcie_msi_init(struct pcie_port *pp);
 int dw_pcie_link_up(struct pcie_port *pp);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
