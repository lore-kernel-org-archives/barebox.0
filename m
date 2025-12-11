Delivery-date: Thu, 11 Dec 2025 21:31:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK1-00AQ8i-2V
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK0-0006fI-94
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gWzEO7+lT0plat4L0rZDbvOeUvw0CpZ8KZrg+/5HXDk=; b=L2kZykKRKmE/YE1Z6ZKVyL5LdV
	eD/422qXqgGa3EW8hU4uTMHU8UL3M97m7EQWpk0156/HpMjYb2xRLAIph44DfvWYB8tzUr2lWvoux
	9hgbPXebXv5QMWnHj02dQVw8EKn0gBG/QOa4VMXdWFZ0EodNY9R8hD6QU522p0ID+yUJ7QIObNMQ3
	DHcjMBS7TzFiy5Y7rQw7Mxt7qGYofvzgvdrEvqXdGYFzb/Db7LVlGIpa2X22hby5K7EukLa4Qvoyh
	GIEbGLmD7o0kEFgfbVH7ijLyAtjTfd9Yrd7PUv7DDjDnvj7HWEhkp1D/WV6L9ACgLnMSp4tiCm3sh
	kldSPUeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJV-0000000HE4k-1bs0;
	Thu, 11 Dec 2025 20:31:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJT-0000000HE2x-0fBC
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006J2-JP; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BQt-1G;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-1BDG;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:53 +0100
Message-ID: <20251211203056.2014710-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_123059_192783_C0AED795 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/16] efi: payload: populate $global.efi.payload variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As the same barebox binary will be able to function without EFI,
as EFI loader or as EFI payload, it's useful to have a variable
to check this at runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 4db3d751a300..78f42a463400 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -13,6 +13,7 @@
 #include <string.h>
 #include <linux/sizes.h>
 #include <wchar.h>
+#include <magicvar.h>
 #include <init.h>
 #include <efi.h>
 #include <efi/efi-payload.h>
@@ -429,6 +430,7 @@ static int efi_init_devices(void)
 	dev_add_param_bool_fixed(&efi_bus.dev, "secure_boot", secure_boot);
 	dev_add_param_bool_fixed(&efi_bus.dev, "secure_mode",
 				 secure_boot & setup_mode);
+	dev_add_param_bool_fixed(&efi_bus.dev, "payload", true);
 
 	devinfo_add(&efi_bus.dev, efi_businfo);
 
@@ -440,6 +442,8 @@ static int efi_init_devices(void)
 }
 core_efi_initcall(efi_init_devices);
 
+BAREBOX_MAGICVAR(efi.payload, "1 indicates that barebox was loaded as EFI payload");
+
 void efi_pause_devices(void)
 {
 	struct device *dev;
-- 
2.47.3



