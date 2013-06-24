Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur4cZ-0005pZ-0C
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 11:07:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Jun 2013 13:07:19 +0200
Message-Id: <1372072039-22759-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372072039-22759-1-git-send-email-s.hauer@pengutronix.de>
References: <1372072039-22759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX53: Do not register platform devices with
 devicetree probe
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 193406f..baafe74 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -55,6 +55,9 @@ static int imx53_init(void)
 	imx53_silicon_revision();
 	imx53_boot_save_loc((void *)MX53_SRC_BASE_ADDR);
 
+	if (of_get_root_node())
+		return 0;
+
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
