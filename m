Delivery-date: Mon, 16 Dec 2024 14:04:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlm-008pNK-2o
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 14:04:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAli-0005C3-74
	for lore@pengutronix.de; Mon, 16 Dec 2024 14:04:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zyh/h2o18zeat1lTEeJ/DGc2Q60htaziOgsxvA7iSoc=; b=ju4ZlQAfcUudZaFeJ7AATcuMyJ
	/1sWHrR8KaRFdZE543jAnMs5P2MjzCCwwiyM6+1RB26T6nyGJdZ4YQFBrca+78tsEyKdwKjLKuCnm
	TpUhVtUymbhTzVy3QBIMeazdLTk1HJ5DKGIIOqTpnz1y3UuJdcifjdjbguDQy/2mHbLDgXZ4tnV75
	/RHZY23b+MVrULzfA+rLS57uteicYB5/ZWiLOKxahdJrC7XlPPlmODPBFJazNxWCHvP0pzxIP8iQb
	C5YakoUM8LPGiOwY1cks6jZLVTnK1N04T0jLPkulXUJ9GfukSl7bZcHY8KNvbmfWOYjKdZiuhiiw1
	/EBvWgfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAlC-0000000A20e-0tUx;
	Mon, 16 Dec 2024 13:03:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl6-0000000A1us-2i3p
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 13:03:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tNAl3-0004cI-D8
	for barebox@lists.infradead.org; Mon, 16 Dec 2024 14:03:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 16 Dec 2024 14:03:15 +0100
Message-Id: <20241216130324.1592755-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050336_720598_8B5CE8D2 
X-CRM114-Status: UNSURE (   8.24  )
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
Subject: [PATCH v2 03/12] spi: add spi_{set,get}_ctldata accessors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We alreary support the controller_state priv data pointer, add the Linux
APIs to set/get the data.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
 - no changes

 include/spi/spi.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 622de732fa6d..9261d508befd 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -116,6 +116,17 @@ static inline struct spi_device *to_spi_device(struct device *dev)
         return dev ? container_of(dev, struct spi_device, dev) : NULL;
 }
 
+/* ctldata is for the bus_controller driver's runtime state */
+static inline void *spi_get_ctldata(const struct spi_device *spi)
+{
+	return spi->controller_state;
+}
+
+static inline void spi_set_ctldata(struct spi_device *spi, void *state)
+{
+	spi->controller_state = state;
+}
+
 /**
  * struct spi_controller - interface to SPI master or slave controller
  * @dev: device interface to this driver
-- 
2.39.5



