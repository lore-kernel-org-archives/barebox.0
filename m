Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWq-0006tR-Ew
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:03 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:51 +0100
Message-Id: <20190312102055.12386-3-m.tretter@pengutronix.de>
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: zynqmp: populate zynqmp_firmware dt node
To: barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>, Michael Tretter <m.tretter@pengutronix.de>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

The zynqmp_firmware node has sub-nodes for the various APIs to expose
the platform management, as e.g. clock management. Therefore, the driver
must populate the subnodes to initialize these drivers.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index a3ee992832..d7e2a66d0f 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -577,6 +577,7 @@ static int zynqmp_firmware_probe(struct device_d *dev)
 	dev_dbg(dev, "Trustzone version v%d.%d\n",
 			pm_tz_version >> 16, pm_tz_version & 0xFFFF);
 
+	of_platform_populate(dev->device_node, NULL, dev);
 out:
 	if (ret)
 		do_fw_call = do_fw_call_fail;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
