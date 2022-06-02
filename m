Delivery-date: Thu, 02 Jun 2022 11:03:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjq-000Nt4-Rj
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:03:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgjo-00075X-5c
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:03:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HFuHrz6JDqm1M8s5dr0LSRWwu67l9ecHSP0Xyob4ks=; b=BYV7UIf0weL47F
	OZz5dhftud6P7BdFT67Q+hC7pD9h/8CujWN7AxIx1L1o6eWnYaDwzisGDwMbBFhHQCBP35MUF0fg1
	H9Zn6cRsSNURuYAA2J7kIpOdBV6YseT1S7GZuwGTmo6DH2v0YQwjURWf9cZL3KKCaLEPy5dqWVvkL
	8dkUmSxl7fOIzh7OM0RiXywoD0YuSlN8MShpUN7C0pd/HIrM/W/1EY4B98XfpiBKcblmnULEmeeWl
	vMl5X8njkG2xfBIOHjIHtTv3hyqcv/mH6/srgMumLC63i7uTPxhytpuq01gcVZfK477aRiB6jJ+jE
	dSbPe3tbu0YjDVdv55Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgiT-002Kx2-IU; Thu, 02 Jun 2022 09:02:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgi8-002Klq-B3
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-0006aZ-B1; Thu, 02 Jun 2022 11:01:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-005zkz-Ts; Thu, 02 Jun 2022 11:01:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi2-00DOLW-Vw; Thu, 02 Jun 2022 11:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:30 +0200
Message-Id: <20220602090133.3190450-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020144_430524_1DEEA0A6 
X-CRM114-Status: GOOD (  12.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] bbu: export bbu_std_file_handler for use in custom handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bbu_register_std_file_update() registers an update handler that updates
a single file, usually a partition. Depending on SoC, we may want to
compute the file path at install time. To save custom bbu code the
hassle of reimplementing bbu_std_file_handler(), export it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bbu.c  | 33 ++++++++++++++++++++-------------
 include/bbu.h |  3 +++
 2 files changed, 23 insertions(+), 13 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 26b997c02ed1..d243ac89dd9f 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -371,23 +371,13 @@ out:
 	return ret;
 }
 
-static int bbu_std_file_handler(struct bbu_handler *handler,
-					struct bbu_data *data)
+int bbu_std_file_handler(struct bbu_handler *handler,
+			 struct bbu_data *data)
 {
-	struct bbu_std *std = container_of(handler, struct bbu_std, handler);
 	int fd, ret;
-	enum filetype filetype;
 	struct stat s;
 	unsigned oflags = O_WRONLY;
 
-	filetype = file_detect_type(data->image, data->len);
-	if (filetype != std->filetype) {
-		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
-				file_type_to_string(std->filetype),
-				file_type_to_string(filetype)))
-			return -EINVAL;
-	}
-
 	device_detect_by_name(devpath_to_name(data->devicefile));
 
 	ret = stat(data->devicefile, &s);
@@ -436,6 +426,23 @@ err_close:
 	return ret;
 }
 
+static int bbu_std_file_handler_checked(struct bbu_handler *handler,
+					struct bbu_data *data)
+{
+	struct bbu_std *std = container_of(handler, struct bbu_std, handler);
+	enum filetype filetype;
+
+	filetype = file_detect_type(data->image, data->len);
+	if (filetype != std->filetype) {
+		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
+				file_type_to_string(std->filetype),
+				file_type_to_string(filetype)))
+			return -EINVAL;
+	}
+
+	return bbu_std_file_handler(handler, data);
+}
+
 /**
  * bbu_register_std_file_update() - register a barebox update handler for a
  *                                  standard file-to-device-copy operation
@@ -466,7 +473,7 @@ int bbu_register_std_file_update(const char *name, unsigned long flags,
 	handler->flags = flags;
 	handler->devicefile = devicefile;
 	handler->name = name;
-	handler->handler = bbu_std_file_handler;
+	handler->handler = bbu_std_file_handler_checked;
 
 	ret = bbu_register_handler(handler);
 	if (ret)
diff --git a/include/bbu.h b/include/bbu.h
index bd19fa187faf..2dad26a12788 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -54,6 +54,9 @@ struct file_list;
 int bbu_mmcboot_handler(struct bbu_handler *, struct bbu_data *,
 			int (*chained_handler)(struct bbu_handler *, struct bbu_data *));
 
+int bbu_std_file_handler(struct bbu_handler *handler,
+			 struct bbu_data *data);
+
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int bbu_register_handler(struct bbu_handler *);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

