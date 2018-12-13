Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAQ-0005bi-07
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id d72so600849pga.9
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:58 -0800
Message-Id: <20181213071144.31691-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/58] PCI: designware: Explain why we don't program ATU for
 some platforms
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit dd193929d91e1b44b90f81509feeff10c94ddc4d

  Some platforms don't support ATU, e.g., pci-keystone.c.  These platforms
  use their own address translation component rather than ATU, and they
  provide the rd_other_conf and wr_other_conf methods to program the
  translation component and perform the access.

  Add a comment to explain why we don't program the ATU for these platforms.

  [bhelgaas: changelog]
  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 28f57f9d2..34dba5898 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -290,6 +290,11 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
 
+       /*
+        * If the platform provides ->rd_other_conf, it means the platform
+        * uses its own address translation component rather than ATU, so
+        * we should not program the ATU here.
+        */
 	if (!pp->ops->rd_other_conf)
 		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
