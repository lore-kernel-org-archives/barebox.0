Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUV12-000121-5l
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 09:30:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dUV0g-0008O2-DR
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 11:29:42 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 11:29:42 +0200
Message-Id: <20170710092942.13037-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx: remove DCD files from Makefiles
To: barebox@lists.infradead.org

The current multi-image mechnism builds them as needed, so there is no
reason to include them in the Makefiles. Remove them before this spreads
even more.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/cm-fx6/Makefile                  | 1 -
 arch/arm/boards/dfi-fs700-m60/Makefile           | 2 --
 arch/arm/boards/efika-mx-smartbook/Makefile      | 4 +---
 arch/arm/boards/embedsky-e9/Makefile             | 3 +--
 arch/arm/boards/embest-riotboard/Makefile        | 3 +--
 arch/arm/boards/freescale-mx51-babbage/Makefile  | 6 +-----
 arch/arm/boards/freescale-mx53-qsb/Makefile      | 3 +--
 arch/arm/boards/freescale-mx53-vmx53/Makefile    | 3 +--
 arch/arm/boards/freescale-mx6-sabrelite/Makefile | 3 +--
 arch/arm/boards/freescale-mx6-sabresd/Makefile   | 3 +--
 arch/arm/boards/freescale-vf610-twr/Makefile     | 2 --
 arch/arm/boards/gk802/Makefile                   | 3 +--
 arch/arm/boards/kindle-mx50/Makefile             | 3 +--
 arch/arm/boards/technexion-pico-hobbit/Makefile  | 4 ----
 arch/arm/boards/technexion-wandboard/Makefile    | 3 +--
 arch/arm/boards/tqma6x/Makefile                  | 3 ---
 arch/arm/boards/udoo/Makefile                    | 3 +--
 arch/arm/boards/variscite-mx6/Makefile           | 3 +--
 18 files changed, 13 insertions(+), 42 deletions(-)

diff --git a/arch/arm/boards/cm-fx6/Makefile b/arch/arm/boards/cm-fx6/Makefile
index 3a773bbf7b74..01c7a259e9a5 100644
--- a/arch/arm/boards/cm-fx6/Makefile
+++ b/arch/arm/boards/cm-fx6/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-extra-y += flash-header-mx6-cm-fx6.dcd.S flash-header-mx6-cm-fx6.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dfi-fs700-m60/Makefile b/arch/arm/boards/dfi-fs700-m60/Makefile
index 2d0ec7c1ce2d..01c7a259e9a5 100644
--- a/arch/arm/boards/dfi-fs700-m60/Makefile
+++ b/arch/arm/boards/dfi-fs700-m60/Makefile
@@ -1,4 +1,2 @@
 obj-y += board.o
-extra-y += flash-header-fs700-m60-6s.dcd.S flash-header-fs700-m60-6q-nanya.dcd.S flash-header-fs700-m60-6q-micron.dcd.S
-extra-y += flash-header-fs700-m60-6s.dcd flash-header-fs700-m60-6q-nanya.dcd flash-header-fs700-m60-6q-micron.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index d00e0f6ed064..73d7b9696cf4 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -1,5 +1,3 @@
-obj-y += board.o flash-header-imx51-genesi-efikasb.dcd.o
+obj-y += board.o
 lwl-y += lowlevel.o
-extra-y += flash-header-imx51-genesi-efikasb.dcd.S
-extra-y += flash-header-imx51-genesi-efikasb.dcd
 bbenv-y += defaultenv-efikasb
