Delivery-date: Thu, 02 May 2024 17:18:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YCj-00FHWc-2g
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:18:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YCh-000482-Vv
	for lore@pengutronix.de; Thu, 02 May 2024 17:18:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b+Rx0STCSHvZ/BRsJn5sSeTbNhYhMd+PsiphKXlpi4E=; b=QDJNPycgUWSRZHnDmXhBDDN9oK
	/0EYN/lqHQZ02S/087QEgB9IFrq6dPk+X2kZNY/sOv6BPFPHl7BZ/E8GaMSCi/GibU+z2TXuZoqIa
	RD6Onr07ZpSq6xwpS/KogKVSwJ4WEmjEaqW7A5Yh7OgXWrZxSqEFo1CnTHr6m58rZjRRkmHyvajgx
	t4DN+wSclAkPXRlh/KM7vWmqOQ45pQUdBijvBsQMzQzR8YCUeoJMnU08FqKUFNjF0Mp2gd0ZwVyhI
	vvr1jW0cMTEuoZ22eS2drIQ1C+oh2lI1peaOr3v9QH3jylAxsxyUlvwnyXnZHhtS3bfOZsqThw5R4
	QnbUfDVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YCF-0000000D5DW-1OqP;
	Thu, 02 May 2024 15:18:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YCB-0000000D5BM-1d0X
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:18:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-0003rd-Sa; Thu, 02 May 2024 17:18:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-00FXrE-G2; Thu, 02 May 2024 17:18:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-00GdMI-1K;
	Thu, 02 May 2024 17:18:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 17:17:55 +0200
Message-Id: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081803_707978_D572846A 
X-CRM114-Status: GOOD (  11.69  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] net: dsa: ksz9477: always toggle reset gpio if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox driver currently only ensures that the switch is out of
reset, but doesn't actually trigger a reset pulse.

The Linux driver, on the other hand, holds reset active for 10ms and
then waits a whopping 100ms after reset deassertion.

This seems excessive by a thousandfold for at least KSZ9893R[1], whose
datasheet states:

  After the de-assertion of reset, it is recommended to wait a minimum of
  100µs before starting to program the device through any interface.

Therefore, let's pulse the reset like Linux does and give the switch 100
microseconds before continuing with the driver probe.

[1]: DS00002420E-page 176

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ksz9477.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 1abea9d04017..5c5f4ec8d995 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -433,8 +433,10 @@ static int microchip_switch_probe(struct device *dev)
 	if (IS_ERR(gpio)) {
 		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
 	} else if (gpio) {
-		mdelay(1);
+		gpiod_set_value(gpio, true);
+		mdelay(10);
 		gpiod_set_value(gpio, false);
+		udelay(100);
 	}
 
 	ksz_reset_switch(dev->priv);
-- 
2.39.2



