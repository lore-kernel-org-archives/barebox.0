Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Jk1-0005EV-GM
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:52:42 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 16:52:24 +0200
Message-Id: <1286808746-19456-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/4] Adapt the i.MX23 MCI driver to the v2 i.MX23 patch series
To: barebox@lists.infradead.org

The i.MX23 v2 architecture patch series was sligthly modified to easify
the i.MX28 architecture addition later on. So, we need now an index to
query the SSP clock frequency.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/stm378x.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/stm378x.c b/drivers/mci/stm378x.c
index fbb9994..8865ee8 100644
--- a/drivers/mci/stm378x.c
+++ b/drivers/mci/stm378x.c
@@ -481,7 +481,7 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	ssp = imx_get_sspclk() * 1000;
+	ssp = imx_get_sspclk(0) * 1000;
 
 	for (div1 = 2; div1 < 255; div1 += 2) {
 		div2 = ssp / nc / div1;
@@ -658,20 +658,20 @@ static int stm_mci_probe(struct device_d *hw_dev)
 	host->host_caps = pd->caps;
 
 	if (pd->f_min == 0) {
-		host->f_min = imx_get_sspclk() / 254U / 256U * 1000U;
+		host->f_min = imx_get_sspclk(0) / 254U / 256U * 1000U;
 		pr_debug("Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
 		pr_debug("Min. frequency is %u Hz, could be %u Hz\n",
-			host->f_min, imx_get_sspclk() / 254U / 256U * 1000U);
+			host->f_min, imx_get_sspclk(0) / 254U / 256U * 1000U);
 	}
 	if (pd->f_max == 0) {
-		host->f_max = imx_get_sspclk() / 2U / 1U * 1000U;
+		host->f_max = imx_get_sspclk(0) / 2U / 1U * 1000U;
 		pr_debug("Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
 		pr_debug("Max. frequency is %u Hz, could be %u Hz\n",
-			host->f_max, imx_get_sspclk() / 2U / 1U * 1000U);
+			host->f_max, imx_get_sspclk(0) / 2U / 1U * 1000U);
 	}
 
 #ifdef CONFIG_MCI_INFO
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
