Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vlefh-0001v4-JT
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 12:56:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2013 13:56:12 +0100
Message-Id: <1385556973-19218-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
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
Subject: [PATCH 1/2] ARM: imx: karo tx25: Add config file for imx-image
To: barebox@lists.infradead.org

Currently unused in barebox, but useful for bootstrapping a tx25
from USB where a imx-image is needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg

diff --git a/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg b/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
new file mode 100644
index 0000000..2345f18
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/flash-header-tx25.imxcfg
@@ -0,0 +1,23 @@
+#
+# currently unused in barebox, but useful to generate
+# a imx-image to use with imx-usb-loader
+#
+soc imx25
+loadaddr 0x80000000
+dcdofs 0x400
+wm 32 0xb8001010 0x00000002
+wm 32 0xb8001004 0x00095728
+wm 32 0xb8001000 0x92116480
+wm 32 0x80000400 0x92116480
+wm 32 0xb8001000 0xa2116480
+wm 32 0xb8001000 0xb2116480
+wm 8 0x80000033 0x80
+wm 32 0xb8001000 0x82116480
+
+wm 32 0xb800100c 0x00095728
+wm 32 0xb8001008 0x92116480
+wm 32 0x80000400 0x92116480
+wm 32 0xb8001008 0xa2116480
+wm 32 0xb8001008 0xb2116480
+wm 8 0x90000033 0x80
+wm 32 0xb8001008 0x82116480
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
