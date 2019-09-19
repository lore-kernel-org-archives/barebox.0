Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAovh-0003a2-90
 for barebox@lists.infradead.org; Thu, 19 Sep 2019 05:24:37 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 19 Sep 2019 07:24:04 +0200
Message-Id: <20190919052403.133717-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: NETX: remove architecture
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Otherwise make clean will complain about the missing Makefile.
---
 arch/arm/boards/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 10cd0c413d..61c98adbdc 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -82,7 +82,6 @@ obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
 obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
 obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
 obj-$(CONFIG_MACH_NVIDIA_JETSON)		+= nvidia-jetson-tk1/
-obj-$(CONFIG_MACH_NXDB500)			+= netx/
 obj-$(CONFIG_MACH_NXP_IMX6ULL_EVK)		+= nxp-imx6ull-evk/
 obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
