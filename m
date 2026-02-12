Delivery-date: Thu, 12 Feb 2026 23:03:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0012Cy-21
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0008QE-P6
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:03:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XQRW8aNVPGxpNEhjNXrt+uhVkZwa1jR/BNg6ja495kA=; b=t4LLiQ4XsnMQ6tgqzUTsQxtC7h
	jLGgHTHBFNeIIFPlwmi00VXEOBK+s6tv4ithpvuMGVoKn2OAVG6WtA3x8/BlQRCxI2d+Q4YTYWwfo
	fPGQCPNuMWNxp3+kv7HjFxZcErjbv7v8Dt6cmksQmqRuGtEJ5YTBS1eJj5ePCJQhFjnr+Mh/n5fgN
	p4bOpYUlzsAdZaZmQlfzo8DP4/BdVXInwjFI1+4+7i2EhdYDkRAavuYYtPcQe4HtBWFbp6uCEiBS0
	8BIQ0Jh5D4NIFMVa7O6ZU2m2+yVkevovLnBrKC1ai+ARHoPvuwzyg2pNqfWD6oTsHeQvKEegr/4fJ
	Sc/EPJTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelO-00000002fwx-1wzH;
	Thu, 12 Feb 2026 22:02:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002ftt-4C3f
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:16 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelG-000855-Vp; Thu, 12 Feb 2026 23:02:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-1-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140214_041832_DC5F9F13 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/7] serdev: add proper error cleanup to
 serdev_device_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The serdev_device_open() function is missing a proper error cleanup
which is fixed by this commit. Unfortunately we don't have scoped
accessors yet, therefore the 'old' goto must be used.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/serdev.c | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/common/serdev.c b/common/serdev.c
index 5399a2062722dc12fe5241bdf4a466606af053bb..8f45c0a135237da42579bbb685c9c25a67428c8b 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -71,21 +71,39 @@ int serdev_device_open(struct serdev_device *serdev)
 
 	serdev->buf = xzalloc(PAGE_SIZE);
 	serdev->fifo = kfifo_alloc(PAGE_SIZE);
-	if (!serdev->fifo)
-		return -ENOMEM;
+	if (!serdev->fifo) {
+		ret = -ENOMEM;
+		goto err_free_buf;
+	}
 
 	ret = poller_async_register(&serdev->poller, "serdev");
 	if (ret)
-		return ret;
+		goto err_free_fifo;
 
 	ret = console_open(cdev);
 	if (ret)
-		return ret;
+		goto err_poller_unregister;
 
 	p = dev_add_param_uint64(serdev->dev, "polling_interval",
 				 serdev_device_set_polling_interval, NULL,
 				 &serdev->polling_interval, "%llu", serdev);
-	return PTR_ERR_OR_ZERO(p);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto err_console_close;
+	}
+
+	return 0;
+
+err_console_close:
+	console_close(cdev);
+err_poller_unregister:
+	poller_async_unregister(&serdev->poller);
+err_free_fifo:
+	kfifo_free(serdev->fifo);
+err_free_buf:
+	free(serdev->buf);
+
+	return ret;
 }
 
 unsigned int serdev_device_set_baudrate(struct serdev_device *serdev,

-- 
2.47.3



