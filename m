Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2w-0003B0-EN
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:02 +0000
Received: by wizk4 with SMTP id k4so113804277wiz.1
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:36 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:20 +0200
Message-Id: <1429560686-11391-9-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 08/14] ARM: mvebu: Move PCIe register defines to socid.h
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

To prepare PCIe device id fixups, move PCIe register defines
to a common location.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/common.c             | 5 +----
 arch/arm/mach-mvebu/include/mach/socid.h | 4 ++++
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 309f7a6aaa52..7d28d9c45aed 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -22,6 +22,7 @@
 #include <of_address.h>
 #include <linux/clk.h>
 #include <mach/common.h>
+#include <mach/socid.h>
 
 /*
  * Marvell MVEBU SoC id and revision can be read from any PCIe
@@ -40,10 +41,6 @@ static const struct of_device_id mvebu_pcie_of_ids[] = {
 	{ },
 };
 
-#define PCIE_VEN_DEV_ID		0x000
-#define PCIE_REV_ID		0x008
-#define  REV_ID_MASK		0xff
-
 static int mvebu_soc_id_init(void)
 {
 	struct device_node *np, *cnp;
diff --git a/arch/arm/mach-mvebu/include/mach/socid.h b/arch/arm/mach-mvebu/include/mach/socid.h
index 36d681a9dcc1..7a29c82b30c0 100644
--- a/arch/arm/mach-mvebu/include/mach/socid.h
+++ b/arch/arm/mach-mvebu/include/mach/socid.h
@@ -16,6 +16,10 @@
 #ifndef __MACH_MVEBU_SOCID_H
 #define __MACH_MVEBU_SOCID_H
 
+#define PCIE_VEN_DEV_ID		0x000
+#define PCIE_REV_ID		0x008
+#define  REV_ID_MASK		0xff
+
 extern u16 soc_devid;
 extern u16 soc_revid;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
