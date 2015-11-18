Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzA46-0002BC-Oe
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 21:14:55 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 18 Nov 2015 21:14:30 +0000
Message-ID: <1447881271.4553.176.camel@rtred1test09.kymeta.local>
References: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
In-Reply-To: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <9D050B85094D3944BB5F8D57E86DE1C6@kymetacorp.com>
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
Subject: [PATCH 4/4] mci: dw_mmc: Add support for high speed modes
To: barebox <barebox@lists.infradead.org>

The Synopsys DesignWare core supports 52 MHz MMC mode and 50 MHz SD
mode, so add the cap flags so they are used.

This works on socfpga.  The other user of this driver is Rockchip and
the datasheet I found for the RK30xx indicated it supported highspeed
modes as well.

The Linux kernel has DT properties, e.g. "cap-mmc-highspeed", but none
of the drivers in barebox support this at all.  They all specify flags
in their code.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/mci/dw_mmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 18ddd16..cbd3f00 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -706,6 +706,8 @@ static int dw_mmc_probe(struct device_d *dev)
 	host->mci.hw_dev = dev;
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
+	host->mci.host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
+			       MMC_CAP_SD_HIGHSPEED;
 
 	if (pdata) {
 		host->ciu_div = pdata->ciu_div;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
