Delivery-date: Mon, 21 Mar 2022 10:28:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKl-001Eth-93
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:28:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKn-00055N-Nu
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:28:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3CVp5idEs3V2YoZC06Z27B6ZKrfYkWDx0rM5dKI/Ng=; b=4rkZuztfXJJQUG
	zHcVfEXQyzXqcvsh/anDPNpCisri2fDluwB686Le0L2two3zfI/M+j/r5MsF629a/9e4P2hdZgjUS
	Ak2AnKkCjFw3cLlAjOWo9B5+qrekyrxfJyKgOHyChwtxOnoE4MNDJMEhFFMCEaQlEVLnmKG+zo5EU
	EVOU9kVzPQSFxBBYUCg8iaXjn5Ur26T4a4DkZxvbXa08pXJC4akGhislU4l4njo10+agYJnyVycyG
	g36bo10irn61w0h54fBFOgcfCeq1q7nSP66VNYy7w+ciNbT2545Vcb8cir5BCD1sj3INKrVgwzOEG
	i874fXaPHlp9kyKmeEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEJV-0079ji-Mw; Mon, 21 Mar 2022 09:26:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEIk-0079Jc-2n
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:26:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIi-0004CZ-LT; Mon, 21 Mar 2022 10:26:08 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIh-0067nS-Tb; Mon, 21 Mar 2022 10:26:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Mar 2022 10:26:03 +0100
Message-Id: <20220321092606.1459834-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321092606.1459834-1-o.rempel@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_022610_271978_CEDA4A10 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 6/9] spi: port spi_sync_transfer() function from kernel
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

