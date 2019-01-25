Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gn4wG-0001Iv-3d
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 17:06:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gn4wC-0000nj-Vn
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 18:06:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 25 Jan 2019 18:06:40 +0100
Message-Id: <20190125170640.19469-3-l.stach@pengutronix.de>
In-Reply-To: <20190125170640.19469-1-l.stach@pengutronix.de>
References: <20190125170640.19469-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: nxp-imx8mq-evk: include the HDMI firmware in the
 image
To: barebox@lists.infradead.org

The board has a HDMI output by default, so it makes sense to include
the necessary firmware for this.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index aff8321b9ad6..b0016372314a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -3,3 +3,4 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 dcdofs 0x400
+signed_hdmi_firmware firmware/imx/signed_hdmi_imx8m.bin
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
