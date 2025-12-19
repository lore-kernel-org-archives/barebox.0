Delivery-date: Fri, 19 Dec 2025 11:38:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsp-00DAh7-2X
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsU-0006dg-R7
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIsJKI4amSJLCzDxgKcCx9hRrId3XzopzsweMco6rXg=; b=oKWzIft/3w4uCa
	r5NINar59Hb9Us2EtRYrZ7F0mqJhFnG+tGy4otkKmLyH1+HaBP0vMF+yw4MzPMRxjpQvFLnc56kOi
	SfRMPvQXvRF6PuhZWd/Dh7bgRiDEbQkAj//PymxHG4onUheadh1NmUqmll7ENsUaun2igzocNT6Px
	8xqJIliRRghej+ZRxx0OkV5ZraGtg/oxNU25fI5RnONUxv4C3ml0b/2aBE7gZVesQO42wPYZuo72b
	6d8j6R1A21zmnn5j4UYSjnR6OR6t00kz+C5AeOYJx61LlfBB7L3tYt8esc+4HYEij1PPDJ078hJYu
	sWIC5vOroLYYOdt4ZqLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrR-0000000A6hA-3lSq;
	Fri, 19 Dec 2025 10:37:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr0-0000000A66d-1a6q
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JIsJKI4amSJLCzDxgKcCx9hRrId3XzopzsweMco6rXg=; b=qTCCJ0oV+HMcOjn4+xCsUFQWpZ
	LhwHeerhuszvQVBBouyx5rieRSR8rrlJsqtxia2VGV5vHzDviIVhay3VGdUxexaU+B6CLWxp1oLws
	ikOjCRcKfTqfwHL1jVNsUfhvGKtUXe/SjC0XZmQcb9u06Ms8dTwCmLKH8sPMolpCBXQKqzeURpDJT
	UI4yO3ZzITR7ijABQSoebzR1WTLk98TwqHD1i1rqP0/WRDpEAd+BuoCtbpcgVnk4T9i21jPf2GBQL
	hkls2DKAiu3l1J7yX0FL/da/BSDddf6Oj6D+c0fIvhb1taDaNfkada42nTP+6nv4ElakajqifUz71
	+/hU4CLA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzQ-0000000AbDK-1Kq8
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004eP-Po; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVR-1r;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-3DZD;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:25 +0100
Message-ID: <20251219101453.2806980-50-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_406477_E5F3A974 
X-CRM114-Status: GOOD (  11.54  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 49/49] eeprom: at24: unregister devices in error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

The AT24 driver might register some i2c devices using i2c_new_dummy().
These are freed in the error path, but not unregistered which leads to
memory corruptions later.

Link: https://lore.barebox.org/20251217145156.1581678-3-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit ebd2558bf99b3758854ac2b104cff7cfbd2cebb9)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/eeprom/at24.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 667d111b349d..feb11b1cbb18 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -492,8 +492,11 @@ static int at24_probe(struct device *dev)
 
 err_devfs_create:
 err_clients:
-	for (i = 1; i < num_addresses; i++)
+	for (i = 1; i < num_addresses; i++) {
+		if (at24->client[i])
+			i2c_unregister_device(at24->client[i]);
 		kfree(at24->client[i]);
+	}
 
 	if (gpio_is_valid(at24->wp_gpio))
 		gpio_free(at24->wp_gpio);
-- 
2.47.3



