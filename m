Delivery-date: Thu, 07 Aug 2025 17:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wK-0081zM-0j
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 17:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wJ-0005WY-N8
	for lore@pengutronix.de; Thu, 07 Aug 2025 17:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hW4PHa/++b0wma9UMZmySy40EaBx07+3W/DdF0hzyKs=; b=ijNekCTtj1AAvg
	8aaWvNt2FyJHyZwNMfrWvVTCz4k1JrXYoN4FpvpPsO2gHqz5zuajSCkBRtK/H0G4ZqDhMRb4IUXnF
	dB9Iv9NrGwWxCiXpxuge/0QoVFXzUW6bkbAPYcfeYgT/QFYmAGRKRzq/hIoJlC3oLYnzynpf5lgIo
	4qD8Pu1bHnDlyOzL+SeCB8EGkTmz3xy5tzcL0AkM87R/jEJWKCWBbKJP9Fk/cxgE6aicoa/NEJcZk
	KuyGoLWhqmoUCY5sOdYVhuu/gX1o1SHfQx4NRuyfztR+0iYTO9IvlJ3/lu6VSP+0GmE83Gq62ePzz
	xNB/IBmL/rxm0dQag4rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vm-000000013FD-0vwi;
	Thu, 07 Aug 2025 15:53:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vj-000000013Cz-2AUF
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 15:53:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-0005FB-AS; Thu, 07 Aug 2025 17:53:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-00COnC-0N;
	Thu, 07 Aug 2025 17:53:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-006PB8-0A;
	Thu, 07 Aug 2025 17:53:14 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Aug 2025 17:53:09 +0200
Message-Id: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAObLlGgC/x3MQQqDQAxA0atI1gZicFB7FXERnGhDiw4ZkYJ49
 w4uH3z+BVndNMOrusD1tGz7VtDUFcxv2VZFi8XAxIF66nCxH/rx7ZvAGH1PSSMmmT+yakahMPB
 AnXDbQlkk19I/+3G67z8ZRCBHbgAAAA==
X-Change-ID: 20250807-fix-rtl8152-dropped-packages-a0592907a244
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_085323_560837_187B6223 
X-CRM114-Status: UNSURE (   5.96  )
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
Subject: [PATCH 0/4] net: usb: r8152: disable rx aggregation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes dropped packages I have seen using various USB
Ethernet adapters that utilize the commonly used realtek rtl8152/rtl8153
chipsets.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (4):
      net: usb: r8152: disable rx aggregation
      net: usb: r8152: print the detected version
      net: usb: usbnet: calm noisy debug calls
      net: usb: add debug call in the receive path

 drivers/net/usb/r8152.c  | 17 +++++++++--------
 drivers/net/usb/usbnet.c |  7 +++++--
 2 files changed, 14 insertions(+), 10 deletions(-)
---
base-commit: c3a821fce680bd990b28285422adc8148126baba
change-id: 20250807-fix-rtl8152-dropped-packages-a0592907a244

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



