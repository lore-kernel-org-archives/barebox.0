Delivery-date: Sat, 19 Mar 2022 08:28:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTVj-00GW1E-Sn
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 08:28:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTVk-0002HV-Al
	for lore@pengutronix.de; Sat, 19 Mar 2022 08:28:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlobKxg1lbCGSDtvfqi5hzejx94dOQ6HeJxP/bq3D2Y=; b=zbgYMTtQtmdE5q
	lXKJeUhxaR//75oPNJvlhvvVMONqd+5oSA2X7C51EsKwLDjjeenjqdHxazsoMu2YZFvwpeM22lNf3
	nISAh2206Ud0lZ59aWhlhxsXA8nOV0mYubQKMY7pqlfyEoUQx62nhD7KA9fsds477ATsbJMk//y5a
	BSBi6i+m//EUpUKMCEoVB5BWuIkyM6R9U9Av6U9VcOyXadMzTqvLe8dudzuaQ2u6wfyvmqlhBLPZ8
	OmMxNzdAEOnyVQQmdcfVyCJ3nghzbMGSiuoI63OeGv5Np8prPcIGqt1n4Jkodbtsc0z0N3Tvh0aar
	PxZOZPu1Vr2tchIO8wsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVTS3-003NEJ-Jp; Sat, 19 Mar 2022 07:24:39 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVTRv-003NA9-Jy
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 07:24:33 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id ADAE71C0004;
 Sat, 19 Mar 2022 07:24:15 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Mar 2022 08:24:08 +0100
Message-Id: <20220319072410.1310723-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220319072410.1310723-1-ahmad@a3f.at>
References: <20220319072410.1310723-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_002432_222710_23B000FD 
X-CRM114-Status: GOOD (  13.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] mci: mci_spi: extend driver for device tree probing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Driver has been matched by name only so far, add optional support for
the device tree binding.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/mci/mci_spi.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index ed3ddf890f7f..6ae2824eddc8 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -18,6 +18,8 @@
 #include <mci.h>
 #include <crc.h>
 #include <crc7.h>
+#include <of.h>
+#include <gpiod.h>
 
 #define to_spi_host(mci) container_of(mci, struct mmc_spi_host, mci)
 #define spi_setup(spi) spi->master->setup(spi)
@@ -47,6 +49,7 @@ struct mmc_spi_host {
 	struct mci_host	mci;
 	struct spi_device	*spi;
 	struct device_d	*dev;
+	int detect_pin;
 
 	/* for bulk data transfers */
 	struct spi_transfer	t_tx;
@@ -351,8 +354,23 @@ static int mmc_spi_init(struct mci_host *mci, struct device_d *mci_dev)
 	return 0;
 }
 
+static int spi_mci_card_present(struct mci_host *mci)
+{
+	struct mmc_spi_host	*host = to_spi_host(mci);
+	int			ret;
+
+	/* No gpio, assume card is present */
+	if (!gpio_is_valid(host->detect_pin))
+		return 1;
+
+	ret = gpio_get_value(host->detect_pin);
+
+	return ret == 0 ? 1 : 0;
+}
+
 static int spi_mci_probe(struct device_d *dev)
 {
+	struct device_node	*np = dev_of_node(dev);
 	struct spi_device	*spi = (struct spi_device *)dev->type_data;
 	struct mmc_spi_host	*host;
 	void			*ones;
@@ -362,6 +380,7 @@ static int spi_mci_probe(struct device_d *dev)
 	host->mci.send_cmd = mmc_spi_request;
 	host->mci.set_ios = mmc_spi_set_ios;
 	host->mci.init = mmc_spi_init;
+	host->mci.card_present = spi_mci_card_present;
 	host->mci.hw_dev = dev;
 
 	/* MMC and SD specs only seem to care that sampling is on the
@@ -415,14 +434,26 @@ static int spi_mci_probe(struct device_d *dev)
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 	host->mci.host_caps = MMC_CAP_SPI;
+	host->detect_pin = -EINVAL;
+
+	if (np) {
+		host->mci.devname = xstrdup(of_alias_get(np));
+		host->detect_pin = gpiod_get(dev, NULL, GPIOD_IN);
+	}
 
 	mci_register(&host->mci);
 
 	return 0;
 }
 
+static __maybe_unused struct of_device_id spi_mci_compatible[] = {
+	{ .compatible = "mmc-spi-slot" },
+	{ /* sentinel */ }
+};
+
 static struct driver_d spi_mci_driver = {
 	.name	= "spi_mci",
 	.probe	= spi_mci_probe,
+	.of_compatible = DRV_OF_COMPAT(spi_mci_compatible),
 };
 device_spi_driver(spi_mci_driver);
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

