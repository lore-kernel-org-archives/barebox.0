Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aEskZ-0008Am-HQ
 for barebox@lists.infradead.org; Fri, 01 Jan 2016 05:59:44 +0000
Received: by mail-pf0-x232.google.com with SMTP id 78so165077757pfw.2
 for <barebox@lists.infradead.org>; Thu, 31 Dec 2015 21:59:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Dec 2015 21:58:36 -0800
Message-Id: <1451627918-31967-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] i.MX6: pci: Replace magic number with a named constant
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index eaa5f0e..84a937f 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -51,6 +51,8 @@ struct imx6_pcie {
 #define PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2	0x2
 #define PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK	0xf

+#define PCIE_RC_LCSR				0x80
+
 /* PCIe Port Logic registers (memory-mapped) */
 #define PL_OFFSET 0x700
 #define PCIE_PL_PFLR (PL_OFFSET + 0x08)
@@ -418,7 +420,7 @@ static int imx6_pcie_start_link(struct pcie_port *pp)
 	if (ret) {
 		dev_err(pp->dev, "Failed to bring link up!\n");
 	} else {
-		tmp = readl(pp->dbi_base + 0x80);
+		tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
 		dev_dbg(pp->dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
 	}

--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
