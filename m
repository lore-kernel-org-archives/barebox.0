Delivery-date: Thu, 07 Aug 2025 17:54:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wL-00820E-0w
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 17:54:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wK-0005XJ-Ng
	for lore@pengutronix.de; Thu, 07 Aug 2025 17:54:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=29jow18F0ZxsZTLA+0L31BO4XEaghBxX04VoxPJOnbs=; b=3hz6XSeHafecvZkRKTsg4p2lBg
	McMz7O288rUhqDoI89GLsl64KaVmpw87ro6aF0ssHAzCrQllXZab+uRqSXLFCTp8OOKdgZIYfhVhF
	UujAQKbwIpb8MlVNzO55y9HhhPYHEw5QHsQJfvzz8nN3f+IyZP/w2hCBJY3xJEWJ/jvBHwuEZDQoh
	TdeIDv8NpN4YfVwIme+z8edKpNiQiEwzap1Mzx6sYuypBq2LYuEZKbvH8W2/yOaHojJy+DvDj+Pxi
	nPljk1RzHN/eXvYVuKmCJx9i0pcBzkg7wj8lJBBL4Ikho9fJpUnS/gqsFMcaow0oy0lMa2IjL6JnP
	2lSkQZag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vj-000000013DB-2wXe;
	Thu, 07 Aug 2025 15:53:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vd-000000013AS-40XI
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 15:53:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-0005FC-Av; Thu, 07 Aug 2025 17:53:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-00COnD-0Q;
	Thu, 07 Aug 2025 17:53:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-006PB8-0B;
	Thu, 07 Aug 2025 17:53:14 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Aug 2025 17:53:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250807-fix-rtl8152-dropped-packages-v1-1-a71d05b4d166@pengutronix.de>
References: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
In-Reply-To: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_085317_999421_D6A48365 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] net: usb: r8152: disable rx aggregation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enabling RX aggregation packs multiple ethernet frames into one usb bulk
transfer. This increases the throughput significantly, but the driver
currently has no logic in `r8152_rx_fixup` to split the received frames.
This causes silently dropped packets. As the expected througput in a
bootloader using a USB ethernet adapter is rather low this "workaround"
is fine for now.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/usb/r8152.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/usb/r8152.c b/drivers/net/usb/r8152.c
index 2511c524cd6933cd9de844970edcdaa26a62b8e5..e29dd2ba43cedd9204f9cc418975ba1ace4f5167 100644
--- a/drivers/net/usb/r8152.c
+++ b/drivers/net/usb/r8152.c
@@ -926,10 +926,9 @@ static void r8153_first_init(struct r8152 *tp)
 	r8152_ocp_write_dword(tp, MCU_TYPE_PLA, PLA_TXFIFO_CTRL,
 			      TXFIFO_THR_NORMAL2);
 
-	/* rx aggregation */
+	/* Disable rx aggregation */
 	ocp_data = r8152_ocp_read_word(tp, MCU_TYPE_USB, USB_USB_CTRL);
-
-	ocp_data &= ~(RX_AGG_DISABLE | RX_ZERO_EN);
+	ocp_data |= (RX_AGG_DISABLE | RX_ZERO_EN);
 	r8152_ocp_write_word(tp, MCU_TYPE_USB, USB_USB_CTRL, ocp_data);
 }
 
@@ -1117,10 +1116,9 @@ static void rtl8152b_init(struct r8152 *tp)
 	r8152b_enable_fc(tp);
 	rtl_tally_reset(tp);
 
-	/* enable rx aggregation */
+	/* Disable rx aggregation */
 	ocp_data = r8152_ocp_read_word(tp, MCU_TYPE_USB, USB_USB_CTRL);
-
-	ocp_data &= ~(RX_AGG_DISABLE | RX_ZERO_EN);
+	ocp_data |= (RX_AGG_DISABLE | RX_ZERO_EN);
 	r8152_ocp_write_word(tp, MCU_TYPE_USB, USB_USB_CTRL, ocp_data);
 }
 
@@ -1259,9 +1257,9 @@ static void r8153b_init(struct r8152 *tp)
 		}
 	}
 
-	/* rx aggregation */
+	/* Disable rx aggregation */
 	ocp_data = r8152_ocp_read_word(tp, MCU_TYPE_USB, USB_USB_CTRL);
-	ocp_data &= ~(RX_AGG_DISABLE | RX_ZERO_EN);
+	ocp_data |= (RX_AGG_DISABLE | RX_ZERO_EN);
 	r8152_ocp_write_word(tp, MCU_TYPE_USB, USB_USB_CTRL, ocp_data);
 
 	rtl_tally_reset(tp);

-- 
2.39.5



