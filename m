Delivery-date: Fri, 28 Nov 2025 18:22:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Aw-005rGN-03
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Av-0001iC-Dj
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bEK/O6e/Y7gxhulOUPagfQOakvwfep99cfMiIx8S7Sc=; b=zjig1kvUSNJWTnpy6TgMFLOXdJ
	lA0y6CQcXwJMggCmmnlKKZ89F1vbcywyo3h9eN8NIea8ZOdi7wJ8qeRtlEnKvLdlVkZwuH9sH79rx
	oFr0ufMdkCUAo4UhbZn9wJ4ZUWc7Hg/1iBLYxsyYD576SbaMqumjZVvR4vhA6KKw4+3WgKPYPwrxG
	6DsPrGQ46K7NAgl0OEONFwVxq7dGDACG4pSSJAbjigns7lOHymDdlzf/DK+TkFEE9b5fh0Fw5zpKr
	CnaBOb7r61rn6cBJVps2nqSIB4UYq79flJh9S8VpyoXQVyqzs6KW9SdQ8u8H+HlWciWAyzLIkGMqJ
	N9TqWQ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AY-00000000j1R-0pSD;
	Fri, 28 Nov 2025 17:22:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AS-00000000ixY-1wcU
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:22:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-0001Jj-Uu; Fri, 28 Nov 2025 18:21:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-002zVO-2C;
	Fri, 28 Nov 2025 18:21:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-000000009Su-2Sx5;
	Fri, 28 Nov 2025 18:21:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:53 +0100
Message-ID: <20251128172158.36324-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092200_502161_586D7B6E 
X-CRM114-Status: UNSURE (   8.15  )
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
Subject: [PATCH 1/3] efi: payload: image: set LoaderTimeExecUSec for kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already do this for handover, so systemd can show time spent since
barebox kicked off kernel boot.

Populate it for the non-legacy boot as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 22ff5d27ced6..5e268ed0ce35 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -10,6 +10,7 @@
 #include <clock.h>
 #include <common.h>
 #include <linux/sizes.h>
+#include <linux/ktime.h>
 #include <memory.h>
 #include <init.h>
 #include <driver.h>
@@ -129,6 +130,9 @@ int efi_execute_image(efi_handle_t handle,
 		}
 		printf("...\n");
 
+		efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
+				      ktime_to_us(ktime_get()));
+
 		shutdown_barebox();
 	}
 
-- 
2.47.3



