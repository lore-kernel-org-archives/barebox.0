Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyvcx-0000fc-8d
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 11:12:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jyvcw-0001UT-2e
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 13:12:34 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 24 Jul 2020 13:12:33 +0200
Message-Id: <20200724111233.23725-4-l.stach@pengutronix.de>
In-Reply-To: <20200724111233.23725-1-l.stach@pengutronix.de>
References: <20200724111233.23725-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] nvmem: ocotp: add support for i.MX8MM
To: barebox@lists.infradead.org

For whatever reason the i.MX8MM OCOTP got a separate compatible and
is not marked as compatible to imx8mq, while the parameters used in the
driver seem to be the same.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/nvmem/Kconfig | 2 +-
 drivers/nvmem/ocotp.c | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 968342b281ad..55fc6f382d16 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -18,7 +18,7 @@ config NVMEM_SNVS_LPGPR
 
 config IMX_OCOTP
 	tristate "i.MX6 On Chip OTP controller"
-	depends on ARCH_IMX6 || ARCH_VF610 || ARCH_IMX8MQ
+	depends on ARCH_IMX6 || ARCH_VF610 || ARCH_IMX8M
 	depends on OFDEVICE
 	help
 	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 34e33dee827f..a444f0c364de 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -755,6 +755,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mq-ocotp",
 		.data = &imx8mq_ocotp_data,
+	}, {
+		.compatible = "fsl,imx8mm-ocotp",
+		.data = &imx8mq_ocotp_data,
 	}, {
 		.compatible = "fsl,vf610-ocotp",
 		.data = &vf610_ocotp_data,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
