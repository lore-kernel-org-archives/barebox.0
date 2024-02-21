Delivery-date: Wed, 21 Feb 2024 15:28:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaY-00HKrV-11
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 15:28:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaX-0005tT-NI
	for lore@pengutronix.de; Wed, 21 Feb 2024 15:28:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3YZy7dKv/jhkVa5HEBC3XSlboSz+x2+zNlcKXR+lyac=; b=nMTdsrYp3/pH6FAiz8OIXt7wgx
	Qrpnqcb6jVhgbmf/DAW9/MLkB7qqkJ+AwFKDOq5loZsC73/xmrLCIcyCUR2rE1Mr/chnDJzTFNz1l
	Gdj9pOIYGGlNenX0W8rfikKZz9l6e+d/k3C7tn0ZajuprGz5PdB4wbZEzDr0s2M5Iwzs2kxl66nMp
	OSQzMLAbHt9dRplKBFSiKf4nPeIUbe0IteAbwAk6+6ZkDsPkTjNCjXmgi3XLjEd0qloj8MGmUBorm
	vzlcsKDKGbANiPyBOkGe+riMq6LDPPYBIR/UBQwtzZRdpvGjTrvlYq2lKZh1s2zZlusgLf35n63M1
	aDWdlPZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZy-00000001GqI-1ztR;
	Wed, 21 Feb 2024 14:28:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZs-00000001Gnf-2VGb
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 14:28:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZq-0005c3-42; Wed, 21 Feb 2024 15:28:02 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-0023cZ-Nk; Wed, 21 Feb 2024 15:28:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-008kpE-23;
	Wed, 21 Feb 2024 15:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 15:28:00 +0100
Message-Id: <20240221142800.1958810-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221142800.1958810-1-s.hauer@pengutronix.de>
References: <20240221142800.1958810-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_062804_673129_C5D4905D 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] input: gpio_keys: only use gpios in poller when not in use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before reading GPIOs in a poller check if they are available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index fd3995d01f..c23d20563c 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -40,6 +40,13 @@ static void gpio_key_poller(void *data)
 	struct gpio_key *gb;
 	int i, val;
 
+	for (i = 0; i < gk->nbuttons; i++) {
+		gb = &gk->buttons[i];
+
+		if (gpio_slice_acquired(gb->gpio))
+			goto out;
+	}
+
 	for (i = 0; i < gk->nbuttons; i++) {
 
 		gb = &gk->buttons[i];
@@ -58,7 +65,7 @@ static void gpio_key_poller(void *data)
 			gb->previous_state = val;
 		}
 	}
-
+out:
 	poller_call_async(&gk->poller, 10 * MSECOND, gpio_key_poller, gk);
 }
 
-- 
2.39.2



