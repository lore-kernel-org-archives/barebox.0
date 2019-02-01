Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcM-0004sE-3J
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id z23so2422403plo.0
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:19 -0800
Message-Id: <20190201023133.1078-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190201023133.1078-1-andrew.smirnov@gmail.com>
References: <20190201023133.1078-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/15] PCI: dwc: Fix pointer width cast problem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Casting to u32 works well on 32-bit builds, but causes problem when
compiled on 64-bit machines. Switch it to cast to "unsigned long", so
that it would have appropriate width in both cases.

While at it, replace explicit casts to void * with IOMEM.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware-host.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 5acd47f6e..7a95b2a09 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -150,15 +150,15 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	}
 
 	if (!pci->dbi_base)
-		pci->dbi_base = (void __force *)pp->cfg.start;
+		pci->dbi_base = IOMEM(pp->cfg.start);
 
 	pp->mem_base = pp->mem.start;
 
 	if (!pp->va_cfg0_base)
-		pp->va_cfg0_base = (void __force *)(u32)pp->cfg0_base;
+		pp->va_cfg0_base = IOMEM((unsigned long)pp->cfg0_base);
 
 	if (!pp->va_cfg1_base)
-		pp->va_cfg1_base = (void __force *)(u32)pp->cfg1_base;
+		pp->va_cfg1_base = IOMEM((unsigned long)pp->cfg1_base);
 
 	ret = of_property_read_u32(np, "num-viewport", &pci->num_viewport);
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
