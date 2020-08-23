Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k9yeP-00088y-2C
 for barebox@lists.infradead.org; Sun, 23 Aug 2020 22:39:45 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 24 Aug 2020 00:39:27 +0200
Message-Id: <20200823223927.16691-1-rhi@pengutronix.de>
In-Reply-To: <20200823211343.25189-1-rhi@pengutronix.de>
References: <20200823211343.25189-1-rhi@pengutronix.de>
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
Subject: [PATCH v2] sandbox: add a minimal defconfig to build only the host
 tools
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

For distro packaging, make it possible to build all host tools in one go
(and a very minimal barebox image as an unimportant side artifact).

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
v2:
 * also select IMD to get scripts/bareboximd

 arch/sandbox/configs/hosttools_defconfig | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/sandbox/configs/hosttools_defconfig

diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
new file mode 100644
index 000000000000..72ec0fc462b2
--- /dev/null
+++ b/arch/sandbox/configs/hosttools_defconfig
@@ -0,0 +1,7 @@
+CONFIG_IMD=y
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
