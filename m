Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9xXm-00061m-DX
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 13:24:51 +0000
Received: by mail-bk0-f49.google.com with SMTP id r7so218247bkg.8
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 06:24:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 15 Aug 2013 15:24:17 +0200
Message-Id: <1376573059-15055-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/3] ARM: dove: add missing clocks property to timer node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Timer node was missing a clocks property to core_clk 0 (tclk). Add it
and while at it, also fix a whitespace issue.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/dts/dove.dtsi |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/dts/dove.dtsi b/arch/arm/dts/dove.dtsi
index 4ee8db0..32fbf28 100644
--- a/arch/arm/dts/dove.dtsi
+++ b/arch/arm/dts/dove.dtsi
@@ -34,7 +34,8 @@
 
 		timer: timer@20300 {
 			compatible = "marvell,orion-timer";
-                        reg = <0x20300 0x30>;
+			reg = <0x20300 0x30>;
+			clocks = <&core_clk 0>;
 		};
 
 		intc: interrupt-controller@20204 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
