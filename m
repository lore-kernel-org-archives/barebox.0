Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAs-0001Lj-LK
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id c123so655073pfb.0
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:18 -0800
Message-Id: <20181213071144.31691-33-andrew.smirnov@gmail.com>
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
Subject: [PATCH 32/58] PCI: imx6: Removed unused struct imx6_pcie.mem_base
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 51c84709b8c4065fe83b84a487fe7822c2271e77

  PCI: imx6: Removed unused struct imx6_pcie.mem_base

  Removed the unused struct imx6_pcie.mem_base member.  No functional change
  intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 0ede1abfa..a3658844c 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -50,7 +50,6 @@ struct imx6_pcie {
 	struct pcie_port	pp;
 	void __iomem		*iomuxc_gpr;
 	enum imx6_pcie_variants variant;
-	void __iomem		*mem_base;
 	u32                     tx_deemph_gen1;
 	u32                     tx_deemph_gen2_3p5db;
 	u32                     tx_deemph_gen2_6db;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
