Delivery-date: Mon, 16 Dec 2024 14:04:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlj-008pLk-3D
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 14:04:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAli-0005Bm-0B
	for lore@pengutronix.de; Mon, 16 Dec 2024 14:04:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0cQATlg2LPG2Pn9XkeCSDvug7gFFTch7UwxVdvd4oUI=; b=4WBVW5l83qPlN190z0HHnP6Ren
	lj79ulHffcgg2PZxB6L2vGur/GpVrV/phyMLFcihBwe01OFHOuqlR7joKolnkyybCHXI+vdVpxWTb
	ENgCcvMktOW+FmfQ6o4jXyA6nWbINJ5YODHFuK54av/ootWn7tgLZ4W8pPyXIZL112b6ayU/QEwlu
	/giK0IHIAwZNEubizWt1eVuQZsDfD8/gXeXsWXAuUdPZMByQDLoUj39L7ALtcQ0V8WhbcO7g/D5X0
	lqpKjyNNVqCFGW8iNkD9UYNUCchHOCJ3tXyJeBBeJcozdZCo/pBKCmw/Cl3soZ0mAAUrHampxjxfq
	fN4EF7Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl9-0000000A1y2-2YFE;
	Mon, 16 Dec 2024 13:03:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl6-0000000A1ux-2Zzr
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 13:03:37 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tNAl3-0004cI-Jj
	for barebox@lists.infradead.org; Mon, 16 Dec 2024 14:03:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 16 Dec 2024 14:03:21 +0100
Message-Id: <20241216130324.1592755-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050336_684619_AB9ECC21 
X-CRM114-Status: GOOD (  12.09  )
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
Subject: [PATCH v2 09/12] spi: import spi_controller::flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the flags supported by the Linux spi controller implementation to
make it easier to port driver from Linux.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
 - no changes

 include/spi/spi.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 8458d890f4e6..a8bbf55e0a5a 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -173,6 +173,7 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
  *	unsupported bits_per_word. If not set, this value is simply ignored,
  *	and it's up to the individual driver to perform any validation.
  * @max_speed_hz: Highest supported transfer speed
+ * @flags: other constraints relevant to this driver
  * @setup: updates the device mode and clocking records used by a
  *	device's SPI controller; protocol code may call this.  This
  *	must fail if an unrecognized or unsupported mode is requested.
@@ -235,6 +236,16 @@ struct spi_controller {
 	/* limits on transfer speed */
 	u32			max_speed_hz;
 
+	/* Other constraints relevant to this driver */
+	u16			flags;
+#define SPI_CONTROLLER_HALF_DUPLEX	BIT(0)	/* Can't do full duplex */
+#define SPI_CONTROLLER_NO_RX		BIT(1)	/* Can't do buffer read */
+#define SPI_CONTROLLER_NO_TX		BIT(2)	/* Can't do buffer write */
+#define SPI_CONTROLLER_MUST_RX		BIT(3)	/* Requires rx */
+#define SPI_CONTROLLER_MUST_TX		BIT(4)	/* Requires tx */
+#define SPI_CONTROLLER_GPIO_SS		BIT(5)	/* GPIO CS must select slave */
+#define SPI_CONTROLLER_SUSPENDED	BIT(6)	/* Currently suspended */
+
 	/* setup mode and clock, etc (spi driver may call many times) */
 	int			(*setup)(struct spi_device *spi);
 
-- 
2.39.5



