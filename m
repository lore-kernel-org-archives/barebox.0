Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSibG-0006s0-7Y
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:12:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gSib2-0003dj-Gy
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 14:12:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Nov 2018 14:12:40 +0100
Message-Id: <20181130131240.10558-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: i.MX: Add max_load_size option to boards that
 will need it
To: barebox@lists.infradead.org

---
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index 14e4a595a06a..aff8321b9ad6 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -1,5 +1,5 @@
 soc imx8mq
 
 loadaddr 0x007E1000
-max_load_size 0x10000
+max_load_size 0x3F000
 dcdofs 0x400
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