diff --git a/arch/arm/boards/embedsky-e9/Makefile b/arch/arm/boards/embedsky-e9/Makefile
index db2dba776955..86afde47fbf4 100644
--- a/arch/arm/boards/embedsky-e9/Makefile
+++ b/arch/arm/boards/embedsky-e9/Makefile
@@ -1,4 +1,3 @@
-obj-y += board.o flash-header-e9.dcd.o
-extra-y += flash-header-e9.dcd.S flash-header-e9.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-e9
diff --git a/arch/arm/boards/embest-riotboard/Makefile b/arch/arm/boards/embest-riotboard/Makefile
index 9f8e1f2b2167..01c7a259e9a5 100644
--- a/arch/arm/boards/embest-riotboard/Makefile
+++ b/arch/arm/boards/embest-riotboard/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-embest-riotboard.dcd.o
-extra-y += flash-header-embest-riotboard.dcd.S flash-header-embest-riotboard.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx51-babbage/Makefile b/arch/arm/boards/freescale-mx51-babbage/Makefile
index 31b8fcd8a2de..01c7a259e9a5 100644
--- a/arch/arm/boards/freescale-mx51-babbage/Makefile
+++ b/arch/arm/boards/freescale-mx51-babbage/Makefile
@@ -1,6 +1,2 @@
-obj-y += board.o flash-header-imx51-babbage.dcd.o
-extra-y += flash-header-imx51-babbage.dcd.S flash-header-imx51-babbage.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
-
-obj-$(CONFIG_ARCH_IMX_XLOAD) += flash-header-imx51-babbage-xload.dcd.o
-extra-$(CONFIG_ARCH_IMX_XLOAD) += flash-header-imx51-babbage-xload.dcd.S flash-header-imx51-babbage-xload.dcd
diff --git a/arch/arm/boards/freescale-mx53-qsb/Makefile b/arch/arm/boards/freescale-mx53-qsb/Makefile
index bcaa974f35cf..01c7a259e9a5 100644
--- a/arch/arm/boards/freescale-mx53-qsb/Makefile
+++ b/arch/arm/boards/freescale-mx53-qsb/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-imx53-loco.dcd.o
-extra-y += flash-header-imx53-loco.dcd.S flash-header-imx53-loco.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-vmx53/Makefile b/arch/arm/boards/freescale-mx53-vmx53/Makefile
index 33d5e59d35c1..01c7a259e9a5 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/Makefile
+++ b/arch/arm/boards/freescale-mx53-vmx53/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-imx53-vmx53.dcd.o
-extra-y += flash-header-imx53-vmx53.dcd.S flash-header-imx53-vmx53.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
index 6ae9e75e2d62..01c7a259e9a5 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-mx6-sabrelite.dcd.o
-extra-y += flash-header-mx6-sabrelite.dcd.S flash-header-mx6-sabrelite.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index f72c641e17d1..01c7a259e9a5 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-mx6-sabresd.dcd.o
-extra-y += flash-header-mx6-sabresd.dcd.S flash-header-mx6-sabresd.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-vf610-twr/Makefile b/arch/arm/boards/freescale-vf610-twr/Makefile
index 6b029ce2fe43..b08c4a93ca27 100644
--- a/arch/arm/boards/freescale-vf610-twr/Makefile
+++ b/arch/arm/boards/freescale-vf610-twr/Makefile
@@ -1,3 +1 @@
-obj-y += flash-header-vf610-twr.dcd.o
-extra-y += flash-header-vf610-twr.dcd.S flash-header-vf610-twr.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/gk802/Makefile b/arch/arm/boards/gk802/Makefile
index d9c7ab60edcb..01c7a259e9a5 100644
--- a/arch/arm/boards/gk802/Makefile
+++ b/arch/arm/boards/gk802/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header.dcd.o
-extra-y += flash-header.dcd.S flash-header.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/kindle-mx50/Makefile b/arch/arm/boards/kindle-mx50/Makefile
index 76ad17a1c2ca..2cc614a8785b 100644
--- a/arch/arm/boards/kindle-mx50/Makefile
+++ b/arch/arm/boards/kindle-mx50/Makefile
@@ -1,4 +1,3 @@
-obj-y += board.o flash-header-kindle-lpddr1.dcd.o flash-header-kindle-lpddr2.dcd.o
-extra-y += flash-header-kindle-lpddr1.dcd.S flash-header-kindle-lpddr1.dcd flash-header-kindle-lpddr2.dcd.S flash-header-kindle-lpddr2.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-kindle-mx50
diff --git a/arch/arm/boards/technexion-pico-hobbit/Makefile b/arch/arm/boards/technexion-pico-hobbit/Makefile
index b60dcd2bc13c..02e17035a075 100644
--- a/arch/arm/boards/technexion-pico-hobbit/Makefile
+++ b/arch/arm/boards/technexion-pico-hobbit/Makefile
@@ -1,7 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
-extra-y += flash-header-imx6ul-pico-hobbit-256.dcd.S \
-           flash-header-imx6ul-pico-hobbit-256.dcd \
-           flash-header-imx6ul-pico-hobbit-512.dcd.S \
-           flash-header-imx6ul-pico-hobbit-512.dcd
 bbenv-y += defaultenv-pico-hobbit
diff --git a/arch/arm/boards/technexion-wandboard/Makefile b/arch/arm/boards/technexion-wandboard/Makefile
index 8fc428c80ad5..01c7a259e9a5 100644
--- a/arch/arm/boards/technexion-wandboard/Makefile
+++ b/arch/arm/boards/technexion-wandboard/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-technexion-wandboard.dcd.o
-extra-y += flash-header-technexion-wandboard.dcd.S flash-header-technexion-wandboard.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma6x/Makefile b/arch/arm/boards/tqma6x/Makefile
index f250e5977cab..01c7a259e9a5 100644
--- a/arch/arm/boards/tqma6x/Makefile
+++ b/arch/arm/boards/tqma6x/Makefile
@@ -1,5 +1,2 @@
 obj-y += board.o
-obj-y += flash-header-tqma6q.dcd.o flash-header-tqma6dl.dcd.o
-extra-y += flash-header-tqma6q.dcd.S flash-header-tqma6dl.dcd.S
-extra-y += flash-header-tqma6q.dcd flash-header-tqma6dl.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/udoo/Makefile b/arch/arm/boards/udoo/Makefile
index ae17789b8f76..01c7a259e9a5 100644
--- a/arch/arm/boards/udoo/Makefile
+++ b/arch/arm/boards/udoo/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-mx6-udoo.dcd.o
-extra-y += flash-header-mx6-udoo.dcd.S flash-header-mx6-udoo.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/variscite-mx6/Makefile b/arch/arm/boards/variscite-mx6/Makefile
index 35b114b8dd40..01c7a259e9a5 100644
--- a/arch/arm/boards/variscite-mx6/Makefile
+++ b/arch/arm/boards/variscite-mx6/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-variscite.dcd.o
-extra-y += flash-header-variscite.dcd.S flash-header-variscite.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
