Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zqymn-0000U1-2W
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 07:35:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 08:34:47 +0100
Message-Id: <1445931287-18666-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Eltec-hypercam: Add missing dcdofd in flash header
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
index 455417e..90f7e01 100644
--- a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
+++ b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
@@ -1,5 +1,6 @@
 soc imx6
 loadaddr 0x10000000
+dcdofs 0x400
 
 wm 32 0x020e04bc 0x00000030
 wm 32 0x020e04c0 0x00000030
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
