Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007sw-Rq
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:48 +0200
Message-Id: <1400236258-17924-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] ARM: i.MX: iim: Check result of dev_request_mem_region
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index dccaaa9..8e37cd7 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -277,6 +277,8 @@ static int imx_iim_probe(struct device_d *dev)
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
 
 	for (i = 0; i < 8; i++) {
 		imx_iim_add_bank(dev, base, i);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
