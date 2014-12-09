Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00086G-4z
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:33 +0100
Message-Id: <1418151816-24593-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] ARM: MXS: Enable iomux support for pbl
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

Upcoming lowlevel code for MXS needs the iomux setup functions

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index bf949bc..e384336 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,4 +1,5 @@
 obj-y += imx.o iomux-imx.o power.o
+pbl-y += iomux-imx.o
 obj-$(CONFIG_ARCH_IMX23) += clocksource-imx23.o usb-imx23.o soc-imx23.o
 obj-$(CONFIG_ARCH_IMX28) += clocksource-imx28.o usb-imx28.o soc-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
