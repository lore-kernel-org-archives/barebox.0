Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2z9i-0003qe-6a
 for barebox@lists.infradead.org; Tue, 14 Jan 2014 08:15:27 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Tue, 14 Jan 2014 09:23:36 +0100
Message-Id: <1389687817-30882-4-git-send-email-list-09_barebox@tqsc.de>
In-Reply-To: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
References: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH 3/4] mci: imx-esdhc: add DSR support
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

having DSR support in mci-core we need a way to
forward the DSR value to the driver. Add it to
platform data for imx-esdhc

TODO: implement the same for other host controller
drivers

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
---
 arch/arm/mach-imx/include/mach/esdhc.h |    2 ++
 drivers/mci/imx-esdhc.c                |    4 ++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/esdhc.h b/arch/arm/mach-imx/include/mach/esdhc.h
index add1691..fb7380a 100644
--- a/arch/arm/mach-imx/include/mach/esdhc.h
+++ b/arch/arm/mach-imx/include/mach/esdhc.h
@@ -42,5 +42,7 @@ struct esdhc_platform_data {
 	enum cd_types cd_type;
 	unsigned caps;
 	char *devname;
+	unsigned dsr_val;
+	int use_dsr;
 };
 #endif /* __ASM_ARCH_IMX_ESDHC_H */
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7664e7b..4c7a45e 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -582,6 +582,10 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	if (host->mci.f_min < 200000)
 		host->mci.f_min = 200000;
 	host->mci.f_max = rate;
+	if (pdata) {
+		host->mci.use_dsr = pdata->use_dsr;
+		host->mci.dsr_val = pdata->dsr_val;
+	}
 
 	mci_of_parse(&host->mci);
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
