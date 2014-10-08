Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbrr7-0006II-Up
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:04:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:03:57 +0200
Message-Id: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: nitrogen6x: whitespace cleanup
To: barebox@lists.infradead.org

Align hex values under each other.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg      | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
index 8175cfe..4aa7ec7 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
@@ -14,8 +14,8 @@ wm 32 MX6_MMDC_P0_MDSCR			0x00008033
 wm 32 MX6_MMDC_P0_MDSCR			0x00428031
 wm 32 MX6_MMDC_P0_MDSCR			0x19308030
 wm 32 MX6_MMDC_P0_MDSCR			0x04008040
-wm 32 MX6_MMDC_P0_MPZQHWCTRL	0xA1390003
-wm 32 MX6_MMDC_P1_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL		0xA1390003
 wm 32 MX6_MMDC_P0_MDREF			0x00005800
 wm 32 MX6_MMDC_P0_MPODTCTRL		0x00022227
 wm 32 MX6_MMDC_P1_MPODTCTRL		0x00022227
@@ -27,10 +27,10 @@ wm 32 MX6_MMDC_P0_MPRDDLCTL		0x45393B3E
 wm 32 MX6_MMDC_P1_MPRDDLCTL		0x403A3747
 wm 32 MX6_MMDC_P0_MPWRDLCTL		0x40434541
 wm 32 MX6_MMDC_P1_MPWRDLCTL		0x473E4A3B
-wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x0011000E
-wm 32 MX6_MMDC_P0_MPWLDECTRL1	0x000E001B
-wm 32 MX6_MMDC_P1_MPWLDECTRL0	0x00190015
-wm 32 MX6_MMDC_P1_MPWLDECTRL1	0x00070018
+wm 32 MX6_MMDC_P0_MPWLDECTRL0		0x0011000E
+wm 32 MX6_MMDC_P0_MPWLDECTRL1		0x000E001B
+wm 32 MX6_MMDC_P1_MPWLDECTRL0		0x00190015
+wm 32 MX6_MMDC_P1_MPWLDECTRL1		0x00070018
 wm 32 MX6_MMDC_P0_MPMUR0		0x00000800
 wm 32 MX6_MMDC_P1_MPMUR0		0x00000800
 wm 32 MX6_MMDC_P0_MDSCR			0x00000000
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
