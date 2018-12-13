Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLfr-0005Qh-Ch
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:44:49 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 13 Dec 2018 08:44:28 +0100
Message-Id: <20181213074430.25614-7-r.czerwinski@pengutronix.de>
In-Reply-To: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 6/8] ARM: rpi: add NS16550 support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Since the 16550 driver now supports the RPI3 miniuart, enable it in the default
config.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 2bb615849..dc5ab1fe1 100644
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
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
