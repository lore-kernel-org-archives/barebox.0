Delivery-date: Mon, 12 Jan 2026 09:56:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDjG-000SoN-2m
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:56:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDjF-0002Gv-TI
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:56:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DtyKmcAh+JWvcSt13J+lywYt3yo1bTiHqoJ+0ktH6RE=; b=BvRAy2cS3ncjvgfm8QArg1Z5+O
	3NGsmoC+0dH9EYfbnVA4Z4jMPHu27DYoPCa89it9/ODc1rhw+3qOQr/t7EkUZaHN9sqBpizwGSRt4
	47LVqHdBzpmBWqO4rgqeH2Dlo2PBF4CUBu0gdiNuQzdf8EZ854RWWbGxaOYhM7YSMlyeKyIiPUMyB
	RpUieJ1Hrj6JhiD3conWkz/8OtHRKlifF5BNCY69rgvA7ekABFi8ughGBJf9PyVdGP15ngim437Kt
	8L7aaImnHjLZOPEFlXTvuB5VyxGapPRK4kRJCZa57wTUyzoJYf3MjZZHarazMjAgZ9fWf/qzPrTi8
	Sj03zG8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDip-000000052Ck-3Eeo;
	Mon, 12 Jan 2026 08:56:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDin-000000052B2-0JcQ
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:56:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDil-0001zv-8s; Mon, 12 Jan 2026 09:56:19 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:56:04 +0100
Message-ID: <20260112085617.2952747-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005621_108763_2F59FE72 
X-CRM114-Status: UNSURE (   8.81  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] regulator: bcm2835: register only on Raspberry Pi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device was registered whenever the driver was compiled, including in
multi-platform builds. Guard behind raspberrypi,bcm2835-firmware, until
this is turned into a "real" driver one day.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/regulator/bcm2835.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index fa9fc47207b4..9d2803baca24 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -138,8 +138,10 @@ postcore_platform_driver(regulator_bcm2835_driver);
 
 static int regulator_bcm2835_init(void)
 {
-	add_generic_device("regulator-bcm2835", DEVICE_ID_SINGLE, NULL,
-			   0, 0, 0, NULL);
+	if (of_get_compatible_child(of_get_root_node(),
+				    "raspberrypi,bcm2835-firmware"))
+		add_generic_device("regulator-bcm2835", DEVICE_ID_SINGLE, NULL,
+				   0, 0, 0, NULL);
 
 	return 0;
 }
-- 
2.47.3



