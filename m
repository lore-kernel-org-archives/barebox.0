Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sqk-0001vb-VK
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:28:40 +0000
Received: by mail-wi0-f172.google.com with SMTP id n3so7408692wiv.5
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:28:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:28:09 +0200
Message-Id: <1406107690-8605-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/5] ARM: dts: mvebu: remove mbus ranges overwrite
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

With proper DT fixup in place, we can now remove the overwrite of
mbus ranges in Armada 370 Mirabox and Armada XP Openblocks AX3.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/dts/armada-370-mirabox-bb.dts         | 3 ---
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
index c7849237fb82..ad108b365c69 100644
--- a/arch/arm/dts/armada-370-mirabox-bb.dts
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -12,9 +12,6 @@
 	};
 
 	soc {
-		ranges = <MBUS_ID(0xf0, 0x01) 0 0xf1000000 0x100000
-			  MBUS_ID(0x01, 0xe0) 0 0xfff00000 0x100000>;
-
 		internal-regs {
 			gpio_leds {
 				green_pwr_led {
diff --git a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
index 30433f467bda..6af9c73576e0 100644
--- a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
+++ b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
@@ -12,10 +12,6 @@
 	};
 
 	soc {
-		ranges = <MBUS_ID(0xf0, 0x01) 0 0 0xf1000000 0x100000
-			  MBUS_ID(0x01, 0x1d) 0 0 0xfff00000 0x100000
-			  MBUS_ID(0x01, 0x2f) 0 0 0xf0000000 0x8000000>;
-
 		internal-regs {
 			gpio_leds {
 				red_led {
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
