Delivery-date: Wed, 17 Dec 2025 15:52:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVstN-00CVEQ-36
	for lore@lore.pengutronix.de;
	Wed, 17 Dec 2025 15:52:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVstN-0007OG-ER
	for lore@pengutronix.de; Wed, 17 Dec 2025 15:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jnJzw/o3mxRLAPsmmbj3od+62OnHIMXDGvLHTLBZAHc=; b=P5WgMUenDY286cWFCM3hAcAbQZ
	OUCV6brueCv0W93+yUWOU7dcBQoPibnfXAMVilVshllUeR/GxxuXjXf4TBF684JW9OQcuyI3yhLTy
	HYTJcOTX04XtS65jgWZ1Qv1rIWCCqcemjJnZwxRESmaQyTBf+/oLRBT7bfd4MDRXZv44RzofX5Sxn
	h5mDu1yJqDVZnkSJa+h/eVKdkJbw2Ddp7ntx9epmLDV1N7Iyx9QsJ8Z1LbfKPJ5KhzPYz3VWIZjX9
	WNNWOt7vq+Vgb2lfpTgZHeqNXy5/Tf28HDDxDxy92mJc1AV3Ww/3UYqxugKsHv1QjjZXMgweSYz9F
	K+49IYmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVssn-00000006y6e-26PN;
	Wed, 17 Dec 2025 14:52:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVssi-00000006y4E-3Mdn
	for barebox@lists.infradead.org;
	Wed, 17 Dec 2025 14:52:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-0007F0-DE; Wed, 17 Dec 2025 15:51:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-006828-0j;
	Wed, 17 Dec 2025 15:51:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-00000006dT9-0XEj;
	Wed, 17 Dec 2025 15:51:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Dec 2025 15:51:55 +0100
Message-ID: <20251217145156.1581678-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251217145156.1581678-1-s.hauer@pengutronix.de>
References: <20251217145156.1581678-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_065200_837412_38D81389 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] eeprom: at24: unregister devices in error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AT24 driver might register some i2c devices using i2c_new_dummy().
These are freed in the error path, but not unregistered which leads to
memory corruptions later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 508ddbc7b3..06a2a4b226 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -496,8 +496,11 @@ static int at24_probe(struct device *dev)
 
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



