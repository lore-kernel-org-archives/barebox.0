Delivery-date: Mon, 11 Aug 2025 14:30:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfs-009Koi-2q
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfV-0006bL-Tb
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TIAmRT6HSgYHm0R/3MRTfCvwbY9Vjf8bTJdMcB1ojOw=; b=dYT5ymebkgveRIi/m3892xAmKL
	CU71irhkcmQgs8JCo2ax+ncKvKSn7DBr0ZTdArSMvhMUwVleUChaR+q1tDoD7ksfnbItWtE/EI4Cc
	bMDS8VzidpJui9oYqOOmo5Kqstv2GFEID3o+YO347Py7KoJnqRZSVUbpfKJGZk4H6Fu78KXn/xEGt
	LtsyhifT11unU0ji0fe1vkzYCvaFiI2/6u79taT/SnkEa9mOOfp9myrvQ5SpBcq0KfcBVPpG8s2PV
	bkG2tKNyEC7PfzIrwOjUX0whtTTpZxOE73Jfj1R3tZ/Tnf5xdUeIBwC9c9lEpoeA0feskDhdkqN7a
	1fLiYcwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReF-00000007eWt-1PiL;
	Mon, 11 Aug 2025 12:29:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdk-00000007ddi-1koG
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdj-0004WP-0u; Mon, 11 Aug 2025 14:28:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:16 +0200
Message-Id: <20250811122824.1667791-37-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052836_491271_3430CD28 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 36/44] usb: export usb_host_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This list will be used by the upcoming bfetch command to
determine whether the running barebox has USB hosts registered.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/core/usb.c  | 8 ++++----
 include/linux/usb/usb.h | 1 +
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index d144e9840916..ae87137447c7 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -48,7 +48,7 @@
 static int dev_count;
 static int dev_index;
 
-static LIST_HEAD(host_list);
+LIST_HEAD(usb_host_list);
 LIST_HEAD(usb_device_list);
 
 static void print_usb_device(struct usb_device *dev)
@@ -81,7 +81,7 @@ static int usb_hw_detect(struct device *dev)
 {
 	struct usb_host *host;
 
-	list_for_each_entry(host, &host_list, list) {
+	list_for_each_entry(host, &usb_host_list, list) {
 		if (dev == host->hw_dev)
 			return usb_host_detect(host);
 	}
@@ -91,7 +91,7 @@ static int usb_hw_detect(struct device *dev)
 
 int usb_register_host(struct usb_host *host)
 {
-	list_add_tail(&host->list, &host_list);
+	list_add_tail(&host->list, &usb_host_list);
 	host->busnum = host_busnum++;
 	slice_init(&host->slice, dev_name(host->hw_dev));
 	if (!host->hw_dev->detect)
@@ -653,7 +653,7 @@ int usb_rescan(void)
 
 	pr_info("USB: scanning bus for devices...\n");
 
-	list_for_each_entry(host, &host_list, list) {
+	list_for_each_entry(host, &usb_host_list, list) {
 		ret = usb_host_detect(host);
 		if (ret)
 			continue;
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index f2cc69751064..cc994fdff1e6 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -482,6 +482,7 @@ int otg_device_get_mode(struct device *dev);
 extern struct bus_type otg_bus_type;
 
 extern struct list_head usb_device_list;
+extern struct list_head usb_host_list;
 
 bool usb_hub_is_root_hub(struct usb_device *hdev);
 
-- 
2.39.5



