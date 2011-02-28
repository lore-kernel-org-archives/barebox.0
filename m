Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-00085v-7p
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:44:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:49 +0100
Message-Id: <1298886235-1769-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/7] mci i.MX23/28: rename driver to mxs.c
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig              |    2 +-
 drivers/mci/Makefile             |    2 +-
 drivers/mci/{stm378x.c => mxs.c} |    0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/mci/{stm378x.c => mxs.c} (100%)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 7d214ac..b11f267 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -27,7 +27,7 @@ config MCI_INFO
 
 comment "--- MCI host drivers ---"
 
-config MCI_STM378X
+config MCI_MXS
 	bool "i.MX23/i.MX28"
 	depends on ARCH_MXS
 	help
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index a10cb47..f175bba 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_MCI)	+= mci-core.o
-obj-$(CONFIG_MCI_STM378X) += stm378x.o
+obj-$(CONFIG_MCI_MXS) += mxs.o
 obj-$(CONFIG_MCI_S3C) += s3c.o
 obj-$(CONFIG_MCI_IMX) += imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
diff --git a/drivers/mci/stm378x.c b/drivers/mci/mxs.c
similarity index 100%
rename from drivers/mci/stm378x.c
rename to drivers/mci/mxs.c
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
