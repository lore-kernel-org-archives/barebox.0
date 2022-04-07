Delivery-date: Thu, 07 Apr 2022 11:39:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncObg-00AIub-5j
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:39:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncObc-0005tE-Ma
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:39:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3CVp5idEs3V2YoZC06Z27B6ZKrfYkWDx0rM5dKI/Ng=; b=04TvTgXcMvsxXr
	pd9olHx+N4KvVtQvV95UG4Z3HiWxXdmsGW4kwKtp62YV8jrsyea1FOLNuISrr09Y+xl5jHxI9yZ+p
	3Elf6mB5dERbE5IE5VBMdg1WkbR44/y1016xcUgmMy1nMTRXNrRnvh5l5OE7G1QntEfr0+t+4JI7x
	rhUSURrkyLfHT+dVFxdVbdxBwCvO0n/AegC4qeaJEpInqEdjwPNj4MjOVdOP1v3E5GSHDD9x5Ornu
	jClwJ/CIcbkDZxHS+E5MEKF61xzShq2z1W7WD7iKYyu5+wTdpolCuTIyb2fug6AlJUjNk2tuAouIh
	HNJ7I7RYm46v3PE8MXXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOa7-00Aun8-Fo; Thu, 07 Apr 2022 09:37:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOFM-00AlNL-LX
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 09:16:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFL-0001R3-Dl; Thu, 07 Apr 2022 11:16:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFM-001aKR-3P; Thu, 07 Apr 2022 11:16:06 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFI-0040rv-RQ; Thu, 07 Apr 2022 11:16:04 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 11:15:58 +0200
Message-Id: <20220407091604.956577-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407091604.956577-1-o.rempel@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021608_727811_7EE5849D 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 06/12] spi: port spi_sync_transfer() function from kernel
 v5.17
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This function is needed for SJA11xx switch driver

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/spi/spi.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index d133e0e212..b6d08592a3 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -442,6 +442,30 @@ spi_transfer_del(struct spi_transfer *t)
 
 int spi_sync(struct spi_device *spi, struct spi_message *message);
 
+/**
+ * spi_sync_transfer - synchronous SPI data transfer
+ * @spi: device with which data will be exchanged
+ * @xfers: An array of spi_transfers
+ * @num_xfers: Number of items in the xfer array
+ * Context: can sleep
+ *
+ * Does a synchronous SPI data transfer of the given spi_transfer array.
+ *
+ * For more specific semantics see spi_sync().
+ *
+ * Return: zero on success, else a negative error code.
+ */
+static inline int
+spi_sync_transfer(struct spi_device *spi, struct spi_transfer *xfers,
+	unsigned int num_xfers)
+{
+	struct spi_message msg;
+
+	spi_message_init_with_transfers(&msg, xfers, num_xfers);
+
+	return spi_sync(spi, &msg);
+}
+
 struct spi_device *spi_new_device(struct spi_controller *ctrl,
 				  struct spi_board_info *chip);
 int spi_register_controller(struct spi_controller *ctrl);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

