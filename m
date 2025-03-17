Delivery-date: Mon, 17 Mar 2025 10:36:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tv-000Yq6-14
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:36:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tt-00027e-Iy
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:36:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4nD0KYSF1TElmgMTAabmpAEexZUImOh2ES8i6X5OXAw=; b=YqACxfRrgBqMWaASGttitTtrhc
	090exiUdT1mkhF7XCEehHAdOD6v6CApi0gi92RmYfiImv15r4KD66DzvIr5XbRrcsPrfEbcvLJ5tm
	RII+r+N6BaUbHy3jKJcgzskuDIcdgMw0GanyF7HJ85WJRSEbNF410dod3hnXQVzRalRrcdBHUfgVP
	qtBJfZ0pkaXbklX3HaY7AMhr/olKun7ZRgrYxg2dNqUFmwY1eLtTX2yUx5xt5d5c+N6jhkgVGwbNj
	qbASH4RaCu9kSY3kQst8xGfvcJgzBsoQf6QDIBBKPv2dyLve2b4H7kevbeKF0aQ8NZMRSeMKt6A/c
	0h8jnjCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6tU-00000001xHY-2o8F;
	Mon, 17 Mar 2025 09:36:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6rv-00000001wpd-3Tn6
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:34:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-0001Qt-Lf; Mon, 17 Mar 2025 10:34:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rl-000DpP-37;
	Mon, 17 Mar 2025 10:34:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-00H5gy-10;
	Mon, 17 Mar 2025 10:34:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Mar 2025 10:34:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-mci-misc-cleanup-v1-6-24b4d6f5d31a@pengutronix.de>
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
In-Reply-To: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742204078; l=830;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BAwsSRf7KKj21uDNGguNqoVwJqlUxdk9q7ZhVgsqlQw=;
 b=S7lY6vQgAQ2sHu1LzsBPkxFgz8lnZhfUsrnr8qWCz5fpt5v2qVG1xfiEPuEapfaUVktUF7ESH
 Ev1sYav7l9fDD7XRNH0rl4ULdqV7Ax0/gfIDEMFtKSAluQVlnSv5H92
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_023447_939636_4E92CAE1 
X-CRM114-Status: GOOD (  10.78  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] mci: mci_spi: use mci_of_parse()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mci_spi driver parses the device tree alias itself. Instead call
mci_of_parse() which does the same and also parses other generic mmc
properties.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 864e15a416..dd4c9333ee 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -437,7 +437,7 @@ static int spi_mci_probe(struct device *dev)
 	host->mci.host_caps = MMC_CAP_SPI;
 
 	if (np) {
-		host->mci.devname = xstrdup(of_alias_get(np));
+		mci_of_parse(&host->mci);
 		host->detect_pin = gpiod_get_optional(dev, NULL, GPIOD_IN);
 		if (IS_ERR(host->detect_pin))
 			dev_warn(dev, "Failed to get card detect GPIO (ignored)\n");

-- 
2.39.5



