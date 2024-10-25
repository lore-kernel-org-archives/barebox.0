Delivery-date: Fri, 25 Oct 2024 11:01:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4GCJ-000ZAY-0h
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 11:01:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4GCJ-0002Mb-Pj
	for lore@pengutronix.de; Fri, 25 Oct 2024 11:01:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1DXSqZwctZUilKxS5EdcuAKtnyJB7eKktgne589hiHA=; b=Y+t8RdZL+D6AGFGlHPPnnN9HY5
	V5+BHGpOvom117HvT0egvookmcfOwkG4Td4AWeNqksx8vZ9BzS5p8+ZuGAAW/rM35v88mFRFXhufK
	HWA6v4iNfmQ+I3s2Yiz3z3LQMZ0XpY7a4ayYKuuqawHfcXKZJXuAxI9Y8/m6/f6Z0splJJ/YDQcff
	kXiyj8QWMpCGwIv65CU3jJNCkGjS4li62L2ROGyiiZCmoQRqIYH7rqzPxVnFNaifHEV/pJz5f5GXA
	DnekIKHDzYwb72vhoTX9sGN9p9sGNpxiU4LrNQwwV+2cyJahqduWCD8xgBKFYgxB+tO/B0LTEgZ88
	nOMYXtHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4GBd-000000035Cc-1Ra3;
	Fri, 25 Oct 2024 09:00:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G8y-000000034CB-1gLu
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:58:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8x-0001xJ-0h; Fri, 25 Oct 2024 10:58:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8w-000Kse-2c;
	Fri, 25 Oct 2024 10:58:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8w-008UkC-2S;
	Fri, 25 Oct 2024 10:58:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:58:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-reset-bulk-v1-1-52380683ed7b@pengutronix.de>
References: <20241025-reset-bulk-v1-0-52380683ed7b@pengutronix.de>
In-Reply-To: <20241025-reset-bulk-v1-0-52380683ed7b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846682; l=3394;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WLdjsq21KQIZwVZbNNvg5vcUDBeMltPd5u01DVPdEyQ=;
 b=clwAJJdL8ip+xFxwxK/RUX6+LlOYY0+ZFsJwkfGBPZ0TjgNSYtbyarCVca/8S94zU9rdYd0dt
 yVXICr/vc9FD0YvnowX2RIUsVM7RilG57r9Wmk94XXnAZE4+gHM9DwF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_015804_528665_D0298E33 
X-CRM114-Status: GOOD (  12.50  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] reset: add __reset_control_get()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reset_control_get_optional() is implemented as a static inline function
which calls reset_control_get() first and then handles the _optional
part.

Change this to implement a __reset_control_get() taking a bool optional
argument. This is done as a preparation to implement
__reset_control_bulk_get() in the next step which can reuse
__reset_control_get().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/reset/core.c  | 11 ++++++++---
 include/linux/reset.h | 13 +++++++++----
 2 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 94bfad2067..679deee3c1 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -359,7 +359,7 @@ gpio_reset_control_get(struct device *dev, const char *id)
  *
  * Use of id names is optional.
  */
-struct reset_control *reset_control_get(struct device *dev, const char *id)
+struct reset_control *__reset_control_get(struct device *dev, const char *id, bool optional)
 {
 	struct reset_control *rstc;
 
@@ -368,7 +368,7 @@ struct reset_control *reset_control_get(struct device *dev, const char *id)
 
 	rstc = of_reset_control_get(dev->of_node, id);
 	if (IS_ERR(rstc))
-		return ERR_CAST(rstc);
+		goto err;
 
 	/*
 	 * If there is no dedicated reset controller device, check if we have
@@ -377,7 +377,7 @@ struct reset_control *reset_control_get(struct device *dev, const char *id)
 	if (!rstc) {
 		rstc = gpio_reset_control_get(dev, id);
 		if (IS_ERR(rstc))
-			return ERR_CAST(rstc);
+			goto err;
 	}
 
 	if (!rstc)
@@ -386,6 +386,11 @@ struct reset_control *reset_control_get(struct device *dev, const char *id)
 	rstc->dev = dev;
 
 	return rstc;
+err:
+	if (optional && rstc == ERR_PTR(-ENOENT))
+		return NULL;
+
+	return ERR_CAST(rstc);
 }
 EXPORT_SYMBOL_GPL(reset_control_get);
 
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 7db3d3162a..183d7d55a0 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -13,7 +13,7 @@ int reset_control_reset(struct reset_control *rstc);
 int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
 
-struct reset_control *reset_control_get(struct device *dev, const char *id);
+struct reset_control *__reset_control_get(struct device *dev, const char *id, bool optional);
 struct reset_control *of_reset_control_get(struct device_node *node,
 					   const char *id);
 void reset_control_put(struct reset_control *rstc);
@@ -57,7 +57,7 @@ of_reset_control_get(struct device_node *node, const char *id)
 }
 
 static inline struct reset_control *
-reset_control_get(struct device *dev, const char *id)
+__reset_control_get(struct device *dev, const char *id, bool optional)
 {
 	return NULL;
 }
@@ -96,8 +96,13 @@ static inline struct reset_control *reset_control_array_get(struct device *dev)
 static inline struct reset_control *reset_control_get_optional(struct device *dev,
 							       const char *id)
 {
-	struct reset_control *rstc = reset_control_get(dev, id);
-	return rstc == ERR_PTR(-ENOENT) ? NULL : rstc;
+	return __reset_control_get(dev, id, true);
+}
+
+static inline struct reset_control *reset_control_get(struct device *dev,
+						      const char *id)
+{
+	return __reset_control_get(dev, id, false);
 }
 
 #endif

-- 
2.39.5



