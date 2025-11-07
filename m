Delivery-date: Fri, 07 Nov 2025 22:38:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHUAD-00GQhu-2M
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 22:38:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHUAD-00066w-4b
	for lore@pengutronix.de; Fri, 07 Nov 2025 22:38:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QFfUqwbG/rCFzmkImeYhE0EL4PYCE4ElLFKvFcvwqA8=; b=g3zMi1RCBQHRla5ckWTeTGw8DB
	1yK/kxMfLKgilflTeMNjRiotWqDwdWN3oobffNKcw38GyMDRdJf90VkgmYqWS6Ge366oI1GssSIvg
	zfHFen57embmWAlpbqeLi/WLNP5TdOBLjeGrK58dkUu+MYW3o9umghHweedSkUlp2aPPxKyut5MfI
	BwmFqXyPMIrm3f086oleYPI6HbitplAiJIwlOkBAJmDQViN0/nmQjHfpS4mYQ447RueQ1UqIcmdGC
	ZVp7NGtJWTYOPccrCEiT4ApZOZeEQuzZAxrSwMt+0++TSH37w7Qdp/fKzz8o+N2eVllWaxKPxfuxd
	2r+1UzHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHU9f-00000001Ben-3lx5;
	Fri, 07 Nov 2025 21:37:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHU9b-00000001BdF-2Ys0
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 21:37:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-0005ur-W2; Fri, 07 Nov 2025 22:37:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-007anT-2Z;
	Fri, 07 Nov 2025 22:37:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-0000000EssG-2vpz;
	Fri, 07 Nov 2025 22:37:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 22:37:47 +0100
Message-ID: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_133755_654461_736BC224 
X-CRM114-Status: GOOD (  14.62  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] bootm: allow custom struct image_handler::check_image callbacks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

uImage support used to be very intertwined with the bootm code. This
changed now, but we still have uImage specific logic in
bootm_find_handler().

Instead of push more image format specific logic into
bootm_find_handler(), let's allow bootm handlers to specify a "full
custom" check by means of a check_image callback.

To keep changes elsewhere to a minimum, we keep the uImage logic
installed in common code, but inside register_image_handler() for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 30 ++++++++++++++++++++++++------
 include/bootm.h |  3 +++
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 17792b2a1d81..298a193e3f62 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -23,10 +23,32 @@ static struct sconfig_notifier_block sconfig_notifier;
 
 static __maybe_unused struct bootm_overrides bootm_overrides;
 
+static bool uimage_check(struct image_handler *handler,
+			 struct image_data *data,
+			 enum filetype detected_filetype)
+{
+	return detected_filetype == filetype_uimage &&
+		handler->ih_os == data->os->header.ih_os;
+}
+
+static bool filetype_check(struct image_handler *handler,
+			   struct image_data *data,
+			   enum filetype detected_filetype)
+{
+	return handler->filetype == detected_filetype;
+}
+
 int register_image_handler(struct image_handler *handler)
 {
-	list_add_tail(&handler->list, &handler_list);
+	if (!handler->check_image) {
+		if (IS_ENABLED(CONFIG_BOOTM_UIMAGE) &&
+		    handler->filetype == filetype_uimage)
+			handler->check_image = uimage_check;
+		else
+			handler->check_image = filetype_check;
+	}
 
+	list_add_tail(&handler->list, &handler_list);
 	return 0;
 }
 
@@ -36,11 +58,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 	struct image_handler *handler;
 
 	list_for_each_entry(handler, &handler_list, list) {
-		if (filetype != filetype_uimage &&
-				handler->filetype == filetype)
-			return handler;
-		if  (filetype == filetype_uimage &&
-				handler->ih_os == data->os->header.ih_os)
+		if (handler->check_image(handler, data, filetype))
 			return handler;
 	}
 
diff --git a/include/bootm.h b/include/bootm.h
index b35deb25bf8f..bed0263b2eec 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -117,6 +117,9 @@ struct image_handler {
 	int ih_os;
 
 	enum filetype filetype;
+	bool (*check_image)(struct image_handler *handler,
+			    struct image_data *data,
+			    enum filetype detected_filetype);
 	int (*bootm)(struct image_data *data);
 };
 
-- 
2.47.3



