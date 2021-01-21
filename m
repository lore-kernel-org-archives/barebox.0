Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAE-0001ll-He
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:13 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:54 +0100
Message-Id: <20210121112958.25937-9-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
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
Subject: [PATCH 09/13] of: kconfig: of_overlay uses firmwaremgr_load_file
To: barebox@lists.infradead.org

As of_firmware.c uses the firmwaremgr_load_file function, it depends on
FIRMWARE.

Signed-off-by: Steffen Trumtrar <str@pengutronix.de>
---
 drivers/of/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 23be25d85d..e58fe50f70 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -49,6 +49,7 @@ config OF_BAREBOX_ENV_IN_FS
 
 config OF_OVERLAY
 	select OFTREE
+	select FIRMWARE
 	bool "Devicetree overlays"
 	help
 	  Overlays allow to patch the devicetree. Unlike Linux, Barebox does
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
