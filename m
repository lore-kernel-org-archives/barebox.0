Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLq2o-000682-Cp
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 07:49:58 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0D1241038139
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 09:49:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 09:50:45 +0200
Message-Id: <1379404245-6533-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] atmel_mci: add devname pdata support
To: barebox@lists.infradead.org

so we can specify the devname in the board

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/board.h | 1 +
 drivers/mci/atmel_mci.c                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index d695020..aa0fdae 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -150,6 +150,7 @@ struct atmel_mci_platform_data {
 	unsigned bus_width;
 	int detect_pin;
 	int wp_pin;
+	char *devname;
 };
 
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index dca3813..36107a6 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -563,6 +563,7 @@ static int atmci_probe(struct device_d *hw_dev)
 	host->mci.init = atmci_reset;
 	host->mci.card_present = atmci_card_present;
 	host->mci.hw_dev = hw_dev;
+	host->mci.devname = pd->devname;
 
 	if (pd->bus_width >= 4)
 		host->mci.host_caps |= MMC_CAP_4_BIT_DATA;
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
