Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYo04-0002BB-I7
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 08:11:41 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 17 Dec 2018 09:10:43 +0100
Message-Id: <1deb34fe683cf56d3b90e7252195d16678293a9e.1545034218.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
References: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v4 5/7] ARM: rpi: add NS16550 support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Since the 16550 driver now supports the RPI3 miniuart, enable it in the default
config.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 2bb6158..dc5ab1f 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -63,6 +63,7 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
 CONFIG_MCI_BCM283X=y
 CONFIG_LED=y
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
