Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAam-0002ar-CJ
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:53 +0000
Received: by mail-wg0-f41.google.com with SMTP id a1so6877876wgh.0
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:11:02 +0200
Message-Id: <1403554262-12777-12-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 11/11] ARM: mvebu: remove dtb Makefile entries
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

MULTI_PBL images have a built-in dtb by default. With all MVEBU
SoCs converted to MULTI_PBL images, get rid of the extra Makefile
rules for appended dtbs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/dts/Makefile | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f35d9386d6e7..12915776e7cf 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -32,12 +32,6 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-var-custom.dtb \
 	imx6s-riotboard.dtb \
 	imx6q-phytec-pbaa03.dtb
-dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb \
-	armada-370-mirabox-bb.dtb \
-	armada-xp-gp-bb.dtb \
-	armada-xp-openblocks-ax3-4-bb.dtb \
-	kirkwood-guruplug-server-plus-bb.dtb \
-	kirkwood-topkick-bb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
