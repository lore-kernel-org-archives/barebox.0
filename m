Delivery-date: Fri, 15 Nov 2024 20:58:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sm-002N6d-0A
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sj-0001jP-SL
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGVM6MeN4TahxpDbvomEORtZZ2HCuke0vyzcf4cXVGI=; b=Mze8zXp20FeQahCqUqgwlEv1pi
	lVRSsUJSFuCM6Dk6kJlvraSQDm4UO9d8C0YhgacEI+H+GYnavktT3gCiMDxKSFlLM/rU/nXb/uZJn
	9vFjzmu46Wjh8b2QMVFgOygtH5Qb6ufqrcz0tYSQbSp197HcTsp2IfyxBT1mcqdh6rRjzCrjcBh3M
	qBF9fLReZ1kvdSwONDKqW//XvCB1W4SH1IrLeuQq1v4O/I8TElHuye1XmiP7rbYaLpYfUkuvJB0eM
	gexhB2SzcD/fHC6S4NKAPH1WqWtSKPHb9Snr5rBsHKZk8jVPuQhOvCNARgNPvkuvqKOrR7VeVmJQB
	TxTMo//A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S6-00000003wZl-0EvM;
	Fri, 15 Nov 2024 19:57:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S3-00000003wXF-3S2I
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:57:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-DD
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:37 +0100
Message-Id: <20241115195747.997164-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_115755_856070_001BDF47 
X-CRM114-Status: UNSURE (   9.87  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/12] spi: fix spi_message init during __spi_validate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the spi_device pointer accordingly to allow drivers to use it.

While on it, set the actual_length to 0 before passing the message to
the .transfer() hook as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/spi/spi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c627d88954a7..36d0653a191c 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -321,6 +321,8 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
 	if (list_empty(&message->transfers))
 		return -EINVAL;
 
+	message->spi = spi;
+
 	list_for_each_entry(xfer, &message->transfers, transfer_list) {
 		if (!xfer->bits_per_word)
 			xfer->bits_per_word = spi->bits_per_word;
@@ -347,6 +349,7 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
 			return -EINVAL;
 	}
 
+	message->actual_length = 0;
 	message->status = -EINPROGRESS;
 
 	return 0;
-- 
2.39.5



