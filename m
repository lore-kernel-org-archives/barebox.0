Delivery-date: Thu, 23 Dec 2021 17:06:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbV-00FsdC-Td
	for lore@lore.pengutronix.de; Thu, 23 Dec 2021 17:06:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbR-0008EO-DC
	for lore@pengutronix.de; Thu, 23 Dec 2021 17:06:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PTCCYbFM12dljrDwy9GxlXQzH6DhTIzbOWHKry/tRY=; b=N/H2dhOo051xrd
	rtqhwy9M9/VlpMJ3q0O012muxz5+atE5FiuqsPxWXsK6s4mYzQLhvdFat0+IC0IkoOgQYA31GVASz
	qfjQ5er+RgLKWt/TsLkjeksWUCAt+MYqXYC0Aju+9R4xwhIw9d9CixfIp9ZvUMOUYKR7x6LiJQxwU
	HFP4ee4eV2TViitbAHdjpGcp7Q5AJnjlHFbYDQPM+QK7x5bppN9OdZm7mGh4jIikfO+J9VyGXgUUt
	1uBjUoCRb9cfqhkhnonBjWc1rW2+RlT8l3dHYbfHflxNrpsrhsN49T6b7ypP0VM7YIn19kIeCf9Xr
	zEX4nW2ExALrahnPLtuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0QZp-00D0aT-3k; Thu, 23 Dec 2021 16:04:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0QZe-00D0XT-JI
 for barebox@lists.infradead.org; Thu, 23 Dec 2021 16:04:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-0007fj-1k; Thu, 23 Dec 2021 17:04:07 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-006DLD-0O; Thu, 23 Dec 2021 17:04:06 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZY-000VDq-Qi; Thu, 23 Dec 2021 17:04:04 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Thu, 23 Dec 2021 17:03:58 +0100
Message-Id: <20211223160404.119970-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211223160404.119970-1-m.tretter@pengutronix.de>
References: <20211223160404.119970-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_080410_667654_A1A8D809 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/8] spi: add to_spi_device helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port the helper to get the spi_device from the device_d from Linux.
This macro makes SPI device drivers look a bit nicer.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2:

- new patch
---
 include/spi/spi.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index bca996d8d8f9..c5ad6bd39ff9 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -108,6 +108,11 @@ struct spi_device {
 	 */
 };
 
+static inline struct spi_device *to_spi_device(struct device_d *dev)
+{
+        return dev ? container_of(dev, struct spi_device, dev) : NULL;
+}
+
 struct spi_message;
 
 /**
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

