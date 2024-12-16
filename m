Delivery-date: Mon, 16 Dec 2024 14:04:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlk-008pMI-32
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 14:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAli-0005CB-86
	for lore@pengutronix.de; Mon, 16 Dec 2024 14:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y2JRjt2Xjefrt2plQXvWCPOX7MqHU7D0Ik475f7wjfs=; b=od7uYHPsXj+EeeNaYNXuBqKusZ
	joCECxBHXB41EnyHXb6R5yOzyn+9w8Dtpl0F9C5XXzv5+BWeVqKbdeLofuawhO3EhVXUGgU3tN38L
	gnBxaopj+oUkyUtxc6gSraYS4rRiMRsE5bTtojQ6aQXIvFoE58ZQ/hUzgEQekQpTPh7NtNdcNTA24
	VX+QUhKJajAPISsdjg52iTkbiU/ITw0qGWWeHRrqBNVSK43E0I1cFdR5o5rWwhK0aq++TkmBgduVy
	JwGgaF30kSiqXXbkJE6H+kBaZxWWzY/m6lMDIvdMp10Wmefv0MJqVJXT39oiVkrLbrkU0UKS8IsCA
	Xz/8Nffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAlC-0000000A216-3DUD;
	Mon, 16 Dec 2024 13:03:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl6-0000000A1ur-2Zhj
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 13:03:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tNAl3-0004cI-Bz
	for barebox@lists.infradead.org; Mon, 16 Dec 2024 14:03:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 16 Dec 2024 14:03:14 +0100
Message-Id: <20241216130324.1592755-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050336_701366_D9B7F2AD 
X-CRM114-Status: UNSURE (   9.56  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/12] spi: fix spi_message init during __spi_validate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the spi_device pointer accordingly to allow drivers to use it.

While on it, set the actual_length to 0 before passing the message to
the .transfer() hook as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
 - no changes

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



