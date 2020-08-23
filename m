Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k9xJP-0001nX-Oy
 for barebox@lists.infradead.org; Sun, 23 Aug 2020 21:14:00 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Sun, 23 Aug 2020 23:13:43 +0200
Message-Id: <20200823211343.25189-1-rhi@pengutronix.de>
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
Subject: [PATCH] sandbox: add a minimal defconfig to build only the host tools
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

For distro packaging, make it possible to build all host tools in one go
(and a very minimal barebox image as an unimportant side artifact).

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/sandbox/configs/hosttools_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 arch/sandbox/configs/hosttools_defconfig

diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
new file mode 100644
index 000000000000..91b03e691ee4
--- /dev/null
+++ b/arch/sandbox/configs/hosttools_defconfig
@@ -0,0 +1,6 @@
+CONFIG_COMPILE_HOST_TOOLS=y
+CONFIG_ARCH_IMX_USBLOADER=y
+CONFIG_MVEBU_HOSTTOOLS=y
+CONFIG_MXS_HOSTTOOLS=y
+CONFIG_OMAP3_USB_LOADER=y
+CONFIG_OMAP4_HOSTTOOL_USBBOOT=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
