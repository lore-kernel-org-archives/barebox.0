Delivery-date: Wed, 03 Jul 2024 18:59:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kl-001EYO-05
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kj-0005PA-Lv
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mpM+tzEfxZxM9dEGtg0omUSGY4eAg3GSPzrYMAYdvWg=; b=lptIJpx1v+cb3EasJvtVIWZHJ2
	zUv8pawAgRfRQs1pEkhZb6V1tVISkQLxQumovvtLRZFQbaoLWJQahLyLGALA5duN3rYRXfYEiYYqi
	sDdB7D4JjgZOIpQCwpuQTmtTCkWsOY6obQboCYCKRipkEpAk+7apSsVIrniq+vJFY35yU8qQHGjKj
	jfd4Xgnn+UZVytV3Tmku3651Or90cGkCtu1agmAAdL9Y3o9G3kEK2WWXVWg0pD3UKIxk3MCoUY5Tx
	Rv7z24oxdliYKyT7tvCkLDboFH7PWuj6XD0gOb5yEkC+6HDtLHD0h9S8v6tN7SH2tynuLnhk5pHSZ
	qww3ZLrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K0-0000000Av53-1VW8;
	Wed, 03 Jul 2024 16:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Ju-0000000Av26-4Bjs
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:05 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-DZ; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-5-c1fd766fd31d@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_137531_531EA3A1 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 05/10] FIT: expose useful helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming FIT overlay support requires these helpers for performing
check on a fit image.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 2 +-
 include/image-fit.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 24a733cd6b6e..9480d7963f2a 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -675,7 +675,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	return 0;
 }
 
-static int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
+int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
 {
 	struct device_node *sig_node;
 	int ret = -EINVAL;
diff --git a/include/image-fit.h b/include/image-fit.h
index 416f1f2c1896..f8321aa87e11 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -37,6 +37,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 int fit_get_image_address(struct fit_handle *handle, void *configuration,
 			  const char *name, const char *property,
 			  unsigned long *address);
+int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node);
 
 void fit_close(struct fit_handle *handle);
 

-- 
2.39.2



