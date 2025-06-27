Delivery-date: Fri, 27 Jun 2025 15:02:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV8j6-00Bcbb-12
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 15:02:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV8j5-0004Ac-L2
	for lore@pengutronix.de; Fri, 27 Jun 2025 15:02:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JuX87wDZ8OVY0xjwN5j/bvGdXvOdTfETXoK5Tidr0Ew=; b=NJjGRBCWRsbC/1KqmHRQjUcpWJ
	NvLKoIYTIwk0DOdlBtPmtjLCqO8aMRIydQvdnECMXsyWKRO1XhLUOXix7cWCjnn7GWoB8ueeiU9DJ
	rxrriSsa+g8snE1PyPRSJh+t0GpY7vWUY1mw3h/O+rM9eX3C3QBR9ABGqS8XouqtwHo4fQw34JYXM
	vVkk4Cj9/HyUPQIPq8Qlhu5jPxF/TK9NPtsoOr5M1PiQ34yKGz0lbmZjYI5Uq8SFuC/CM3G6eOefK
	XiXZWsuHoQBEaKazF1IUiuku3Q1QGRMDgI+5PcE0tB+5i4VRdx5mEPDMpJRDxw4UPJ+kNrjBsmEI1
	b+J7y3yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8iM-0000000EiPx-1ONN;
	Fri, 27 Jun 2025 13:01:58 +0000
Received: from mail-108-mta64.mxroute.com ([136.175.108.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8Bs-0000000EdrB-2729
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 12:28:25 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta64.mxroute.com (ZoneMTA) with ESMTPSA id 197b15c31260008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 27 Jun 2025 12:28:18 +0000
X-Zone-Loop: a652fe8b22267c8d4cb5a5afc9464688a9a3d8c2bf31
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=JuX87wDZ8OVY0xjwN5j/bvGdXvOdTfETXoK5Tidr0Ew=; b=MU+/xo/I9AGzfTbpX9Uakbmh/C
	spkfgkHktm2iqXj0iakZyq/zrIYKVsPFQdIio65xjVo5pAccGYXTcOSSyyHSyqua66/P9Lcvhwij2
	emoiiUKR2ImkYOTu+QKbxHR9Ndao94HVJhbG87dheIuNvszcL8N1AZUdSFhA2qKoRYOjQXpUZW4be
	eh3gr3tpVsSZ07Zt+DUs79ivfVTz5wPyiPd0apCzyjhAzv/3J9k0tpbjKhYQPidqdNGUsvkJ8GL7m
	8VTWz9e6MBxHDBjpdyh4gUtGfKyWnTgUxr1U93W5nW9jX/hN+4sUE9l1z3sKqjKRx5H2JJ+i/CWGW
	9UFqmwMg==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Fri, 27 Jun 2025 20:28:11 +0800
Message-Id: <20250627122811.1051283-2-bo@mboxify.com>
In-Reply-To: <20250627122811.1051283-1-bo@mboxify.com>
References: <20250627122811.1051283-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_052824_632226_3F4E35DC 
X-CRM114-Status: GOOD (  13.36  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] spi: convert transfer delay to new spi_delay struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the deprecated delay_usecs field with the new spi_delay struct
in spi_transfer structure. Update spi_transfer_one_message to use
spi_delay_exec and the mc13xxx driver to use the new structure.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 drivers/mfd/mc13xxx.c | 5 ++++-
 drivers/spi/spi.c     | 4 +---
 include/spi/spi.h     | 8 ++++----
 3 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 288bd407ff..393f163671 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -84,7 +84,10 @@ static int spi_rw(struct spi_device *spi, void * buf, size_t len)
 		.rx_buf = buf,
 		.len = len,
 		.cs_change = 0,
-		.delay_usecs = 0,
+		.delay = {
+			.value = 0,
+			.unit = SPI_DELAY_UNIT_USECS,
+		},
 	};
 	struct spi_message m;
 
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index f8a01dd083..b64e206649 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -463,9 +463,7 @@ static int spi_transfer_one_message(struct spi_device *spi, struct spi_message *
 		if (msg->status != -EINPROGRESS)
 			goto out;
 
-		/* TODO: Convert to new spi_delay API */
-		if (xfer->delay_usecs)
-			udelay(xfer->delay_usecs);
+		spi_delay_exec(&xfer->delay, NULL);
 
 		if (xfer->cs_change) {
 			if (list_is_last(&xfer->transfer_list,
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 5b2d345705..00337446e6 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -413,9 +413,9 @@ static inline size_t spi_max_transfer_size(struct spi_device *spi)
  * @bits_per_word: select a bits_per_word other then the device default
  *      for this transfer. If 0 the default (from @spi_device) is used.
  * @cs_change: affects chipselect after this transfer completes
- * @delay_usecs: microseconds to delay after this transfer before
- *	(optionally) changing the chipselect status, then starting
- *	the next transfer or completing this @spi_message.
+ * @delay: delay to be introduced after this transfer before
+ *  (optionally) changing the chipselect status, then starting
+ *  the next transfer or completing this @spi_message.
  * @transfer_list: transfers are sequenced through @spi_message.transfers
  *
  * SPI transfers always write the same number of bytes as they read.
@@ -476,7 +476,7 @@ struct spi_transfer {
 
 	unsigned	cs_change:1;
 	u8		bits_per_word;
-	u16		delay_usecs;
+	struct spi_delay    delay;
 	u32		speed_hz;
 
 	u32		effective_speed_hz;


