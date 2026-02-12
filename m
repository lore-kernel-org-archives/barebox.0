Delivery-date: Thu, 12 Feb 2026 23:03:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0012Cf-1X
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0008QF-AG
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:03:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KpK8IOxHv6ti3bbyhK38CVtv8zKuhT3NJwWPcBm6E48=; b=dLZNOtB2kljJ+IQTzsLR/+GS0j
	JaeHSZK/ff10eN+5gQJErQh0sWGCdLVAqSdmsEcIgLl9Ebi/oZq5Hu2m4pd5MyaEFIvLYaV1ZS9HM
	/EFgCmGb3v6dKnYPutc4qlSzRTNpRc4liDzuf5tesy81Wfd+1N2Ma3YCm6tP55ZB6jRRXSMuL6UFl
	DPfFDD7KW8bfpKSxp9rIPqew8xCPx6iAHogIs0kKzVIVItiJ5X4pSvcc3Zq1+bD+N6Q/d/VQyEaS9
	65NahHsgBoFCrZsU4CjkyWRlNgUaK4phrbCGG6m8qjKVN3BeNnTDRT39jtLAVAWeBHN4Kb0PdBf+Z
	vYCuFEAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelM-00000002fw4-1faO;
	Thu, 12 Feb 2026 22:02:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002fts-1LEq
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelH-000855-0S; Thu, 12 Feb 2026 23:02:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-2-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140213_358461_6A19E3B9 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH v2 2/7] serdev: add serdev_device_close
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a cleanup helper which does the reverse operations of
serdev_device_open().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/serdev.c  | 13 +++++++++++++
 include/serdev.h |  4 ++++
 2 files changed, 17 insertions(+)

diff --git a/common/serdev.c b/common/serdev.c
index 8f45c0a135237da42579bbb685c9c25a67428c8b..1c8cfbd59447afa86aa78c5b05b60e9057ebc15b 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -92,6 +92,8 @@ int serdev_device_open(struct serdev_device *serdev)
 		goto err_console_close;
 	}
 
+	serdev->polling_interval_param = p;
+
 	return 0;
 
 err_console_close:
@@ -106,6 +108,17 @@ int serdev_device_open(struct serdev_device *serdev)
 	return ret;
 }
 
+void serdev_device_close(struct serdev_device *serdev)
+{
+	struct console_device *cdev = to_console_device(serdev);
+
+	param_remove(serdev->polling_interval_param);
+	console_close(cdev);
+	poller_async_unregister(&serdev->poller);
+	kfifo_free(serdev->fifo);
+	free(serdev->buf);
+}
+
 unsigned int serdev_device_set_baudrate(struct serdev_device *serdev,
 					unsigned int speed)
 {
diff --git a/include/serdev.h b/include/serdev.h
index b402325f39a2458bf364d84ec1d9a5da6b829525..98704d8958d016426951a038a9a80fb05626febb 100644
--- a/include/serdev.h
+++ b/include/serdev.h
@@ -3,6 +3,7 @@
 #define _SERDEV_H_
 
 #include <driver.h>
+#include <param.h>
 #include <poller.h>
 #include <kfifo.h>
 
@@ -14,6 +15,7 @@
  * @buf:		Buffer used to pass Rx data to consumers
  * @poller		Async poller used to poll this serdev
  * @polling_interval:	Async poller periodicity
+ * @polling_interval_param:	Async poller periodicity barebox param_d
  * @polling_window:	Duration of a single busy loop poll
  * @locked:		Lock to prevent recursive polling
  * @receive_buf:	Function called with data received from device;
@@ -25,6 +27,7 @@ struct serdev_device {
 	unsigned char *buf;
 	struct poller_async poller;
 	uint64_t polling_interval;
+	struct param_d *polling_interval_param;
 	uint64_t polling_window;
 	bool locked;
 
@@ -33,6 +36,7 @@ struct serdev_device {
 };
 
 int serdev_device_open(struct serdev_device *);
+void serdev_device_close(struct serdev_device *);
 unsigned int serdev_device_set_baudrate(struct serdev_device *, unsigned int);
 int serdev_device_write(struct serdev_device *, const unsigned char *,
 			size_t, unsigned long);

-- 
2.47.3



