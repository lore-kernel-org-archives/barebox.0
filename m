Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001Lr-BU
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3C1D3A004FA
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:46 +0200
Message-Id: <1461751489-13302-13-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 12/15] ARM: phytec-som-imx6: update RAM calibration
 for phycore-imx6dl
To: barebox@lists.infradead.org

Update RAM calibration values in the flashheader file for phyCORE-i.MX6
DualLite/Solo. These are verified and tested in the climatic chamber for
commercial, extended commercial, industrial and automotive i.MX6
variants.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../phytec-som-imx6/flash-header-phytec-pcm058dl.h | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
index c7df790..a6e4578 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
@@ -44,18 +44,18 @@ wm 32 0x020e0488 0x00000028
 wm 32 0x020e048c 0x00000028
 wm 32 0x021b0800 0xa1390003
 wm 32 0x021b4800 0xa1380003
-wm 32 0x021b080c 0x0032003A
-wm 32 0x021b0810 0x00350037
-wm 32 0x021b480c 0x00260038
-wm 32 0x021b4810 0x002C0038
-wm 32 0x021b083c 0x42630244
-wm 32 0x021b0840 0x02300238
-wm 32 0x021b483c 0x02540258
-wm 32 0x021b4840 0x0236021e
-wm 32 0x021b0848 0x46484446
-wm 32 0x021b4848 0x302d2c35
-wm 32 0x021b0850 0x36342630
-wm 32 0x021b4850 0x3423372d
+wm 32 0x021b080c 0x0019001C
+wm 32 0x021b0810 0x00140019
+wm 32 0x021b480c 0x00030003
+wm 32 0x021b4810 0x00030010
+wm 32 0x021b083c 0x42140210
+wm 32 0x021b0840 0x02040208
+wm 32 0x021b483c 0x42040208
+wm 32 0x021b4840 0x01680178
+wm 32 0x021b0848 0x40423E3E
+wm 32 0x021b4848 0x4242443E
+wm 32 0x021b0850 0x2C2C2A30
+wm 32 0x021b4850 0x2E2A3228
 wm 32 0x021b081c 0x33333333
 wm 32 0x021b0820 0x33333333
 wm 32 0x021b0824 0x33333333
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
