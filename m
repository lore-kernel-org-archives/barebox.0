Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAF-0005YA-IM
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:10 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so602403pls.11
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:11:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:50 -0800
Message-Id: <20181213071144.31691-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/58] PCI: designware: Fix PORT_LOGIC_LINK_WIDTH_MASK
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit ed8b472df44af6dc4cb18e828dc9bb2d57f14b9e

  The value under PORT_LOGIC_LINK_WIDTH_MASK is 0x1, 0x2, 0x4, 0x8.  In IP
  v4.2, bits [16:8] are defined for NUM_OF_LANES.  But in IP v4.4, bits[12:8]
  are defined for NUM_OF_LANES, bits [16:13] are for other usages (bit 16 is
  AUTO_LANE_FLIP_CTRL_EN, bits [15:13] are PRE_DET_LANE).

  As there is no conflict about NUM_OF_LANES between v4.2 and v4.4, change
  the mask value to avoid future problems.

  Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 1ef544c7b..547d402a7 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -39,7 +39,7 @@
 
 #define PCIE_LINK_WIDTH_SPEED_CONTROL	0x80C
 #define PORT_LOGIC_SPEED_CHANGE		(0x1 << 17)
-#define PORT_LOGIC_LINK_WIDTH_MASK	(0x1ff << 8)
+#define PORT_LOGIC_LINK_WIDTH_MASK	(0x1f << 8)
 #define PORT_LOGIC_LINK_WIDTH_1_LANES	(0x1 << 8)
 #define PORT_LOGIC_LINK_WIDTH_2_LANES	(0x2 << 8)
 #define PORT_LOGIC_LINK_WIDTH_4_LANES	(0x4 << 8)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
