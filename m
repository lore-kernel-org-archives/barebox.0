Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueA8-000216-Hj
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D70A5A00490
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:51 +0100
Message-Id: <1446805318-26691-4-git-send-email-s.christ@phytec.de>
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 03/10] ARM: phytec-som-imx6: set loadaddr to start of DDR
 memory.
To: barebox@lists.infradead.org

The loadaddr in the flash-headers for the phyFLEX/phyCARD-i.MX6 was set
to 0x20000000 (512MiB). The start of the DDR memory in CPU's memory map
is 0x10000000 (256MiB). So the ROM loader loads the barebox image at the
memory position 256MiB and higher in the DDR memory.

This is a problem when the module doesn't have more than 256MiB of
memory. Therefore the loadaddr is set to the start of the DDR memory.

The patch was tested on a phyFLEX-i.MX6 Quad with 1GiB RAM on one bank
and on a phyCARD-i.MX6 Quad 1GiB RAM on two banks.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h  | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h   | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
index a03b8dc..ebcc1dd 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
@@ -1,5 +1,5 @@
 soc imx6
-loadaddr 0x20000000
+loadaddr 0x10000000
 dcdofs 0x400
 
 wm 32 0x020e05a8 0x00000028
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
index 93291e9..507b9c6 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
@@ -1,5 +1,5 @@
 soc imx6
-loadaddr 0x20000000
+loadaddr 0x10000000
 dcdofs 0x400
 
 wm 32 0x020e0798 0x000C0000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
index 337488b..6cdf429 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
@@ -1,5 +1,5 @@
 soc imx6
-loadaddr 0x20000000
+loadaddr 0x10000000
 dcdofs 0x400
 
 wm 32 0x020e0774 0x000C0000
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
