Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP1d0-0005RC-Vd
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 08:43:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 09:40:59 +0100
Message-Id: <20181120084100.8737-3-s.hauer@pengutronix.de>
In-Reply-To: <20181120084100.8737-1-s.hauer@pengutronix.de>
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX: Add max_load_size option to boards that will
 need it
To: Barebox List <barebox@lists.infradead.org>

The max_load_size option makes sure that only the portion of the image
is loaded to SRAM that fits into it.

Note this does not cover the whole available SRAM area for all boards,
for the bigger SRAM areas only a part is chosen that is enough to fit
the initial loader in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg            | 1 +
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg    | 1 +
 .../flash-header-technexion-wandboard.imxcfg                     | 1 +
 arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg          | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
index 400a870154..9e8dce5877 100644
--- a/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+++ b/arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
@@ -1,3 +1,4 @@
 soc imx6
 loadaddr 0x00907000
+max_load_size 0x11000
 dcdofs 0x400
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index a12c28fceb..14e4a595a0 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -1,4 +1,5 @@
 soc imx8mq
 
 loadaddr 0x007E1000
+max_load_size 0x10000
 dcdofs 0x400
diff --git a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
index 33621117d4..68cb08e200 100644
--- a/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
+++ b/arch/arm/boards/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
@@ -1,3 +1,4 @@
 loadaddr 0x00907000
 soc imx6
+max_load_size 0x11000
 dcdofs 0x400
diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
index 400a870154..9e8dce5877 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
+++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
@@ -1,3 +1,4 @@
 soc imx6
 loadaddr 0x00907000
+max_load_size 0x11000
 dcdofs 0x400
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
