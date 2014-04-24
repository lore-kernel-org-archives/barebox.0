Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WdQ8J-0005uV-L0
 for barebox@lists.infradead.org; Thu, 24 Apr 2014 20:20:36 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 24 Apr 2014 22:22:46 +0200
Message-Id: <1398370966-30241-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: nitrogen6x: remove VPU/IPU QoS from DCD
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Not needed anymore, as barebox sets this up itself now.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg     | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
index 60a39fe..b6c7580 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
@@ -99,8 +99,3 @@ wm 32 0x020c4074 0x3ff00000
 wm 32 0x020c4078 0x00fff300
 wm 32 0x020c407c 0x0f0000c3
 wm 32 0x020c4080 0x000003ff
-/* enable AXI cache for VDOA/VPU/IPU */
-wm 32 0x020e0010 0xf00000cf
-/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7 */
-wm 32 0x020e0018 0x007f007f
-wm 32 0x020e001c 0x007f007f
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
