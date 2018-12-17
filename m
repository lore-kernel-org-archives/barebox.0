Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYnL9-00022e-0l
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 07:29:24 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 17 Dec 2018 08:28:04 +0100
Message-Id: <9a32a90c6c40dc44e73a0933a42a7aefbf880e54.1545031438.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.48072dc0c2851fc176d68ed0eccf022fc17732e1.1545031438.git-series.r.czerwinski@pengutronix.de>
References: <cover.48072dc0c2851fc176d68ed0eccf022fc17732e1.1545031438.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 5/7] ARM: rpi: add NS16550 support
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
