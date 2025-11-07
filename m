Delivery-date: Fri, 07 Nov 2025 15:18:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHs-00GK4A-1h
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:18:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHr-0003kR-O2
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:18:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Znd9sTp+2EcMdeJaV+dt2YcUgsKe89LWMJkMIcdCvro=; b=nxGFrcka7wCHpY/z0oVZ4HKE3L
	pkAxLsQtYKzTbuOC/E+KdQfMoqktqhwC/tA1w82yMyKdCA0RHFIHMBchg0DJU4kGLkvJm5zasW6RL
	o72C5Lb7YKl5gCeUanYndtMHs9rzn7ItXTNVPLrEeYwp/+G1mDICIbgowluO7GyS8Szboy3alA4cD
	DgcmCpQ5oKAO9WAc759v7Gcfo20S1kUOewYbxxOkMKKZMEhgR9cQzwlZCiKp9rdt+0kluNFyAS+88
	AyrlJecYBSKzhlQ0d7kBe9InNlGVorrSco4QDq9ZZFdMiBBbZTzNZQRjEGG6hd2Qma2AsvTF8h/i2
	8Jy12lGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHQ-0000000HSPT-3Yq6;
	Fri, 07 Nov 2025 14:17:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHM-0000000HSN3-1Kao
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:17:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0003O9-HQ; Fri, 07 Nov 2025 15:17:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-007Xir-18;
	Fri, 07 Nov 2025 15:17:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0000000ArvS-14wk;
	Fri, 07 Nov 2025 15:17:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 15:17:18 +0100
Message-ID: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_061728_358428_3A28732F 
X-CRM114-Status: UNSURE (   7.56  )
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
Subject: [PATCH master 1/5] efi: payload: drop unreferenced efi_do_execute_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function exists in efi/payload/bootm.c as efi_execute(), where it's
actually used, so drop this unused copy.

Fixes: 7b0cedb9ddb4 ("efi: payload: split image handling from legacy
                      handover boot and add linux x86 image filetype")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/handover.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index 82f4cb4f5286..658f3600d6a6 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -33,19 +33,6 @@
 #include "image.h"
 #include "setup_header.h"
 
-static int efi_do_execute_image(enum filetype filetype, const char *file)
-{
-	efi_handle_t handle;
-	struct efi_loaded_image *loaded_image;
-	int ret;
-
-	ret = efi_load_image(file, &loaded_image, &handle);
-	if (ret)
-		return ret;
-
-	return efi_execute_image(handle, loaded_image, filetype);
-}
-
 typedef void(*handover_fn)(void *image, struct efi_system_table *table,
 			   struct x86_setup_header *header);
 
-- 
2.47.3



