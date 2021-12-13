Delivery-date: Mon, 13 Dec 2021 22:11:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbH-005g70-JJ
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbE-0003Eo-2H
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgZY5SMQM9AeO0M/1x1PVZqUNfWpF7QvkI0dGoTUCF0=; b=syXVwtuttUCwXf
	AUKSzaf1gSrqHUQbAywH+ZwSUT2yA754LL1pDtMIYHrgQjdC9KOz/J3wOvSu2eNy9ntaFwvWyVqtv
	awzxgvb8jC41YVWGYs5Sf8m/EpUMzJ2wMB9mdpdhOpAQbPbBYk32qSLpFQj6Gp1YWMq/N4UOR+v7k
	Kb7Bg9b9oSsb+lkDY+5CVxyD10uZ0oyk9rOz6dkj6v9Xqh97948RWbAzIRm8qBDzQSGCdGK6oJ9zr
	pSBw8vp5desQ5F5mVo9AbvzY/lLBqOTWmvZcW39reOGA3aarELMl2Q0zg6YrZlf7IYEyZYbzVUuaE
	5k8drAIGEIQih86lOD4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZY-00BOwC-Ig; Mon, 13 Dec 2021 21:09:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZL-00BOoR-W2
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002Ss-Fb; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGoi-5K; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:44 +0100
Message-Id: <20211213210905.3399551-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_060564_6B310E33 
X-CRM114-Status: GOOD (  12.71  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/25] efi: Do not register IPv[46] devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some UEFI instances create IPv4 and IPv6 messaging devices as children
of the main MAC messaging device. Don't register these in
barebox as they would show up as duplicate ethernet devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/efi/efi-device.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 25c8eeaf01..6c86a8ab1a 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -18,6 +18,7 @@
 #include <efi.h>
 #include <efi/efi.h>
 #include <efi/efi-device.h>
+#include <efi/device-path.h>
 #include <linux/err.h>
 
 static int efi_locate_handle(enum efi_locate_search_type search_type,
@@ -180,13 +181,24 @@ static struct efi_device *efi_add_device(efi_handle_t *handle, efi_guid_t **guid
 	return efidev;
 }
 
-
 static int efi_register_device(struct efi_device *efidev)
 {
 	char *dev_path_str;
 	struct efi_device *parent;
 	int ret;
 
+	/*
+	 * Some UEFI instances create IPv4 and IPv6 messaging devices as children
+	 * of the main MAC messaging device. Don't register these in barebox as
+	 * they would show up as duplicate ethernet devices.
+	 */
+	if (device_path_to_type(efidev->devpath) == MESSAGING_DEVICE_PATH) {
+		u8 subtype = device_path_to_subtype(efidev->devpath);
+
+		if (subtype == MSG_IPv4_DP || subtype == MSG_IPv6_DP)
+			return -EINVAL;
+	}
+
 	if (efi_find_device(efidev->handle))
 		return -EEXIST;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

